//: Playground - noun: a place where people can play

import UIKit

let timeZones = NSTimeZone.knownTimeZoneNames()

let local = NSTimeZone.localTimeZone()

let offset = local.secondsFromGMT

let someTZ = NSTimeZone(name: timeZones[60])
let someName = someTZ?.name
let localized = someTZ?.localizedName(.Generic, locale: NSLocale.currentLocale())