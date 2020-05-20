  enum engineState: String {
      case start = "запущен"
      case stop = "заглушен"
  }

  enum windowState: String {
      case open = "открыты"
      case close = "закрыты"
  }
  
  
 struct someCar {
    let brand : String
    let model : String
    let release : Int
    var trunkVolume : Int
    var engineState : engineState
    var windowState : windowState
    var trunkState : Int 
    
    mutating func addTrunk (trunkState: Int) {
           self.trunkState += trunkState
       }
    mutating func leaveTrunk (trunkState: Int) {
        self.trunkState -= trunkState
    }
    
    func description() {
        print("Марка и модель авто: \(brand) \(model),  год выпуска \(release), объем багажника \(trunkVolume), двигатель \(engineState.rawValue), окна \(windowState.rawValue), заполненный объем багажника \(trunkState)")
    }

}
  
  struct someTruck {
      let brand : String
      let model : String
      let release : Int
      var trunkVolume : Int
      var engineState : engineState
      var windowState : windowState
      var trunkState : Int
      
      mutating func addTrunk (trunkState: Int) {
             self.trunkState += trunkState
         }
      mutating func leaveTrunk (trunkState: Int) {
          self.trunkState -= trunkState
      }
      
      func description() {
          print("Марка и модель авто: \(brand) \(model),  год выпуска \(release), объем багажника \(trunkVolume), двигатель \(engineState.rawValue), окна \(windowState.rawValue), заполненный объем багажника \(trunkState)")
      }

  }



  var car1 = someCar(brand: "Toyota", model: "Camry", release: 2015, trunkVolume: 570, engineState: .stop, windowState: .close, trunkState: 0)
  var car2 = someCar(brand: "Lada", model: "Vesta", release: 2009, trunkVolume: 400, engineState: .stop, windowState: .open, trunkState: 105)

  car1.engineState = .start
  car1.addTrunk(trunkState: 400)
  car1.leaveTrunk(trunkState: 176)
  car1.windowState = .open
  car2.leaveTrunk(trunkState: 5)
  car2.windowState = .close
  
  car1.description()
  car2.description()
  
  var truck1 = someTruck(brand: "Scania", model: "Bolshaya", release: 2020, trunkVolume: 100500, engineState: .start, windowState: .open, trunkState: 0)
  
  truck1.addTrunk(trunkState: 100499)
  truck1.description()
  

