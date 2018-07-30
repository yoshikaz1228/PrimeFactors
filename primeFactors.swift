import Foundation

class PrimeFactors {
    private var factor:[Int]
    private var n:Int
    init() {
        self.factor=[]
        self.n=0
    }
    func primeFactors(n:Int ) -> [Int] {
        var nv = n
        var i=2
        while(i*i<nv){
            if(nv%i != 0){
                i+=1
            }else{
                nv=Int(floor(Double(nv)/Double(i)))
                factor.append(i)
            }
        }
        if(nv>1){
            factor.append(nv)
        }
        return factor
    }
}
