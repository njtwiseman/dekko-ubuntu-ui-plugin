import qbs

Project {
    name: "Core"

    Product {
        name: "Mail"
        condition: project.enabled

        Depends { name: "cpp" }
        Depends { name: "Qt.core" }

        Group {
            name: "QML components"
            files: [
                "mail/*.qml",
                "mail/**/*.qml"
            ]
            fileTags: ["mail-ui-plugin"]
        }

        Group {
            name: "JavaScript modules"
            files: [
                "mail/**/*.js"
            ]
            fileTags: ["mail-ui-plugin"]
        }

        Group {
            name: "Plugin specs"
            files: [
                "mail/**/*.dekko-plugin"
            ]
            fileTags: ["mail-ui-plugin"]
        }

        Group {
            condition: project.ui === "ubuntu"
            fileTagsFilter: "mail-ui-plugin"
            qbs.install: project.ui === "ubuntu"
            qbs.installDir: project.binDir + "/plugins/ubuntu/mail"
            qbs.installSourceBase: "mail"
        }
    }

    Product {
        name: "Contacts"
        condition: project.enabled

        Depends { name: "cpp" }
        Depends { name: "Qt.core" }

        Group {
            name: "QML components"
            files: [
                "contacts/*.qml",
                "contacts/**/*.qml"
            ]
            fileTags: ["contacts-ui-plugin"]
        }

        Group {
            name: "JavaScript modules"
            files: [
                "contacts/**/*.js"
            ]
            fileTags: ["contacts-ui-plugin"]
        }

        Group {
            name: "Plugin specs"
            files: [
                "contacts/**/*.dekko-plugin"
            ]
            fileTags: ["contacts-ui-plugin"]
        }

        Group {
            condition: project.ui === "ubuntu"
            fileTagsFilter: "contacts-ui-plugin"
            qbs.install: project.ui === "ubuntu"
            qbs.installDir: project.binDir + "/plugins/ubuntu/contacts"
            qbs.installSourceBase: "contacts"
        }
    }

    Product {
        name: "Calendar"
        condition: project.enabled

        Depends { name: "cpp" }
        Depends { name: "Qt.core" }

        Group {
            name: "QML components"
            files: [
                "calendar/*.qml",
                "calendar/**/*.qml"
            ]
            fileTags: ["calendar-ui-plugin"]
        }

        Group {
            name: "JavaScript modules"
            files: [
                "calendar/**/*.js"
            ]
            fileTags: ["calendar-ui-plugin"]
        }

        Group {
            name: "Plugin specs"
            files: [
                "calendar/**/*.dekko-plugin"
            ]
            fileTags: ["calendar-ui-plugin"]
        }

        Group {
            condition: project.ui === "ubuntu"
            fileTagsFilter: "calendar-ui-plugin"
            qbs.install: project.ui === "ubuntu"
            qbs.installDir: project.binDir + "/plugins/ubuntu/calendar"
            qbs.installSourceBase: "calendar"
        }
    }

    Product {
        name: "Notes"
        condition: project.enabled

        Depends { name: "cpp" }
        Depends { name: "Qt.core" }

        Group {
            name: "QML components"
            files: [
                "notes/*.qml",
                "notes/**/*.qml"
            ]
            fileTags: ["notes-ui-plugin"]
        }

        Group {
            name: "JavaScript modules"
            files: [
                "notes/**/*.js"
            ]
            fileTags: ["notes-ui-plugin"]
        }

        Group {
            name: "Plugin specs"
            files: [
                "notes/**/*.dekko-plugin"
            ]
            fileTags: ["notes-ui-plugin"]
        }

        Group {
            condition: project.ui === "ubuntu"
            fileTagsFilter: "notes-ui-plugin"
            qbs.install: project.ui === "ubuntu"
            qbs.installDir: project.binDir + "/plugins/ubuntu/notes"
            qbs.installSourceBase: "notes"
        }
    }

    Product {
        name: "Settings"
        condition: project.enabled

        Depends { name: "cpp" }
        Depends { name: "Qt.core" }

        Group {
            name: "QML components"
            files: [
                "settings/*.qml",
                "settings/**/*.qml"
            ]
            fileTags: ["settings-ui-plugin"]
        }

        Group {
            name: "JavaScript modules"
            files: [
                "settings/**/*.js"
            ]
            fileTags: ["settings-ui-plugin"]
        }

        Group {
            name: "Plugin specs"
            files: [
                "settings/**/*.dekko-plugin"
            ]
            fileTags: ["settings-ui-plugin"]
        }

        Group {
            condition: project.ui === "ubuntu"
            fileTagsFilter: "settings-ui-plugin"
            qbs.install: project.ui === "ubuntu"
            qbs.installDir: project.binDir + "/plugins/ubuntu/settings"
            qbs.installSourceBase: "settings"
        }
    }

//    SubProject {
//        filePath: "mail/mail.qbs"
//        inheritProperties: true
//    }
}
