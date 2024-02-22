//
//  ContentView.swift
//  YosdaApp
//
//  Created by Lucas Castro on 20/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var senha = ""
    @State var mostrarSenha = false
    @State var lembrarSenha = false
    
    var body: some View {
        
        ZStack{
//            Color.purple
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.098, green: 0.016, blue: 0.255),
                    Color(red: 0.388, green: 0.02, blue: 0.984)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .padding(.bottom, 350)
            VStack{
                Spacer()
                HStack{
                    Image("logo")
                        .resizable()
                        .frame(maxWidth: 100, maxHeight: 100)
                        
                    VStack(alignment: .leading){
                        Text("YOSDA")
                            .italic()
                            .bold()
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                        Text("APP")
                            .italic()
                            .bold()
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                        
                    }
                        
                }
                .padding(.top, 50)
                Spacer()
                VStack(alignment: .leading) {
                    Text("Crie sua conta")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .foregroundColor(.primary)
                        .padding(.top, 20)
                    
                    Text("E-mail")
                        .padding(.top, 8)
                    
                    
                    TextField("E-mail", text: $email)
                        .autocapitalization(.none)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 15)
                        .background(Color(uiColor: .systemGray6))
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(email.isEmpty ? Color.clear : Color(red: 0.875, green: 0.78, blue: 1.0), lineWidth: 2)
                        )
                        
                    HStack {
                        Text("Senha").frame(maxWidth: .infinity, alignment: .leading)
                            
                        Button("Recuperar senha") {}
                        
                    }
                    .padding(.top, 15)
                    
                    HStack{
                        if mostrarSenha {
                            TextField("Senha", text: $senha)
                        } else {
                            SecureField("Senha", text: $senha)
                        }
                        Button(action: {
                            mostrarSenha.toggle()
                        }){
                            Image(systemName: mostrarSenha ? "eye.slash" : "eye")
                                .foregroundColor(.gray)
                        }
                    } // HSTACK
                    .padding(.horizontal, 12)
                    .padding(.vertical, 15)
                    .background(Color(uiColor: .systemGray6))
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(senha.isEmpty ? Color.clear :  Color(red: 0.875, green: 0.78, blue: 1.0), lineWidth: 2)
                    )
                    
                    
                    Toggle("Lembrar minha senha", isOn: $lembrarSenha)
                        .font(.footnote)
                    
                    Button(action:{}){
                        Text("Criar conta")
                            
            
                    }
                    .padding(.vertical, 15)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(Color(red: 0.388, green: 0.08, blue: 1.0))
                    .cornerRadius(10)
                    .padding(.top, 20)
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    
                    Button(action:{}){
                        Image(systemName: "apple.logo")
                        Text("Continuar com Apple")
                    }
                    .padding(.vertical, 15)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(10)
                    .padding(.top, 10)
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    
                    HStack{
                        Text("Já possui uma conta ?")
                            .foregroundColor(.secondary)
                        Button(action:{}){
                            Text("Entre")
                        }
                    }
                    .padding(.top)
                    .frame(maxWidth: .infinity)
                } // VSTACK
                .padding(15)
                .padding(.bottom, 40)
                .background(.white)
                .cornerRadius(20)
                
                
            } // VSTACK
            .edgesIgnoringSafeArea(.bottom)
            
        } //ZSTACK
        .edgesIgnoringSafeArea(.top)
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
