#!/usr/bin/env node
'use strict'

// global vars

const browser = '/opt/google/chrome/chrome'
const browserArgs = ['--headless', '--disable-gpu']
const minPageLoadInterval = 500 // .5s
const maxPageLoadInterval = 5000 // 5s
const pageLoadTimeout = 60000 // 30s
const maxSimultaneousProcesses = 3
let processIterator = 0
const processes = {}

// import native modules
const { spawn } = require('child_process')

// import URL list
const websites = require('/var/lib/web-traffic-gen/urls.json')

// function for returning random number
function getRandomNum(min, max) {
  return Math.floor(Math.random() * ((max) - min) + min)
}

// function for spawning browser processes
function launchBrowser(website) {

  const processArgs = [ ...browserArgs, ...[website]]
  console.log(`loading '${website}'...`)
  return spawn(browser, processArgs)

}

// constructor for spawning new web processes
class WebProcess {

  constructor (website) {
    this.delay = getRandomNum(minPageLoadInterval, maxPageLoadInterval)
    this.website = website
    this.childProcess = null
    this.processRunning = false
    this.delay = getRandomNum(minPageLoadInterval, maxPageLoadInterval)
    this.id = processIterator

    processIterator++

    setTimeout(()=>{

      this.childProcess = launchBrowser(website)
      this.processRunning = true
  
      this.childProcess.on('exit', code => {
        console.log(`page load '${website}' process exited, return code '${code}'.`)
        this.processRunning = false
        // cleanup
        delete processes[this.id]
        queueProcesses()
      })
  
      // kill page if it has not closed after timeout
  
      setTimeout(() => {
        if (this.processRunning === true) {
          console.log(`killing '${website}'page load process.`)
          this.childProcess.kill('SIGINT')
        }
  
      }, pageLoadTimeout)
  
    }, this.delay)
  }
}

function queueProcesses () {

  while (Object.keys(processes).length < maxSimultaneousProcesses) {
    processes[processIterator] = new WebProcess(websites[getRandomNum(0, websites.length)])
  }
}

queueProcesses()
