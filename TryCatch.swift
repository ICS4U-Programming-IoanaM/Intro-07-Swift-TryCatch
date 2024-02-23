import Foundation
//
//  TryCatch.swift
//
//  Created by Ioana Marinescu
//  Created on 2024/02/23
//  Version 1.0
//  Copyright (c) 2024 Ioana Marinescu. All rights reserved.
//
//  A program that calculates the volume of a sphere, with try catch.

print("Enter the radius (cm): ")
let radius = Double(readLine()!)!

let volume = (4 / 3) * Double.pi * pow(radius, 3)

print("The volume of the sphere is \(round(volume * 1000)/1000.0) cm^3")
