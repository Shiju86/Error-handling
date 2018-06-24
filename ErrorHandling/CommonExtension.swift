//
//  CommonExtension.swift
//  GenericExample
//
//  Created by Shiju Varghese on 24/06/18.
//  Copyright © 2018 Shiju. All rights reserved.
//

import Foundation

extension String
{
  func trim() -> String
  {
    let trimmed = self.trimmingCharacters(in: .whitespacesAndNewlines)

    return trimmed
  }
}
