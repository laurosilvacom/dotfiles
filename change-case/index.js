#!/usr/bin/env node
let changeCase = require("change-case")
let commandLineArgs = require("command-line-args")

let optionDefinitions = [
    { name: 'case', alias: 'c', type: String, defaultValue: "param" }, // -c snake
    { name: 'text', alias: 't', type: String, defaultOption: true }, // -t Hello World
]

let options = commandLineArgs(optionDefinitions)

let caseFunction = changeCase[options.case + "Case"] //paramCase

console.log(caseFunction(options.text))