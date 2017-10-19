set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(QZXING_QML ON)

find_package(Qt5Widgets REQUIRED)
find_package(Qt5Quick REQUIRED)

add_executable(QZXingLive
    application.cpp
    main.cpp
    native.cpp
    qml.qrc
)

target_include_directories(QZXingLive
    PRIVATE
        qtquick2applicationviewer
)

target_link_libraries(QZXingLive
    PRIVATE
        Qt5::Widgets
        Qt5::Quick
        qzxing
)

target_compile_definitions(QZXingLive
    PRIVATE
        QT_DEPRECATED_WARNINGS
)
