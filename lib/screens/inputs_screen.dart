import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs y Forms')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                TextFormField(
                    autofocus: true,
                    initialValue: 'Jose Perez',
                    textCapitalization: TextCapitalization.words,
                    onChanged: (value) {
                      print('value $value');
                    },
                    validator: (value) {
                      if (value == null) return 'Este campo es obligatorio';
                      return value.length < 3 ? 'Minimo de 3 Letras' : null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                        hintText: 'nombre del usuario',
                        labelText: 'Nombre',
                        helperText: 'Introduce tu nombre',
                        suffixIcon: Icon(Icons.group_add_rounded),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10))))),
              ],
            ),
          ),
        ));
  }
}
