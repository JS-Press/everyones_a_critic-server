
   
puts "🌱 Seeding data..."

nums = [2,34,486,112,456,8374,42,3,47,9,3,7,48,6,12,4,32,50,7,258,25,74,15,7,4,6,376,597,1546,157,4332,567]
critiques = ["I don't get it.", "I totally vibe with this one.", "every time!", "Not sure what they were going for.", "This is just not my thing.", "I LOVE this.", "YESSSS", "This gets me.", "It ME.", "I disagree with this on many levels.", "It just wouldn't look good with my place", "I'm always saying this same thing.", "Needs more color", "I want it in my bathroom", "I have 3 of these already", "A true reflection of our modern time", "I think my uncle did this", "Wait... what?", "hmmmmmmmmmmmm", "A little to the left", "Isn't this that one art", "Well I could have done that", "If it was bigger maybe", "Nice and simple", "There's just too much going on here", "It's clearly about drugs", "I think this one is about that one time...", "This is clearly about nothing", "I like it", "I'm more into landscapes", "I think it's a boat", "maybe it's about birds?", "my kinda art!", "I remember this one!"]
names = ["Vincent", "Pablo", "Paul", "Albrecht", "Andy", "Edgar", "Diego", "Edvard", "Claude", "Francis", "George", "Gustav", "Jackson", "Jasper", "Henri", "Rosa", "Mark", "Marcel", "Pierre", "Piet", "Ray", "Roy", "Salvador", "Wassily", "Barbara", "Diane", "Anne", "Dorothea", "Eva", "Frida", "Georgia", "Sally", "Jan", "Yayoi", "Jeanette"]

Artwork.create(title: "For the Love of God", year: 2007, artist: "Damien Hirst", description: "It consists of a platinum cast of an 18th-century human skull encrusted with 8,601 flawless diamonds, and original teeth. Costing £12 million to produce, the work was placed on its inaugural display at the White Cube gallery in London in an exhibition Beyond Belief, with an asking price of £50 million. This would have been the highest price ever paid for a single work by a living artist. (wikipedia)", url: "https://i.pinimg.com/originals/b7/25/14/b7251427fdcc27b80474917ce84f2a10.jpg")
Artwork.create(title: "Untitled (Rome)", year: 1970, artist: "Cy Twombly", description: "A breathtaking union of inspired visual lyricism and explosive gestural force, Untitled (Rome) is amongst the most magnificent examples of Cy Twombly’s extraordinary abstract lexicon. Executed in 1970, at the chronological apex of the artist’s celebrated ‘Blackboard' paintings, the present work is amongst the most gesturally expressive invocations of the urgent, interrogatory mark-marking which distinguishes the very best examples of this revered series.(sothebys)", url: "https://sothebys-md.brightspotcdn.com/9e/43/6fc113804a0fbbae3dee5719b041/278n10682-bwwtn-01.jpg")
Artwork.create(title: "Untitled (Perfect Lovers)", year: 1991, artist: "Felix Gonzalez-Torres", description: "These two identical, battery-powered clocks were initially set to precisely the same time, but inevitably they fall out of sync as the hours and days pass, one moving ahead as the other falls behind. (artspace)", url: "https://d5wt70d4gnm1t.cloudfront.net/media/a-s/articles/1519-393257367392/the-art-book-conceptual-art-1-900x450-c.jpg")
Artwork.create(title: "Jan 21, 1982", year: 1982, artist: "On Kawara", description: "Kawara began his Today Series of paintings on January 4, 1966, and continued to work on them until his death in mid-2014. Adhering to a rigorous set of rules that he established, Kawara required that each painting be completed on the date depicted on its surface and in the language and grammar of the country in which it was completed. (dia art)", url: "https://diaart.org/media/w1050h700/object/jan-21-1982.jpg")
Artwork.create(title: "Splitting", year: 1974, artist: "Gordon Matta-Clark", description: "Matta-Clark had a particular interest in voids, gaps, and especially abandoned space. In the case of Splitting, he and helpers intentionally split a house, idle, and marked for demolition, in two parts. Matta-Clark understood the psychic power of buildings over human beings. He noted that his main aim in Splitting was to convert this building into a state of mind. (public delivery)", url: "https://publicdelivery.org/wp-content/uploads/2019/10/Gordon-Matta-Clark-Splitting-1974-Englewood-New-Jersey.-1-1-800x644.jpg?ezimgfmt=ng%3Awebp%2Fngcb36%2Frs%3Adevice%2Frscb36-1")
Artwork.create(title: "Floor Burger", year: 1962, artist: "Claes Oldenburg", description: "Oldenburg created the large-scale soft sculptures for the 1962 installation of The Store at the Green Gallery in midtown Manhattan. (moma)", url: "https://pbs.twimg.com/media/CZWzNIQWQAIqLvF.jpg")


Artwork.all.each do |art|
    3.times do 
        Interpretation.create(crit: critiques.sample, artwork_id: art.id, username: names.sample, like_count: nums.sample)
    end
end

puts "🌱 Done seeding!"