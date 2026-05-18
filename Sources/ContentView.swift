import SwiftUI

struct ContentView: View {
    @State private var status = "待操作"

    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            ControlGroup {
                Button("后退") { status = "点了后退" }
                Button("刷新") { status = "点了刷新" }
                Button("前进") { status = "点了前进" }
            }

            ControlGroup("缩放") {
                Button("-") { status = "缩小" }
                Button("+") { status = "放大" }
            }

            Text(status)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
