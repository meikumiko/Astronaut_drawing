//
//  ContentView.swift
//  Astronaut_drawing
//
//  Created by Hsiao-Han Chi on 2022/4/26.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor.init(cgColor: CGColor.init(srgbRed: 28/255, green: 28/255, blue: 28/255, alpha: 1))
        let containerView = UIView()
        let rightHandView = UIView()
        let starView = UIView()
/*        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 308, height: 370))
        imageView.image = UIImage(named: "太空人")
        imageView.alpha = 0.3
        view.addSubview(imageView)
 */
 
        rightHandView.layer.addSublayer(addRightHand())
        rightHandView.layer.addSublayer(addFishing())
        starView.layer.addSublayer(addStar())
        containerView.layer.addSublayer(addPlanet())
        containerView.layer.addSublayer(addYellowRing())
        containerView.layer.addSublayer(addBlackRing())
        containerView.layer.addSublayer(addUpPlanet())
        containerView.layer.addSublayer(addGrain())
        containerView.layer.addSublayer(addRightLeg())
//        containerView.layer.addSublayer(addRightHand())
        containerView.layer.addSublayer(addBag())
        containerView.layer.addSublayer(addBagLine())
        containerView.layer.addSublayer(addBody())
        containerView.layer.addSublayer(addLeftHand())
//        containerView.layer.addSublayer(addLine())
        containerView.layer.addSublayer(addNeck())
        containerView.layer.addSublayer(addRightEar())
        containerView.layer.addSublayer(addHead())
        containerView.layer.addSublayer(addFace())
        containerView.layer.addSublayer(addShine())
        containerView.layer.addSublayer(addLeftEar())
//        containerView.layer.addSublayer(addFishing())
//        containerView.layer.addSublayer(addStar())
        containerView.layer.addSublayer(addWhiteDot())
//把新增的view加到原本的view中，畫面才會正常顯示
        view.addSubview(rightHandView)
        view.addSubview(starView)
        view.addSubview(containerView)
        
        UIView.animate(withDuration: 1.5, delay: 0, options: [.repeat, .autoreverse], animations: {
            rightHandView.frame = CGRect(x: 0, y: 4, width: 0, height: 0)
            starView.frame = CGRect(x: 0, y: 4, width: 0, height: 0)
            starView.layer.setAffineTransform(CGAffineTransform(scaleX: 1.4, y: 1.4).concatenating(CGAffineTransform(translationX: -8, y: -113)))
        }, completion: {_ in })
        
        return view
    }
    
    func addPlanet() -> CAShapeLayer{
        let path = UIBezierPath()
        path.addArc(withCenter: CGPoint(x: 177, y: 256), radius: 78, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 1, green: 235/255, blue: 184/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 2.5
        
        return planetLayer
    }
    
    func addYellowRing() -> CAShapeLayer{
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 59, y: 279))
        path.addCurve(to: CGPoint(x: 102, y: 241), controlPoint1: CGPoint(x: 48, y: 270), controlPoint2: CGPoint(x: 75, y: 253))
        path.addQuadCurve(to: CGPoint(x: 241, y: 213), controlPoint: CGPoint(x: 162, y: 220))
        path.addCurve(to: CGPoint(x: 299, y: 232), controlPoint1: CGPoint(x: 268, y: 208), controlPoint2: CGPoint(x: 312, y: 215))
        path.addCurve(to: CGPoint(x: 255, y: 260), controlPoint1: CGPoint(x: 293, y: 241), controlPoint2: CGPoint(x: 280, y: 250))
        path.addCurve(to: CGPoint(x: 59, y: 279), controlPoint1: CGPoint(x: 195, y: 285), controlPoint2: CGPoint(x: 65, y: 294))
        
        let yellowRingLayer = CAShapeLayer()
        yellowRingLayer.path = path.cgPath
        yellowRingLayer.fillColor = CGColor(srgbRed: 1, green: 235/255, blue: 184/255, alpha: 1)
        yellowRingLayer.strokeColor = UIColor.black.cgColor
        yellowRingLayer.lineWidth = 2.5
        
        return yellowRingLayer
    }
    
    func addBlackRing() -> CAShapeLayer{
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 71, y: 274))
        path.addCurve(to: CGPoint(x: 105, y: 240), controlPoint1: CGPoint(x: 57, y: 269), controlPoint2: CGPoint(x: 80, y: 255))
        path.addQuadCurve(to: CGPoint(x: 243, y: 214), controlPoint: CGPoint(x: 166, y: 219))
        path.addCurve(to: CGPoint(x: 294, y: 229), controlPoint1: CGPoint(x: 273, y: 210), controlPoint2: CGPoint(x: 300, y: 220))
        path.addCurve(to: CGPoint(x: 248, y: 256), controlPoint1: CGPoint(x: 292, y: 236), controlPoint2: CGPoint(x: 270, y: 250))
        path.addCurve(to: CGPoint(x: 71, y: 274), controlPoint1: CGPoint(x: 142, y: 289), controlPoint2: CGPoint(x: 72, y: 277))
        
        let blackRingLayer = CAShapeLayer()
        blackRingLayer.path = path.cgPath
        blackRingLayer.fillColor = CGColor(srgbRed: 28/255, green: 28/255, blue: 28/255, alpha: 1)
        
        return blackRingLayer
    }
    
    func addUpPlanet() -> CAShapeLayer{
        let path = UIBezierPath()
        let aDegree = CGFloat.pi / 180
        path.addArc(withCenter: CGPoint(x: 177, y: 256), radius: 78, startAngle: aDegree * -2, endAngle: aDegree * 164, clockwise: false)
        path.addCurve(to: CGPoint(x: 255, y: 253), controlPoint1: CGPoint(x: 144, y: 278), controlPoint2: CGPoint(x: 211, y: 270))
        
        let upPlanetLayer = CAShapeLayer()
        upPlanetLayer.path = path.cgPath
        upPlanetLayer.fillColor = CGColor(srgbRed: 1, green: 235/255, blue: 184/255, alpha: 1)
        upPlanetLayer.strokeColor = UIColor.black.cgColor
        upPlanetLayer.lineWidth = 2.5
        
        return upPlanetLayer
    }
    
    func addGrain() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 104, y: 228))
        path.addCurve(to: CGPoint(x: 120, y: 253), controlPoint1: CGPoint(x: 118, y: 224), controlPoint2: CGPoint(x: 125, y: 237))
        path.addQuadCurve(to: CGPoint(x: 99, y: 261), controlPoint: CGPoint(x: 112, y: 267))
        path.addCurve(to: CGPoint(x: 104, y: 228), controlPoint1: CGPoint(x: 98, y: 250), controlPoint2: CGPoint(x: 100, y: 236))
        
        path.move(to: CGPoint(x: 159, y: 251))
        path.addQuadCurve(to: CGPoint(x: 161, y: 254), controlPoint: CGPoint(x: 163, y: 249))
        
        path.move(to: CGPoint(x: 215, y: 226))
        path.addCurve(to: CGPoint(x: 213, y: 219), controlPoint1: CGPoint(x: 209, y: 228), controlPoint2: CGPoint(x: 207, y: 218))
        path.addCurve(to: CGPoint(x: 219, y: 222), controlPoint1: CGPoint(x: 216, y: 211), controlPoint2: CGPoint(x: 222, y: 215))
        path.addQuadCurve(to: CGPoint(x: 215, y: 226), controlPoint: CGPoint(x: 218, y: 226))
        
        path.move(to: CGPoint(x: 184, y: 289))
        path.addQuadCurve(to: CGPoint(x: 192, y: 288), controlPoint: CGPoint(x: 187, y: 282))
        path.addQuadCurve(to: CGPoint(x: 184, y: 288), controlPoint: CGPoint(x: 190, y: 290))
        
        path.move(to: CGPoint(x: 232, y: 293))
        path.addQuadCurve(to: CGPoint(x: 238, y: 292), controlPoint: CGPoint(x: 235, y: 285))
        path.addQuadCurve(to: CGPoint(x: 232, y: 292), controlPoint: CGPoint(x: 235, y: 299))
        
        path.move(to: CGPoint(x: 159, y: 314))
        path.addQuadCurve(to: CGPoint(x: 170, y: 310), controlPoint: CGPoint(x: 167, y: 307))
        path.addQuadCurve(to: CGPoint(x: 176, y: 318), controlPoint: CGPoint(x: 178, y: 310))
        path.addCurve(to: CGPoint(x: 159, y: 313), controlPoint1: CGPoint(x: 175, y: 320), controlPoint2: CGPoint(x: 160, y: 321))
        
        let grainLayer = CAShapeLayer()
        grainLayer.path = path.cgPath
        grainLayer.fillColor = CGColor(srgbRed: 249/255, green: 230/255, blue: 153/255, alpha: 1)
        grainLayer.strokeColor = UIColor.black.cgColor
        grainLayer.lineWidth = 2.7
        
        return grainLayer
    }
    
    func addRightLeg() -> CAShapeLayer{
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 127, y: 207))
        path.addCurve(to: CGPoint(x: 110, y: 200), controlPoint1: CGPoint(x: 118, y: 214), controlPoint2: CGPoint(x: 110, y: 204))
        path.addCurve(to: CGPoint(x: 125, y: 183), controlPoint1: CGPoint(x: 106, y: 185), controlPoint2: CGPoint(x: 113, y: 172))
        path.addQuadCurve(to: CGPoint(x: 148, y: 180), controlPoint: CGPoint(x: 134, y: 174))
        path.addLine(to: CGPoint(x: 170, y: 180))
        path.addLine(to: CGPoint(x: 170, y: 200))
        path.close()
        
        let rightLegLayer = CAShapeLayer()
        rightLegLayer.path = path.cgPath
        rightLegLayer.fillColor = UIColor.white.cgColor
        rightLegLayer.strokeColor = UIColor.black.cgColor
        rightLegLayer.lineWidth = 2.5
        
        return rightLegLayer
    }
    
    func addRightHand() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 129, y: 164))
        path.addCurve(to: CGPoint(x: 130, y: 149), controlPoint1: CGPoint(x: 113, y: 167), controlPoint2: CGPoint(x: 118, y: 142))
        path.addCurve(to: CGPoint(x: 154, y: 145), controlPoint1: CGPoint(x: 144, y: 150), controlPoint2: CGPoint(x: 146, y: 140))
        path.addLine(to: CGPoint(x: 173, y: 149))
        path.addLine(to: CGPoint(x: 173, y: 168))
        path.addQuadCurve(to: CGPoint(x: 129, y: 164), controlPoint: CGPoint(x: 131, y: 174))
        
        path.move(to: CGPoint(x: 130, y: 149))
        path.addQuadCurve(to: CGPoint(x: 128, y: 164), controlPoint: CGPoint(x: 134, y: 156))
        path.move(to: CGPoint(x: 133, y: 148))
        path.addQuadCurve(to: CGPoint(x: 131, y: 166), controlPoint: CGPoint(x: 138, y: 156))
        
        let rightHandLayer = CAShapeLayer()
        rightHandLayer.path = path.cgPath
        rightHandLayer.fillColor = UIColor.white.cgColor
        rightHandLayer.strokeColor = UIColor.black.cgColor
        rightHandLayer.lineWidth = 2.5
        
        return rightHandLayer
    }
    
    func addLine() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 148, y: 165))
        path.addQuadCurve(to: CGPoint(x: 145, y: 179), controlPoint: CGPoint(x: 152, y: 173))
        path.move(to: CGPoint(x: 152, y: 165))
        path.addQuadCurve(to: CGPoint(x: 148, y: 182), controlPoint: CGPoint(x: 156, y: 174))
        path.move(to: CGPoint(x: 178, y: 160))
        path.addQuadCurve(to: CGPoint(x: 177, y: 192), controlPoint: CGPoint(x: 193, y: 173))
        path.move(to: CGPoint(x: 150, y: 156))
        path.addQuadCurve(to: CGPoint(x: 174, y: 165), controlPoint: CGPoint(x: 156, y: 161))
        path.move(to: CGPoint(x: 152, y: 152))
        path.addQuadCurve(to: CGPoint(x: 170, y: 158), controlPoint: CGPoint(x: 159, y: 156))
        path.addQuadCurve(to: CGPoint(x: 178, y: 149), controlPoint: CGPoint(x: 175, y: 159))
        path.move(to: CGPoint(x: 146, y: 144))
        path.addQuadCurve(to: CGPoint(x: 151, y: 152), controlPoint: CGPoint(x: 154, y: 147))

        let lineLayer = CAShapeLayer()
        lineLayer.path = path.cgPath
        lineLayer.fillColor = UIColor.clear.cgColor
        lineLayer.strokeColor = UIColor.black.cgColor
        lineLayer.lineWidth = 1.8
        
        return lineLayer
    }
    
    func addBody() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 144, y: 174))
        path.addQuadCurve(to: CGPoint(x: 163, y: 143), controlPoint: CGPoint(x: 145, y: 152))
        path.addQuadCurve(to: CGPoint(x: 208, y: 142), controlPoint: CGPoint(x: 183, y: 132))
        path.addCurve(to: CGPoint(x: 155, y: 224), controlPoint1: CGPoint(x: 241, y: 200), controlPoint2: CGPoint(x: 191, y: 224))
        path.addCurve(to: CGPoint(x: 132, y: 227), controlPoint1: CGPoint(x: 144, y: 223), controlPoint2: CGPoint(x: 144, y: 230))
        path.addCurve(to: CGPoint(x: 139, y: 195), controlPoint1: CGPoint(x: 112, y: 214), controlPoint2: CGPoint(x: 125, y: 180))
        path.addQuadCurve(to: CGPoint(x: 169, y: 185), controlPoint: CGPoint(x: 151, y: 184))
        path.close()
        
        let bodyLayer = CAShapeLayer()
        bodyLayer.path = path.cgPath
        bodyLayer.fillColor = UIColor.white.cgColor
        bodyLayer.strokeColor = UIColor.black.cgColor
        bodyLayer.lineWidth = 2.5
        
        return bodyLayer
    }
    
    func addLeftHand() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 145, y: 179))
        path.addCurve(to: CGPoint(x: 148, y: 166), controlPoint1: CGPoint(x: 128, y: 182), controlPoint2: CGPoint(x: 135, y: 155))
        path.addQuadCurve(to: CGPoint(x: 170, y: 165), controlPoint: CGPoint(x: 157, y: 162))
        path.addCurve(to: CGPoint(x: 200, y: 155), controlPoint1: CGPoint(x: 180, y: 168), controlPoint2: CGPoint(x: 182, y: 146))
        path.addQuadCurve(to: CGPoint(x: 202, y: 185), controlPoint: CGPoint(x: 213, y: 167))
        path.addQuadCurve(to: CGPoint(x: 145, y: 179), controlPoint: CGPoint(x: 166, y: 200))
        
        
        let leftHandLayer = CAShapeLayer()
        leftHandLayer.path = path.cgPath
        leftHandLayer.fillColor = UIColor.white.cgColor
        leftHandLayer.strokeColor = UIColor.black.cgColor
        leftHandLayer.lineWidth = 2.5
        
        return leftHandLayer
    }
    
    func addBag() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 202, y: 133))
        path.addLine(to: CGPoint(x: 208, y: 194))
        path.addQuadCurve(to: CGPoint(x: 230, y: 198), controlPoint: CGPoint(x: 213, y: 204))
        path.addQuadCurve(to: CGPoint(x: 234, y: 142), controlPoint: CGPoint(x: 241, y: 176))
        path.addQuadCurve(to: CGPoint(x: 201, y: 129), controlPoint: CGPoint(x: 221, y: 130))
        path.close()

        
        let bagLayer = CAShapeLayer()
        bagLayer.path = path.cgPath
        bagLayer.fillColor = UIColor.white.cgColor
        bagLayer.strokeColor = UIColor.black.cgColor
        bagLayer.lineWidth = 2.5
        
        return bagLayer
    }
    
    func addBagLine() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 204, y: 138))
        path.addQuadCurve(to: CGPoint(x: 219, y: 175), controlPoint: CGPoint(x: 221, y: 139))
        path.move(to: CGPoint(x: 217, y: 148))
        path.addQuadCurve(to: CGPoint(x: 231, y: 145), controlPoint: CGPoint(x: 224, y: 144))

        let bagLineLayer = CAShapeLayer()
        bagLineLayer.path = path.cgPath
        bagLineLayer.fillColor = UIColor.clear.cgColor
        bagLineLayer.strokeColor = UIColor.black.cgColor
        bagLineLayer.lineWidth = 2.5
        
        return bagLineLayer
    }
    
    
    func addNeck() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150, y: 143))
        path.addQuadCurve(to: CGPoint(x: 212, y: 143), controlPoint: CGPoint(x: 180, y: 155))
        path.addLine(to: CGPoint(x: 208, y: 137))
        path.addQuadCurve(to: CGPoint(x: 152, y: 136), controlPoint: CGPoint(x: 178, y: 147))
        path.close()
    
        
        let neckLayer = CAShapeLayer()
        neckLayer.path = path.cgPath
        neckLayer.fillColor = UIColor.white.cgColor
        neckLayer.strokeColor = UIColor.black.cgColor
        neckLayer.lineWidth = 2.5
        
        return neckLayer
    }
    
    func addHead() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 130, y: 94))
        path.addCurve(to: CGPoint(x: 232, y: 94), controlPoint1: CGPoint(x: 136, y: 30), controlPoint2: CGPoint(x: 228, y: 28))
        path.addCurve(to: CGPoint(x: 130, y: 94), controlPoint1: CGPoint(x: 234, y: 159), controlPoint2: CGPoint(x: 128, y: 159))
        
        let headLayer = CAShapeLayer()
        headLayer.path = path.cgPath
        headLayer.fillColor = UIColor.white.cgColor
        headLayer.strokeColor = UIColor.black.cgColor
        headLayer.lineWidth = 2.5
        
        return headLayer
    }
    
    func addFace() -> CAShapeLayer{
        let path = UIBezierPath()
        path.addArc(withCenter: CGPoint(x: 173, y: 95), radius: 40, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        let faceLayer = CAShapeLayer()
        faceLayer.path = path.cgPath
        faceLayer.fillColor = UIColor.black.cgColor
        
        return faceLayer
    }
    
    func addShine() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 146, y: 76))
        path.addQuadCurve(to: CGPoint(x: 163, y: 65), controlPoint: CGPoint(x: 151, y: 66))
        path.addCurve(to: CGPoint(x: 164, y: 70), controlPoint1: CGPoint(x: 171, y: 64), controlPoint2: CGPoint(x: 171, y: 69))
        path.addQuadCurve(to: CGPoint(x: 150, y: 79), controlPoint: CGPoint(x: 155, y: 70))
        path.addCurve(to: CGPoint(x: 146, y: 76), controlPoint1: CGPoint(x: 149, y: 85), controlPoint2: CGPoint(x: 141, y: 84))
        
        path.addArc(withCenter: CGPoint(x: 144, y: 89), radius: 2.5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)

        let shineLayer = CAShapeLayer()
        shineLayer.path = path.cgPath
        shineLayer.fillColor = UIColor.white.cgColor
        
        return shineLayer
    }
    
    func addRightEar() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 132, y: 96))
        path.addQuadCurve(to: CGPoint(x: 124, y: 94), controlPoint: CGPoint(x: 125, y: 98))
        path.addQuadCurve(to: CGPoint(x: 129, y: 75), controlPoint: CGPoint(x: 124, y: 83))
        path.addQuadCurve(to: CGPoint(x: 137, y: 80), controlPoint: CGPoint(x: 132, y: 73))
        path.close()
        
        let rightEatLayer = CAShapeLayer()
        rightEatLayer.path = path.cgPath
        rightEatLayer.fillColor = UIColor.white.cgColor
        rightEatLayer.strokeColor = UIColor.black.cgColor
        rightEatLayer.lineWidth = 2.5
        
        return rightEatLayer
    }
    
    func addLeftEar() -> CAShapeLayer{
        let path = UIBezierPath()
        path.addArc(withCenter: CGPoint(x: 216, y: 106), radius: 14, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        let outsidePath = UIBezierPath()
        outsidePath.addArc(withCenter: CGPoint(x: 221, y: 106), radius: 14, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)

        let leftEarLayer = CAShapeLayer()
        leftEarLayer.path = path.cgPath
        leftEarLayer.fillColor = UIColor.white.cgColor
        leftEarLayer.strokeColor = UIColor.black.cgColor
        leftEarLayer.lineWidth = 2.5
        
        let leftEarOutsideLayer = CAShapeLayer()
        leftEarOutsideLayer.path = outsidePath.cgPath
        leftEarOutsideLayer.fillColor = UIColor.white.cgColor
        leftEarOutsideLayer.strokeColor = UIColor.black.cgColor
        leftEarOutsideLayer.lineWidth = 2.5
        
        leftEarLayer.addSublayer(leftEarOutsideLayer)
        
        return leftEarLayer
    }
    
    func addFishing() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 125, y: 148))
        path.addLine(to: CGPoint(x: 75, y: 69))
        path.addCurve(to: CGPoint(x: 48, y: 196), controlPoint1: CGPoint(x: 40, y: 118), controlPoint2: CGPoint(x: 74, y: 160))
        path.addCurve(to: CGPoint(x: 30, y: 272), controlPoint1: CGPoint(x: 30, y: 217), controlPoint2: CGPoint(x: 19, y: 244))
        path.move(to: CGPoint(x: 75, y: 69))
        path.addQuadCurve(to: CGPoint(x: 85, y: 73), controlPoint: CGPoint(x: 90, y: 51))
        path.addLine(to: CGPoint(x: 75, y: 69))
        path.addQuadCurve(to: CGPoint(x: 67, y: 78), controlPoint: CGPoint(x: 58, y: 60))
        path.addLine(to: CGPoint(x: 75, y: 69))
        path.addQuadCurve(to: CGPoint(x: 75, y: 87), controlPoint: CGPoint(x: 72, y: 81))
        path.move(to: CGPoint(x: 75, y: 69))
        path.addQuadCurve(to: CGPoint(x: 79, y: 99), controlPoint: CGPoint(x: 83, y: 88))
    
        let fishingLayer = CAShapeLayer()
        fishingLayer.path = path.cgPath
        fishingLayer.fillColor = UIColor.clear.cgColor
        fishingLayer.strokeColor = UIColor.black.cgColor
        fishingLayer.lineWidth = 3
        
        return fishingLayer
    }
    
    func addStar() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 26, y: 282))
        path.addQuadCurve(to: CGPoint(x: 23, y: 291), controlPoint: CGPoint(x: 10, y: 286))
        path.addQuadCurve(to: CGPoint(x: 32, y: 295), controlPoint: CGPoint(x: 21, y: 309))
        path.addQuadCurve(to: CGPoint(x: 40, y: 289), controlPoint: CGPoint(x: 46, y: 306))
        path.addQuadCurve(to: CGPoint(x: 36, y: 280), controlPoint: CGPoint(x: 51, y: 279))
        path.addQuadCurve(to: CGPoint(x: 26, y: 282), controlPoint: CGPoint(x: 29, y: 265))
        
    
        let starLayer = CAShapeLayer()
        starLayer.path = path.cgPath
        starLayer.fillColor = CGColor(srgbRed: 1, green: 250/255, blue: 171/255, alpha: 1)
        starLayer.strokeColor = UIColor.black.cgColor
        starLayer.lineWidth = 2.5
        
        return starLayer
    }
    
    func addWhiteDot() -> CAShapeLayer{
        let path = UIBezierPath()
        path.addArc(withCenter: CGPoint(x: 269, y: 340), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.move(to: CGPoint(x: 285, y: 335))
        path.addArc(withCenter: CGPoint(x: 285, y: 335), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.move(to: CGPoint(x: 118, y: 352))
        path.addArc(withCenter: CGPoint(x: 118, y: 352), radius: 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.move(to: CGPoint(x: 59, y: 230))
        path.addArc(withCenter: CGPoint(x: 59, y: 230), radius: 1.5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.move(to: CGPoint(x: 56, y: 210))
        path.addArc(withCenter: CGPoint(x: 56, y: 210), radius: 4, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.move(to: CGPoint(x: 273, y: 148))
        path.addArc(withCenter: CGPoint(x: 273, y: 148), radius: 1.5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.move(to: CGPoint(x: 265, y: 34))
        path.addArc(withCenter: CGPoint(x: 265, y: 34), radius: 4, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.move(to: CGPoint(x: 252, y: 25))
        path.addArc(withCenter: CGPoint(x: 252, y: 25), radius: 1.5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        path.close()
        
        let whiteDotLayer = CAShapeLayer()
        whiteDotLayer.path = path.cgPath
        whiteDotLayer.fillColor = UIColor.white.cgColor
        whiteDotLayer.strokeColor = UIColor.clear.cgColor
        
        return whiteDotLayer
    }
    

    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


