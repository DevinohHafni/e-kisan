import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:async';
import 'dart:math';
import 'main2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marudham',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const LanguageSelectionPage(),
    );
  }
}

class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Adjust the layout based on the screen width
              bool isSmallScreen = constraints.maxWidth < 600;

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Welcome to marudham',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Select Language',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const tamilpage(language: 'Tamil')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(
                        vertical: isSmallScreen ? 12.0 : 16.0,
                        horizontal: isSmallScreen ? 30.0 : 40.0,
                      ),
                      textStyle: TextStyle(fontSize: isSmallScreen ? 18 : 20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.language, size: 24),
                        SizedBox(width: 10),
                        Text('Tamil'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage(language: 'English')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(
                        vertical: isSmallScreen ? 12.0 : 16.0,
                        horizontal: isSmallScreen ? 30.0 : 40.0,
                      ),
                      textStyle: TextStyle(fontSize: isSmallScreen ? 18 : 20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.language, size: 24),
                        SizedBox(width: 10),
                        Text('English'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage(language: 'Hindi')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(
                        vertical: isSmallScreen ? 12.0 : 16.0,
                        horizontal: isSmallScreen ? 30.0 : 40.0,
                      ),
                      textStyle: TextStyle(fontSize: isSmallScreen ? 18 : 20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.language, size: 24),
                        SizedBox(width: 10),
                        Text('Hindi'),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String language;

  const HomePage({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Uzhavan - $language'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: const Text(
                'Uzhavan Features',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Real Time Monitoring Alerts'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RealTimeMonitoringPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Reminder for Monthly Fertilizer'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FertilizerReminderPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text('Price Comparison'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PriceComparisonPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.healing),
              title: const Text('Disease Prediction'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PredictDiseasePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.cloud),
              title: const Text('Weather Prediction'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeatherPredictionPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.directions_car),
              title: const Text('Renting Tractor'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TractorRentalPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.recommend),
              title: const Text('Crop Recommender'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CropRecommenderPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text('Apply for Loan'),
              onTap: () {
                Navigator.pop(context); // Close the drawer LoanAvailingPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>LoanPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.business),
              title: const Text('Subsidies and Suitable Gov Schemes'),
              onTap: () {
                Navigator.pop(context); // Close the drawer LoanAvailingPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SubsidiesAndSchemesPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Agriculture Officer Meetings'),
              onTap: () {
                // Implement feature logic ScheduleMeetingPage
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScheduleMeetingPage())
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.healing),
              title: const Text('Predict Yield'),
              onTap: () {
                // Implement feature logic YieldPredict
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const YieldPredictPage())
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.healing),
              title: const Text('Pest Management'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PestManagementPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.business_center),
              title: const Text('Industries Connection'),
              onTap: () {
                // Implement feature logic
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const  IndustryConnectionPage())
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_collection),
              title: const Text('Recommended Videos'),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text('Community Support'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CommunitySupportPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('Fertilizer Calculator'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FertilizerCalculatorPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: <Widget>[
            FeatureCard(
              icon: Icons.notifications,
              label: 'Real Time Monitoring Alerts',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RealTimeMonitoringPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.calendar_today,
              label: 'Reminder for Monthly Fertilizer',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FertilizerReminderPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.money,
              label: 'Price Comparison',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PriceComparisonPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.healing,
              label: 'Disease Prediction',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PredictDiseasePage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.cloud,
              label: 'Weather Prediction',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeatherPredictionPage()),
                );
              },
            ),

            FeatureCard(
              icon: Icons.directions_car,
              label: 'Renting Tractor',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TractorRentalPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.recommend,
              label: 'Crop Recommender',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CropRecommenderPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.monetization_on,
              label: 'Loan',
              onTap: () {
                Navigator.pop(context); // Close the drawer LoanAvailingPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>LoanPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.business,
              label: 'Subsidies and Suitable Gov Schemes',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SubsidiesAndSchemesPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.calendar_today,
              label: 'Agriculture Officer Meetings',
              onTap: () {
                // Implement feature logic
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScheduleMeetingPage())
                );
              },
            ),
            FeatureCard(
              icon: Icons.healing,
              label: 'Predict Yield',
              onTap: () {
                // Implement feature logic
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const YieldPredictPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.healing,
              label: 'Pest Management',
              onTap: () {
                // Implement feature logic
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PestManagementPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.business_center,
              label: 'Industries Connection',
              onTap: () {
                // Implement feature logic
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  IndustryConnectionPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.video_collection,
              label: 'Recommended Videos',
              onTap: () {
                // Implement feature logic
              },
            ),
            FeatureCard(
              icon: Icons.group,
              label: 'Community Support',
              onTap: () {
                // Implement feature logic
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CommunitySupportPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.calculate,
              label: 'Fertilizer Calculator',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FertilizerCalculatorPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.green.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 50, color: Colors.green),
              const SizedBox(height: 10),
              Text(label, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}

class PredictDiseasePage extends StatelessWidget {
  const PredictDiseasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Predict Disease'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Upload an Image of the Plant',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement image picker functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text('Upload Image'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Provide Additional Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter Plant Type',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter Symptoms',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement prediction functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text('Predict Disease'),
            ),
          ],
        ),
      ),
    );
  }
}


class FertilizerCalculatorPage extends StatefulWidget {
  const FertilizerCalculatorPage({super.key});

  @override
  _FertilizerCalculatorPageState createState() => _FertilizerCalculatorPageState();
}

class _FertilizerCalculatorPageState extends State<FertilizerCalculatorPage> {
  final _formKey = GlobalKey<FormState>();
  final _fieldAreaController = TextEditingController();
  String _result = '';

  // Dropdown options
  final List<String> _soilTypes = ['Sandy', 'Clay', 'Loamy', 'Silt', 'Peaty'];
  final List<String> _cropTypes = ['Rice', 'Maize', 'Cotton', 'Sugarcane', 'Tea', 'Mango', 'Coconut', 'Jowar', 'Ragi'];

  // Selected values
  String? _selectedSoilType;
  String? _selectedCropType;

  // Fertilizer calculation logic
  void _calculateFertilizer() {
    if (_formKey.currentState!.validate()) {
      final fieldArea = double.tryParse(_fieldAreaController.text.trim()) ?? 0.0;

      // Example calculation logic (customize as needed)
      double fertilizerAmount = 0.0;
      switch (_selectedCropType?.toLowerCase()) {
        case 'rice':
          fertilizerAmount = fieldArea * 100; // Example: 100 kg per acre for rice
          break;
        case 'maize':
          fertilizerAmount = fieldArea * 120; // Example: 120 kg per acre for maize
          break;
        case 'cotton':
          fertilizerAmount = fieldArea * 90; // Example: 90 kg per acre for cotton
          break;
        case 'sugarcane':
          fertilizerAmount = fieldArea * 150; // Example: 150 kg per acre for sugarcane
          break;
        case 'tea':
          fertilizerAmount = fieldArea * 80; // Example: 80 kg per acre for tea
          break;
        case 'mango':
          fertilizerAmount = fieldArea * 70; // Example: 70 kg per acre for mango
          break;
        case 'coconut':
          fertilizerAmount = fieldArea * 60; // Example: 60 kg per acre for coconut
          break;
        case 'jowar':
          fertilizerAmount = fieldArea * 85; // Example: 85 kg per acre for jowar
          break;
        case 'ragi':
          fertilizerAmount = fieldArea * 75; // Example: 75 kg per acre for ragi
          break;
        default:
          fertilizerAmount = fieldArea * 90; // Default: 90 kg per acre
      }

      // Adjust based on soil type (example logic)
      switch (_selectedSoilType?.toLowerCase()) {
        case 'clay':
          fertilizerAmount *= 1.1; // Increase by 10% for clay soil
          break;
        case 'sandy':
          fertilizerAmount *= 0.9; // Decrease by 10% for sandy soil
          break;
        case 'loamy':
          fertilizerAmount *= 1.0; // No change for loamy soil
          break;
        case 'silt':
          fertilizerAmount *= 1.05; // Increase by 5% for silt soil
          break;
        case 'peaty':
          fertilizerAmount *= 1.2; // Increase by 20% for peaty soil
          break;
      }

      setState(() {
        _result = 'Required Fertilizer: ${fertilizerAmount.toStringAsFixed(2)} kg';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Fertilizer Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'Enter Details to Calculate Fertilizer',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                value: _selectedCropType,
                onChanged: (value) {
                  setState(() {
                    _selectedCropType = value;
                  });
                },
                items: _cropTypes.map((crop) {
                  return DropdownMenuItem(
                    value: crop,
                    child: Text(crop),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Select Crop Type',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a crop type';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _fieldAreaController,
                decoration: const InputDecoration(
                  labelText: 'Enter Field Area (in acres)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the field area';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _selectedSoilType,
                onChanged: (value) {
                  setState(() {
                    _selectedSoilType = value;
                  });
                },
                items: _soilTypes.map((soil) {
                  return DropdownMenuItem(
                    value: soil,
                    child: Text(soil),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Select Soil Type',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a soil type';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _calculateFertilizer,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text('Calculate'),
              ),
              const SizedBox(height: 20),
              if (_result.isNotEmpty)
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green.shade200),
                  ),
                  child: Text(
                    _result,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _fieldAreaController.dispose();
    super.dispose();
  }
}

class CropRecommenderPage extends StatefulWidget {
  const CropRecommenderPage({super.key});

  @override
  _CropRecommenderPageState createState() => _CropRecommenderPageState();
}

class _CropRecommenderPageState extends State<CropRecommenderPage> {
  final _formKey = GlobalKey<FormState>();
  String _region = '';
  String _soilType = '';
  String _climate = '';
  String _waterAvailability = '';
  double _fieldSize = 0.0;
  String _growingSeason = '';
  String _previousCrops = '';
  String _marketDemand = '';
  String _fertilizerAvailability = '';
  double _budget = 0.0;
  String _recommendation = '';

  // Dropdown options
  final List<String> _indianStates = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  final List<String> _soilTypes = ['Clay', 'Sandy', 'Loamy', 'Silty'];
  final List<String> _climates = ['Tropical', 'Temperate', 'Arid', 'Mediterranean'];
  final List<String> _waterAvailabilityOptions = ['High', 'Medium', 'Low'];
  final List<String> _growingSeasons = ['Summer', 'Winter', 'Rainy Season'];
  final List<String> _marketDemandOptions = ['High', 'Medium', 'Low'];
  final List<String> _fertilizerOptions = ['Organic', 'Chemical', 'Mixed'];
  final List<String> _crops = [
    'Mango',
    'Rice',
    'Sugarcane',
    'Coconut',
    'Brinjal',
    'Sunflower',
    'Amla',
    'Grapes',
    'Onion',
    'Tomato',
    'Cotton',
    'Guava',
    'Sapota',
    'Ragi',
    'Jowar',
  ];

  void _recommendCrop() {
    if (_formKey.currentState!.validate()) {
      // Example recommendation logic (customize as needed)
      if (_soilType == 'Loamy' && _climate == 'Tropical' && _waterAvailability == 'High') {
        setState(() {
          _recommendation = 'Recommended Crop: Rice';
        });
      } else if (_soilType == 'Sandy' && _climate == 'Arid' && _waterAvailability == 'Low') {
        setState(() {
          _recommendation = 'Recommended Crop: Millet';
        });
      } else {
        setState(() {
          _recommendation = 'Recommended Crop: Wheat';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Crop Recommender'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              // Region dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Region',
                  border: OutlineInputBorder(),
                ),
                value: _region.isNotEmpty ? _region : null,
                items: _indianStates.map((String state) {
                  return DropdownMenuItem<String>(
                    value: state,
                    child: Text(state),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _region = value!;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select your region';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Soil type dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Soil Type',
                  border: OutlineInputBorder(),
                ),
                value: _soilType.isNotEmpty ? _soilType : null,
                items: _soilTypes.map((String soilType) {
                  return DropdownMenuItem<String>(
                    value: soilType,
                    child: Text(soilType),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _soilType = value!;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select soil type';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Climate dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Climate',
                  border: OutlineInputBorder(),
                ),
                value: _climate.isNotEmpty ? _climate : null,
                items: _climates.map((String climate) {
                  return DropdownMenuItem<String>(
                    value: climate,
                    child: Text(climate),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _climate = value!;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select climate';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Water availability dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Water Availability',
                  border: OutlineInputBorder(),
                ),
                value: _waterAvailability.isNotEmpty ? _waterAvailability : null,
                items: _waterAvailabilityOptions.map((String water) {
                  return DropdownMenuItem<String>(
                    value: water,
                    child: Text(water),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _waterAvailability = value!;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select water availability';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Field size input
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Field Size (in acres)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter field size';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _fieldSize = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              const SizedBox(height: 10),

              // Growing season dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Growing Season',
                  border: OutlineInputBorder(),
                ),
                value: _growingSeason.isNotEmpty ? _growingSeason : null,
                items: _growingSeasons.map((String season) {
                  return DropdownMenuItem<String>(
                    value: season,
                    child: Text(season),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _growingSeason = value!;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select growing season';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Previous crops dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Previous Crops',
                  border: OutlineInputBorder(),
                ),
                value: _previousCrops.isNotEmpty ? _previousCrops : null,
                items: _crops.map((String crop) {
                  return DropdownMenuItem<String>(
                    value: crop,
                    child: Text(crop),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _previousCrops = value!;
                  });
                },
              ),
              const SizedBox(height: 10),

              // Market demand dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Market Demand',
                  border: OutlineInputBorder(),
                ),
                value: _marketDemand.isNotEmpty ? _marketDemand : null,
                items: _marketDemandOptions.map((String demand) {
                  return DropdownMenuItem<String>(
                    value: demand,
                    child: Text(demand),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _marketDemand = value!;
                  });
                },
              ),
              const SizedBox(height: 10),

              // Fertilizer availability dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Fertilizer Availability',
                  border: OutlineInputBorder(),
                ),
                value: _fertilizerAvailability.isNotEmpty ? _fertilizerAvailability : null,
                items: _fertilizerOptions.map((String fertilizer) {
                  return DropdownMenuItem<String>(
                    value: fertilizer,
                    child: Text(fertilizer),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _fertilizerAvailability = value!;
                  });
                },
              ),
              const SizedBox(height: 10),

              // Budget input
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Budget (in ₹)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _budget = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Submit button
              ElevatedButton(
                onPressed: _recommendCrop,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text('Get Recommendation'),
              ),
              const SizedBox(height: 20),

              // Display recommendation
              if (_recommendation.isNotEmpty)
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green.shade200),
                  ),
                  child: Text(
                    _recommendation,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// subcides and schemes


class SubsidiesAndSchemesPage extends StatefulWidget {
  const SubsidiesAndSchemesPage({super.key});

  @override
  _SubsidiesAndSchemesPageState createState() => _SubsidiesAndSchemesPageState();
}

class _SubsidiesAndSchemesPageState extends State<SubsidiesAndSchemesPage> {
  String _selectedState = '';
  String _selectedCrop = '';
  List<Map<String, String>> _filteredSchemes = [];

  // List of all Indian states
  final List<String> _states = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  // List of crops
  final List<String> _crops = [
    'Rice',
    'Coconut',
    'Sugarcane',
    'Ragi',
    'Jowar',
    'Mango',
    'Cashew',
    'Wheat',
    'Corn',
    'Millet',
    'Cotton',
    'Tea',
    'Coffee',
  ];

  // List of schemes
  final List<Map<String, String>> _schemes = [
    {
      'title': 'Pradhan Mantri Fasal Bima Yojana (PMFBY)',
      'description': 'Crop insurance scheme to protect farmers against crop loss.',
      'eligibility': 'All farmers growing notified crops.',
      'benefits': 'Premium subsidy up to 90%.',
      'crops': 'Rice, Wheat, Corn, Millet, Cotton',
      'states': 'All',
    },
    {
      'title': 'Kisan Credit Card (KCC)',
      'description': 'Provides affordable credit to farmers for cultivation needs.',
      'eligibility': 'All farmers, including tenant farmers.',
      'benefits': 'Interest rate as low as 4%.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'National Mission on Sustainable Agriculture (NMSA)',
      'description': 'Promotes sustainable agriculture practices.',
      'eligibility': 'Farmers practicing organic farming.',
      'benefits': 'Subsidy for organic inputs and equipment.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'Soil Health Card Scheme',
      'description': 'Provides soil health cards to farmers for better nutrient management.',
      'eligibility': 'All farmers.',
      'benefits': 'Free soil testing and recommendations.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'Rashtriya Krishi Vikas Yojana (RKVY)',
      'description': 'Supports state-specific agriculture projects.',
      'eligibility': 'State governments and farmers.',
      'benefits': 'Financial assistance for agriculture projects.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'Paramparagat Krishi Vikas Yojana (PKVY)',
      'description': 'Promotes organic farming practices.',
      'eligibility': 'Farmers practicing organic farming.',
      'benefits': 'Financial assistance for organic inputs.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'Agri-Clinics and Agri-Business Centres',
      'description': 'Supports entrepreneurs to set up agri-clinics and agri-business centers.',
      'eligibility': 'Agriculture graduates and diploma holders.',
      'benefits': 'Subsidy up to 36% of the project cost.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'Digital Platform for Farm Mechanization and Technology',
      'description': 'Provides a platform for farmers to access farm machinery and technology.',
      'eligibility': 'All farmers.',
      'benefits': 'Subsidy on farm machinery and equipment.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'Farmers Portal - One Stop Shop For Farmers',
      'description': 'A single window platform for farmers to access information and services.',
      'eligibility': 'All farmers.',
      'benefits': 'Access to information on crops, weather, and schemes.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'Kisan Suvidha',
      'description': 'Mobile app to provide farmers with relevant information.',
      'eligibility': 'All farmers.',
      'benefits': 'Access to weather forecasts, market prices, and advisories.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'National Agriculture Market Portal (eNAM)',
      'description': 'Online platform for transparent and competitive trading of agricultural commodities.',
      'eligibility': 'Farmers and traders.',
      'benefits': 'Better price discovery and access to a wider market.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'National Bamboo Mission',
      'description': 'Promotes the growth of the bamboo sector.',
      'eligibility': 'Farmers and entrepreneurs in the bamboo sector.',
      'benefits': 'Financial assistance for bamboo cultivation and processing.',
      'crops': 'Bamboo',
      'states': 'All',
    },
    {
      'title': 'National Food Security Mission',
      'description': 'Aims to increase production of rice, wheat, and pulses.',
      'eligibility': 'Farmers growing rice, wheat, and pulses.',
      'benefits': 'Subsidy on seeds, fertilizers, and other inputs.',
      'crops': 'Rice, Wheat, Pulses',
      'states': 'All',
    },
    {
      'title': 'National Horticulture Mission',
      'description': 'Promotes holistic growth of the horticulture sector.',
      'eligibility': 'Farmers involved in horticulture.',
      'benefits': 'Subsidy for horticulture inputs and infrastructure.',
      'crops': 'Fruits, Vegetables, Flowers',
      'states': 'All',
    },
    {
      'title': 'National Mission on Oilseeds and Oil Palm (NMOOP)',
      'description': 'Promotes the cultivation of oilseeds and oil palm.',
      'eligibility': 'Farmers growing oilseeds and oil palm.',
      'benefits': 'Subsidy on seeds, fertilizers, and irrigation.',
      'crops': 'Oilseeds, Oil Palm',
      'states': 'All',
    },
    {
      'title': 'Pradhan Mantri Kisan Samman Nidhi (PM-KISAN)',
      'description': 'Provides income support to small and marginal farmers.',
      'eligibility': 'Small and marginal farmers.',
      'benefits': 'Direct income support of ₹6,000 per year.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'Pradhan Mantri Krishi Sinchayee Yojana (PMKSY)',
      'description': 'Promotes efficient water use in agriculture.',
      'eligibility': 'Farmers adopting micro-irrigation techniques.',
      'benefits': 'Subsidy for micro-irrigation systems.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'Seed Authentication, Traceability and Holistic Inventory (SATHI)',
      'description': 'Ensures quality and traceability of seeds.',
      'eligibility': 'Seed producers and farmers.',
      'benefits': 'Access to certified and traceable seeds.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'Unified Portal for Agriculture Statistics',
      'description': 'Provides comprehensive agricultural statistics.',
      'eligibility': 'Farmers, researchers, and policymakers.',
      'benefits': 'Access to reliable agricultural data.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'mKisan',
      'description': 'SMS-based advisory service for farmers.',
      'eligibility': 'All farmers.',
      'benefits': 'Timely information on weather, crops, and schemes.',
      'crops': 'All',
      'states': 'All',
    },
    {
      'title': 'Tamil Nadu Irrigated Agriculture Modernization Project (TNIAMP)',
      'description': 'Aims to modernize irrigation systems and improve water use efficiency in Tamil Nadu.',
      'eligibility': 'Farmers in Tamil Nadu with access to irrigation facilities.',
      'benefits': 'Subsidy for modern irrigation equipment and infrastructure.',
      'crops': 'All',
      'states': 'Tamil Nadu',
    },
    {
      'title': 'Tamil Nadu Mission on Sustainable Green Cover in Farmland (TNMSGF) - Phase I',
      'description': 'Promotes sustainable green cover and agroforestry in Tamil Nadu.',
      'eligibility': 'Farmers in Tamil Nadu practicing agroforestry or interested in green cover initiatives.',
      'benefits': 'Financial assistance for planting trees and maintaining green cover.',
      'crops': 'All',
      'states': 'Tamil Nadu',
    },
  ];

  // Function to filter schemes based on selected state and crop
  void _filterSchemes() {
    setState(() {
      _filteredSchemes = _schemes.where((scheme) {
        final schemeCrops = scheme['crops']!.split(', ');
        final schemeStates = scheme['states']!.split(', ');

        // Check if the selected crop and state match the scheme
        return (schemeCrops.contains(_selectedCrop) || schemeCrops.contains('All')) &&
            (schemeStates.contains(_selectedState) || schemeStates.contains('All'));
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subsidies and Schemes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Dropdown for selecting state
            DropdownButtonFormField<String>(
              value: _selectedState.isNotEmpty ? _selectedState : null,
              onChanged: (value) {
                setState(() {
                  _selectedState = value!;
                });
              },
              items: _states.map((state) {
                return DropdownMenuItem(
                  value: state,
                  child: Text(state),
                );
              }).toList(),
              decoration: const InputDecoration(
                labelText: 'Select State',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select a state';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

            // Dropdown for selecting crop
            DropdownButtonFormField<String>(
              value: _selectedCrop.isNotEmpty ? _selectedCrop : null,
              onChanged: (value) {
                setState(() {
                  _selectedCrop = value!;
                });
              },
              items: _crops.map((crop) {
                return DropdownMenuItem(
                  value: crop,
                  child: Text(crop),
                );
              }).toList(),
              decoration: const InputDecoration(
                labelText: 'Select Crop',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select a crop';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

            // Submit button
            ElevatedButton(
              onPressed: () {
                if (_selectedState.isNotEmpty && _selectedCrop.isNotEmpty) {
                  _filterSchemes();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please select a state and crop.'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text('Submit'),
            ),
            const SizedBox(height: 20),

            // Display filtered schemes
            if (_filteredSchemes.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: _filteredSchemes.length,
                  itemBuilder: (context, index) {
                    final scheme = _filteredSchemes[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              scheme['title']!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              scheme['description']!,
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Eligibility: ${scheme['eligibility']!}',
                              style: const TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Benefits: ${scheme['benefits']!}',
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
//notification





//for monthly alerts
class FertilizerReminderPage extends StatefulWidget {
  const FertilizerReminderPage({super.key});

  @override
  _FertilizerReminderPageState createState() => _FertilizerReminderPageState();
}

class _FertilizerReminderPageState extends State<FertilizerReminderPage> {
  final _formKey = GlobalKey<FormState>();
  final _cropTypeController = TextEditingController();
  final _fieldSizeController = TextEditingController();
  final _soilTypeController = TextEditingController();
  DateTime? _selectedStartDate;
  DateTime? _selectedEndDate;
  String _reminderFrequency = 'Monthly';
  final List<String> _frequencies = ['Monthly', 'Bi-Weekly', 'Custom'];

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    _initializeNotifications();
  }

  void _initializeNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings initializationSettings =
    InitializationSettings(android: initializationSettingsAndroid);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void _scheduleReminder() async {
    if (_formKey.currentState!.validate()) {
      if (_reminderFrequency == 'Custom' && (_selectedStartDate == null || _selectedEndDate == null)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select both start and end dates for custom reminders.')),
        );
        return;
      }

      if (_reminderFrequency != 'Custom' && _selectedStartDate == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a start date.')),
        );
        return;
      }

      const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
        'fertilizer_reminder',
        'Fertilizer Reminder',
        importance: Importance.max,
        priority: Priority.high,
      );
      const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);

      if (_reminderFrequency == 'Custom') {
        // Schedule notifications for each date in the custom range
        DateTime currentDate = _selectedStartDate!;
        while (currentDate.isBefore(_selectedEndDate!) || currentDate.isAtSameMomentAs(_selectedEndDate!)) {
          await flutterLocalNotificationsPlugin.show(
            0,
            'Fertilizer Reminder',
            'Time to apply fertilizer for your ${_cropTypeController.text} crop!',
            platformChannelSpecifics,
            payload: 'fertilizer_reminder',
          );
          currentDate = currentDate.add(const Duration(days: 1)); // Daily reminders
        }
      } else {
        // Calculate the next reminder date for non-custom frequencies
        DateTime nextReminderDate = _selectedStartDate!;
        if (_reminderFrequency == 'Monthly') {
          nextReminderDate = DateTime(
            nextReminderDate.year,
            nextReminderDate.month + 1,
            nextReminderDate.day,
            nextReminderDate.hour,
            nextReminderDate.minute,
          );
        } else if (_reminderFrequency == 'Bi-Weekly') {
          nextReminderDate = nextReminderDate.add(const Duration(days: 14));
        }

        // Schedule the notification
        await flutterLocalNotificationsPlugin.show(
          0,
          'Fertilizer Reminder',
          'Time to apply fertilizer for your ${_cropTypeController.text} crop!',
          platformChannelSpecifics,
          payload: 'fertilizer_reminder',
        );
      }

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Reminder(s) set successfully!')),
      );
    }
  }

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (picked != null) {
      setState(() {
        if (isStartDate) {
          _selectedStartDate = picked;
        } else {
          _selectedEndDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Fertilizer Reminder'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: _cropTypeController,
                decoration: const InputDecoration(
                  labelText: 'Crop Type',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the crop type';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _fieldSizeController,
                decoration: const InputDecoration(
                  labelText: 'Field Size (in acres)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the field size';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _soilTypeController,
                decoration: const InputDecoration(
                  labelText: 'Soil Type',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the soil type';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Reminder Frequency',
                  border: OutlineInputBorder(),
                ),
                value: _reminderFrequency,
                items: _frequencies.map((String frequency) {
                  return DropdownMenuItem<String>(
                    value: frequency,
                    child: Text(frequency),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _reminderFrequency = value!;
                  });
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                title: Text(
                  _selectedStartDate == null
                      ? 'Select Start Date'
                      : 'Selected Start Date: ${_selectedStartDate!.toLocal()}'.split(' ')[0],
                ),
                trailing: const Icon(Icons.calendar_today),
                onTap: () => _selectDate(context, true),
              ),
              if (_reminderFrequency == 'Custom') ...[
                const SizedBox(height: 10),
                ListTile(
                  title: Text(
                    _selectedEndDate == null
                        ? 'Select End Date'
                        : 'Selected End Date: ${_selectedEndDate!.toLocal()}'.split(' ')[0],
                  ),
                  trailing: const Icon(Icons.calendar_today),
                  onTap: () => _selectDate(context, false),
                ),
              ],
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _scheduleReminder,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text('Set Reminder'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//community support page


class CommunitySupportPage extends StatelessWidget {
  const CommunitySupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Support'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildCommunityForumSection(),
          const SizedBox(height: 20),
          _buildDiscussionTopicsSection(),
          const SizedBox(height: 20),
          _buildAskQuestionSection(),
        ],
      ),
    );
  }

  Widget _buildCommunityForumSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Community Forum',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Join discussions, share experiences, and get advice from fellow farmers.',
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to the community forum screen
              },
              child: const Text('Visit Forum'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDiscussionTopicsSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Popular Discussion Topics',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.agriculture),
              title: const Text('Crop Rotation Techniques'),
              onTap: () {
                // Navigate to the specific discussion topic
              },
            ),
            ListTile(
              leading: const Icon(Icons.water_drop),
              title: const Text('Irrigation Methods'),
              onTap: () {
                // Navigate to the specific discussion topic
              },
            ),
            ListTile(
              leading: const Icon(Icons.pest_control),
              title: const Text('Pest Control Solutions'),
              onTap: () {
                // Navigate to the specific discussion topic
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAskQuestionSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ask a Question',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Have a specific question? Ask the community for help.',
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Your Question',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Submit the question to the community
              },
              child: const Text('Submit Question'),
            ),
          ],
        ),
      ),
    );
  }
}

//price comparison//
class PriceComparisonPage extends StatefulWidget {
  const PriceComparisonPage({super.key});

  @override
  _PriceComparisonPageState createState() => _PriceComparisonPageState();
}

class _PriceComparisonPageState extends State<PriceComparisonPage> {
  String _selectedCrop = 'Rice'; // Default selected crop
  final List<String> _crops = [
    'Rice',
    'Mango',
    'Coconut',
    'Ragi',
    'Jowar',
    'Sugarcane',
    'Sunflower',
    'Castor',
    'Banana',
    'Gram',
    'Sesame',
    'Jackfruit',
    'Amla',
    'Grapes',
    'Onion',
    'Radish',
    'Brinjal',
  ];

  // Sample price data for crops in different districts
  final Map<String, Map<String, double>> _priceData = {
    'Rice': {
      'Ariyalur': 25.0,
      'Chengalpet': 27.0,
      'Coimbatore': 26.5,
      'Madurai': 24.0,
      'Trichy': 25.5,
      'Salem': 26.0,
      'Erode': 24.5,
    },
    'Mango': {
      'Ariyalur': 40.0,
      'Chengalpet': 42.0,
      'Coimbatore': 41.0,
      'Madurai': 39.0,
      'Trichy': 40.5,
      'Salem': 41.5,
      'Erode': 38.5,
    },
    'Coconut': {
      'Ariyalur': 15.0,
      'Chengalpet': 16.0,
      'Coimbatore': 15.5,
      'Madurai': 14.0,
      'Trichy': 15.0,
      'Salem': 16.5,
      'Erode': 14.5,
    },
    'Ragi': {
      'Ariyalur': 30.0,
      'Chengalpet': 32.0,
      'Coimbatore': 31.0,
      'Madurai': 29.0,
      'Trichy': 30.5,
      'Salem': 31.5,
      'Erode': 28.5,
    },
    'Jowar': {
      'Ariyalur': 20.0,
      'Chengalpet': 22.0,
      'Coimbatore': 21.0,
      'Madurai': 19.0,
      'Trichy': 20.5,
      'Salem': 21.5,
      'Erode': 18.5,
    },
    'Sugarcane': {
      'Ariyalur': 10.0,
      'Chengalpet': 12.0,
      'Coimbatore': 11.0,
      'Madurai': 9.0,
      'Trichy': 10.5,
      'Salem': 11.5,
      'Erode': 8.5,
    },
    'Sunflower': {
      'Ariyalur': 50.0,
      'Chengalpet': 52.0,
      'Coimbatore': 51.0,
      'Madurai': 49.0,
      'Trichy': 50.5,
      'Salem': 51.5,
      'Erode': 48.5,
    },
    'Castor': {
      'Ariyalur': 35.0,
      'Chengalpet': 37.0,
      'Coimbatore': 36.0,
      'Madurai': 34.0,
      'Trichy': 35.5,
      'Salem': 36.5,
      'Erode': 33.5,
    },
    'Banana': {
      'Ariyalur': 18.0,
      'Chengalpet': 20.0,
      'Coimbatore': 19.0,
      'Madurai': 17.0,
      'Trichy': 18.5,
      'Salem': 19.5,
      'Erode': 16.5,
    },
    'Gram': {
      'Ariyalur': 45.0,
      'Chengalpet': 47.0,
      'Coimbatore': 46.0,
      'Madurai': 44.0,
      'Trichy': 45.5,
      'Salem': 46.5,
      'Erode': 43.5,
    },
    'Sesame': {
      'Ariyalur': 60.0,
      'Chengalpet': 62.0,
      'Coimbatore': 61.0,
      'Madurai': 59.0,
      'Trichy': 60.5,
      'Salem': 61.5,
      'Erode': 58.5,
    },
    'Jackfruit': {
      'Ariyalur': 22.0,
      'Chengalpet': 24.0,
      'Coimbatore': 23.0,
      'Madurai': 21.0,
      'Trichy': 22.5,
      'Salem': 23.5,
      'Erode': 20.5,
    },
    'Amla': {
      'Ariyalur': 28.0,
      'Chengalpet': 30.0,
      'Coimbatore': 29.0,
      'Madurai': 27.0,
      'Trichy': 28.5,
      'Salem': 29.5,
      'Erode': 26.5,
    },
    'Grapes': {
      'Ariyalur': 55.0,
      'Chengalpet': 57.0,
      'Coimbatore': 56.0,
      'Madurai': 54.0,
      'Trichy': 55.5,
      'Salem': 56.5,
      'Erode': 53.5,
    },
    'Onion': {
      'Ariyalur': 12.0,
      'Chengalpet': 14.0,
      'Coimbatore': 13.0,
      'Madurai': 11.0,
      'Trichy': 12.5,
      'Salem': 13.5,
      'Erode': 10.5,
    },
    'Radish': {
      'Ariyalur': 8.0,
      'Chengalpet': 10.0,
      'Coimbatore': 9.0,
      'Madurai': 7.0,
      'Trichy': 8.5,
      'Salem': 9.5,
      'Erode': 6.5,
    },
    'Brinjal': {
      'Ariyalur': 14.0,
      'Chengalpet': 16.0,
      'Coimbatore': 15.0,
      'Madurai': 13.0,
      'Trichy': 14.5,
      'Salem': 15.5,
      'Erode': 12.5,
    },
  };

  // Function to get the most profitable district
  String _getMostProfitableDistrict(Map<String, double> prices) {
    String profitableDistrict = '';
    double maxPrice = 0.0;

    prices.forEach((district, price) {
      if (price > maxPrice) {
        maxPrice = price;
        profitableDistrict = district;
      }
    });

    return profitableDistrict;
  }

  @override
  Widget build(BuildContext context) {
    final cropPrices = _priceData[_selectedCrop] ?? {};
    final mostProfitableDistrict = _getMostProfitableDistrict(cropPrices);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Price Comparison'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Dropdown for selecting crop
            DropdownButtonFormField<String>(
              value: _selectedCrop,
              onChanged: (value) {
                setState(() {
                  _selectedCrop = value!;
                });
              },
              items: _crops.map((crop) {
                return DropdownMenuItem(
                  value: crop,
                  child: Text(crop),
                );
              }).toList(),
              decoration: const InputDecoration(
                labelText: 'Select Crop',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Display price comparison table
            const Text(
              'Price Comparison (per kg)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: cropPrices.entries.map((entry) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ListTile(
                      title: Text(entry.key),
                      trailing: Text('₹${entry.value.toStringAsFixed(2)}'),
                    ),
                  );
                }).toList(),
              ),
            ),

            // Display most profitable district
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.green.shade200),
              ),
              child: Text(
                'Most Profitable District: $mostProfitableDistrict',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//--------------------------------//loan page//-----------------------------//


class ScheduleMeetingPage extends StatefulWidget {
  const ScheduleMeetingPage({super.key});

  @override
  _ScheduleMeetingPageState createState() => _ScheduleMeetingPageState();
}

class _ScheduleMeetingPageState extends State<ScheduleMeetingPage> {
  String _selectedDate = '';
  String _selectedDoubt = '';
  final List<String> _doubtCategories = [
    'Loan',
    'Pesticide',
    'Fertilizers',
    'Profit',
    'Crop Disease',
    'Irrigation',
    'Soil Health',
    'Market Prices',
    'Government Schemes',
    'Other',
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1), // Allow dates up to 1 year from now
    );
    if (picked != null) {
      setState(() {
        _selectedDate = "${picked.toLocal()}".split(' ')[0]; // Format: YYYY-MM-DD
      });
    }
  }

  void _submitMeetingRequest() {
    if (_selectedDate.isEmpty || _selectedDoubt.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a date and doubt category.'),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Meeting scheduled on $_selectedDate for $_selectedDoubt.'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule Meeting'),
        backgroundColor: Colors.green,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideLayout(context);
          } else {
            return _buildNarrowLayout(context);
          }
        },
      ),
    );
  }

  // Layout for narrow screens (mobile)
  Widget _buildNarrowLayout(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Toll-free number card
          _buildTollFreeCard(),
          const SizedBox(height: 20),

          // Date selection using a ListTile and date picker
          ListTile(
            title: Text(
              _selectedDate.isEmpty ? 'Select Date' : 'Selected Date: $_selectedDate',
            ),
            trailing: const Icon(Icons.calendar_today),
            onTap: () => _selectDate(context),
          ),
          const SizedBox(height: 20),

          // Dropdown for selecting doubt category
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Select Doubt Category',
              border: OutlineInputBorder(),
            ),
            value: _selectedDoubt.isNotEmpty ? _selectedDoubt : null,
            items: _doubtCategories.map((String category) {
              return DropdownMenuItem<String>(
                value: category,
                child: Text(category),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedDoubt = value!;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please select a doubt category';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),

          // Submit button
          ElevatedButton(
            onPressed: _submitMeetingRequest,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
            ),
            child: const Text(
              'Schedule Meeting',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  // Layout for wide screens (tablet/desktop)
  Widget _buildWideLayout(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Toll-free number card
          _buildTollFreeCard(),
          const SizedBox(height: 20),

          // Date selection and doubt category in a row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    _selectedDate.isEmpty ? 'Select Date' : 'Selected Date: $_selectedDate',
                  ),
                  trailing: const Icon(Icons.calendar_today),
                  onTap: () => _selectDate(context),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Select Doubt Category',
                    border: OutlineInputBorder(),
                  ),
                  value: _selectedDoubt.isNotEmpty ? _selectedDoubt : null,
                  items: _doubtCategories.map((String category) {
                    return DropdownMenuItem<String>(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedDoubt = value!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a doubt category';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Submit button
          ElevatedButton(
            onPressed: _submitMeetingRequest,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
            ),
            child: const Text(
              'Schedule Meeting',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  // Toll-free number card
  Widget _buildTollFreeCard() {
    return Card(
      color: Colors.green.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.green,
              size: 24,
            ),
            const SizedBox(width: 10),
            const Text(
              'Toll-Free Number:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              '1800-180-1551',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//industry connection//

class IndustryConnectionPage extends StatefulWidget {
  const IndustryConnectionPage({super.key});

  @override
  _IndustryConnectionPageState createState() => _IndustryConnectionPageState();
}

class _IndustryConnectionPageState extends State<IndustryConnectionPage> {
  String _selectedCrop = '';
  final TextEditingController _quantityController = TextEditingController();
  String _industryResult = '';

  final List<String> _crops = [
    'Mango',
    'Coconut',
    'Sugarcane',
    'Amla',
    'Grapes',
    'Rice',
    'Ragi',
    'Jowar',
    'Guava',
    'Millet',
    'Onion',
  ];

  final Map<String, List<String>> _industryMap = {
    'Mango': ['Mimi\'s Mango Juice', 'Shakthi Mangoes'],
    'Coconut': ['CocoFresh', 'TenderCoco'],
    'Sugarcane': ['SweetCane Industries', 'SugarDelight'],
    'Amla': ['AmlaHealth', 'Nature\'s Amla'],
    'Grapes': ['GrapeVine Wines', 'FreshGrapes Co.'],
    'Rice': ['GoldenGrains', 'RicePure'],
    'Ragi': ['RagiHealth', 'NutriRagi'],
    'Jowar': ['JowarKing', 'HealthyJowar'],
    'Guava': ['GuavaGoodness', 'FreshGuava'],
    'Millet': ['MilletMagic', 'OrganicMillet'],
    'Onion': ['OnionMaster', 'FreshOnion Co.'],
  };

  void _findIndustries() {
    if (_selectedCrop.isEmpty || _quantityController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a crop and enter the quantity.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final industries = _industryMap[_selectedCrop] ?? [];
    setState(() {
      _industryResult = 'Suitable Industries for $_selectedCrop:\n${industries.join('\n')}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Industry Connection'),
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Responsive layout based on screen width
          if (constraints.maxWidth > 600) {
            return _buildWideLayout(context);
          } else {
            return _buildNarrowLayout(context);
          }
        },
      ),
    );
  }

  // Layout for narrow screens (mobile)
  Widget _buildNarrowLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildCropDropdown(),
          const SizedBox(height: 20),
          _buildQuantityInput(),
          const SizedBox(height: 20),
          _buildSubmitButton(),
          const SizedBox(height: 20),
          if (_industryResult.isNotEmpty) _buildIndustryResult(),
        ],
      ),
    );
  }

  // Layout for wide screens (tablet/desktop)
  Widget _buildWideLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildCropDropdown(),
                const SizedBox(height: 20),
                _buildQuantityInput(),
                const SizedBox(height: 20),
                _buildSubmitButton(),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: _buildIndustryResult(),
          ),
        ],
      ),
    );
  }

  // Crop dropdown
  Widget _buildCropDropdown() {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        labelText: 'Select Crop',
        border: OutlineInputBorder(),
      ),
      value: _selectedCrop.isNotEmpty ? _selectedCrop : null,
      items: _crops.map((String crop) {
        return DropdownMenuItem<String>(
          value: crop,
          child: Text(crop),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedCrop = value!;
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select a crop';
        }
        return null;
      },
    );
  }

  // Quantity input
  Widget _buildQuantityInput() {
    return TextFormField(
      controller: _quantityController,
      decoration: const InputDecoration(
        labelText: 'Quantity of Harvest (in kg)',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter the quantity';
        }
        return null;
      },
    );
  }

  // Submit button
  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: _findIndustries,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 16.0),
      ),
      child: const Text('Find Industries'),
    );
  }

  // Industry result display
  Widget _buildIndustryResult() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          _industryResult,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

// yield prediction//

class YieldPredictPage extends StatefulWidget {
  const YieldPredictPage({super.key});

  @override
  _YieldPredictPageState createState() => _YieldPredictPageState();
}

class _YieldPredictPageState extends State<YieldPredictPage> {
  // Lists for dropdown options
  final List<String> districts = [
    'Ariyalur',
    'Chennai',
    'Coimbatore',
    'Cuddalore',
    'Dharmapuri',
    'Dindigul',
    'Erode',
    'Kanchipuram',
    'Kanyakumari',
    'Karur',
    'Krishnagiri',
    'Madurai',
    'Nagapattinam',
    'Namakkal',
    'Nilgiris',
    'Perambalur',
    'Pudukkottai',
    'Ramanathapuram',
    'Salem',
    'Sivaganga',
    'Thanjavur',
    'Theni',
    'Thoothukudi',
    'Tiruchirappalli',
    'Tirunelveli',
    'Tiruppur',
    'Tiruvallur',
    'Tiruvannamalai',
    'Tiruvarur',
    'Vellore',
    'Viluppuram',
    'Virudhunagar',
  ];

  final List<String> crops = [
    'Paddy',
    'Maize',
    'Sugarcane',
    'Cotton',
    'Groundnut',
    'Coconut',
    'Banana',
    'Mango',
    'Tapioca',
    'Turmeric',
    'Chilli',
    'Tomato',
    'Brinjal',
    'Onion',
    'Guava',
  ];

  final List<String> cropTypes = [
    'Food Crop',
    'Cash Crop',
    'Horticulture',
    'Plantation Crop',
  ];

  final List<String> rainfallLevels = [
    'Low (0-50 mm)',
    'Moderate (50-100 mm)',
    'High (100-200 mm)',
    'Very High (>200 mm)',
  ];

  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  // Selected values from dropdowns
  String? selectedDistrict;
  String? selectedCrop;
  String? selectedCropType;
  String? selectedRainfallLevel;
  String? selectedMonth;

  // Predicted yield
  String predictedYield = '';

  // Method to calculate yield
  void _calculateYield() {
    if (selectedDistrict == null ||
        selectedCrop == null ||
        selectedCropType == null ||
        selectedRainfallLevel == null ||
        selectedMonth == null) {
      setState(() {
        predictedYield = 'Please fill all fields.';
      });
      return;
    }

    // Base yield based on crop type
    double baseYield = 0;
    switch (selectedCropType) {
      case 'Food Crop':
        baseYield = 3.0;
        break;
      case 'Cash Crop':
        baseYield = 2.5;
        break;
      case 'Horticulture':
        baseYield = 4.0;
        break;
      case 'Plantation Crop':
        baseYield = 5.0;
        break;
    }

    // Adjust yield based on rainfall
    switch (selectedRainfallLevel) {
      case 'Low (0-50 mm)':
        baseYield *= 0.8;
        break;
      case 'Moderate (50-100 mm)':
        baseYield *= 1.0;
        break;
      case 'High (100-200 mm)':
        baseYield *= 1.2;
        break;
      case 'Very High (>200 mm)':
        baseYield *= 1.5;
        break;
    }

    // Adjust yield based on month (seasonality)
    if (selectedMonth == 'June' || selectedMonth == 'July' || selectedMonth == 'August') {
      baseYield *= 1.3; // Monsoon season
    } else if (selectedMonth == 'November' || selectedMonth == 'December') {
      baseYield *= 1.1; // Post-monsoon season
    }

    setState(() {
      predictedYield = 'Predicted Yield: ${baseYield.toStringAsFixed(2)} tons/ha';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Predict Yield'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // District Dropdown
            DropdownButtonFormField<String>(
              value: selectedDistrict,
              decoration: const InputDecoration(
                labelText: 'Select District',
                border: OutlineInputBorder(),
              ),
              items: districts.map((String district) {
                return DropdownMenuItem<String>(
                  value: district,
                  child: Text(district),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedDistrict = value;
                });
              },
            ),
            const SizedBox(height: 16),

            // Crop Dropdown
            DropdownButtonFormField<String>(
              value: selectedCrop,
              decoration: const InputDecoration(
                labelText: 'Select Crop',
                border: OutlineInputBorder(),
              ),
              items: crops.map((String crop) {
                return DropdownMenuItem<String>(
                  value: crop,
                  child: Text(crop),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedCrop = value;
                });
              },
            ),
            const SizedBox(height: 16),

            // Crop Type Dropdown
            DropdownButtonFormField<String>(
              value: selectedCropType,
              decoration: const InputDecoration(
                labelText: 'Select Crop Type',
                border: OutlineInputBorder(),
              ),
              items: cropTypes.map((String cropType) {
                return DropdownMenuItem<String>(
                  value: cropType,
                  child: Text(cropType),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedCropType = value;
                });
              },
            ),
            const SizedBox(height: 16),

            // Rainfall Level Dropdown
            DropdownButtonFormField<String>(
              value: selectedRainfallLevel,
              decoration: const InputDecoration(
                labelText: 'Select Rainfall Level',
                border: OutlineInputBorder(),
              ),
              items: rainfallLevels.map((String rainfall) {
                return DropdownMenuItem<String>(
                  value: rainfall,
                  child: Text(rainfall),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedRainfallLevel = value;
                });
              },
            ),
            const SizedBox(height: 16),

            // Month Dropdown
            DropdownButtonFormField<String>(
              value: selectedMonth,
              decoration: const InputDecoration(
                labelText: 'Select Month',
                border: OutlineInputBorder(),
              ),
              items: months.map((String month) {
                return DropdownMenuItem<String>(
                  value: month,
                  child: Text(month),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedMonth = value;
                });
              },
            ),
            const SizedBox(height: 24),

            // Predict Button
            ElevatedButton(
              onPressed: _calculateYield,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'Predict Yield',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 24),

            // Predicted Yield Display
            Text(
              predictedYield,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}


//real time monitor//

// MonitoringSystem class (same as provided)
class RealTimeMonitoringPage extends StatefulWidget {
  @override
  _RealTimeMonitoringPageState createState() => _RealTimeMonitoringPageState();
}

class _RealTimeMonitoringPageState extends State<RealTimeMonitoringPage> {
  final MonitoringSystem _monitoringSystem = MonitoringSystem();
  String _sensorData = '';
  String _recommendations = '';

  @override
  void initState() {
    super.initState();
    _startMonitoring();
  }

  @override
  void dispose() {
    _monitoringSystem.stopRealTimeUpdates();
    super.dispose();
  }

  // Method to start monitoring
  void _startMonitoring() {
    _monitoringSystem.startRealTimeUpdates();
    _updateUI();
  }

  // Method to update the UI with sensor data and recommendations
  void _updateUI() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (!mounted) return; // Ensure the widget is still mounted
      setState(() {
        _sensorData = _monitoringSystem.getFormattedSensorData();
        _recommendations = _monitoringSystem.getFormattedRecommendations();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real-Time Monitoring'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sensor Data:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              _sensorData,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Recommendations:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              _recommendations,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

// MonitoringSystem class (same as provided, with minor adjustments for Flutter)
class MonitoringSystem {
  // Simulated sensor data
  double _temperature = 25.0; // in Celsius
  double _humidity = 50.0; // in percentage
  double _soilMoisture = 60.0; // in percentage
  double _soilPH = 6.5; // pH level
  double _lightIntensity = 7000.0; // in lux

  // Timer for real-time updates
  Timer? _timer;

  // Method to start real-time updates
  void startRealTimeUpdates() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _updateSensorDataIncrementally();
    });
  }

  // Method to stop real-time updates
  void stopRealTimeUpdates() {
    _timer?.cancel();
  }

  // Method to update sensor data incrementally
  void _updateSensorDataIncrementally() {
    _temperature = _incrementValue(_temperature, 20, 40, 0.1);
    _humidity = _incrementValue(_humidity, 30, 90, 0.2);
    _soilMoisture = _incrementValue(_soilMoisture, 10, 100, 0.3);
    _soilPH = _incrementValue(_soilPH, 4, 9, 0.05);
    _lightIntensity = _incrementValue(_lightIntensity, 1000, 10000, 50);
  }

  // Method to increment or decrement a value within a range
  double _incrementValue(double value, double min, double max, double step) {
    value += (step * (Random().nextDouble() > 0.5 ? 1 : -1)); // Randomly increment or decrement
    value = value.clamp(min, max); // Ensure value stays within the range
    return double.parse(value.toStringAsFixed(2)); // Round to 2 decimal places
  }

  // Method to get formatted sensor data
  String getFormattedSensorData() {
    return '''
- Temperature: ${_temperature.toStringAsFixed(1)}°C
- Humidity: ${_humidity.toStringAsFixed(1)}%
- Soil Moisture: ${_soilMoisture.toStringAsFixed(1)}%
- Soil pH: ${_soilPH.toStringAsFixed(1)}
- Light Intensity: ${_lightIntensity.toStringAsFixed(1)} lux
''';
  }

  // Method to get formatted recommendations
  String getFormattedRecommendations() {
    String recommendations = '';
    if (_temperature >= 20 && _temperature <= 30) {
      recommendations += '- Temperature is optimal.\n';
    } else {
      recommendations += '- Temperature is not optimal.\n';
      if (_temperature < 20) {
        recommendations += '  - Action: Use greenhouse heating or cover crops to increase temperature.\n';
      } else if (_temperature > 30) {
        recommendations += '  - Action: Provide shade or increase ventilation to reduce temperature.\n';
      }
    }

    if (_humidity >= 40 && _humidity <= 80) {
      recommendations += '- Humidity is optimal.\n';
    } else {
      recommendations += '- Humidity is not optimal.\n';
      if (_humidity < 40) {
        recommendations += '  - Action: Use misting systems or increase irrigation to raise humidity.\n';
      } else if (_humidity > 80) {
        recommendations += '  - Action: Improve ventilation or use dehumidifiers to reduce humidity.\n';
      }
    }

    if (_soilMoisture >= 50 && _soilMoisture <= 80) {
      recommendations += '- Soil moisture is optimal.\n';
    } else {
      recommendations += '- Soil moisture is not optimal.\n';
      if (_soilMoisture < 50) {
        recommendations += '  - Action: Increase irrigation to maintain proper soil moisture.\n';
      } else if (_soilMoisture > 80) {
        recommendations += '  - Action: Reduce irrigation or improve drainage to prevent waterlogging.\n';
      }
    }

    if (_soilPH >= 6 && _soilPH <= 7.5) {
      recommendations += '- Soil pH is optimal.\n';
    } else {
      recommendations += '- Soil pH is not optimal.\n';
      if (_soilPH < 6) {
        recommendations += '  - Action: Add lime to the soil to increase pH.\n';
      } else if (_soilPH > 7.5) {
        recommendations += '  - Action: Add sulfur or organic matter to lower pH.\n';
      }
    }

    if (_lightIntensity >= 5000 && _lightIntensity <= 10000) {
      recommendations += '- Light intensity is optimal.\n';
    } else {
      recommendations += '- Light intensity is not optimal.\n';
      if (_lightIntensity < 5000) {
        recommendations += '  - Action: Increase exposure to sunlight or use artificial grow lights.\n';
      } else if (_lightIntensity > 10000) {
        recommendations += '  - Action: Provide shading or reduce light exposure to prevent damage.\n';
      }
    }

    return recommendations;
  }
}

//weather prediction///
class WeatherPredictionPage extends StatelessWidget {
  final WeatherPredictionSystem weatherSystem = WeatherPredictionSystem();

  @override
  Widget build(BuildContext context) {
    weatherSystem.displayWeatherPage(); // Update and display weather data

    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Prediction'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Responsive layout based on screen width
          if (constraints.maxWidth > 600) {
            return _buildWideLayout(context);
          } else {
            return _buildNarrowLayout(context);
          }
        },
      ),
    );
  }

  // Layout for narrow screens (mobile)
  Widget _buildNarrowLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildWeatherHeader(),
          SizedBox(height: 20),
          _buildWeatherDetails(),
          SizedBox(height: 20),
          _buildAdviceSection(),
        ],
      ),
    );
  }

  // Layout for wide screens (tablet/desktop)
  Widget _buildWideLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildWeatherHeader(),
                SizedBox(height: 20),
                _buildWeatherDetails(),
              ],
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: 1,
            child: _buildAdviceSection(),
          ),
        ],
      ),
    );
  }

  // Weather header section
  Widget _buildWeatherHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '=== Weather Prediction ===',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Last Updated: ${weatherSystem.lastUpdateTime.toLocal()}',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }

  // Weather details section
  Widget _buildWeatherDetails() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(
              _getWeatherIcon(weatherSystem.condition),
              size: 50,
              color: Colors.blue,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Temperature: ${weatherSystem.temperature.toStringAsFixed(1)}°C',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Condition: ${weatherSystem.condition}',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Advice section
  Widget _buildAdviceSection() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Advice:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  _getAdviceIcon(weatherSystem.condition, weatherSystem.temperature),
                  size: 30,
                  color: Colors.green,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    weatherSystem.getAdvice(),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to get weather icon based on condition
  IconData _getWeatherIcon(String condition) {
    switch (condition) {
      case 'Sunny':
        return Icons.wb_sunny;
      case 'Cloudy':
        return Icons.cloud;
      case 'Rainy':
        return Icons.beach_access;
      case 'Snowy':
        return Icons.ac_unit;
      default:
        return Icons.cloud;
    }
  }

  // Helper method to get advice icon based on condition and temperature
  IconData _getAdviceIcon(String condition, double temperature) {
    if (temperature >= 25 && temperature <= 30 && condition == 'Cloudy') {
      return Icons.opacity; // Irrigation icon
    } else if (condition == 'Rainy') {
      return Icons.umbrella; // Umbrella icon
    } else if (temperature > 30) {
      return Icons.wb_twilight; // High temperature icon
    } else {
      return Icons.help_outline; // General advice icon
    }
  }
}

class WeatherPredictionSystem {
  // Simulated weather data
  double _temperature = 28.0; // in Celsius
  String _condition = 'Cloudy'; // Weather condition
  DateTime _lastUpdateTime = DateTime.now().subtract(Duration(minutes: 11)); // Initialize to force an update

  // Getters for weather data
  double get temperature => _temperature;
  String get condition => _condition;
  DateTime get lastUpdateTime => _lastUpdateTime;

  // Method to update weather data (simulated, but only once every 10 minutes)
  void _updateWeatherData() {
    final currentTime = DateTime.now();
    final timeSinceLastUpdate = currentTime.difference(_lastUpdateTime).inMinutes;

    if (timeSinceLastUpdate >= 10) {
      _temperature = _simulateValue(20, 35); // Temperature between 20°C to 35°C
      _condition = _simulateCondition(); // Random weather condition
      _lastUpdateTime = currentTime; // Update the last update time
      print('Weather data updated: ${_lastUpdateTime.toLocal()}');
    }
  }

  // Method to simulate random temperature values
  double _simulateValue(double min, double max) {
    return (min + (max - min) * _random()).toDouble();
  }

  // Method to simulate random weather conditions
  String _simulateCondition() {
    final conditions = ['Sunny', 'Cloudy', 'Rainy', 'Snowy'];
    return conditions[DateTime.now().second % conditions.length];
  }

  // Method to generate a random number between 0 and 1
  double _random() {
    return DateTime.now().millisecond / 1000.0;
  }

  // Method to display the weather prediction page
  void displayWeatherPage() {
    _updateWeatherData(); // Update weather data if 10 minutes have passed
  }

  // Method to get advice based on weather conditions
  String getAdvice() {
    if (_temperature >= 25 && _temperature <= 30 && _condition == 'Cloudy') {
      return 'Today is a great day for irrigation.';
    } else if (_condition == 'Rainy') {
      return 'No need for irrigation as it is raining.';
    } else if (_temperature > 30) {
      return 'In high temperatures, irrigate in the morning or evening.';
    } else {
      return 'General condition. Irrigate if necessary.';
    }
  }
}

//tractor//


class TractorRentalPage extends StatelessWidget {
  final TractorRentalSystem rentalSystem = TractorRentalSystem();

  @override
  Widget build(BuildContext context) {
    // Simulate adding rental requests
    rentalSystem.addRentalRequest('Rajesh Kumar', 5, 1500.0);
    rentalSystem.addRentalRequest('Priya Sharma', 3, 2500.0);

    return Scaffold(
      appBar: AppBar(
        title: Text('Tractor Rental Requests'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Responsive layout based on screen width
          if (constraints.maxWidth > 600) {
            return _buildWideLayout(context);
          } else {
            return _buildNarrowLayout(context);
          }
        },
      ),
    );
  }

  // Layout for narrow screens (mobile)
  Widget _buildNarrowLayout(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRentalRequestForm(context),
          SizedBox(height: 20),
          _buildRentalRequestsList(),
        ],
      ),
    );
  }

  // Layout for wide screens (tablet/desktop)
  Widget _buildWideLayout(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: _buildRentalRequestForm(context),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: _buildRentalRequestsList(),
          ),
        ],
      ),
    );
  }

  // Build the rental request form
  Widget _buildRentalRequestForm(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _durationController = TextEditingController();
    final TextEditingController _priceController = TextEditingController();

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Submit Rental Request',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Your Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _durationController,
              decoration: InputDecoration(
                labelText: 'Duration (Days)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _priceController,
              decoration: InputDecoration(
                labelText: 'Price (₹)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text.trim();
                final duration = int.tryParse(_durationController.text.trim()) ?? 0;
                final price = double.tryParse(_priceController.text.trim()) ?? 0.0;

                if (name.isEmpty || duration <= 0 || price <= 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please fill all fields with valid values.'),
                      backgroundColor: Colors.red,
                    ),
                  );
                  return;
                }

                rentalSystem.addRentalRequest(name, duration, price);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Rental request submitted successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );

                // Clear the form
                _nameController.clear();
                _durationController.clear();
                _priceController.clear();

                // Refresh the page to show the new request
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TractorRentalPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: Text('Submit Request'),
            ),
          ],
        ),
      ),
    );
  }

  // Build the list of rental requests
  Widget _buildRentalRequestsList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: rentalSystem.rentalRequests.length,
      itemBuilder: (context, index) {
        final request = rentalSystem.rentalRequests[index];
        return Card(
          elevation: 4,
          margin: EdgeInsets.symmetric(vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.green,
                    ),
                    SizedBox(width: 10),
                    Text(
                      request['requesterName'],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 20,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Duration: ${request['durationDays']} days',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 20,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Price: ₹${request['price'].toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      _getStatusIcon(request['status']),
                      size: 20,
                      color: _getStatusColor(request['status']),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Status: ${request['status']}',
                      style: TextStyle(
                        fontSize: 16,
                        color: _getStatusColor(request['status']),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                if (request['status'] == 'Pending')
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          rentalSystem.handleRentalRequest(index, 'accept');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'Request from ${request['requesterName']} has been accepted.'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TractorRentalPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: Text('Accept'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          rentalSystem.handleRentalRequest(index, 'decline');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'Request from ${request['requesterName']} has been declined.'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TractorRentalPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: Text('Decline'),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Helper method to get status icon
  IconData _getStatusIcon(String status) {
    switch (status) {
      case 'Accepted':
        return Icons.check_circle;
      case 'Declined':
        return Icons.cancel;
      default:
        return Icons.pending;
    }
  }

  // Helper method to get status color
  Color _getStatusColor(String status) {
    switch (status) {
      case 'Accepted':
        return Colors.green;
      case 'Declined':
        return Colors.red;
      default:
        return Colors.orange;
    }
  }
}

class TractorRentalSystem {
  // List of rental requests
  final List<Map<String, dynamic>> rentalRequests = [];

  // Method to add a rental request
  void addRentalRequest(String requesterName, int durationDays, double price) {
    rentalRequests.add({
      'requesterName': requesterName,
      'durationDays': durationDays,
      'price': price,
      'status': 'Pending', // Status of the request (Pending, Accepted, Declined)
    });
  }

  // Method to handle rental request actions (Accept/Decline)
  void handleRentalRequest(int requestIndex, String action) {
    if (requestIndex < 0 || requestIndex >= rentalRequests.length) {
      return;
    }

    final request = rentalRequests[requestIndex];
    if (request['status'] != 'Pending') {
      return;
    }

    if (action == 'accept') {
      request['status'] = 'Accepted';
    } else if (action == 'decline') {
      request['status'] = 'Declined';
    }
  }
}

//loan page//

class LoanPage extends StatefulWidget {
  const LoanPage({super.key});

  @override
  _LoanPageState createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage> {
  final TextEditingController _loanAmountController = TextEditingController();
  final TextEditingController _interestRateController = TextEditingController();
  final TextEditingController _loanTenureController = TextEditingController();
  final TextEditingController _incomeController = TextEditingController();
  final TextEditingController _existingLoansController = TextEditingController();
  final TextEditingController _creditScoreController = TextEditingController();
  String _emiResult = '';
  String _eligibilityResult = '';

  void _calculateEMI() {
    if (_loanAmountController.text.isEmpty ||
        _interestRateController.text.isEmpty ||
        _loanTenureController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill all fields.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    double loanAmount = double.parse(_loanAmountController.text);
    double interestRate = double.parse(_interestRateController.text);
    double loanTenure = double.parse(_loanTenureController.text);

    // Convert interest rate from percentage to decimal
    double monthlyInterestRate = interestRate / 12 / 100;
    // Convert tenure from years to months
    double tenureInMonths = loanTenure * 12;

    // EMI Calculation Formula using dart:math's pow function
    double emi = (loanAmount *
        monthlyInterestRate *
        pow(1 + monthlyInterestRate, tenureInMonths.toInt())) /
        (pow(1 + monthlyInterestRate, tenureInMonths.toInt()) - 1);

    setState(() {
      _emiResult = 'Monthly EMI: ₹${emi.toStringAsFixed(2)}';
    });
  }

  void _checkEligibility() {
    if (_incomeController.text.isEmpty ||
        _existingLoansController.text.isEmpty ||
        _creditScoreController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill all fields.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    double income = double.parse(_incomeController.text);
    double existingLoans = double.parse(_existingLoansController.text);
    int creditScore = int.parse(_creditScoreController.text);

    // Eligibility criteria
    bool isEligible = (income > 50000) && (existingLoans < 100000) && (creditScore > 700);

    setState(() {
      _eligibilityResult = isEligible ? 'You are eligible for a loan!' : 'You are not eligible for a loan.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loan Application'),
        backgroundColor: Colors.green,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Responsive layout based on screen width
          if (constraints.maxWidth > 600) {
            return _buildWideLayout(context);
          } else {
            return _buildNarrowLayout(context);
          }
        },
      ),
    );
  }

  // Layout for narrow screens (mobile)
  Widget _buildNarrowLayout(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildEligibilitySection(),
          const SizedBox(height: 20),
          _buildLoanAmountInput(),
          const SizedBox(height: 20),
          _buildInterestRateInput(),
          const SizedBox(height: 20),
          _buildLoanTenureInput(),
          const SizedBox(height: 20),
          _buildCalculateButton(),
          const SizedBox(height: 20),
          if (_emiResult.isNotEmpty) _buildEMIResult(),
        ],
      ),
    );
  }

  // Layout for wide screens (tablet/desktop)
  Widget _buildWideLayout(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildEligibilitySection(),
                const SizedBox(height: 20),
                _buildLoanAmountInput(),
                const SizedBox(height: 20),
                _buildInterestRateInput(),
                const SizedBox(height: 20),
                _buildLoanTenureInput(),
                const SizedBox(height: 20),
                _buildCalculateButton(),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (_emiResult.isNotEmpty) _buildEMIResult(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Loan eligibility section
  Widget _buildEligibilitySection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Check Loan Eligibility',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildIncomeInput(),
            const SizedBox(height: 10),
            _buildExistingLoansInput(),
            const SizedBox(height: 10),
            _buildCreditScoreInput(),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _checkEligibility,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text('Check Eligibility'),
            ),
            const SizedBox(height: 10),
            if (_eligibilityResult.isNotEmpty)
              Text(
                _eligibilityResult,
                style: const TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }

  // Income input
  Widget _buildIncomeInput() {
    return TextFormField(
      controller: _incomeController,
      decoration: const InputDecoration(
        labelText: 'Monthly Income (₹)',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.money),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your monthly income';
        }
        return null;
      },
    );
  }

  // Existing loans input
  Widget _buildExistingLoansInput() {
    return TextFormField(
      controller: _existingLoansController,
      decoration: const InputDecoration(
        labelText: 'Existing Loans (₹)',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.money_off),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your existing loans';
        }
        return null;
      },
    );
  }

  // Credit score input
  Widget _buildCreditScoreInput() {
    return TextFormField(
      controller: _creditScoreController,
      decoration: const InputDecoration(
        labelText: 'Credit Score',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.score),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your credit score';
        }
        return null;
      },
    );
  }

  // Loan amount input
  Widget _buildLoanAmountInput() {
    return TextFormField(
      controller: _loanAmountController,
      decoration: const InputDecoration(
        labelText: 'Loan Amount (₹)',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.money),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter the loan amount';
        }
        return null;
      },
    );
  }

  // Interest rate input
  Widget _buildInterestRateInput() {
    return TextFormField(
      controller: _interestRateController,
      decoration: const InputDecoration(
        labelText: 'Interest Rate (%)',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.percent),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter the interest rate';
        }
        return null;
      },
    );
  }

  // Loan tenure input
  Widget _buildLoanTenureInput() {
    return TextFormField(
      controller: _loanTenureController,
      decoration: const InputDecoration(
        labelText: 'Loan Tenure (Years)',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.calendar_today),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter the loan tenure';
        }
        return null;
      },
    );
  }

  // Calculate button
  Widget _buildCalculateButton() {
    return ElevatedButton(
      onPressed: _calculateEMI,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        padding: const EdgeInsets.symmetric(vertical: 16.0),
      ),
      child: const Text('Calculate EMI'),
    );
  }

  // EMI result display
  Widget _buildEMIResult() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Loan EMI Calculation',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              _emiResult,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

//pest control//


class PestManagementPage extends StatelessWidget {
  const PestManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pest Management'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              'Pest Identification and Management',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Learn how to identify pests, prevent infestations, and use organic solutions.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),

            // Pest Details
            _buildPestSection(
              pestName: 'Stem Borers',
              imageUrl: 'https://lh3.ggpht.com/v8Jh0xxxM24WRzJ5l9Hz19oXaUZBsM7hFWY8M6s4sI0GEc92KembDXvUQQGettIGqQ45ISFfv0JNezvUtzZV=s600', // External URL
              prevention: 'Use resistant varieties, remove crop residues, and practice crop rotation.',
              organicSolution: 'Apply neem oil or introduce natural predators like Trichogramma wasps.',
            ),
            _buildPestSection(
              pestName: 'Leaf hoppers',
              imageUrl: 'https://example.com/images/leafhopper.jpg', // External URL
              prevention: 'Maintain field hygiene, use sticky traps, and avoid over-fertilization.',
              organicSolution: 'Spray garlic or neem-based solutions.',
            ),
            _buildPestSection(
              pestName: 'Thrips',
              imageUrl: 'https://example.com/images/thrips.jpg', // External URL
              prevention: 'Use reflective mulches and remove weeds regularly.',
              organicSolution: 'Apply insecticidal soap or neem oil.',
            ),
            _buildPestSection(
              pestName: 'Gall Midges',
              imageUrl: 'https://example.com/images/gall_midges.jpg', // External URL
              prevention: 'Use resistant varieties and avoid waterlogging.',
              organicSolution: 'Spray neem oil or introduce parasitic wasps.',
            ),
            _buildPestSection(
              pestName: 'Rice Earhead Bug',
              imageUrl: 'https://example.com/images/rice_earhead_bug.jpg', // External URL
              prevention: 'Monitor fields regularly and use light traps.',
              organicSolution: 'Apply neem-based pesticides.',
            ),
            _buildPestSection(
              pestName: 'Brown Planthoppers',
              imageUrl: 'https://example.com/images/brown_planthoppers.jpg', // External URL
              prevention: 'Avoid excessive nitrogen fertilization and maintain proper water levels.',
              organicSolution: 'Use neem oil or introduce natural predators like spiders.',
            ),
            _buildPestSection(
              pestName: 'Armyworms',
              imageUrl: 'https://example.com/images/armyworms.jpg', // External URL
              prevention: 'Practice crop rotation and remove weeds.',
              organicSolution: 'Apply Bacillus thuringiensis (Bt) or neem oil.',
            ),
            _buildPestSection(
              pestName: 'Aphids',
              imageUrl: 'https://example.com/images/aphids.jpg', // External URL
              prevention: 'Use reflective mulches and introduce ladybugs.',
              organicSolution: 'Spray soapy water or neem oil.',
            ),
            _buildPestSection(
              pestName: 'White Grubs',
              imageUrl: 'https://example.com/images/white_grubs.jpg', // External URL
              prevention: 'Plow fields to expose grubs to predators and use resistant varieties.',
              organicSolution: 'Apply neem cake or introduce nematodes.',
            ),
            _buildPestSection(
              pestName: 'Fruit Flies',
              imageUrl: 'https://example.com/images/fruit_flies.jpg', // External URL
              prevention: 'Use pheromone traps and remove infested fruits.',
              organicSolution: 'Spray neem oil or use kaolin clay.',
            ),
            _buildPestSection(
              pestName: 'Leaf Folders',
              imageUrl: 'https://example.com/images/leaf_folders.jpg', // External URL
              prevention: 'Use resistant varieties and remove weeds.',
              organicSolution: 'Apply neem oil or introduce Trichogramma wasps.',
            ),
            const SizedBox(height: 20),

            // Pest Control Services
            _buildPestControlServices(),
          ],
        ),
      ),
    );
  }

  // Helper method to build a pest section
  Widget _buildPestSection({
    required String pestName,
    required String imageUrl,
    required String prevention,
    required String organicSolution,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pestName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            // Use Image.network for external URLs
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 40,
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Prevention Measures:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              prevention,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Organic Solutions:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              organicSolution,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build pest control services section
  Widget _buildPestControlServices() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pest Control Services',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            _buildServiceContact(
              serviceName: 'GreenShield Pest Control',
              contactNumber: '1800-123-4567',
            ),
            _buildServiceContact(
              serviceName: 'AgriSafe Solutions',
              contactNumber: '1800-234-5678',
            ),
            _buildServiceContact(
              serviceName: 'EcoPest Management',
              contactNumber: '1800-345-6789',
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build service contact
  Widget _buildServiceContact({
    required String serviceName,
    required String contactNumber,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const Icon(
            Icons.phone,
            color: Colors.green,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                serviceName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Text(
                contactNumber,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}