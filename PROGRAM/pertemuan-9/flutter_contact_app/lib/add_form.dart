import 'package:flutter/material.dart';
import 'package:flutter_contact_app/contact_service.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});
  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  
  final gender = TextEditingController(text: ''); // Initialize with an empty string

  //inisialisasi variabel
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  // TextEditingController gender = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController hobby = TextEditingController();

  //inisialisasi class
  ContactService contactService = ContactService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Tambah Data'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          // key adalah kunci unik untuk mengidentifikasi suatu form
          // di bawah key ini tambahkan widget sesuai selera kalian
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10), 
                ),
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    border: InputBorder.none, 
                  ),
                  controller: name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Masukan Nama';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //bentuk dropdown select dengan dua pilihan
              
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[200], 
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonFormField<String>(
                  items: ['Laki-Laki', 'Perempuan'].map((String option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      gender.text = newValue!;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Jenis Kelamin',
                    border: InputBorder.none, 
                  ),
                  validator: (value) {
                    if (gender.text.isEmpty) { 
                      return 'Pilih Jenis Kelamin';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10), 
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: InputBorder.none, 
                  ),
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Masukkan Email';
                      // Validasi input email
                    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
                      return 'Masukkan Email yang valid';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
             
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10), 
                ),
                padding: EdgeInsets.all(10), 
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nomor Handphone',
                    border: InputBorder.none, 
                  ),
                  controller: phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Masukan Nomor Handphone';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], 
                  borderRadius: BorderRadius.circular(10), 
                ),
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Alamat',
                    border: InputBorder.none, 
                  ),
                  controller: address,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Masukan Alamat';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], 
                  borderRadius: BorderRadius.circular(10), 
                ),
                padding: EdgeInsets.all(10), 
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Hobi',
                    border: InputBorder.none,
                  ),
                  controller: hobby,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Masukan Hobi';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  
                  if (_formKey.currentState!.validate()) {
                    contactService.saveData(
                      name.text,
                      gender.text,
                      email.text,
                      phone.text,
                      address.text,
                      hobby.text,
                    );
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      '/',
                      (Route<dynamic> route) =>
                          false, 
                    );
                  }
                },
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(20), // This adds the shadow
                ),
                child: Text('Tambah Data'),
              )
            ],
          ),
        ),
      ),
    );
  }
}