// Copyright (c) 2018 Ultimaker B.V.
import QtQuick 2.7
import QtQuick.Controls 2.1
import QtGraphicalEffects 1.0

Item
{
    id: avatar

    width: 96
    height: 96

    property var source

    Image
    {
        id: profileImage
        source: avatar.source ? avatar.source : "avatar_default.png"
        sourceSize: Qt.size(parent.width, parent.height)
        fillMode: Image.PreserveAspectCrop
        visible: false
    }

    Image
    {
        id: profileImageMask
        source: "inverted_circle.png"
        sourceSize: Qt.size(parent.width, parent.height)
        visible: false
    }

    OpacityMask
    {
        anchors.fill: profileImage
        source: profileImage
        maskSource: profileImageMask
        cached: true
        invert: true
    }
}