import SwiftUI
import HomeFeature
import InjectSupport
import AnalyticsSupport

struct ContentView: View {
    var tracker : AnalyticsTracker

    init(){
        tracker = DefaultAnalyticsTracker(eventProvider: InjectSupport())
    }

    var body: some View {
        VStack {
            Button("First event") {
                tracker.track(key: AnalyticsEvenClickKey(parameter: "Click 1"))
            }
            Button("First event") {
                tracker.track(key: AnalyticsEvenClickKey2(parameter: "Click 2"))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
