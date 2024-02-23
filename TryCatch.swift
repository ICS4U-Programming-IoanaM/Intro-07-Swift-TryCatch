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

// creates custom errors
enum InputError: Error {
  // invalid input error
  case invalidInput
}

// function to get user input that returns a double
func userInput() throws -> Double {
  // 
  print("Enter the radius (cm): ")
  guard let input = readLine(), let radius = Double(input) else {
    throw InputError.invalidInput
  }
  return radius
}

do {
  // calls function to get user input and 'tries' it
  let radius = try userInput()

  // volume calculation based on user input
  let volume = (4.0 / 3.0) * Double.pi * pow(radius, 3)

  // output to console the volume of the sphere.
  print("The volume of the sphere is \(round(volume * 1000)/1000.0) cm^3")

  // if user imputed invalid input
} catch InputError.invalidInput {
  print("Invalid input, please enter a number.")

  // in all honesty I don't know what this does but it's needed
} catch {
  print("An unexpected error occurred.")
}
