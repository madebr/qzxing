set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt5Gui REQUIRED)
find_package(Qt5Qml REQUIRED)

add_executable(BarcodeEncoder
    main.cpp
    qml.qrc
)

set(CXX_STANDARD 11)

target_link_libraries(BarcodeEncoder
    PRIVATE
        Qt5::Gui
        Qt5::Qml
        qzxing
)

target_compile_definitions(BarcodeEncoder
    PRIVATE
        QT_DEPRECATED_WARNINGS
)
