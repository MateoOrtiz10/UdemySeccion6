import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    //Los key me ayydan a obtener las referencias
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();


    final Map<String, String> formValues = {
      'first_name': 'Mateo',
      'last_name' : 'Ortiz',
      'email'     : 'mateoortiz@gmail.com',
      'password'  : '12345',
      'role'      : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Formularios'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(    
            key: myFormKey,        
            child: Column(
              children: [
                CustomImputField(labelText: 'Nombre', hintText: 'Nombre de usuario', formProperty: 'first_name', formValues: formValues),
                const SizedBox(height: 30),
                CustomImputField(labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues),
                const SizedBox(height: 30),
                CustomImputField(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                const SizedBox(height: 30),
                CustomImputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true, formProperty: 'password', formValues: formValues),
                const SizedBox(height: 30),


              DropdownButtonFormField<String>(       
                value: 'Admin',
                items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('Administrador')),
                  DropdownMenuItem(value: 'Superuser', child: Text('Super Usuario')),
                  DropdownMenuItem(value: 'Developer', child: Text('Desarrollador')),
                  DropdownMenuItem(value: 'Jr. Developer', child: Text('Desarrollador Jr')),
                ], 
                onChanged: (value){
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                },
              ),



                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: const Text('Guardar')),
                    ), 
                  onPressed: (){

                    //Para desactivar el teclado

                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()){
                      print('Formulario no valido');
                      return;
                    }
                    //* imprimir valores del formulario
                    print(formValues);
                  }, 
                  )
              ]
            ),
          ),
        ),
      )
    );
  }
}

