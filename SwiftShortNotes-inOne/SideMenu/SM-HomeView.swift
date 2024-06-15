//
//  SM-HomeView.swift
//  SwiftShortNotes-inOne
//
//  Created by qwerty on 11.06.2024.
//


import SwiftUI

struct SM_HomeView: View {
    /// View Properties
    @State private var showMenu: Bool = false
    @State private var rotateWhenExpands: Bool = true
    private var disablesInteractions: Bool = true
    private var disableCorners: Bool = false
    var body: some View {
        AnimatedSideBar(
            rotatesWhenExpands: rotateWhenExpands,
            disablesInteraction: disablesInteractions,
            sideMenuWidth: 200,
            cornerRadius: disableCorners ? 0 : 25,
            showMenu: $showMenu
            
        ) { safeArea in
            NavigationStack {
                Button(action: { showMenu.toggle() }) {
                    Image(systemName: showMenu ? "xmark" : "line.3.horizontal")
                        .foregroundStyle(Color.primary)
                        .contentTransition(.symbolEffect)
                }
            }
        } menuView: { safeArea in
            SideBarMenuView(safeArea)
        } background: {
            Rectangle()
                //.fill(.sideMenu)
        }
    }
    
    @ViewBuilder
    func SideBarMenuView(_ safeArea: UIEdgeInsets) -> some View {
        VStack(alignment: .leading, spacing: 12) {
           Text("Side Menu")
                .font(.largeTitle.bold())
                .padding(.bottom, 10)
            
            SideBarButton(.home)
            SideBarButton(.bookmark)
            SideBarButton(.favourites)
            SideBarButton(.profile)
            
            Spacer(minLength: 0)
            
            SideBarButton(.logout)
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 20)
        .padding(.top, safeArea.top)
        .padding(.bottom, safeArea.bottom)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .environment(\.colorScheme, .dark)
    }
    
    @ViewBuilder
    func SideBarButton(_ tab: Tab, onTap: @escaping () -> () = {  }) -> some View {
        Button(action: onTap, label: {
            HStack(spacing: 12) {
                Image(systemName: tab.rawValue)
                    .font(.title3)
                
                Text(tab.title)
                    .font(.callout)
                
                Spacer(minLength: 0)
            }
            .padding(.vertical, 10)
            .contentShape(.rect)
            .foregroundStyle(Color.primary)
        })
    }
    
    /// Sample Tab's
    enum Tab: String, CaseIterable {
        case home = "house.fill"
        case bookmark = "book.fill"
        case favourites = "heart.fill"
        case profile = "person.crop.circle"
        case logout = "rectangle.portrait.and.arrow.forward.fill"
        
        var title: String {
            switch self {
            case .home: return "Home"
            case .bookmark: return "Bookmark"
            case .favourites: return "Favourites"
            case .profile: return "Profile"
            case .logout: return "Logout"
            }
        }
    }
}

#Preview {
    SM_HomeView()
}
