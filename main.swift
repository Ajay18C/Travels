// enum Menu:Int,CaseIterable{
//   case Reservation=1,Show_Reservation,Buses_Avaliable,Exit
// }

// func switchMenu(window:Menu.RawValue){
//   switch(window){
//     case 1:
//     print("Reservation page")
//     case 2:
//     print("Reservation details")
//     case 3:
//     print("Bus details")
//     case 4:
//     print("you are exit")
//     default:
//     print()
//   }
// }
// print("::::::Welcome to Blue Bus Travels::::::\n\nchoose your choice\n")
// Menu.allCases.forEach({print("\($0.rawValue)- \($0)\n")})


// protocol Common{
  
// }
// extension Common{
 
// }


// struct A:Common{
//   let value=0
//     func display(){
//     print("Inside class b")
//   }
// }
// struct B:Common{
//  func no(){
//    print("B")
//  }
// }
// let obj1 = A()
// let obj2 = A()
// let obj3 = B()
// let obj4 = B()
// let obb = A()
// let arr:[Common]=[obj1,obj2,obj3,obj4]
// let vu=arr[3]
// vu.no()
// print(type(of:obj3))
// // let newArr=arr.filter({type(of:$0) == type(of:obb)})
// func television()
//   func chargingPort()
//   func sleapers()
//   func airConditioner()
//   func foodService()
//   func providePillowAndBeadsheats()
//   var halfTicketAge:Int{get}


extension Optional where Wrapped == String{
  func getInt()-> Int{
    if let input = Int(self ?? ""){
      return input
    }
    return 0
  }
}


protocol Allfeatures{
  func displayBus()
  func decrementAvaliable()
  func incrementAvaliable()
  func  getPrice() -> Int
  func getSeats()->Int
  func getAvaliable() -> Int
 }


class Travels{
  var boardingPoint:String="Tirunelveli"
  var destination:String
  var arrivalTime:String
  var departureTime:String
  var price:Int
  var seats:Int
  var avaliable:Int

  init(destination:String,arrivalTime:String,departureTime:String,price:Int,seats:Int){
    self.destination=destination
    self.arrivalTime=arrivalTime
    self.departureTime=departureTime
    self.price=price
    self.seats = seats
    self.avaliable = self.seats
  }
}

class BlueBus:Travels,Allfeatures{ 
  enum Features:String,CaseIterable{
    case chargingPort = "charge port is avaliable"
    case television = "Tv avaliable"
    case sleapers = "10 seats are sleapers"
    case providePillowAndBeadsheats  = "pillow avaliable"
    case halfTicketAge = "Half ticket for below 6"
  }
  func displayBus() {
    print("============BLUEBUS============\nBoarding from : \(self.boardingPoint)\nDestination : \(self.destination)\nDeparture Time:\(self.departureTime)\nArrival Time : \(self.arrivalTime)\nPrice : \(self.price) /-\nTotal Seats : \(self.avaliable)\n\nFeatures :")
    Features.allCases.forEach { print("\($0) - \($0.rawValue)\n") }
    print("===============================")
  }
}

extension BlueBus{
  func decrementAvaliable() {
    self.avaliable -= 1
}
  func incrementAvaliable() {
    self.avaliable += 1
  }
   func getPrice()->Int{
     return self.price
   }
  func getSeats()->Int{
    return self.seats
  }
  func getAvaliable() -> Int{
    return self.avaliable
  }
}

class RedBus:Travels,Allfeatures{
  enum Features:String,CaseIterable{
    case chargingPort = "Charge port is avaliable"
    case television = "Each tv for every one"
    case sleapers = "15 seats are sleapers"
    case airConditioner = "Ac avaliable"
    case foodService = "food service  avaliable"
    case providePillowAndBeadsheats  = "pillow and beadsheet avaliable"
    case halfTicketAge = "Half ticket for below 8"
  }
  func displayBus() {
     print("=!=!=!=!=!=!=!RED BUS!=!=!=!=!=!=!=!\nBoarding from : \(self.boardingPoint)\nDestination : \(self.destination)\nDeparture Time:\(self.departureTime)\nArrival Time : \(self.arrivalTime)\nPrice : \(self.price) /-\nTotal Seats : \(self.avaliable)\n\nFeatures :")
    Features.allCases.forEach { print("\($0) - \($0.rawValue)\n") }
    print("=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!")
  }
}


extension RedBus{
  var avaliableSeats :Int{
    return self.seats
  }
  func decrementAvaliable() {
    self.avaliable -= 1
}
  func incrementAvaliable() {
    self.avaliable += 1
  }
  func getPrice()->Int{
     return self.price
   }
  func getSeats()->Int{
    return self.seats
  }
  func getAvaliable() -> Int{
    return self.avaliable
  }
}


class Main{
  
  func switchMain(choice:Int){
    switch(choice){
      case 1:
      arr.forEach({$0.displayBus()})
      case 2:
      bookBus(choice:choice)
      case 3:
      bookBus(choice:choice)
      case 4:
      showStructure()
      default:
      print("\nEnter 1 to 4 numbers only\n")
      main()
    }
  }
  
  func showStructure(){
    print("\nEnter the bus to view structure 1 . BlueBus 2 . RedBus 3 . BlueBusToCoimbatore 4 . RedBusToThiruvananthapuram")
    let choice = readLine().getInt()
    switch(choice){
      case 1...arr.count:
      if let _ = arr[choice-1] as? BlueBus{
      for (index, object) in blueBus.enumerated() where index < arr[choice-1].getSeats(){
       print("no-\(index+1): \(object)", terminator: "|")
        if((index+1)%4 == 0 && index != 0 ){
          print()
        }
      }
      }
      else{
      for (index, object) in redBus.enumerated() where index < arr[choice-1].getSeats(){
       print("no-\(index+1): \(object)", terminator: "|")
        if((index+1)%4 == 0 && index != 0){
          print()
        }
      }
      }
      default:
      print("\nEnter number 1 to \(arr.count)")
      showStructure()
    }
  }
  
  func bookBus(choice:Int){
    print("Choose Bus Type 1 . BlueBusToChennai 2 . RedBusToChennai 3 . BlueBusToCoimbatore 4 . RedBusToThiruvananthapuram")
    let bus=readLine().getInt()
    switch(bus){
      case 1...arr.count:
      if let _ = arr[bus-1] as? BlueBus{
      for (index, object) in blueBus.enumerated() where index < arr[bus-1].getSeats(){
       print("no-\(index+1): \(object)", terminator: "|")
        if((index+1)%4 == 0 && index != 0){
          print()
        }
      }
        print("\nSeat number you want 1 to \(arr[bus-1].getSeats())")
        let seatNo=readLine().getInt()
      if(choice == 2){
          if(arr[bus-1].getAvaliable() != 0&&seatNo>0&&seatNo<=arr[bus-1].getSeats() && blueBus[seatNo-1] == "⭕️"){
            print("Enter the passanger age")
          if(readLine().getInt()<8){
            print("Ticket fees : \(arr[bus-1].getPrice()/2)/-")
          }
        else{
          print("Ticket fees : \(arr[bus-1].getPrice())/-")
        }
            blueBus[seatNo-1] = "🟢"
          arr[bus-1].decrementAvaliable()
          print("Ticket booked successfully")
          }else{
            print("Booking Failed")
          }
      }
      else{
          if(arr[bus-1].getAvaliable() != arr[bus-1].getSeats() && seatNo>0&&seatNo<=arr[bus-1].getSeats() && blueBus[seatNo-1] == "🟢"){
          blueBus[seatNo-1] = "⭕️"
          arr[bus-1].incrementAvaliable()
          print("Ticket Cancelled")}else{
            print("Operation failed")
          }}
      }
      
      else{
      for (index, object) in redBus.enumerated() where index < arr[bus-1].getSeats(){
       print("no-\(index+1): \(object)", terminator: "|")
        if((index+1)%4 == 0 && index != 0){
          print()
        }
      }
      print("\nSeat number you want 1 to \(arr[bus-1].getSeats())")
        let seatNo=readLine().getInt()
      if(choice == 2){
        if(arr[bus-1].getAvaliable() != 0&&seatNo>0&&seatNo<=arr[bus-1].getSeats() && redBus[seatNo-1] == "⭕️"){
          print("Enter the passanger age")
          if(readLine().getInt()<6){
            print("Ticket fees : \(arr[bus-1].getPrice()/2)/-")
          }
        else{
          print("Ticket fees : \(arr[bus-1].getPrice())/-")
        }
          redBus[seatNo-1] = "🟢"
          arr[bus-1].decrementAvaliable()
          print("Ticket booked successfully")}else{
            print("Booking Failed")
          }}else{
          if(arr[bus-1].getAvaliable() != arr[bus-1].getSeats() && seatNo>0&&seatNo<=arr[bus-1].getSeats() && redBus[seatNo-1] == "🟢"){
          redBus[seatNo-1] = "⭕️"
          arr[bus-1].incrementAvaliable()
          print("Ticket Cancelled")}else{
            print("Operation failed")
          }
        }
      }
      default:
      print("Enter only number 1 to \(arr.count)")
      bookBus(choice:choice)
    }
    
  }

  
  func main(){
    print("\n=======================\n\tBUS RESERVATION\t\n=======================\n\t\tMAIN MENU\t\n\n\t(1) View Bus List\n\n\t(2) Book Ticket\n\n\t(3) Cancel Ticket\n\n\t(4) View Your Bookings")
    let choice = Int(readLine().getInt())
    switchMain(choice:choice)
  }
  
}
var arr:[Allfeatures]=[BlueBus(destination:"Chennai", arrivalTime:"4:00 am", departureTime:"3:00 pm" , price:2500 , seats:40),RedBus(destination:"Chennai", arrivalTime:"6:00 am", departureTime:"7:00 pm" , price:3500 , seats:20),BlueBus(destination:"Coimbatore", arrivalTime:"4:00 am", departureTime:"3:00 pm" , price:2500 , seats:40),RedBus(destination:"Thiruvananthapuram", arrivalTime:"6:00 am", departureTime:"2:00 am" , price:3500 , seats:20)]
var redBus = Array(repeating: "⭕️", count: 100)
var blueBus = Array(repeating: "⭕️", count: 100)
while(true){
let start = Main()
start.main()
  
}
