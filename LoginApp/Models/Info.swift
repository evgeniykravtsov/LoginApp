
struct Info {
    let title: String
    let description: String
    
    static func getInfoHobby ()->Info {
        return Info(title: "Хобби", description: "Настольный теннис, футбол, программирование")
    }
    
    static func getInfoWork ()->Info {
        return Info(title: "Работа", description: "Работаю Frontend developer в компании Ozon")
    }
    
    static func getInfoAbout ()->Info {
        return Info(title: "Обо мне", description: "29 Лет, женат, живу в Москве")
    }
}
