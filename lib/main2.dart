import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:async';
import 'dart:math';

class tamilpage extends StatelessWidget {
  final String language;

  const tamilpage({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('உழவன் - $language'),
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
                'உழவன் அம்சங்கள்',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('நிகழ் நேர கண்காணிப்பு அறிவிப்புகள்'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tRealTimeMonitoringPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('மாதாந்திர உர மின்னஞ்சல்'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tFertilizerReminderPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text('விலை ஒப்பீடு'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tPriceComparisonPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.healing),
              title: const Text('நோய் கணிப்பு'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tPredictDiseasePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.cloud),
              title: const Text('வானிலை கணிப்பு'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tWeatherPredictionPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.directions_car),
              title: const Text('டிராக்டர் வாடகை'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tTractorRentalPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.recommend),
              title: const Text('பயிர் பரிந்துரை'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tCropRecommenderPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text('கடன் விண்ணப்பம்'),
              onTap: () {
                Navigator.pop(context); // Close the drawer LoanAvailingPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tLoanPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.business),
              title: const Text('மானியங்கள் மற்றும் பொருத்தமான அரசு திட்டங்கள்'),
              onTap: () {
                Navigator.pop(context); // Close the drawer LoanAvailingPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tSubsidiesAndSchemesPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('விவசாய அதிகாரி சந்திப்புகள்'),
              onTap: () {
                // Implement feature logic ScheduleMeetingPage
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const tScheduleMeetingPage())
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.healing),
              title: const Text('மகசூல் கணிப்பு'),
              onTap: () {
                // Implement feature logic YieldPredict
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const tYieldPredictPage())
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.healing),
              title: const Text('பூச்சி மேலாண்மை'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const tPestManagementPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.business_center),
              title: const Text('தொழில்துறை இணைப்பு'),
              onTap: () {
                // Implement feature logic
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const  tIndustryConnectionPage())
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_collection),
              title: const Text('பரிந்துரைக்கப்பட்ட வீடியோக்கள்'),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text('சமூக ஆதரவு'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const tCommunitySupportPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('உர கால்குலேட்டர்'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tFertilizerCalculatorPage()),
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
              label: 'நிகழ் நேர கண்காணிப்பு அறிவிப்புகள்',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tRealTimeMonitoringPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.calendar_today,
              label: 'மாதாந்திர உர மின்னஞ்சல்',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tFertilizerReminderPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.money,
              label: 'விலை ஒப்பீடு',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tPriceComparisonPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.healing,
              label: 'நோய் கணிப்பு',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tPredictDiseasePage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.cloud,
              label: 'வானிலை கணிப்பு',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tWeatherPredictionPage()),
                );
              },
            ),

            FeatureCard(
              icon: Icons.directions_car,
              label: 'டிராக்டர் வாடகை',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tTractorRentalPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.recommend,
              label: 'பயிர் பரிந்துரை',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tCropRecommenderPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.monetization_on,
              label: 'கடன்',
              onTap: () {
                Navigator.pop(context); // Close the drawer LoanAvailingPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>tLoanPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.business,
              label: 'மானியங்கள் மற்றும் பொருத்தமான அரசு திட்டங்கள்',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tSubsidiesAndSchemesPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.calendar_today,
              label: 'விவசாய அதிகாரி சந்திப்புகள்',
              onTap: () {
                // Implement feature logic
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const tScheduleMeetingPage())
                );
              },
            ),
            FeatureCard(
              icon: Icons.healing,
              label: 'மகசூல் கணிப்பு',
              onTap: () {
                // Implement feature logic
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tYieldPredictPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.healing,
              label: 'பூச்சி மேலாண்மை',
              onTap: () {
                // Implement feature logic
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tPestManagementPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.business_center,
              label: 'தொழில்துறை இணைப்பு',
              onTap: () {
                // Implement feature logic
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  tIndustryConnectionPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.video_collection,
              label: 'பரிந்துரைக்கப்பட்ட வீடியோக்கள்',
              onTap: () {
                // Implement feature logic
              },
            ),
            FeatureCard(
              icon: Icons.group,
              label: 'சமூக ஆதரவு',
              onTap: () {
                // Implement feature logic
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tCommunitySupportPage()),
                );
              },
            ),
            FeatureCard(
              icon: Icons.calculate,
              label: 'உர கால்குலேட்டர்',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tFertilizerCalculatorPage()),
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

//fertilizer calculator page//

class tFertilizerCalculatorPage extends StatefulWidget {
  const tFertilizerCalculatorPage({super.key});

  @override
  _tFertilizerCalculatorPageState createState() => _tFertilizerCalculatorPageState();
}

class _tFertilizerCalculatorPageState extends State<tFertilizerCalculatorPage> {
  final _formKey = GlobalKey<FormState>();
  final _fieldAreaController = TextEditingController();
  String _result = '';

  // Dropdown options
  final List<String> _soilTypes = ['மணல்', 'களிமண்', 'வண்டல்', 'ஈரமண்', 'பீட்'];
  final List<String> _cropTypes = ['நெல்', 'சோளம்', 'பருத்தி', 'கரும்பு', 'தேயிலை', 'மா', 'தேங்காய்', 'சோளம்', 'ராகி'];

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
        case 'நெல்':
          fertilizerAmount = fieldArea * 100; // Example: 100 kg per acre for rice
          break;
        case 'சோளம்':
          fertilizerAmount = fieldArea * 120; // Example: 120 kg per acre for maize
          break;
        case 'பருத்தி':
          fertilizerAmount = fieldArea * 90; // Example: 90 kg per acre for cotton
          break;
        case 'கரும்பு':
          fertilizerAmount = fieldArea * 150; // Example: 150 kg per acre for sugarcane
          break;
        case 'தேயிலை':
          fertilizerAmount = fieldArea * 80; // Example: 80 kg per acre for tea
          break;
        case 'மா':
          fertilizerAmount = fieldArea * 70; // Example: 70 kg per acre for mango
          break;
        case 'தேங்காய்':
          fertilizerAmount = fieldArea * 60; // Example: 60 kg per acre for coconut
          break;
        case 'சோளம்':
          fertilizerAmount = fieldArea * 85; // Example: 85 kg per acre for jowar
          break;
        case 'ராகி':
          fertilizerAmount = fieldArea * 75; // Example: 75 kg per acre for ragi
          break;
        default:
          fertilizerAmount = fieldArea * 90; // Default: 90 kg per acre
      }

      // Adjust based on soil type (example logic)
      switch (_selectedSoilType?.toLowerCase()) {
        case 'களிமண்':
          fertilizerAmount *= 1.1; // Increase by 10% for clay soil
          break;
        case 'மணல்':
          fertilizerAmount *= 0.9; // Decrease by 10% for sandy soil
          break;
        case 'வண்டல்':
          fertilizerAmount *= 1.0; // No change for loamy soil
          break;
        case 'ஈரமண்':
          fertilizerAmount *= 1.05; // Increase by 5% for silt soil
          break;
        case 'பீட்':
          fertilizerAmount *= 1.2; // Increase by 20% for peaty soil
          break;
      }

      setState(() {
        _result = 'தேவையான உரம்: ${fertilizerAmount.toStringAsFixed(2)} kg';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('உர கால்குலேட்டர்'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'உரத்தை கணக்கிட விவரங்களை உள்ளிடவும்',
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
                  labelText: 'பயிர் வகையைத் தேர்ந்தெடுக்கவும்',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'பயிர் வகையைத் தேர்ந்தெடுக்கவும்';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _fieldAreaController,
                decoration: const InputDecoration(
                  labelText: 'வயல் பரப்பளவை உள்ளிடவும் (ஏக்கரில்)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'வயல் பரப்பளவை உள்ளிடவும்';
                  }
                  if (double.tryParse(value) == null) {
                    return 'சரியான எண்ணை உள்ளிடவும்';
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
                  labelText: 'மண் வகையைத் தேர்ந்தெடுக்கவும்',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'மண் வகையைத் தேர்ந்தெடுக்கவும்';
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
                child: const Text('கணக்கிடு'),
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

//crop recommendation//


class tCropRecommenderPage extends StatefulWidget {
  const tCropRecommenderPage({super.key});

  @override
  _tCropRecommenderPageState createState() => _tCropRecommenderPageState();
}

class _tCropRecommenderPageState extends State<tCropRecommenderPage> {
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
    'ஆந்திரப் பிரதேசம்',
    'அருணாச்சலப் பிரதேசம்',
    'அசாம்',
    'பீகார்',
    'சத்தீஸ்கர்',
    'கோவா',
    'குஜராத்',
    'ஹரியானா',
    'இமாச்சலப் பிரதேசம்',
    'ஜார்க்கண்ட்',
    'கர்நாடகா',
    'கேரளா',
    'மத்தியப் பிரதேசம்',
    'மகாராஷ்டிரா',
    'மணிப்பூர்',
    'மேகாலயா',
    'மிசோரம்',
    'நாகாலாந்து',
    'ஒடிசா',
    'பஞ்சாப்',
    'ராஜஸ்தான்',
    'சிக்கிம்',
    'தமிழ்நாடு',
    'தெலுங்கானா',
    'திரிபுரா',
    'உத்தரப் பிரதேசம்',
    'உத்தராகண்ட்',
    'மேற்கு வங்காளம்',
  ];

  final List<String> _soilTypes = ['களிமண்', 'மணல்', 'வண்டல்', 'ஈரமண்'];
  final List<String> _climates = ['வெப்பமண்டல', 'மிதவெப்பமண்டல', 'வறண்ட', 'மத்திய தரைக்கடல்'];
  final List<String> _waterAvailabilityOptions = ['அதிகம்', 'மிதமான', 'குறைவு'];
  final List<String> _growingSeasons = ['கோடை', 'குளிர்காலம்', 'மழைக்காலம்'];
  final List<String> _marketDemandOptions = ['அதிகம்', 'மிதமான', 'குறைவு'];
  final List<String> _fertilizerOptions = ['கரிம', 'இரசாயன', 'கலப்பு'];
  final List<String> _crops = [
    'மா',
    'நெல்',
    'கரும்பு',
    'தேங்காய்',
    'கத்தரிக்காய்',
    'சூரியகாந்தி',
    'நெல்லிக்காய்',
    'திராட்சை',
    'வெங்காயம்',
    'தக்காளி',
    'பருத்தி',
    'கொய்யா',
    'சப்போட்டா',
    'ராகி',
    'சோளம்',
  ];

  void _recommendCrop() {
    if (_formKey.currentState!.validate()) {
      // Example recommendation logic (customize as needed)
      if (_soilType == 'வண்டல்' && _climate == 'வெப்பமண்டல' && _waterAvailability == 'அதிகம்') {
        setState(() {
          _recommendation = 'பரிந்துரைக்கப்பட்ட பயிர்: நெல்';
        });
      } else if (_soilType == 'மணல்' && _climate == 'வறண்ட' && _waterAvailability == 'குறைவு') {
        setState(() {
          _recommendation = 'பரிந்துரைக்கப்பட்ட பயிர்: தினை';
        });
      } else {
        setState(() {
          _recommendation = 'பரிந்துரைக்கப்பட்ட பயிர்: கோதுமை';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('பயிர் பரிந்துரை'),
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
                  labelText: 'பிராந்தியம்',
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
                    return 'உங்கள் பிராந்தியத்தைத் தேர்ந்தெடுக்கவும்';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Soil type dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'மண் வகை',
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
                    return 'மண் வகையைத் தேர்ந்தெடுக்கவும்';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Climate dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'காலநிலை',
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
                    return 'காலநிலையைத் தேர்ந்தெடுக்கவும்';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Water availability dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'நீர் கிடைப்பு',
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
                    return 'நீர் கிடைப்பதைத் தேர்ந்தெடுக்கவும்';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Field size input
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'வயல் பரப்பளவு (ஏக்கரில்)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'வயல் பரப்பளவை உள்ளிடவும்';
                  }
                  if (double.tryParse(value) == null) {
                    return 'சரியான எண்ணை உள்ளிடவும்';
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
                  labelText: 'பயிர் பருவம்',
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
                    return 'பயிர் பருவத்தைத் தேர்ந்தெடுக்கவும்';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Previous crops dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'முந்தைய பயிர்கள்',
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
                  labelText: 'சந்தை தேவை',
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
                  labelText: 'உர கிடைப்பு',
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
                  labelText: 'பட்ஜெட் (₹ இல்)',
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
                child: const Text('பரிந்துரையைப் பெறுக'),
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

//remainder//


class tFertilizerReminderPage extends StatefulWidget {
  const tFertilizerReminderPage({super.key});

  @override
  _tFertilizerReminderPageState createState() => _tFertilizerReminderPageState();
}

class _tFertilizerReminderPageState extends State<tFertilizerReminderPage> {
  final _formKey = GlobalKey<FormState>();
  final _cropTypeController = TextEditingController();
  final _fieldSizeController = TextEditingController();
  final _soilTypeController = TextEditingController();
  DateTime? _selectedStartDate;
  DateTime? _selectedEndDate;
  String _reminderFrequency = 'மாதாந்திர';
  final List<String> _frequencies = ['மாதாந்திர', 'இரண்டு வாரத்திற்கு ஒருமுறை', 'தனிப்பயன்'];

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
      if (_reminderFrequency == 'தனிப்பயன்' && (_selectedStartDate == null || _selectedEndDate == null)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('தனிப்பயன் நினைவூட்டலுக்கு தொடக்க மற்றும் முடிவு தேதிகளைத் தேர்ந்தெடுக்கவும்.')),
        );
        return;
      }

      if (_reminderFrequency != 'தனிப்பயன்' && _selectedStartDate == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('தொடக்க தேதியைத் தேர்ந்தெடுக்கவும்.')),
        );
        return;
      }

      const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
        'fertilizer_reminder',
        'உர நினைவூட்டல்',
        importance: Importance.max,
        priority: Priority.high,
      );
      const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);

      if (_reminderFrequency == 'தனிப்பயன்') {
        // தனிப்பயன் தேதிகளுக்கு நினைவூட்டல்களை அமைக்கவும்
        DateTime currentDate = _selectedStartDate!;
        while (currentDate.isBefore(_selectedEndDate!) || currentDate.isAtSameMomentAs(_selectedEndDate!)) {
          await flutterLocalNotificationsPlugin.show(
            0,
            'உர நினைவூட்டல்',
            'உங்கள் ${_cropTypeController.text} பயிருக்கு உரம் பயன்படுத்த வேண்டிய நேரம்!',
            platformChannelSpecifics,
            payload: 'fertilizer_reminder',
          );
          currentDate = currentDate.add(const Duration(days: 1)); // தினசரி நினைவூட்டல்கள்
        }
      } else {
        // தனிப்பயன் அல்லாத அதிர்வெண்களுக்கு அடுத்த நினைவூட்டல் தேதியை கணக்கிடவும்
        DateTime nextReminderDate = _selectedStartDate!;
        if (_reminderFrequency == 'மாதாந்திர') {
          nextReminderDate = DateTime(
            nextReminderDate.year,
            nextReminderDate.month + 1,
            nextReminderDate.day,
            nextReminderDate.hour,
            nextReminderDate.minute,
          );
        } else if (_reminderFrequency == 'இரண்டு வாரத்திற்கு ஒருமுறை') {
          nextReminderDate = nextReminderDate.add(const Duration(days: 14));
        }

        // நினைவூட்டலை அமைக்கவும்
        await flutterLocalNotificationsPlugin.show(
          0,
          'உர நினைவூட்டல்',
          'உங்கள் ${_cropTypeController.text} பயிருக்கு உரம் பயன்படுத்த வேண்டிய நேரம்!',
          platformChannelSpecifics,
          payload: 'fertilizer_reminder',
        );
      }

      // வெற்றிகரமான செய்தியைக் காட்டவும்
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('நினைவூட்டல்(கள்) வெற்றிகரமாக அமைக்கப்பட்டது!')),
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
        title: const Text('உர நினைவூட்டல்'),
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
                  labelText: 'பயிர் வகை',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'பயிர் வகையை உள்ளிடவும்';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _fieldSizeController,
                decoration: const InputDecoration(
                  labelText: 'வயல் பரப்பளவு (ஏக்கரில்)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'வயல் பரப்பளவை உள்ளிடவும்';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _soilTypeController,
                decoration: const InputDecoration(
                  labelText: 'மண் வகை',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'மண் வகையை உள்ளிடவும்';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'நினைவூட்டல் அதிர்வெண்',
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
                      ? 'தொடக்க தேதியைத் தேர்ந்தெடுக்கவும்'
                      : 'தேர்ந்தெடுக்கப்பட்ட தொடக்க தேதி: ${_selectedStartDate!.toLocal()}'.split(' ')[0],
                ),
                trailing: const Icon(Icons.calendar_today),
                onTap: () => _selectDate(context, true),
              ),
              if (_reminderFrequency == 'தனிப்பயன்') ...[
                const SizedBox(height: 10),
                ListTile(
                  title: Text(
                    _selectedEndDate == null
                        ? 'முடிவு தேதியைத் தேர்ந்தெடுக்கவும்'
                        : 'தேர்ந்தெடுக்கப்பட்ட முடிவு தேதி: ${_selectedEndDate!.toLocal()}'.split(' ')[0],
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
                child: const Text('நினைவூட்டலை அமைக்கவும்'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//real time monitor//

class tRealTimeMonitoringPage extends StatefulWidget {
  @override
  _tRealTimeMonitoringPageState createState() => _tRealTimeMonitoringPageState();
}

class _tRealTimeMonitoringPageState extends State<tRealTimeMonitoringPage> {
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
        title: const Text('நிகழ் நேர கண்காணிப்பு'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'சென்சார் தரவு:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              _sensorData,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'பரிந்துரைகள்:',
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
- வெப்பநிலை: ${_temperature.toStringAsFixed(1)}°C
- ஈரப்பதம்: ${_humidity.toStringAsFixed(1)}%
- மண் ஈரப்பதம்: ${_soilMoisture.toStringAsFixed(1)}%
- மண் pH: ${_soilPH.toStringAsFixed(1)}
- ஒளி தீவிரம்: ${_lightIntensity.toStringAsFixed(1)} lux
''';
  }

  // Method to get formatted recommendations
  String getFormattedRecommendations() {
    String recommendations = '';
    if (_temperature >= 20 && _temperature <= 30) {
      recommendations += '- வெப்பநிலை உகந்ததாக உள்ளது.\n';
    } else {
      recommendations += '- வெப்பநிலை உகந்ததாக இல்லை.\n';
      if (_temperature < 20) {
        recommendations += '  - நடவடிக்கை: வெப்பநிலையை அதிகரிக்க கிரீன்ஹவுஸ் வெப்பமூட்டல் அல்லது பயிர்களை மூடி வைக்கவும்.\n';
      } else if (_temperature > 30) {
        recommendations += '  - நடவடிக்கை: வெப்பநிலையை குறைக்க நிழல் அல்லது காற்றோட்டத்தை அதிகரிக்கவும்.\n';
      }
    }

    if (_humidity >= 40 && _humidity <= 80) {
      recommendations += '- ஈரப்பதம் உகந்ததாக உள்ளது.\n';
    } else {
      recommendations += '- ஈரப்பதம் உகந்ததாக இல்லை.\n';
      if (_humidity < 40) {
        recommendations += '  - நடவடிக்கை: ஈரப்பதத்தை அதிகரிக்க மூடுபனி அமைப்புகள் அல்லது நீர்ப்பாசனத்தை அதிகரிக்கவும்.\n';
      } else if (_humidity > 80) {
        recommendations += '  - நடவடிக்கை: ஈரப்பதத்தை குறைக்க காற்றோட்டத்தை மேம்படுத்தவும் அல்லது ஈரப்பதம் குறைப்பான்களை பயன்படுத்தவும்.\n';
      }
    }

    if (_soilMoisture >= 50 && _soilMoisture <= 80) {
      recommendations += '- மண் ஈரப்பதம் உகந்ததாக உள்ளது.\n';
    } else {
      recommendations += '- மண் ஈரப்பதம் உகந்ததாக இல்லை.\n';
      if (_soilMoisture < 50) {
        recommendations += '  - நடவடிக்கை: மண் ஈரப்பதத்தை பராமரிக்க நீர்ப்பாசனத்தை அதிகரிக்கவும்.\n';
      } else if (_soilMoisture > 80) {
        recommendations += '  - நடவடிக்கை: நீர் தேங்குவதை தடுக்க நீர்ப்பாசனத்தை குறைக்கவும் அல்லது வடிகால் முறையை மேம்படுத்தவும்.\n';
      }
    }

    if (_soilPH >= 6 && _soilPH <= 7.5) {
      recommendations += '- மண் pH உகந்ததாக உள்ளது.\n';
    } else {
      recommendations += '- மண் pH உகந்ததாக இல்லை.\n';
      if (_soilPH < 6) {
        recommendations += '  - நடவடிக்கை: மண் pH ஐ அதிகரிக்க சுண்ணாம்பை சேர்க்கவும்.\n';
      } else if (_soilPH > 7.5) {
        recommendations += '  - நடவடிக்கை: மண் pH ஐ குறைக்க கந்தகம் அல்லது கரிமப் பொருட்களை சேர்க்கவும்.\n';
      }
    }

    if (_lightIntensity >= 5000 && _lightIntensity <= 10000) {
      recommendations += '- ஒளி தீவிரம் உகந்ததாக உள்ளது.\n';
    } else {
      recommendations += '- ஒளி தீவிரம் உகந்ததாக இல்லை.\n';
      if (_lightIntensity < 5000) {
        recommendations += '  - நடவடிக்கை: சூரிய ஒளி அல்லது செயற்கை வளர்ச்சி விளக்குகளை அதிகரிக்கவும்.\n';
      } else if (_lightIntensity > 10000) {
        recommendations += '  - நடவடிக்கை: சேதத்தை தடுக்க நிழல் அல்லது ஒளி வெளிப்பாட்டை குறைக்கவும்.\n';
      }
    }

    return recommendations;
  }
}

//yield prediction//

class tYieldPredictPage extends StatefulWidget {
  const tYieldPredictPage({super.key});

  @override
  _tYieldPredictPageState createState() => _tYieldPredictPageState();
}

class _tYieldPredictPageState extends State<tYieldPredictPage> {
  // Lists for dropdown options
  final List<String> districts = [
    'அரியலூர்',
    'சென்னை',
    'கோயம்புத்தூர்',
    'கடலூர்',
    'தர்மபுரி',
    'திண்டுக்கல்',
    'ஈரோடு',
    'காஞ்சிபுரம்',
    'கன்னியாகுமரி',
    'கரூர்',
    'கிருஷ்ணகிரி',
    'மதுரை',
    'நாகப்பட்டினம்',
    'நாமக்கல்',
    'நீலகிரி',
    'பெரம்பலூர்',
    'புதுக்கோட்டை',
    'ராமநாதபுரம்',
    'சேலம்',
    'சிவகங்கை',
    'தஞ்சாவூர்',
    'தேனி',
    'தூத்துக்குடி',
    'திருச்சிராப்பள்ளி',
    'திருநெல்வேலி',
    'திருப்பூர்',
    'திருவள்ளூர்',
    'திருவண்ணாமலை',
    'திருவாரூர்',
    'வேலூர்',
    'விழுப்புரம்',
    'விருதுநகர்',
  ];

  final List<String> crops = [
    'நெல்',
    'சோளம்',
    'கரும்பு',
    'பருத்தி',
    'நிலக்கடலை',
    'தேங்காய்',
    'வாழை',
    'மா',
    'மரவள்ளி',
    'மஞ்சள்',
    'மிளகாய்',
    'தக்காளி',
    'கத்தரிக்காய்',
    'வெங்காயம்',
    'கொய்யா',
  ];

  final List<String> cropTypes = [
    'உணவுப் பயிர்',
    'வணிகப் பயிர்',
    'பழத்தோட்டம்',
    'தோட்டப் பயிர்',
  ];

  final List<String> rainfallLevels = [
    'குறைவு (0-50 மிமீ)',
    'மிதமான (50-100 மிமீ)',
    'அதிக (100-200 மிமீ)',
    'மிக அதிக (>200 மிமீ)',
  ];

  final List<String> months = [
    'ஜனவரி',
    'பிப்ரவரி',
    'மார்ச்',
    'ஏப்ரல்',
    'மே',
    'ஜூன்',
    'ஜூலை',
    'ஆகஸ்ட்',
    'செப்டம்பர்',
    'அக்டோபர்',
    'நவம்பர்',
    'டிசம்பர்',
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
        predictedYield = 'அனைத்து புலங்களையும் நிரப்பவும்.';
      });
      return;
    }

    // Base yield based on crop type
    double baseYield = 0;
    switch (selectedCropType) {
      case 'உணவுப் பயிர்':
        baseYield = 3.0;
        break;
      case 'வணிகப் பயிர்':
        baseYield = 2.5;
        break;
      case 'பழத்தோட்டம்':
        baseYield = 4.0;
        break;
      case 'தோட்டப் பயிர்':
        baseYield = 5.0;
        break;
    }

    // Adjust yield based on rainfall
    switch (selectedRainfallLevel) {
      case 'குறைவு (0-50 மிமீ)':
        baseYield *= 0.8;
        break;
      case 'மிதமான (50-100 மிமீ)':
        baseYield *= 1.0;
        break;
      case 'அதிக (100-200 மிமீ)':
        baseYield *= 1.2;
        break;
      case 'மிக அதிக (>200 மிமீ)':
        baseYield *= 1.5;
        break;
    }

    // Adjust yield based on month (seasonality)
    if (selectedMonth == 'ஜூன்' || selectedMonth == 'ஜூலை' || selectedMonth == 'ஆகஸ்ட்') {
      baseYield *= 1.3; // Monsoon season
    } else if (selectedMonth == 'நவம்பர்' || selectedMonth == 'டிசம்பர்') {
      baseYield *= 1.1; // Post-monsoon season
    }

    setState(() {
      predictedYield = 'முன்னறிவிக்கப்பட்ட மகசூல்: ${baseYield.toStringAsFixed(2)} டன்/ஹெக்டேர்';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('மகசூல் முன்னறிவிப்பு'),
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
                labelText: 'மாவட்டத்தைத் தேர்ந்தெடுக்கவும்',
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
                labelText: 'பயிரைத் தேர்ந்தெடுக்கவும்',
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
                labelText: 'பயிர் வகையைத் தேர்ந்தெடுக்கவும்',
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
                labelText: 'மழை அளவைத் தேர்ந்தெடுக்கவும்',
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
                labelText: 'மாதத்தைத் தேர்ந்தெடுக்கவும்',
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
                'மகசூலை முன்னறிவிக்கவும்',
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

//pest control//

class tPestManagementPage extends StatelessWidget {
  const tPestManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('பூச்சி மேலாண்மை'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              'பூச்சி அடையாளம் மற்றும் மேலாண்மை',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'பூச்சிகளை அடையாளம் காணுதல், தடுப்பு முறைகள் மற்றும் இயற்கை தீர்வுகளைப் பற்றி அறிக.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),

            // Pest Details
            _buildPestSection(
              pestName: 'தண்டு துளைப்பான்',
              imageUrl: 'assets/stem_borers.jpg', // Replace with actual image path
              prevention: 'எதிர்ப்பு வகைகளைப் பயன்படுத்தவும், பயிர் எச்சங்களை அகற்றவும், பயிர் சுழற்சியைப் பின்பற்றவும்.',
              organicSolution: 'நீம் எண்ணெய் பயன்படுத்தவும் அல்லது ட்ரைகோகிராமா குளவிகள் போன்ற இயற்கை வேட்டையாடிகளை அறிமுகப்படுத்தவும்.',
            ),
            _buildPestSection(
              pestName: 'இலை தத்துப்பூச்சி',
              imageUrl: 'assets/leafhopper.jpg', // Replace with actual image path
              prevention: 'வயல் சுத்தத்தை பராமரிக்கவும், ஒட்டும் பொறிகளைப் பயன்படுத்தவும், அதிக உரங்களைத் தவிர்க்கவும்.',
              organicSolution: 'பூண்டு அல்லது நீம் அடிப்படையிலான தீர்வுகளைத் தெளிக்கவும்.',
            ),
            _buildPestSection(
              pestName: 'திரிப்ஸ்',
              imageUrl: 'assets/thrips.jpg', // Replace with actual image path
              prevention: 'பிரதிபலிப்பு மல்ச்சுகளைப் பயன்படுத்தவும் மற்றும் களைகளை தவறாமல் அகற்றவும்.',
              organicSolution: 'பூச்சிக்கொல்லி சோப்பு அல்லது நீம் எண்ணெய் பயன்படுத்தவும்.',
            ),
            _buildPestSection(
              pestName: 'கால் மிட்ஜ்',
              imageUrl: 'assets/gall_midges.jpg', // Replace with actual image path
              prevention: 'எதிர்ப்பு வகைகளைப் பயன்படுத்தவும் மற்றும் நீர் தேங்குவதைத் தவிர்க்கவும்.',
              organicSolution: 'நீம் எண்ணெய் தெளிக்கவும் அல்லது ஒட்டுண்ணி குளவிகளை அறிமுகப்படுத்தவும்.',
            ),
            _buildPestSection(
              pestName: 'நெல் காது பூச்சி',
              imageUrl: 'assets/rice_earhead_bug.jpg', // Replace with actual image path
              prevention: 'வயல்களை தவறாமல் கண்காணிக்கவும் மற்றும் ஒளி பொறிகளைப் பயன்படுத்தவும்.',
              organicSolution: 'நீம் அடிப்படையிலான பூச்சிக்கொல்லிகளைப் பயன்படுத்தவும்.',
            ),
            _buildPestSection(
              pestName: 'பழுப்பு தத்துப்பூச்சி',
              imageUrl: 'assets/brown_planthoppers.jpg', // Replace with actual image path
              prevention: 'அதிக நைட்ரஜன் உரங்களைத் தவிர்க்கவும் மற்றும் சரியான நீர் மட்டத்தை பராமரிக்கவும்.',
              organicSolution: 'நீம் எண்ணெய் பயன்படுத்தவும் அல்லது சிலந்திகள் போன்ற இயற்கை வேட்டையாடிகளை அறிமுகப்படுத்தவும்.',
            ),
            _buildPestSection(
              pestName: 'ஆர்மிவார்ம்ஸ்',
              imageUrl: 'assets/armyworms.jpg', // Replace with actual image path
              prevention: 'பயிர் சுழற்சியைப் பின்பற்றவும் மற்றும் களைகளை அகற்றவும்.',
              organicSolution: 'பாசிலஸ் துரிஞ்சியன்சிஸ் (Bt) அல்லது நீம் எண்ணெய் பயன்படுத்தவும்.',
            ),
            _buildPestSection(
              pestName: 'அஃபிட்ஸ்',
              imageUrl: 'assets/aphids.jpg', // Replace with actual image path
              prevention: 'பிரதிபலிப்பு மல்ச்சுகளைப் பயன்படுத்தவும் மற்றும் லேடிபக்குகளை அறிமுகப்படுத்தவும்.',
              organicSolution: 'சோப்பு தண்ணீர் அல்லது நீம் எண்ணெய் தெளிக்கவும்.',
            ),
            _buildPestSection(
              pestName: 'வெள்ளை கிரப்',
              imageUrl: 'assets/white_grubs.jpg', // Replace with actual image path
              prevention: 'வயல்களை உழுது கிரப்களை வேட்டையாடிகளுக்கு வெளிப்படுத்தவும் மற்றும் எதிர்ப்பு வகைகளைப் பயன்படுத்தவும்.',
              organicSolution: 'நீம் கேக் பயன்படுத்தவும் அல்லது நெமட்டோட்களை அறிமுகப்படுத்தவும்.',
            ),
            _buildPestSection(
              pestName: 'பழ ஈக்கள்',
              imageUrl: 'assets/fruit_flies.jpg', // Replace with actual image path
              prevention: 'பெரோமோன் பொறிகளைப் பயன்படுத்தவும் மற்றும் பாதிக்கப்பட்ட பழங்களை அகற்றவும்.',
              organicSolution: 'நீம் எண்ணெய் தெளிக்கவும் அல்லது காலின் களிமண் பயன்படுத்தவும்.',
            ),
            _buildPestSection(
              pestName: 'இலை மடிப்பான்',
              imageUrl: 'assets/leaf_folders.jpg', // Replace with actual image path
              prevention: 'எதிர்ப்பு வகைகளைப் பயன்படுத்தவும் மற்றும் களைகளை அகற்றவும்.',
              organicSolution: 'நீம் எண்ணெய் தெளிக்கவும் அல்லது ட்ரைகோகிராமா குளவிகளை அறிமுகப்படுத்தவும்.',
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
            // Placeholder for image (replace with actual image)
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Center(
                child: Text(
                  '$pestName படம்',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'தடுப்பு முறைகள்:',
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
              'இயற்கை தீர்வுகள்:',
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
              'பூச்சி கட்டுப்பாட்டு சேவைகள்',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            _buildServiceContact(
              serviceName: 'கிரீன்ஷீல்ட் பூச்சி கட்டுப்பாடு',
              contactNumber: '1800-123-4567',
            ),
            _buildServiceContact(
              serviceName: 'அக்ரிசேஃப் தீர்வுகள்',
              contactNumber: '1800-234-5678',
            ),
            _buildServiceContact(
              serviceName: 'ஈகோபெஸ்ட் மேலாண்மை',
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

//weather//

class tWeatherPredictionPage extends StatefulWidget {
  @override
  _tWeatherPredictionPageState createState() => _tWeatherPredictionPageState();
}

class _tWeatherPredictionPageState extends State<tWeatherPredictionPage> {
  final WeatherPredictionSystem weatherSystem = WeatherPredictionSystem();
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _simulateWeatherData();
  }

  // Simulate weather data based on current date and time
  void _simulateWeatherData() {
    weatherSystem.simulateWeatherData();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('வானிலை முன்னறிவிப்பு'),
        backgroundColor: Colors.green,
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : LayoutBuilder(
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
          '=== வானிலை முன்னறிவிப்பு ===',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'கடைசியாக புதுப்பிக்கப்பட்டது: ${weatherSystem.lastUpdateTime.toLocal()}',
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
                  'வெப்பநிலை: ${weatherSystem.temperature.toStringAsFixed(1)}°C',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'நிலை: ${weatherSystem.condition}',
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
              'ஆலோசனை:',
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
    switch (condition.toLowerCase()) {
      case 'clear':
        return Icons.wb_sunny;
      case 'cloudy':
        return Icons.cloud;
      case 'rainy':
        return Icons.beach_access;
      case 'snowy':
        return Icons.ac_unit;
      default:
        return Icons.cloud;
    }
  }

  // Helper method to get advice icon based on condition and temperature
  IconData _getAdviceIcon(String condition, double temperature) {
    if (temperature >= 25 && temperature <= 30 && condition.toLowerCase() == 'cloudy') {
      return Icons.opacity; // Irrigation icon
    } else if (condition.toLowerCase() == 'rainy') {
      return Icons.umbrella; // Umbrella icon
    } else if (temperature > 30) {
      return Icons.wb_twilight; // High temperature icon
    } else {
      return Icons.help_outline; // General advice icon
    }
  }
}

class WeatherPredictionSystem {
  // Weather data
  double _temperature = 0.0; // in Celsius
  String _condition = ''; // Weather condition
  DateTime _lastUpdateTime = DateTime.now(); // Last update time

  // Getters for weather data
  double get temperature => _temperature;
  String get condition => _condition;
  DateTime get lastUpdateTime => _lastUpdateTime;

  // Method to simulate weather data based on current date and time
  void simulateWeatherData() {
    final now = DateTime.now();
    final month = now.month;
    final hour = now.hour;

    // Simulate temperature based on month
    if (month >= 3 && month <= 5) {
      _temperature = 30.0 + (hour / 24 * 5); // Summer: 30°C to 35°C
      _condition = 'Clear';
    } else if (month >= 6 && month <= 9) {
      _temperature = 25.0 + (hour / 24 * 5); // Monsoon: 25°C to 30°C
      _condition = 'Rainy';
    } else if (month >= 10 && month <= 12) {
      _temperature = 20.0 + (hour / 24 * 5); // Winter: 20°C to 25°C
      _condition = 'Cloudy';
    } else {
      _temperature = 22.0 + (hour / 24 * 5); // Default: 22°C to 27°C
      _condition = 'Clear';
    }

    _lastUpdateTime = DateTime.now();
  }

  // Method to get advice based on weather conditions
  String getAdvice() {
    if (_temperature >= 25 && _temperature <= 30 && _condition.toLowerCase() == 'cloudy') {
      return 'இன்று பாசனத்திற்கு சிறந்த நாள்.';
    } else if (_condition.toLowerCase() == 'rainy') {
      return 'மழை பெய்வதால் பாசனம் தேவையில்லை.';
    } else if (_temperature > 30) {
      return 'அதிக வெப்பநிலையில், காலையில் அல்லது மாலையில் பாசனம் செய்யவும்.';
    } else {
      return 'பொது நிலை. தேவைப்பட்டால் பாசனம் செய்யவும்.';
    }
  }
}

//price comparison//

class tPriceComparisonPage extends StatefulWidget {
  const tPriceComparisonPage({super.key});

  @override
  _tPriceComparisonPageState createState() => _tPriceComparisonPageState();
}

class _tPriceComparisonPageState extends State<tPriceComparisonPage> {
  String _selectedCrop = 'நெல்'; // Default selected crop
  final List<String> _crops = [
    'நெல்',
    'மா',
    'தேங்காய்',
    'ராகி',
    'சோளம்',
    'கரும்பு',
    'சூரியகாந்தி',
    'ஆமணக்கு',
    'வாழை',
    'கடலை',
    'எள்',
    'பலா',
    'நெல்லிக்காய்',
    'திராட்சை',
    'வெங்காயம்',
    'முள்ளங்கி',
    'கத்தரிக்காய்',
  ];

  // Sample price data for crops in different districts
  final Map<String, Map<String, double>> _priceData = {
    'நெல்': {
      'அரியலூர்': 25.0,
      'செங்கல்பட்டு': 27.0,
      'கோயம்புத்தூர்': 26.5,
      'மதுரை': 24.0,
      'திருச்சி': 25.5,
      'சேலம்': 26.0,
      'ஈரோடு': 24.5,
    },
    'மா': {
      'அரியலூர்': 40.0,
      'செங்கல்பட்டு': 42.0,
      'கோயம்புத்தூர்': 41.0,
      'மதுரை': 39.0,
      'திருச்சி': 40.5,
      'சேலம்': 41.5,
      'ஈரோடு': 38.5,
    },
    'தேங்காய்': {
      'அரியலூர்': 15.0,
      'செங்கல்பட்டு': 16.0,
      'கோயம்புத்தூர்': 15.5,
      'மதுரை': 14.0,
      'திருச்சி': 15.0,
      'சேலம்': 16.5,
      'ஈரோடு': 14.5,
    },
    'ராகி': {
      'அரியலூர்': 30.0,
      'செங்கல்பட்டு': 32.0,
      'கோயம்புத்தூர்': 31.0,
      'மதுரை': 29.0,
      'திருச்சி': 30.5,
      'சேலம்': 31.5,
      'ஈரோடு': 28.5,
    },
    'சோளம்': {
      'அரியலூர்': 20.0,
      'செங்கல்பட்டு': 22.0,
      'கோயம்புத்தூர்': 21.0,
      'மதுரை': 19.0,
      'திருச்சி': 20.5,
      'சேலம்': 21.5,
      'ஈரோடு': 18.5,
    },
    'கரும்பு': {
      'அரியலூர்': 10.0,
      'செங்கல்பட்டு': 12.0,
      'கோயம்புத்தூர்': 11.0,
      'மதுரை': 9.0,
      'திருச்சி': 10.5,
      'சேலம்': 11.5,
      'ஈரோடு': 8.5,
    },
    'சூரியகாந்தி': {
      'அரியலூர்': 50.0,
      'செங்கல்பட்டு': 52.0,
      'கோயம்புத்தூர்': 51.0,
      'மதுரை': 49.0,
      'திருச்சி': 50.5,
      'சேலம்': 51.5,
      'ஈரோடு': 48.5,
    },
    'ஆமணக்கு': {
      'அரியலூர்': 35.0,
      'செங்கல்பட்டு': 37.0,
      'கோயம்புத்தூர்': 36.0,
      'மதுரை': 34.0,
      'திருச்சி': 35.5,
      'சேலம்': 36.5,
      'ஈரோடு': 33.5,
    },
    'வாழை': {
      'அரியலூர்': 18.0,
      'செங்கல்பட்டு': 20.0,
      'கோயம்புத்தூர்': 19.0,
      'மதுரை': 17.0,
      'திருச்சி': 18.5,
      'சேலம்': 19.5,
      'ஈரோடு': 16.5,
    },
    'கடலை': {
      'அரியலூர்': 45.0,
      'செங்கல்பட்டு': 47.0,
      'கோயம்புத்தூர்': 46.0,
      'மதுரை': 44.0,
      'திருச்சி': 45.5,
      'சேலம்': 46.5,
      'ஈரோடு': 43.5,
    },
    'எள்': {
      'அரியலூர்': 60.0,
      'செங்கல்பட்டு': 62.0,
      'கோயம்புத்தூர்': 61.0,
      'மதுரை': 59.0,
      'திருச்சி': 60.5,
      'சேலம்': 61.5,
      'ஈரோடு': 58.5,
    },
    'பலா': {
      'அரியலூர்': 22.0,
      'செங்கல்பட்டு': 24.0,
      'கோயம்புத்தூர்': 23.0,
      'மதுரை': 21.0,
      'திருச்சி': 22.5,
      'சேலம்': 23.5,
      'ஈரோடு': 20.5,
    },
    'நெல்லிக்காய்': {
      'அரியலூர்': 28.0,
      'செங்கல்பட்டு': 30.0,
      'கோயம்புத்தூர்': 29.0,
      'மதுரை': 27.0,
      'திருச்சி': 28.5,
      'சேலம்': 29.5,
      'ஈரோடு': 26.5,
    },
    'திராட்சை': {
      'அரியலூர்': 55.0,
      'செங்கல்பட்டு': 57.0,
      'கோயம்புத்தூர்': 56.0,
      'மதுரை': 54.0,
      'திருச்சி': 55.5,
      'சேலம்': 56.5,
      'ஈரோடு': 53.5,
    },
    'வெங்காயம்': {
      'அரியலூர்': 12.0,
      'செங்கல்பட்டு': 14.0,
      'கோயம்புத்தூர்': 13.0,
      'மதுரை': 11.0,
      'திருச்சி': 12.5,
      'சேலம்': 13.5,
      'ஈரோடு': 10.5,
    },
    'முள்ளங்கி': {
      'அரியலூர்': 8.0,
      'செங்கல்பட்டு': 10.0,
      'கோயம்புத்தூர்': 9.0,
      'மதுரை': 7.0,
      'திருச்சி': 8.5,
      'சேலம்': 9.5,
      'ஈரோடு': 6.5,
    },
    'கத்தரிக்காய்': {
      'அரியலூர்': 14.0,
      'செங்கல்பட்டு': 16.0,
      'கோயம்புத்தூர்': 15.0,
      'மதுரை': 13.0,
      'திருச்சி': 14.5,
      'சேலம்': 15.5,
      'ஈரோடு': 12.5,
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
        title: const Text('விலை ஒப்பீடு'),
        backgroundColor: Colors.green,
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
                labelText: 'பயிரைத் தேர்ந்தெடுக்கவும்',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Display price comparison table
            const Text(
              'விலை ஒப்பீடு (ஒரு கிலோவுக்கு)',
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
                'அதிக லாபம் தரும் மாவட்டம்: $mostProfitableDistrict',
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

//schemes//

class tSubsidiesAndSchemesPage extends StatefulWidget {
  const tSubsidiesAndSchemesPage({super.key});

  @override
  _tSubsidiesAndSchemesPageState createState() => _tSubsidiesAndSchemesPageState();
}

class _tSubsidiesAndSchemesPageState extends State<tSubsidiesAndSchemesPage> {
  String _selectedState = '';
  String _selectedCrop = '';
  List<Map<String, String>> _filteredSchemes = [];

  // List of all Indian states
  final List<String> _states = [
    'ஆந்திரப் பிரதேசம்',
    'அருணாச்சலப் பிரதேசம்',
    'அசாம்',
    'பீகார்',
    'சத்தீஸ்கர்',
    'கோவா',
    'குஜராத்',
    'ஹரியானா',
    'இமாச்சலப் பிரதேசம்',
    'ஜார்க்கண்ட்',
    'கர்நாடகா',
    'கேரளா',
    'மத்தியப் பிரதேசம்',
    'மகாராஷ்டிரா',
    'மணிப்பூர்',
    'மேகாலயா',
    'மிசோரம்',
    'நாகாலாந்து',
    'ஒடிசா',
    'பஞ்சாப்',
    'ராஜஸ்தான்',
    'சிக்கிம்',
    'தமிழ்நாடு',
    'தெலுங்கானா',
    'திரிபுரா',
    'உத்தரப் பிரதேசம்',
    'உத்தராகண்ட்',
    'மேற்கு வங்காளம்',
  ];

  // List of crops
  final List<String> _crops = [
    'நெல்',
    'தேங்காய்',
    'கரும்பு',
    'ராகி',
    'சோளம்',
    'மா',
    'முந்திரி',
    'கோதுமை',
    'சோளம்',
    'தினை',
    'பருத்தி',
    'தேயிலை',
    'காபி',
  ];

  // List of schemes
  final List<Map<String, String>> _schemes = [
    {
      'title': 'பிரதான் மந்திரி பசல் பிமா யோஜனா (PMFBY)',
      'description': 'பயிர் இழப்புக்கு எதிராக விவசாயிகளை பாதுகாக்கும் பயிர் காப்பீட்டுத் திட்டம்.',
      'eligibility': 'அறிவிக்கப்பட்ட பயிர்களை வளர்க்கும் அனைத்து விவசாயிகள்.',
      'benefits': '90% வரை பிரீமியம் மானியம்.',
      'crops': 'நெல், கோதுமை, சோளம், தினை, பருத்தி',
      'states': 'அனைத்து',
    },
    {
      'title': 'கிசான் கிரெடிட் கார்டு (KCC)',
      'description': 'விவசாயிகளுக்கு விவசாயத் தேவைகளுக்கு மலிவான கடன் வழங்குகிறது.',
      'eligibility': 'அனைத்து விவசாயிகள், குத்தகை விவசாயிகள் உட்பட.',
      'benefits': '4% வட்டி விகிதம்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'தேசிய நிலையான விவசாய மிஷன் (NMSA)',
      'description': 'நிலையான விவசாய நடைமுறைகளை ஊக்குவிக்கிறது.',
      'eligibility': 'கரிம விவசாயம் செய்யும் விவசாயிகள்.',
      'benefits': 'கரிம உள்ளீடுகள் மற்றும் உபகரணங்களுக்கான மானியம்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'மண் ஆரோக்கிய அட்டை திட்டம்',
      'description': 'விவசாயிகளுக்கு மண் ஆரோக்கிய அட்டைகளை வழங்குகிறது.',
      'eligibility': 'அனைத்து விவசாயிகள்.',
      'benefits': 'இலவச மண் சோதனை மற்றும் பரிந்துரைகள்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'ராஷ்ட்ரிய க்ரிஷி விகாஸ் யோஜனா (RKVY)',
      'description': 'மாநில-குறிப்பிட்ட விவசாய திட்டங்களை ஆதரிக்கிறது.',
      'eligibility': 'மாநில அரசுகள் மற்றும் விவசாயிகள்.',
      'benefits': 'விவசாய திட்டங்களுக்கான நிதி உதவி.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'பாரம்பரிய க்ரிஷி விகாஸ் யோஜனா (PKVY)',
      'description': 'கரிம விவசாய நடைமுறைகளை ஊக்குவிக்கிறது.',
      'eligibility': 'கரிம விவசாயம் செய்யும் விவசாயிகள்.',
      'benefits': 'கரிம உள்ளீடுகளுக்கான நிதி உதவி.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'அக்ரி-கிளினிக்ஸ் மற்றும் அக்ரி-பிசினஸ் சென்டர்கள்',
      'description': 'தொழிலதிபர்களுக்கு அக்ரி-கிளினிக்ஸ் மற்றும் அக்ரி-பிசினஸ் சென்டர்களை அமைக்க உதவுகிறது.',
      'eligibility': 'விவசாய பட்டதாரிகள் மற்றும் டிப்ளமோ படித்தவர்கள்.',
      'benefits': 'திட்ட செலவில் 36% வரை மானியம்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'பண்ணை இயந்திரமயமாக்கல் மற்றும் தொழில்நுட்பத்திற்கான டிஜிட்டல் தளம்',
      'description': 'விவசாயிகளுக்கு பண்ணை இயந்திரங்கள் மற்றும் தொழில்நுட்பத்தை அணுகுவதற்கான தளம்.',
      'eligibility': 'அனைத்து விவசாயிகள்.',
      'benefits': 'பண்ணை இயந்திரங்கள் மற்றும் உபகரணங்களுக்கான மானியம்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'விவசாயிகள் போர்டல் - விவசாயிகளுக்கான ஒரே ஸ்டாப் ஷாப்',
      'description': 'விவசாயிகள் தகவல்கள் மற்றும் சேவைகளை அணுகுவதற்கான ஒற்றை சாளர தளம்.',
      'eligibility': 'அனைத்து விவசாயிகள்.',
      'benefits': 'பயிர்கள், வானிலை மற்றும் திட்டங்கள் பற்றிய தகவல்களை அணுகுதல்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'கிசான் சுவிதா',
      'description': 'விவசாயிகளுக்கு தொடர்புடைய தகவல்களை வழங்கும் மொபைல் பயன்பாடு.',
      'eligibility': 'அனைத்து விவசாயிகள்.',
      'benefits': 'வானிலை முன்னறிவிப்புகள், சந்தை விலைகள் மற்றும் ஆலோசனைகளை அணுகுதல்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'தேசிய விவசாய சந்தை போர்டல் (eNAM)',
      'description': 'விவசாய பொருட்களின் வணிகத்திற்கான ஆன்லைன் தளம்.',
      'eligibility': 'விவசாயிகள் மற்றும் வணிகர்கள்.',
      'benefits': 'சிறந்த விலை கண்டறிதல் மற்றும் பரந்த சந்தை அணுகல்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'தேசிய மூங்கில் மிஷன்',
      'description': 'மூங்கில் துறையின் வளர்ச்சியை ஊக்குவிக்கிறது.',
      'eligibility': 'மூங்கில் துறையில் உள்ள விவசாயிகள் மற்றும் தொழிலதிபர்கள்.',
      'benefits': 'மூங்கில் வளர்ப்பு மற்றும் செயலாக்கத்திற்கான நிதி உதவி.',
      'crops': 'மூங்கில்',
      'states': 'அனைத்து',
    },
    {
      'title': 'தேசிய உணவு பாதுகாப்பு மிஷன்',
      'description': 'நெல், கோதுமை மற்றும் பருப்பு வகைகளின் உற்பத்தியை அதிகரிக்கும் நோக்கம் கொண்டது.',
      'eligibility': 'நெல், கோதுமை மற்றும் பருப்பு வகைகளை வளர்க்கும் விவசாயிகள்.',
      'benefits': 'விதைகள், உரங்கள் மற்றும் பிற உள்ளீடுகளுக்கான மானியம்.',
      'crops': 'நெல், கோதுமை, பருப்பு வகைகள்',
      'states': 'அனைத்து',
    },
    {
      'title': 'தேசிய தோட்டக்கலை மிஷன்',
      'description': 'தோட்டக்கலைத் துறையின் முழுமையான வளர்ச்சியை ஊக்குவிக்கிறது.',
      'eligibility': 'தோட்டக்கலைத் துறையில் ஈடுபட்டுள்ள விவசாயிகள்.',
      'benefits': 'தோட்டக்கலை உள்ளீடுகள் மற்றும் உள்கட்டமைப்புக்கான மானியம்.',
      'crops': 'பழங்கள், காய்கறிகள், பூக்கள்',
      'states': 'அனைத்து',
    },
    {
      'title': 'தேசிய எண்ணெய் விதைகள் மற்றும் எண்ணெய் பனை மிஷன் (NMOOP)',
      'description': 'எண்ணெய் விதைகள் மற்றும் எண்ணெய் பனை வளர்ப்பை ஊக்குவிக்கிறது.',
      'eligibility': 'எண்ணெய் விதைகள் மற்றும் எண்ணெய் பனை வளர்க்கும் விவசாயிகள்.',
      'benefits': 'விதைகள், உரங்கள் மற்றும் பாசனத்திற்கான மானியம்.',
      'crops': 'எண்ணெய் விதைகள், எண்ணெய் பனை',
      'states': 'அனைத்து',
    },
    {
      'title': 'பிரதான் மந்திரி கிசான் சம்மன் நிதி (PM-KISAN)',
      'description': 'சிறிய மற்றும் குறுநில விவசாயிகளுக்கு வருமான ஆதரவு வழங்குகிறது.',
      'eligibility': 'சிறிய மற்றும் குறுநில விவசாயிகள்.',
      'benefits': 'ஆண்டுக்கு ₹6,000 நேரடி வருமான ஆதரவு.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'பிரதான் மந்திரி க்ரிஷி சிஞ்சாயி யோஜனா (PMKSY)',
      'description': 'விவசாயத்தில் திறமையான நீர் பயன்பாட்டை ஊக்குவிக்கிறது.',
      'eligibility': 'மைக்ரோ-பாசன நுட்பங்களை ஏற்றுக்கொள்ளும் விவசாயிகள்.',
      'benefits': 'மைக்ரோ-பாசன அமைப்புகளுக்கான மானியம்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'விதை அங்கீகாரம், கண்காணிப்பு மற்றும் முழுமையான சரக்கு (SATHI)',
      'description': 'விதைகளின் தரம் மற்றும் கண்காணிப்பை உறுதி செய்கிறது.',
      'eligibility': 'விதை உற்பத்தியாளர்கள் மற்றும் விவசாயிகள்.',
      'benefits': 'சான்றளிக்கப்பட்ட மற்றும் கண்காணிக்கக்கூடிய விதைகளை அணுகுதல்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'விவசாய புள்ளிவிவரங்களுக்கான ஒருங்கிணைந்த போர்டல்',
      'description': 'விரிவான விவசாய புள்ளிவிவரங்களை வழங்குகிறது.',
      'eligibility': 'விவசாயிகள், ஆராய்ச்சியாளர்கள் மற்றும் கொள்கை உருவாக்குநர்கள்.',
      'benefits': 'நம்பகமான விவசாய தரவுகளை அணுகுதல்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'mKisan',
      'description': 'விவசாயிகளுக்கான SMS-அடிப்படையிலான ஆலோசனை சேவை.',
      'eligibility': 'அனைத்து விவசாயிகள்.',
      'benefits': 'வானிலை, பயிர்கள் மற்றும் திட்டங்கள் பற்றிய சரியான நேரத்தில் தகவல்கள்.',
      'crops': 'அனைத்து',
      'states': 'அனைத்து',
    },
    {
      'title': 'தமிழ்நாடு பாசன விவசாய நவீனமயமாக்கல் திட்டம் (TNIAMP)',
      'description': 'தமிழ்நாட்டில் பாசன அமைப்புகளை நவீனமயமாக்குவதற்கும் நீர் பயன்பாட்டு திறனை மேம்படுத்துவதற்கும் நோக்கம் கொண்டது.',
      'eligibility': 'பாசன வசதிகள் உள்ள தமிழ்நாடு விவசாயிகள்.',
      'benefits': 'நவீன பாசன உபகரணங்கள் மற்றும் உள்கட்டமைப்புக்கான மானியம்.',
      'crops': 'அனைத்து',
      'states': 'தமிழ்நாடு',
    },
    {
      'title': 'தமிழ்நாடு நிலையான பசுமை மூடுதல் மிஷன் (TNMSGF) - கட்டம் I',
      'description': 'தமிழ்நாட்டில் நிலையான பசுமை மூடுதல் மற்றும் விவசாய வனத்துறையை ஊக்குவிக்கிறது.',
      'eligibility': 'விவசாய வனத்துறை செய்யும் அல்லது பசுமை மூடுதல் முயற்சிகளில் ஆர்வமுள்ள தமிழ்நாடு விவசாயிகள்.',
      'benefits': 'மரங்கள் நடவு மற்றும் பசுமை மூடுதல் பராமரிப்புக்கான நிதி உதவி.',
      'crops': 'அனைத்து',
      'states': 'தமிழ்நாடு',
    },
  ];

  // Function to filter schemes based on selected state and crop
  void _filterSchemes() {
    setState(() {
      _filteredSchemes = _schemes.where((scheme) {
        final schemeCrops = scheme['crops']!.split(', ');
        final schemeStates = scheme['states']!.split(', ');

        // Check if the selected crop and state match the scheme
        return (schemeCrops.contains(_selectedCrop) || schemeCrops.contains('அனைத்து')) &&
            (schemeStates.contains(_selectedState) || schemeStates.contains('அனைத்து'));
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('மானியங்கள் மற்றும் திட்டங்கள்'),
        backgroundColor: Colors.green,
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
                labelText: 'மாநிலத்தைத் தேர்ந்தெடுக்கவும்',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'மாநிலத்தைத் தேர்ந்தெடுக்கவும்';
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
                labelText: 'பயிரைத் தேர்ந்தெடுக்கவும்',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'பயிரைத் தேர்ந்தெடுக்கவும்';
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
                      content: Text('மாநிலம் மற்றும் பயிரைத் தேர்ந்தெடுக்கவும்.'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text('சமர்ப்பிக்கவும்'),
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
                              'தகுதி: ${scheme['eligibility']!}',
                              style: const TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'நன்மைகள்: ${scheme['benefits']!}',
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

// community//

class tCommunitySupportPage extends StatelessWidget {
  const tCommunitySupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('சமூக ஆதரவு'),
        backgroundColor: Colors.green,
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
              'சமூக மன்றம்',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'விவசாயிகளுடன் கலந்துரையாடல்களில் சேர்ந்து, உங்கள் அனுபவங்களைப் பகிர்ந்து, ஆலோசனைகளைப் பெறுங்கள்.',
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to the community forum screen
              },
              child: const Text('மன்றத்தைப் பார்க்கவும்'),
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
              'பிரபலமான கலந்துரையாடல் தலைப்புகள்',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.agriculture),
              title: const Text('பயிர் சுழற்சி முறைகள்'),
              onTap: () {
                // Navigate to the specific discussion topic
              },
            ),
            ListTile(
              leading: const Icon(Icons.water_drop),
              title: const Text('பாசன முறைகள்'),
              onTap: () {
                // Navigate to the specific discussion topic
              },
            ),
            ListTile(
              leading: const Icon(Icons.pest_control),
              title: const Text('பூச்சி கட்டுப்பாட்டுத் தீர்வுகள்'),
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
              'கேள்வி கேளுங்கள்',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'ஏதேனும் குறிப்பிட்ட கேள்வி உள்ளதா? சமூகத்திடம் உதவி கேளுங்கள்.',
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'உங்கள் கேள்வி',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Submit the question to the community
              },
              child: const Text('கேள்வியை சமர்ப்பிக்கவும்'),
            ),
          ],
        ),
      ),
    );
  }
}

//industry//
class tIndustryConnectionPage extends StatefulWidget {
  const tIndustryConnectionPage({super.key});

  @override
  _tIndustryConnectionPageState createState() => _tIndustryConnectionPageState();
}

class _tIndustryConnectionPageState extends State<tIndustryConnectionPage> {
  String _selectedCrop = '';
  final TextEditingController _quantityController = TextEditingController();
  String _industryResult = '';

  final List<String> _crops = [
    'மா',
    'தேங்காய்',
    'கரும்பு',
    'நெல்லிக்காய்',
    'திராட்சை',
    'நெல்',
    'ராகி',
    'சோளம்',
    'கொய்யா',
    'தினை',
    'வெங்காயம்',
  ];

  final Map<String, List<String>> _industryMap = {
    'மா': ['மிமியின் மா ஜூஸ்', 'சக்தி மாங்காய்'],
    'தேங்காய்': ['கோகோப்ரெஷ்', 'டெண்டர்கோகோ'],
    'கரும்பு': ['ஸ்வீட்கேன் இண்டஸ்ட்ரீஸ்', 'சுகர்டெலைட்'],
    'நெல்லிக்காய்': ['நெல்லிக்காய் ஹெல்த்', 'நேச்சர்ஸ் நெல்லிக்காய்'],
    'திராட்சை': ['திராட்சை வைன்', 'புதிய திராட்சை கோ.'],
    'நெல்': ['கோல்டன் கிரெயின்ஸ்', 'ரைஸ்பியூர்'],
    'ராகி': ['ராகி ஹெல்த்', 'நியூட்ரி ராகி'],
    'சோளம்': ['சோளம் கிங்', 'ஹெல்தி சோளம்'],
    'கொய்யா': ['கொய்யா குட்னெஸ்', 'புதிய கொய்யா'],
    'தினை': ['தினை மேஜிக்', 'கரிம தினை'],
    'வெங்காயம்': ['வெங்காயம் மாஸ்டர்', 'புதிய வெங்காயம் கோ.'],
  };

  void _findIndustries() {
    if (_selectedCrop.isEmpty || _quantityController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('பயிரைத் தேர்ந்தெடுத்து, அளவை உள்ளிடவும்.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final industries = _industryMap[_selectedCrop] ?? [];
    setState(() {
      _industryResult = '$_selectedCrop-க்கு பொருத்தமான தொழில்துறைகள்:\n${industries.join('\n')}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('தொழில்துறை இணைப்பு'),
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
        labelText: 'பயிரைத் தேர்ந்தெடுக்கவும்',
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
          return 'பயிரைத் தேர்ந்தெடுக்கவும்';
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
        labelText: 'அறுவடை அளவு (கிலோவில்)',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'அளவை உள்ளிடவும்';
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
      child: const Text('தொழில்துறைகளைக் கண்டறியவும்'),
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

//loan page//
class tLoanPage extends StatefulWidget {
  const tLoanPage({super.key});

  @override
  _tLoanPageState createState() => _tLoanPageState();
}

class _tLoanPageState extends State<tLoanPage> {
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
          content: Text('தயவுசெய்து அனைத்து புலங்களையும் நிரப்பவும்.'),
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
      _emiResult = 'மாதாந்திர தவணை (EMI): ₹${emi.toStringAsFixed(2)}';
    });
  }

  void _checkEligibility() {
    if (_incomeController.text.isEmpty ||
        _existingLoansController.text.isEmpty ||
        _creditScoreController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('தயவுசெய்து அனைத்து புலங்களையும் நிரப்பவும்.'),
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
      _eligibilityResult = isEligible ? 'நீங்கள் கடன் பெற தகுதியானவர்!' : 'நீங்கள் கடன் பெற தகுதியற்றவர்.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('கடன் விண்ணப்பம்'),
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
              'கடன் தகுதி சரிபார்ப்பு',
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
              child: const Text('தகுதியை சரிபார்க்கவும்'),
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
        labelText: 'மாத வருமானம் (₹)',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.money),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'தயவுசெய்து உங்கள் மாத வருமானத்தை உள்ளிடவும்';
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
        labelText: 'தற்போதைய கடன்கள் (₹)',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.money_off),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'தயவுசெய்து உங்கள் தற்போதைய கடன்களை உள்ளிடவும்';
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
        labelText: 'கிரெடிட் ஸ்கோர்',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.score),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'தயவுசெய்து உங்கள் கிரெடிட் ஸ்கோரை உள்ளிடவும்';
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
        labelText: 'கடன் தொகை (₹)',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.money),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'தயவுசெய்து கடன் தொகையை உள்ளிடவும்';
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
        labelText: 'வட்டி விகிதம் (%)',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.percent),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'தயவுசெய்து வட்டி விகிதத்தை உள்ளிடவும்';
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
        labelText: 'கடன் காலம் (ஆண்டுகள்)',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.calendar_today),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'தயவுசெய்து கடன் காலத்தை உள்ளிடவும்';
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
      child: const Text('மாதாந்திர தவணையை கணக்கிடு'),
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
              'கடன் மாதாந்திர தவணை கணக்கீடு',
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

//schedule meeting//


class tScheduleMeetingPage extends StatefulWidget {
  const tScheduleMeetingPage({super.key});

  @override
  _tScheduleMeetingPageState createState() => _tScheduleMeetingPageState();
}

class _tScheduleMeetingPageState extends State<tScheduleMeetingPage> {
  String _selectedDate = '';
  String _selectedDoubt = '';
  final List<String> _doubtCategories = [
    'கடன்',
    'பூச்சிக்கொல்லி',
    'உரம்',
    'லாபம்',
    'பயிர் நோய்',
    'பாசனம்',
    'மண் ஆரோக்கியம்',
    'சந்தை விலைகள்',
    'அரசு திட்டங்கள்',
    'மற்றவை',
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
          content: Text('தயவுசெய்து தேதி மற்றும் சந்தேக வகையை தேர்ந்தெடுக்கவும்.'),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$_selectedDoubt க்கான கூட்டம் $_selectedDate அன்று திட்டமிடப்பட்டது.'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('கூட்டத்தை திட்டமிடு'),
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
              _selectedDate.isEmpty ? 'தேதியை தேர்ந்தெடுக்கவும்' : 'தேர்ந்தெடுக்கப்பட்ட தேதி: $_selectedDate',
            ),
            trailing: const Icon(Icons.calendar_today),
            onTap: () => _selectDate(context),
          ),
          const SizedBox(height: 20),

          // Dropdown for selecting doubt category
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'சந்தேக வகையை தேர்ந்தெடுக்கவும்',
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
                return 'தயவுசெய்து சந்தேக வகையை தேர்ந்தெடுக்கவும்';
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
              'கூட்டத்தை திட்டமிடு',
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
                    _selectedDate.isEmpty ? 'தேதியை தேர்ந்தெடுக்கவும்' : 'தேர்ந்தெடுக்கப்பட்ட தேதி: $_selectedDate',
                  ),
                  trailing: const Icon(Icons.calendar_today),
                  onTap: () => _selectDate(context),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'சந்தேக வகையை தேர்ந்தெடுக்கவும்',
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
                      return 'தயவுசெய்து சந்தேக வகையை தேர்ந்தெடுக்கவும்';
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
              'கூட்டத்தை திட்டமிடு',
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
              'டோல்-ஃப்ரீ எண்:',
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

//tractor//

class tTractorRentalPage extends StatelessWidget {
  final TractorRentalSystem rentalSystem = TractorRentalSystem();

  @override
  Widget build(BuildContext context) {
    // Simulate adding rental requests
    rentalSystem.addRentalRequest('ராஜேஷ் குமார்', 5, 1500.0);
    rentalSystem.addRentalRequest('பிரியா ஷர்மா', 3, 2500.0);

    return Scaffold(
      appBar: AppBar(
        title: Text('டிராக்டர் வாடகை கோரிக்கைகள்'),
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
              'வாடகை கோரிக்கையை சமர்ப்பிக்கவும்',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'உங்கள் பெயர்',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _durationController,
              decoration: InputDecoration(
                labelText: 'காலம் (நாட்கள்)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _priceController,
              decoration: InputDecoration(
                labelText: 'விலை (₹)',
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
                      content: Text('தயவுசெய்து அனைத்து புலங்களையும் சரியான மதிப்புகளுடன் நிரப்பவும்.'),
                      backgroundColor: Colors.red,
                    ),
                  );
                  return;
                }

                rentalSystem.addRentalRequest(name, duration, price);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('வாடகை கோரிக்கை வெற்றிகரமாக சமர்ப்பிக்கப்பட்டது!'),
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
                    builder: (context) => tTractorRentalPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: Text('கோரிக்கையை சமர்ப்பிக்கவும்'),
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
                      'காலம்: ${request['durationDays']} நாட்கள்',
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
                      'விலை: ₹${request['price'].toStringAsFixed(2)}',
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
                      'நிலை: ${request['status']}',
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
                                  '${request['requesterName']} இன் கோரிக்கை ஏற்கப்பட்டது.'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => tTractorRentalPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: Text('ஏற்கவும்'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          rentalSystem.handleRentalRequest(index, 'decline');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  '${request['requesterName']} இன் கோரிக்கை நிராகரிக்கப்பட்டது.'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => tTractorRentalPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: Text('நிராகரிக்கவும்'),
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

// disease prediction//

class tPredictDiseasePage extends StatelessWidget {
  const tPredictDiseasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('நோய் கணித்தல்'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'தாவரத்தின் படத்தை பதிவேற்றுக',
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
              child: const Text('படத்தை பதிவேற்றுக'),
            ),
            const SizedBox(height: 20),
            const Text(
              'கூடுதல் விவரங்களை வழங்கவும்',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'தாவர வகையை உள்ளிடவும்',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'அறிகுறிகளை உள்ளிடவும்',
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
              child: const Text('நோயை கணித்தல்'),
            ),
          ],
        ),
      ),
    );
  }
}