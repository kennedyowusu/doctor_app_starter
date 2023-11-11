import 'package:doctor_app_starter/constants/images.dart';
import 'package:doctor_app_starter/model/custom_icon.dart';
import 'package:doctor_app_starter/model/doctor_model.dart';

List<CustomIcon> customIcons = [
  CustomIcon(name: "Appointment", icon: appointment),
  CustomIcon(name: "Hospital", icon: hospital),
  CustomIcon(name: "Malaria", icon: malaria),
  CustomIcon(name: "More", icon: more),
];

List<CustomIcon> specialty = [
  CustomIcon(name: "Dental", icon: tooth),
  CustomIcon(name: "Insured", icon: insurance),
  CustomIcon(name: "Diabetes", icon: blood),
  CustomIcon(name: "Health Care", icon: healthCare),
];

final List<Doctor> doctorsOnDuty = [
  Doctor(
    name: "Marian Doe",
    specialty: "Pediatrician",
    reviews: 104,
    rating: 4.5,
    image: doctor2,
  ),
  Doctor(
    name: "Jane Doe",
    specialty: "Bariatric Surgeon",
    reviews: 111,
    rating: 4.6,
    image: doctor3,
  ),
  Doctor(
    name: "James Doe",
    specialty: "Cardiologist",
    reviews: 101,
    rating: 4.3,
    image: doctor4,
  ),
];
