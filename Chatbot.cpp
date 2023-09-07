#include<iostream>
#include<cstring>
#include<string>

using namespace std;



void ayuda();
void saludo();
void inicio();

int main(){
    bool corriendo = true;

    while(corriendo){
        inicio();
    }
}


void ayuda(){
    string entrada;

    cout<<endl<<endl<<"Hola, en que te puedo ayudar?"<<endl;

    fflush(stdin);
    getline(cin,entrada);
    fflush(stdin);

    if(strcmp("Tengo miedo",entrada.c_str()) == 0)
        cout<<endl<<"No tengas miedo"<<endl;
    else if(strcmp("Me siento mal",entrada.c_str()) == 0)
        cout<<endl<<"Todos nos sentimos mal algunas veces"<<endl;
    else
        cout<<endl<<"Descuida, estaras bien"<<endl;

    return;
}

void saludo(){
    string entrada;

    cout<<endl<<endl<<"Hola, si necesitas ayuda di \"Ayuda\""<<endl;

    fflush(stdin);
    getline(cin,entrada);
    fflush(stdin);

    if(strcmp("Ayuda",entrada.c_str()) == 0)
        ayuda();
    else
        cout<<endl<<"Lo siento, No te entendi"<<endl;

    return;
}

void inicio(){
    string entrada;

    cout<<"Asistente personal"<<endl<<"A la escucha."<<endl;

    fflush(stdin);
    getline(cin,entrada);
    fflush(stdin);

    if(strcmp("Hola",entrada.c_str()) == 0)
        saludo();

    else if(strcmp("Ayuda",entrada.c_str()) == 0)
        ayuda();

    return;
}
