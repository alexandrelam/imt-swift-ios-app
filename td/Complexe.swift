import Foundation

class Complexe{
    let reel: Double 
    let imaginaire: Double

    init(reel: Double, imaginaire: Double){
        self.reel = reel
        self.imaginaire = imaginaire
    }

    init(){
        self.reel = 0
        self.imaginaire = 0
    }

    var description: String { 
        if(self.reel != 0 && self.imaginaire != 0){
            return String(self.reel) + "+i" + String(self.imaginaire) 
        }
        else{
            return "Complexe nul"
        }
    }

    func distance() -> Double{
        return (pow(self.reel, 2.0) + pow(self.imaginaire, 2.0)).squareRoot()
    }

    var argument: Double {
        return acos(self.reel / distance()) * 180 / Double.pi
    }
    
    func sum(complexe: Complexe) -> Complexe{
        return Complexe(reel: self.reel + complexe.reel, imaginaire: self.imaginaire + complexe.imaginaire)
    }

    func mul(complexe: Complexe) -> Complexe {
        let new_reel: Double = self.reel * complexe.reel - self.imaginaire * complexe.imaginaire
        let new_imaginaire: Double = self.reel * complexe.imaginaire + self.imaginaire * complexe.reel
        return Complexe(reel: new_reel, imaginaire: new_imaginaire)
    }
}
