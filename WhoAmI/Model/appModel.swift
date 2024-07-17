//
//  appModel.swift
//  WhoAmI
//
//  Created by sahinbekir on 15.07.2024.
//

import Foundation

struct AppModel {
    let btnAnswer = "Try to Answer"
    let btnNewClue = "Get New Clue"
    let btnSkip = "Skip This"
    var person = 0
    var clue = 0
    var flag = false
    let whoAmIs: [WhoAmI] = [
        WhoAmI(
            personName: "Steve Jobs",
            personInfos: [
                "The company he founded is one of the world's largest technology companies.",
                "He is a famous innovator and marketer.",
                "Known as the creator of the iPhone.",
                "He was born and raised in California.",
                "He gave the famous 'Stay Hungry, Stay Foolish' speech."
            ]
        ),
        WhoAmI(
            personName: "Albert Einstein",
            personInfos: [
                "Theoretical physicist and Nobel Prize winner.",
                "Creator of the general and special theories of relativity.",
                "Known for the famous E=mc^2 equation.",
                "Born in Germany and later became a U.S. citizen.",
                "A renowned scientist and philosopher."
            ]
        ),
        WhoAmI(
            personName: "Marilyn Monroe",
            personInfos: [
                "A famous Hollywood movie star.",
                "An iconic sex symbol of the 1950s.",
                "Known for her beauty and acting.",
                "Starred in many unforgettable films.",
                "Lived a life full of trauma and challenges."
            ]
        ),
        WhoAmI(
            personName: "Stephen Hawking",
            personInfos: [
                "A renowned theoretical physicist and cosmologist.",
                "Author of 'A Brief History of Time'.",
                "Battled ALS and used a wheelchair.",
                "Known for his work on black holes and quantum mechanics.",
                "A significant figure in popular culture related to science."
            ]
        ),
        WhoAmI(
            personName: "Ada Lovelace",
            personInfos: [
                "Considered the first programmer in computer science.",
                "Her mathematical analyses contributed to Charles Babbage's 'analytical engine'.",
                "An English noblewoman.",
                "Her mother ensured she received education in science and mathematics.",
                "Went down in history as a pioneer of computer programming."
            ]
        ),
        WhoAmI(
            personName: "Leonardo da Vinci",
            personInfos: [
                "Italian polymath of the Renaissance period.",
                "Painter, sculptor, architect, inventor, and mathematician.",
                "Known for works like the Mona Lisa and The Last Supper.",
                "His notebooks contain detailed drawings and scientific diagrams.",
                "Considered one of the greatest painters of all time."
            ]
        ),
        WhoAmI(
            personName: "Marie Curie",
            personInfos: [
                "A pioneering physicist and chemist.",
                "First woman to win a Nobel Prize and the only person to win Nobel Prizes in two different sciences (Physics and Chemistry).",
                "Discovered radioactivity, leading to breakthroughs in cancer treatment.",
                "Born in Poland, later became a French citizen.",
                "Her work laid the foundation for advancements in nuclear physics."
            ]
        ),
        WhoAmI(
            personName: "Nelson Mandela",
            personInfos: [
                "Anti-apartheid revolutionary and political leader.",
                "First black President of South Africa.",
                "Advocate for peace, equality, and human rights.",
                "Imprisoned for 27 years for his activism.",
                "Received the Nobel Peace Prize in 1993."
            ]
        ),
        WhoAmI(
            personName: "Frida Kahlo",
            personInfos: [
                "Mexican painter known for her self-portraits.",
                "A leading figure in Mexican art and feminism.",
                "Married to Diego Rivera, another prominent painter.",
                "Her work often explores themes of identity, postcolonialism, gender, class, and race in Mexican society.",
                "Inspired by indigenous Mexican culture."
            ]
        ),
        WhoAmI(
            personName: "Mahatma Gandhi",
            personInfos: [
                "Leader of the Indian independence movement against British rule.",
                "Advocate for nonviolent civil disobedience.",
                "Promoted peaceful resistance and inspired civil rights movements worldwide.",
                "Assassinated in 1948.",
                "Known as 'Father of the Nation' in India."
            ]
        ),
        WhoAmI(
            personName: "Queen Elizabeth II",
            personInfos: [
                "Longest-reigning monarch in British history.",
                "Has seen significant changes in the UK and Commonwealth during her reign.",
                "Known for her sense of duty and commitment to public service.",
                "Her reign has spanned more than six decades.",
                "Respected and admired globally for her leadership."
            ]
        ),
        WhoAmI(
            personName: "Walt Disney",
            personInfos: [
                "American entrepreneur, animator, voice actor, and film producer.",
                "Co-founder of The Walt Disney Company.",
                "Created iconic characters like Mickey Mouse.",
                "Pioneered the American animation industry.",
                "Known for Disneyland and Disney World theme parks."
            ]
        ),
        WhoAmI(
            personName: "Martin Luther King Jr.",
            personInfos: [
                "American Baptist minister and activist.",
                "Leader in the Civil Rights Movement.",
                "Advocate for nonviolent protest and civil disobedience.",
                "Famous for his 'I Have a Dream' speech.",
                "Assassinated in 1968."
            ]
        ),
        WhoAmI(
            personName: "Coco Chanel",
            personInfos: [
                "French fashion designer and businesswoman.",
                "Founder of the Chanel brand.",
                "Revolutionized women's fashion by introducing a casual yet elegant style.",
                "Known for the Chanel No. 5 perfume.",
                "Her influence extends beyond fashion into art, culture, and lifestyle."
            ]
        ),
        WhoAmI(
            personName: "Pablo Picasso",
            personInfos: [
                "Spanish painter, sculptor, printmaker, ceramicist, and stage designer.",
                "One of the most influential artists of the 20th century.",
                "Co-founded the Cubist movement.",
                "Known for works like 'Guernica' and 'Les Demoiselles d'Avignon'.",
                "Constantly experimented with different styles and techniques."
            ]
        ),
        WhoAmI(
            personName: "J.K. Rowling",
            personInfos: [
                "British author and philanthropist.",
                "Best known for creating the Harry Potter fantasy series.",
                "Her books have sold more than 500 million copies worldwide.",
                "Inspired a film series, theme park attractions, and a dedicated fan base.",
                "Active in charity work and social issues."
            ]
        ),
        WhoAmI(
            personName: "Muhammad Ali",
            personInfos: [
                "American professional boxer and activist.",
                "Regarded as one of the greatest boxers of all time.",
                "Known for his charisma, athleticism, and outspoken stance on social issues.",
                "Won an Olympic gold medal and multiple world heavyweight championships.",
                "Nicknamed 'The Greatest'."
            ]
        ),
        WhoAmI(
            personName: "Bill Gates",
            personInfos: [
                "American business magnate, software developer, and philanthropist.",
                "Co-founder of Microsoft Corporation.",
                "One of the wealthiest people in the world.",
                "Active in global health and education initiatives through the Bill & Melinda Gates Foundation.",
                "Advocate for sustainable energy and technology innovation."
            ]
        ),
        WhoAmI(
            personName: "Amelia Earhart",
            personInfos: [
                "American aviation pioneer and author.",
                "First female aviator to fly solo across the Atlantic Ocean.",
                "Set many other records and wrote best-selling books about her flying experiences.",
                "Promoted women's rights and equality.",
                "Disappeared in 1937 during an attempt to circumnavigate the globe."
            ]
        ),
        WhoAmI(
            personName: "Michael Jordan",
            personInfos: [
                "American former professional basketball player and businessman.",
                "Regarded by many as the greatest basketball player of all time.",
                "Won six NBA championships with the Chicago Bulls.",
                "Known for his competitiveness and iconic Air Jordan brand.",
                "Inducted into the Basketball Hall of Fame twice."
            ]
        ),
        WhoAmI(
            personName: "Marlon Brando",
            personInfos: [
                "American actor and film director.",
                "Considered one of the greatest actors of all time.",
                "Known for his method acting and intense performances.",
                "Starred in iconic films like 'The Godfather' and 'On the Waterfront'.",
                "A complex figure known for his private life and activism."
            ]
        ),
        WhoAmI(
            personName: "Mother Teresa",
            personInfos: [
                "Albanian-Indian Roman Catholic nun and missionary.",
                "Known for her humanitarian work among the poor and dying in India.",
                "Founded the Missionaries of Charity.",
                "Received the Nobel Peace Prize in 1979.",
                "Canonized as a saint by the Catholic Church."
            ]
        ),
        WhoAmI(
            personName: "Neil Armstrong",
            personInfos: [
                "American astronaut and aeronautical engineer.",
                "First person to walk on the Moon during Apollo 11 mission in 1969.",
                "Spacecraft commander for Apollo 11.",
                "Famous for his quote 'That's one small step for man, one giant leap for mankind'.",
                "Received numerous awards for his contributions to space exploration."
            ]
        ),
        WhoAmI(
            personName: "Vincent van Gogh",
            personInfos: [
                "Dutch Post-Impressionist painter.",
                "One of the most famous and influential figures in Western art.",
                "Known for his vivid colors and emotional honesty.",
                "Produced more than 2,100 artworks, including around 860 oil paintings.",
                "Struggled with mental illness throughout his life."
            ]
        ),
        WhoAmI(
            personName: "Elon Musk",
            personInfos: [
                "Technology entrepreneur, investor, and engineer.",
                "Founder of SpaceX and CEO of Tesla, Inc.",
                "Known for his ambitious vision for the future of space exploration and electric vehicles.",
                "Born in South Africa, later moved to the United States.",
                "Often referred to as a modern-day visionary and entrepreneur."
            ]
        ),
        WhoAmI(
            personName: "Oprah Winfrey",
            personInfos: [
                "American talk show host, television producer, actress, author, and philanthropist.",
                "Best known for 'The Oprah Winfrey Show', which was the highest-rated television program of its kind.",
                "Advocate for education, civil rights, and social issues.",
                "One of the wealthiest African-American women.",
                "Received numerous awards for her contributions to media and society."
            ]
        ),
        WhoAmI(
            personName: "Alexander Graham Bell",
            personInfos: [
                "Scottish-born inventor, scientist, and engineer.",
                "Best known for inventing the telephone.",
                "Contributed to the development of aviation and hydrofoils.",
                "Founded the American Telephone and Telegraph Company (AT&T).",
                "A significant figure in the history of communication."
            ]
        ),
        WhoAmI(
            personName: "Malala Yousafzai",
            personInfos: [
                "Pakistani activist for female education and the youngest Nobel Prize laureate.",
                "Shot in the head by the Taliban for advocating girls' education.",
                "Co-authored the memoir 'I Am Malala'.",
                "Advocate for girls' education worldwide through the Malala Fund.",
                "Studied at the University of Oxford."
            ]
        ),
        WhoAmI(
            personName: "Winston Churchill",
            personInfos: [
                "British statesman, army officer, and writer.",
                "Prime Minister of the United Kingdom during World War II.",
                "Known for his leadership during the war and his oratory skills.",
                "Received the Nobel Prize in Literature.",
                "One of the most influential figures in British history."
            ]
        ),
        WhoAmI(
            personName: "Rosa Parks",
            personInfos: [
                "American activist in the civil rights movement.",
                "Best known for her pivotal role in the Montgomery bus boycott.",
                "Refused to give up her seat to a white passenger on a segregated bus.",
                "Received numerous awards for her contributions to civil rights.",
                "An icon of resistance to racial segregation."
            ]
        )
    ]

                    
        
        
        func getPersonName() -> String {
            return whoAmIs[person].personName
        }
        
        func getClue() -> String {
            return whoAmIs[person].personInfos[clue]
        }
    	
    mutating func nextClue() {
        if clue != whoAmIs[person].personInfos.count - 1 {
            clue = clue + 1 }
        else {
            clue = 0
        }
    }
    mutating func nextPer() {
        if person != whoAmIs.count - 1 {
            person = person + 1
            clue = 0 }
        else {
            flag = true
            person = 0
            clue = 0
        }
    }
    
    }
    
    
