//
//  Functions.swift
//  LengoPlay
//
//  Created by Ghaida Farhan on 2/1/24.
//

import Foundation
enum Native: CaseIterable {
    case Arabic , Bengali, French , Pourtuges
    var translateText: String {
        switch self{
            
        case .Arabic:
            return "ذات مرة، في أرض مليئة بالإمكانيات التي لا نهاية لها، انطلقت مجموعة من الأصدقاء في رحلة غامضة. مع عدم وجود وجهة محددة في أذهانهم وروح المغامرة في قلوبهم، انطلقوا إلى المجهول. كان كل منعطف اتخذوه بمثابة قفزة إيمانية، وكل طريق اختار قصة جديدة تنتظر أن تتكشف. كانت المفاجآت تنتظرك في كل زاوية، من الشلالات المخفية إلى الفسحات السرية حيث تتراقص الشمس عبر أوراق الشجر. كان الضحك والفرح رفاقهما الدائمين عندما اكتشفوا أماكن لم يمسها الزمن وكنوزًا لم تتمكن الخرائط من الكشف عنها. لم تكن هذه الرحلة تتعلق فقط بالأماكن التي وجدوها، بل تتعلق بالذكريات التي خلقوها، والروابط التي عززوها، والإثارة المطلقة لاحتضان ما هو غير متوقع. مع بزوغ فجر اليوم الخامس، وصل الأصدقاء إلى مفترق طرق، كل طريق مغطى بالضباب، وكل منهم يهمس بمصائر مختلفة"
        case .Bengali:
            return "একসময়, অফুরন্ত সম্ভাবনায় ভরা এক দেশে, একদল বন্ধু একটি রহস্য ভ্রমণে যাত্রা করেছিল। মনে কোন গন্তব্য নেই এবং তাদের হৃদয়ে সাহসিকতার চেতনা নেই, তারা অজানার দিকে যাত্রা করে। প্রতিটি বাঁক তারা নিয়েছে বিশ্বাসের একটি লাফ, প্রতিটি পথ বেছে নিয়েছে একটি নতুন গল্প উদ্ঘাটনের অপেক্ষায়। লুকানো জলপ্রপাত থেকে শুরু করে গোপন গ্লেডস পর্যন্ত যেখানে সূর্য পাতার মধ্য দিয়ে নাচছিল, প্রতিটি কোণে বিস্ময় অপেক্ষা করছে। হাসি এবং আনন্দ ছিল তাদের নিরন্তর সঙ্গী কারণ তারা সময়ের দ্বারা অস্পৃশ্য জায়গা এবং ধনসম্পদ আবিষ্কার করেছিল যা মানচিত্র প্রকাশ করতে পারে না। এই যাত্রাটি কেবল তারা যে জায়গাগুলি খুঁজে পেয়েছিল তার সম্পর্কে নয়, তাদের তৈরি করা স্মৃতি, তারা যে বন্ধনগুলিকে শক্তিশালী করেছিল এবং অপ্রত্যাশিতকে আলিঙ্গন করার নিছক রোমাঞ্চ সম্পর্কে ছিল। পঞ্চম দিনে ভোর হওয়ার সাথে সাথে বন্ধুরা একটি মোড়ে পৌঁছেছে, প্রতিটি পথ কুয়াশায় আবৃত, প্রতিটি ভাগ্যের ফিসফিস করে"
        case .French:
            return "Il était une fois, dans un pays aux possibilités infinies, un groupe d’amis se lançait dans un voyage mystérieux. Sans destination en tête et l’esprit d’aventure dans le cœur, ils se lancent dans l’inconnu. Chaque tournant qu’ils prenaient était un acte de foi, chaque chemin choisissait une nouvelle histoire attendant de se dévoiler. Des surprises attendues à chaque coin de rue, des cascades cachées aux clairières secrètes où le soleil dansait à travers les feuilles. Le rire et la joie étaient leurs compagnons constants alors qu'ils découvraient des lieux épargnés par le temps et des trésors que les cartes ne pouvaient révéler. Ce voyage ne concernait pas seulement les lieux qu'ils ont trouvés, mais aussi les souvenirs qu'ils ont créés, les liens qu'ils ont renforcés et le simple frisson d'accepter l'inattendu. À l'aube du cinquième jour, les amis arrivèrent à un carrefour, chaque chemin voilé de brume, chacun chuchotant des destins différents."
        case .Pourtuges:
            return "Era uma vez, numa terra repleta de possibilidades infinitas, um grupo de amigos embarcou numa viagem misteriosa. Sem destino em mente e com espírito de aventura em seus corações, eles partiram rumo ao desconhecido. Cada passo que davam era um salto de fé, cada caminho escolhido era uma nova história esperando para ser revelada. Surpresas aguardavam em cada esquina, desde cachoeiras escondidas até clareiras secretas onde o sol dançava por entre as folhas. O riso e a alegria foram seus companheiros constantes ao descobrirem lugares intocados pelo tempo e tesouros que os mapas não conseguiam revelar. Esta viagem não foi apenas sobre os lugares que encontraram, mas sobre as memórias que criaram, os laços que fortaleceram e a emoção de abraçar o inesperado. Ao amanhecer do quinto dia, os amigos chegaram a uma encruzilhada, cada caminho velado pela névoa, cada um sussurrando sobre destinos diferentes."
        }
    }
    
}


protocol AllImages  {
    var name : String { get }
    var droppedText : String { get }
//    var isDropped: Bool
}
var isDroppedRing = true
var isDroppedLaptop = true
var isDroppedBuilding = true
var isDroppedCup = true




enum ImagesName :String, CaseIterable{
    case imageOne = "Ring"
    case imageTwo = "Laptop"
    case imageThree = "Cup"
    case imageFour = "Building"
    
    var matching:String{
        switch self{
            
        case .imageOne:
            return "Ring"
        case .imageTwo:
            return "Laptop"
        case .imageThree:
            return "Cup"
        case .imageFour:
            return "Building"
        }
    }
    var droppedValue: Bool {
        switch self{
            
        case .imageOne:
            var isDroppedRing = true
            return isDroppedRing
        case .imageTwo:
            var isDroppedLaptop = true
            return isDroppedLaptop
        case .imageThree:
            var isDroppedCup = true
            return isDroppedCup
        case .imageFour:
            var isDroppedBuilding = true
            return isDroppedBuilding
        }
    }
}

struct appInfo : AllImages {
    var droppedText: String
    var name: String
    
}

struct MatchingWords: Identifiable {
    var id = UUID()
    var image:ImagesName
    var isRight:Bool = false
}


enum ImagesName2: String, CaseIterable {
    
    case Image1 = "Folder"
    case Image2 = "Truck"
    case Image3 = "LightBulb"
    case Image4 = "microScope"
    
}
