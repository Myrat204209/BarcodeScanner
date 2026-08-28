//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Azat Japarov on 28.08.26.
//

import SwiftUI
internal import Combine

final class BarcodeScannerViewModel : ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem : AlertItem?
    
    var statusText : String {
       return scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    var statusTextColor : Color {
        return scannedCode.isEmpty ? .red : .green
    }
}
