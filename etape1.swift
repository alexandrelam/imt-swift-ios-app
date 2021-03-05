import Foundation

func factoriel(n: Int) -> Int{
    if(n==1){
        return 1
    }else{
        return factoriel(n: n-1) * n
    }
}

func racines(alphas: [Double]) -> (Double, Double)?{
    let determinant: Double = pow(alphas[1], 2) - 4 * alphas[0] * alphas[2]
    if(determinant == 0){
        return (-alphas[1]/(2.0*alphas[0]), -alphas[1]/(2.0*alphas[0]))
    }else if(determinant>0){
        let a: Double  = Double((-alphas[1] - determinant.squareRoot()) / (2.0 * alphas[0]))
        let b: Double  = Double((-alphas[1] + determinant.squareRoot()) / (2.0 * alphas[0]))
        return (a, b)
    }
    else{
        return nil
    }
}

print(racines(alphas: [1.0,3.0,2.0]) ?? "pas de racines réelles")
print(racines(alphas: [2.0,1.0,2.0]) ?? "pas de racines réelles")
print(racines(alphas: [1.0,2.0,1.0]) ?? "pas de racines réelles")
