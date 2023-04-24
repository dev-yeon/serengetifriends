//
//  FriendStore.swift
//  MyFriends
//
//  Created by yeon on 2023/04/24.
//

import Foundation

class FriendStore : ObservableObject {
    @Published var friends : [Friend] = []
    
    init() {
       friends = [
        Friend(
            name: "Cheetah",
            description: "The cheetah (Acinonyx jubatus) is a large cat native to Africa and Southwest Asia (today restricted to central Iran). It is the fastest land animal, capable of running at 80 to 98 km/h (50 to 61 mph), as such has evolved specialized adaptations for speed, including a light build, long thin legs and a long tail. It typically reaches 67–94 cm (26–37 in) at the shoulder, and the head-and-body length is between 1.1 and 1.5 m (3 ft 7 in and 4 ft 11 in). Adults weigh between 21 and 72 kg (46 and 159 lb). Its head is small and rounded, with a short snout and black tear-like facial streaks. The coat is typically tawny to creamy white or pale buff and is mostly covered with evenly spaced, solid black spots. Four subspecies are recognised.",
            imageName: "Cheetah",
            link:"https://en.wikipedia.org/wiki/Cheetah"),
        Friend(
            name: "Jaguar",
            description: "The jaguar (Panthera onca) is a large cat species and the only living member of the genus Panthera native to the Americas. With a body length of up to 1.85 m (6 ft 1 in) and a weight of up to 158 kg (348 lb), it is the largest cat species in the Americas and the third largest in the world. Its distinctively marked coat features pale yellow to tan colored fur covered by spots that transition to rosettes on the sides, although a melanistic black coat appears in some individuals. The jaguar's powerful bite allows it to pierce the carapaces of turtles and tortoises, and to employ an unusual killing method: it bites directly through the skull of mammalian prey between the ears to deliver a fatal blow to the brain.",
            imageName: "Jaguar",
            link:"https://en.wikipedia.org/wiki/Jaguar"),
        Friend(
            name: "Leopard",
            description: "The leopard (Panthera pardus) is one of the five extant species in the genus Panthera, a member of the cat family, Felidae. It occurs in a wide range in sub-Saharan Africa, in some parts of Western and Central Asia, Southern Russia, and on the Indian subcontinent to Southeast and East Asia. It is listed as Vulnerable on the IUCN Red List because leopard populations are threatened by habitat loss and fragmentation, and are declining in large parts of the global range. The leopard is considered locally extinct in Hong Kong, Singapore, South Korea, Jordan, Morocco, Togo, the United Arab Emirates, Uzbekistan, Lebanon, Mauritania, Kuwait, Syria, Libya, Tunisia and most likely in North Korea, Gambia, Laos, Lesotho, Tajikistan, Vietnam and Israel. Contemporary records suggest that the leopard occurs in only 25% of its historical global range.",
            imageName:"Leopard",
            link:"https://en.wikipedia.org/wiki/Leopard"),
        Friend(
            name: "Lion",
            description: "The lion (Panthera leo) is a large cat of the genus Panthera native to Africa and India. It has a muscular, broad-chested body; short, rounded head; round ears; and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane. It is a social species, forming groups called prides. A lion's pride consists of a few adult males, related females, and cubs. Groups of female lions usually hunt together, preying mostly on large ungulates. The lion is an apex and keystone predator; although some lions scavenge when opportunities occur and have been known to hunt humans, lions typically do not actively seek out and prey on humans.",
            imageName: "Lion",
            link:"https://en.wikipedia.org/wiki/Lion"),
        Friend(
            name: "Mountain Lion",
            description: "The cougar (Puma concolor) (/ˈkuːˌɡər/, KOO-gər) is a large cat native to the Americas. Its range spans from the Canadian Yukon to the southern Andes in South America and is the most widespread of any large wild terrestrial mammal in the Western Hemisphere. It is an adaptable, generalist species, occurring in most American habitat types. This wide range has brought it many common names, including puma, mountain lion, catamount and panther (for the Florida sub-population). It is the second-largest cat in the New World, after the jaguar (Panthera onca). Secretive and largely solitary by nature, the cougar is properly considered both nocturnal and crepuscular, although daytime sightings do occur. Despite its size, the cougar is more closely related to smaller felines, including the domestic cat (Felis catus), than to any species of the subfamily Pantherinae.",
            imageName: "MountainLion",
            link:"https://en.wikipedia.org/wiki/Mountain_Lion"),
        Friend(
            name: "Puma",
            description: "Puma (/ˈpjuːmə/ or /ˈpuːmə/) is a genus in the family Felidae whose only extant species is the cougar (also known as the puma, mountain lion, and panther, among other names), and may also include several poorly known Old World fossil representatives (for example, Puma pardoides, or Owen's panther, a large, cougar-like cat of Eurasia's Pliocene). In addition to these potential Old World fossils, a few New World fossil representatives are possible, such as Puma pumoides and the two species of the so-called 'American cheetah', currently classified under the genus Miracinonyx.",
            imageName: "Puma",
            link:"https://en.wikipedia.org/wiki/Puma"),
        Friend(
            name: "Sea Lion",
            description: "Sea lions are pinnipeds characterized by external ear flaps, long foreflippers, the ability to walk on all fours, short and thick hair, and a big chest and belly. Together with the fur seals, they make up the family Otariidae, eared seals. The sea lions have six extant and one extinct species (the Japanese sea lion) in five genera. Their range extends from the subarctic to tropical waters of the global ocean in both the Northern and Southern Hemispheres, with the notable exception of the northern Atlantic Ocean. They have an average lifespan of 20–30 years. A male California sea lion weighs on average about 300 kg (660 lb) and is about 2.4 m (8 ft) long, while the female sea lion weighs 100 kg (220 lb) and is 1.8 m (6 ft) long. The largest sea lions are Steller's sea lions, which can weigh 1,000 kg (2,200 lb) and grow to a length of 3.0 m (10 ft). Sea lions consume large quantities of food at a time and are known to eat about 5–8% of their body weight (about 6.8–15.9 kg (15–35 lb)) at a single feeding. Sea lions can move around 16 knots (30 km/h; 18 mph) in water and at their fastest they can reach a speed of about 30 knots (56 km/h; 35 mph). Three species, the Australian sea lion, the Galápagos sea lion and the New Zealand sea lion, are listed as endangered.",
            imageName: "SeaLion",
            link:"https://en.wikipedia.org/wiki/Sea_Lion"),
        Friend(
            name: "Snow Leopard",
            description: "The snow leopard (Panthera uncia), also known commonly as the ounce, is a species of large cat in the genus Panthera of the family Felidae. The species is native to the mountain ranges of Central and South Asia. It is listed as Vulnerable on the IUCN Red List because the global population is estimated to number fewer than 10,000 mature individuals and is expected to decline about 10% by 2040. It is threatened by poaching and habitat destruction following infrastructural developments. It inhabits alpine and subalpine zones at elevations of 3,000–4,500 m (9,800–14,800 ft), ranging from eastern Afghanistan, the Himalayas and the Tibetan Plateau to southern Siberia, Mongolia and western China. In the northern part of its range, it also lives at lower elevations.",
            imageName: "SnowLeopard",
            link:"https://en.wikipedia.org/wiki/Snow_Leopard"),
        Friend(
            name: "Tiger",
            description: "The tiger (Panthera tigris) is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boar. It is territorial and generally a solitary but social predator, requiring large contiguous areas of habitat to support its requirements for prey and rearing of its offspring. Tiger cubs stay with their mother for about two years and then become independent, leaving their mother's home range to establish their own.",
            imageName: "Tiger",
            link:"https://en.wikipedia.org/wiki/Tiger")
        ]
    }
}
