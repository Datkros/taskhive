import QtQuick 2.0
import QtGraphicalEffects 1.0
Item {
    height: 60
    width: 406
    Image {
        id: image
        x: 0
        y: 0
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating.svg"
    }
    Image {
        id: image1
        x: 0
        y: 15
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }
    Image {
        id: image2
        x: 27
        y: 30
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image3
        x: 26
        y: 0
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image4
        x: 53
        y: 15
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image5
        x: 80
        y: 30
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image6
        x: 80
        y: 0
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image7
        x: 107
        y: 15
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image8
        x: 133
        y: 0
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image9
        x: 133.5
        y: 31
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }
    ColorOverlay {
        source: image9
        anchors.fill: image9
        color: "red"
    }
    Image {
        id: image10
        x: 160
        y: 15.75
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }
    ColorOverlay {
        source: image10
        anchors.fill: image10
        color: "red"
    }
    ColorOverlay {
        source: image11
        anchors.fill: image11
        color: "#fff"
    }
    Image {
        id: image11
        x: 187
        y: 0
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image12
        x: 187
        y: 30
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }
    ColorOverlay {
        source: image12
        anchors.fill: image12
        color: "#fff"
    }
    Image {
        id: image13
        x: 213
        y: 15
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image14
        x: 240
        y: 0
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image15
        x: 240
        y: 30
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image16
        x: 266
        y: 15
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image17
        x: 293
        y: 0
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image18
        x: 293
        y: 30
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image19
        x: 320
        y: 15
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image20
        x: 346
        y: 0
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image21
        x: 373
        y: 15
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }

    Image {
        id: image22
        x: 346
        y: 30
        fillMode: Image.PreserveAspectFit
        source: "graphic-rating-hex-02.svg"
        visible: false
    }
}
