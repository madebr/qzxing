set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(QZXING_QML ON)

find_package(Qt5Widgets REQUIRED)
find_package(Qt5Quick REQUIRED)

add_executable(QMLBarcodeScanner
    qmlcamera.cpp
    declarative-camera.qrc
)

target_link_libraries(QMLBarcodeScanner
    PRIVATE
        Qt5::Widgets
        Qt5::Quick
        qzxing
)

target_compile_definitions(QMLBarcodeScanner
    PRIVATE
        QT_DEPRECATED_WARNINGS
)
