import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    let emotion = ["sad","happy"]
    @State private var selectedEmotion = "happy"
    
    let emotionQuotes = [
        "sad":
            [
                "Don\'t focus on the pain, focus on the progress.",
                "Nothing is impossible. The word itself says \'I\'m possible!'",
                "Success is not final, failure is not fatal: it is the courage to continue that counts."
            ],
        "happy":
            [
                "There is nothing impossible to they who will try.","When you have a dream, you've got to grab it and never let go."]
        
    ]

    var body: some View {
            Form {
                TextField("Enter your name", text: $name);
                Text("Your name is  \(name)");
                Picker("Select your emotion", selection: $selectedEmotion) {
                    ForEach(emotion, id: \.self) {
                        Text($0)
                    }
               }
                Text("\(name), \(selectedEmotion)");
                
                
//                if let emotionQuote =  emotionQuotes[selectedEmotion][0];
//              Text("\(emotionQuote)");
            }
        
    }
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, Emotions!")
//        }
    }

