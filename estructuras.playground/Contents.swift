struct TableReservation {
    var name : String
    var tableNumber : Int
    mutating func updateBooking (updatedName: String, updateTablenumber: Int){
        name = updatedName
        tableNumber = updateTablenumber
    }
}
var johnBooking = TableReservation(name: "john", tableNumber: 1)
print(johnBooking)

johnBooking.updateBooking(updatedName: "maria", updateTablenumber: 5)
print(johnBooking)
