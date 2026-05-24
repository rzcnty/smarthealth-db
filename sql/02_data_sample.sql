BEGIN;



INSERT INTO "Hospital" (
  "Hospital_ID", 
  "Hospital_Name", 
  "Address_Country", 
  "Address_City", 
  "Address_District", 
  "Address_Street", 
  "Address_Building_No", 
  "Address_Zip_Code", 
  "Contact_Number"
) VALUES 
(1, 'Cerrahpaşa Faculty of Medicine Hospital', 'Turkey', 'Istanbul', 'Fatih', 'Kocamustafapaşa Ave.', '53', '34098', '+902124143000'),
(2, 'Acıbadem Maslak Hospital', 'Turkey', 'Istanbul', 'Sarıyer', 'Büyükdere Ave.', '40', '34457', '+902123044444'),
(3, 'Koç University Hospital', 'Turkey', 'Istanbul', 'Zeytinburnu', 'Davutpaşa Ave.', '4', '34010', '+908502508250'),
(4, 'Hacettepe University Hospital', 'Turkey', 'Ankara', 'Altındağ', 'Sıhhiye', '1', '06230', '+903123055000'),
(5, 'Ege University Faculty of Medicine Hospital', 'Turkey', 'Izmir', 'Bornova', 'Ege University Campus', '1', '35100', '+902323901199'),
(6, 'St Thomas Hospital', 'United Kingdom', 'London', 'Lambeth', 'Westminster Bridge Rd', '1', 'SE1 7EH', '+442071887188'),
(7, 'The Mount Sinai Hospital', 'United States', 'New York', 'Manhattan', 'Gustave L. Levy Pl', '1', '10029', '+12122416500'),
(8, 'Charité - Universitätsmedizin', 'Germany', 'Berlin', 'Mitte', 'Charitéplatz', '1', '10117', '+493045050');

INSERT INTO "Disease" (
  "Disease_ID", 
  "Disease_Name", 
  "Disease_Type"
) VALUES 
(1, 'Type 2 Diabetes', 'Chronic'),
(2, 'Hypertension', 'Cardiovascular'),
(3, 'COVID-19', 'Infectious'),
(4, 'Asthma', 'Chronic'),
(5, 'Rheumatoid Arthritis', 'Autoimmune'),
(6, 'Tuberculosis', 'Infectious'),
(7, 'Alzheimer', 'Neurological'),
(8, 'Influenza (Flu)', 'Infectious'),
(9, 'Leukemia', 'Oncological'),
(10, 'Migraine', 'Neurological');

INSERT INTO "Disease_Symptom" (
  "Disease_ID", 
  "Symptom_Name"
) VALUES 
(1, 'Increased thirst'),
(1, 'Frequent urination'),
(1, 'Fatigue'),
(2, 'Headache'),
(2, 'Shortness of breath'),
(3, 'Fever'),
(3, 'Dry cough'),
(3, 'Loss of taste or smell'),
(4, 'Shortness of breath'),
(4, 'Wheezing'),
(5, 'Joint pain'),
(5, 'Morning stiffness'),
(6, 'Persistent cough'),
(6, 'Night sweats'),
(7, 'Memory loss'),
(7, 'Confusion'),
(8, 'Fever'),
(8, 'Muscle aches'),
(9, 'Fatigue'),
(9, 'Easy bleeding'),
(10, 'Throbbing head pain'),
(10, 'Sensitivity to light');

INSERT INTO "Insurance_Provider" (
  "Provider_ID", 
  "Provider_Name", 
  "Tax_Number", 
  "Provider_Email"
) VALUES 
(1, 'Social Security Institution (SGK)', '7720394320', 'contact@sgk.gov.tr'),
(2, 'Allianz Insurance', '0550009620', 'info@allianz.com.tr'),
(3, 'Anadolu Insurance', '0680061327', 'bilgi@anadolusigorta.com.tr'),
(4, 'Bupa Acibadem Insurance', '0070081580', 'info@bupaacibadem.com.tr'),
(5, 'National Health Service (NHS)', 'GB123456789', 'england.contactus@nhs.net'),
(6, 'Medicare', 'US987654321', 'medicare.support@cms.hhs.gov'),
(7, 'Cigna Global', 'GB987654321', 'cignaglobal_customer.care@cigna.com'),
(8, 'Techniker Krankenkasse (TK)', 'DE123456789', 'service@tk.de');

INSERT INTO "Person" (
  "Person_ID", "National_ID", "Name_First_Name", "Name_Last_Name", 
  "Date_of_Birth", "Gender", "Blood_Type", "Phone_Number", 
  "Address_Country", "Address_City", "Address_District", "Address_Street", 
  "Address_Building_No", "Address_Apartment_No", "Address_Zip_Code", 
  "Email", "Password_Hash"
) VALUES 
(1, '10293847561', 'Kerem', 'Yılmaz', '1985-03-12', 'Male', 'A+', '+905321112233', 'Türkiye', 'İstanbul', 'Kadıköy', 'Moda Cd.', '14', '5', '34710', 'kerem.yilmaz@email.com', 'a1b2c3d4e5'),
(2, '29384756102', 'Zeynep', 'Kaya', '1992-07-24', 'Female', 'O+', '+905332223344', 'Türkiye', 'Ankara', 'Çankaya', 'Tunalı Hilmi Cd.', '85', '12', '06680', 'zkaya92@email.com', 'f6g7h8i9j0'),
(3, 'NIN987654A', 'Liam', 'O''Connor', '1978-11-05', 'Male', 'B-', '+447911123456', 'Birleşik Krallık', 'Londra', 'Camden', 'High Holborn', '22', '1', 'WC1V', 'liam.oconnor@email.co.uk', 'k1l2m3n4o5'),
(4, '38475610293', 'Elif', 'Çelik', '2001-01-15', 'Female', 'AB+', '+905443334455', 'Türkiye', 'İzmir', 'Karşıyaka', 'Cemal Gürsel Cd.', '120', '8', '35590', 'elifcelik_01@email.com', 'p6q7r8s9t0'),
(5, '47561029384', 'Mustafa', 'Demir', '1965-09-30', 'Male', 'A-', '+905554445566', 'Türkiye', 'Antalya', 'Muratpaşa', 'Işıklar Cd.', '42', '2', '07100', 'mdemir.antalya@email.com', 'u1v2w3x4y5'),
(6, 'DE12345678', 'Sophia', 'Müller', '1988-04-18', 'Female', 'O-', '+491512345678', 'Almanya', 'Berlin', 'Mitte', 'Friedrichstraße', '200', '15', '10117', 'sophia.muller@email.de', 'z6a7b8c9d0'),
(7, '56102938475', 'Burak', 'Özcan', '1995-12-08', 'Male', 'B+', '+905325556677', 'Türkiye', 'Bursa', 'Nilüfer', 'FSM Bulvarı', '76', '10', '16140', 'bozcan95@email.com', 'e1f2g3h4i5'),
(8, '61029384756', 'Ayşe', 'Şahin', '1980-05-22', 'Female', 'A+', '+905336667788', 'Türkiye', 'İstanbul', 'Beşiktaş', 'Barbaros Blv.', '55', '3', '34353', 'ayse.sahin@email.com', 'j6k7l8m9n0'),
(9, '10293847562', 'Caner', 'Yıldız', '1999-10-10', 'Male', 'O+', '+905447778899', 'Türkiye', 'Adana', 'Çukurova', 'Turgut Özal Blv.', '112', '4', '01170', 'caner_yildiz99@email.com', 'o1p2q3r4s5'),
(10, 'SSN1234567', 'Emily', 'Chen', '1991-08-14', 'Female', 'AB-', '+12125550198', 'ABD', 'New York', 'Manhattan', 'Broadway', '1500', '4B', '10036', 'emily.chen.ny@email.com', 't6u7v8w9x0'),
(11, '29384756103', 'Hakan', 'Arslan', '1975-02-28', 'Male', 'B-', '+905558889900', 'Türkiye', 'Trabzon', 'Ortahisar', 'Uzun Sk.', '18', '2', '61030', 'hakan_arslan75@email.com', 'y1z2a3b4c5'),
(12, '38475610294', 'Fatma', 'Koç', '1983-06-17', 'Female', 'A+', '+905329990011', 'Türkiye', 'Gaziantep', 'Şehitkamil', 'Kıbrıs Cd.', '34', '1', '27090', 'fatma.koc83@email.com', 'd6e7f8g9h0'),
(13, '47561029385', 'Oğuz', 'Polat', '2005-11-21', 'Male', 'O-', '+905330001122', 'Türkiye', 'İstanbul', 'Şişli', 'Halaskargazi Cd.', '98', '7', '34371', 'oguzpolat_05@email.com', 'i1j2k3l4m5'),
(14, '56102938476', 'Selin', 'Kılıç', '1996-03-03', 'Female', 'B+', '+905441112233', 'Türkiye', 'Eskişehir', 'Tepebaşı', 'İsmet İnönü Cd.', '45', '12', '26130', 'selin.kilic@email.com', 'n6o7p8q9r0'),
(15, 'FR98765432', 'Jean', 'Dupont', '1982-09-09', 'Male', 'A-', '+33612345678', 'Fransa', 'Paris', 'Louvre', 'Rue de Rivoli', '80', '5', '75001', 'jean.dupont@email.fr', 's1t2u3v4w5'),
(16, '61029384757', 'Cem', 'Turan', '1970-12-19', 'Male', 'O+', '+905552223344', 'Türkiye', 'Kocaeli', 'İzmit', 'Cumhuriyet Cd.', '23', '3', '41200', 'cemturan_70@email.com', 'x6y7z8a9b0'),
(17, '10293847563', 'Gizem', 'Aydın', '1998-05-30', 'Female', 'AB+', '+905323334455', 'Türkiye', 'Muğla', 'Bodrum', 'Neyzen Tevfik Cd.', '67', '2', '48400', 'gizem.aydin@email.com', 'c1d2e3f4g5'),
(18, '29384756104', 'Tolga', 'Çetin', '1987-01-25', 'Male', 'B-', '+905334445566', 'Türkiye', 'Kayseri', 'Melikgazi', 'Sivas Blv.', '105', '9', '38030', 'tolga_cetin@email.com', 'h6i7j8k9l0'),
(19, '38475610295', 'Büşra', 'Erdoğan', '1993-08-11', 'Female', 'A+', '+905445556677', 'Türkiye', 'Konya', 'Selçuklu', 'Nalçacı Cd.', '44', '6', '42060', 'busra.erdogan93@email.com', 'm1n2o3p4q5'),
(20, 'UK9876543B', 'Sarah', 'Williams', '1989-10-02', 'Female', 'O-', '+447911987654', 'Birleşik Krallık', 'Manchester', 'Salford', 'Chapel St', '110', '3A', 'M3 6BY', 'sarah.w.manchester@email.co.uk', 'r6s7t8u9v0'),
(21, '47561029386', 'Emre', 'Güneş', '1981-04-05', 'Male', 'A-', '+905556667788', 'Türkiye', 'Diyarbakır', 'Yenişehir', 'Ofis Sanat Sk.', '12', '4', '21100', 'emregunes@email.com', 'w1x2y3z4a5'),
(22, '56102938477', 'Merve', 'Yalçın', '1997-07-16', 'Female', 'B+', '+905327778899', 'Türkiye', 'Samsun', 'Atakum', 'Adnan Menderes Blv.', '250', '11', '55200', 'merve.yalcin97@email.com', 'b6c7d8e9f0'),
(23, '61029384758', 'Volkan', 'Korkmaz', '1979-02-14', 'Male', 'AB-', '+905338889900', 'Türkiye', 'Mersin', 'Yenişehir', 'Gazi Mustafa Kemal Blv.', '180', '5', '33110', 'volkan_korkmaz@email.com', 'g1h2i3j4k5'),
(24, '10293847564', 'Pelin', 'Sarı', '2000-09-22', 'Female', 'O+', '+905449990011', 'Türkiye', 'Antalya', 'Alanya', 'Atatürk Blv.', '90', '15', '07400', 'pelinsari.00@email.com', 'l6m7n8o9p0'),
(25, '29384756105', 'Onur', 'Gül', '1986-11-28', 'Male', 'A+', '+905550001122', 'Türkiye', 'İstanbul', 'Üsküdar', 'Doğancılar Cd.', '32', '2', '34672', 'onur.gul.uskudar@email.com', 'q1r2s3t4u5'),
(26, '38475610296', 'Ahmet', 'Yavuz', '1973-04-19', 'Male', 'O+', '+905321122334', 'Türkiye', 'Ankara', 'Yenimahalle', 'İvedik Cd.', '115', '8', '06170', 'ahmet.yavuz73@email.com', 'a2b3c4d5e6'),
(27, '47561029387', 'Esra', 'Köse', '1988-12-05', 'Female', 'A-', '+905442233445', 'Türkiye', 'İzmir', 'Konak', 'Mithatpaşa Cd.', '450', '21', '35220', 'esra_kose88@email.com', 'f7g8h9i0j1'),
(28, 'US123456789', 'Michael', 'Smith', '1984-07-22', 'Male', 'B+', '+13125550199', 'ABD', 'Chicago', 'Cook', 'Michigan Ave', '875', '40A', '60611', 'msmith.chicago@email.com', 'k2l3m4n5o6'),
(29, '56102938478', 'Burcu', 'Akın', '1994-02-14', 'Female', 'AB+', '+905553344556', 'Türkiye', 'Bursa', 'Osmangazi', 'Altıparmak Cd.', '88', '5', '16050', 'burcu.akin94@email.com', 'p7q8r9s0t1'),
(30, '61029384759', 'Deniz', 'Çoban', '1991-09-08', 'Male', 'O-', '+905334455667', 'Türkiye', 'Antalya', 'Kepez', 'Gazi Blv.', '200', '11', '07060', 'denizcoban_91@email.com', 'u2v3w4x5y6'),
(31, '10293847566', 'Leyla', 'Tekin', '1976-11-30', 'Female', 'A+', '+905325566778', 'Türkiye', 'İstanbul', 'Maltepe', 'Bağdat Cd.', '520', '14', '34840', 'leyla.tekin@email.com', 'z7a8b9c0d1'),
(32, 'IT987654321', 'Marco', 'Rossi', '1980-05-18', 'Male', 'A+', '+393312345678', 'İtalya', 'Roma', 'Centro Storico', 'Via del Corso', '45', '3', '00186', 'marco.rossi.roma@email.it', 'e2f3g4h5i6'),
(33, '29384756106', 'Okan', 'Güler', '1985-01-27', 'Male', 'B-', '+905446677889', 'Türkiye', 'Adana', 'Seyhan', 'Ziyapaşa Blv.', '60', '7', '01120', 'okan.guler85@email.com', 'j7k8l9m0n1'),
(34, '38475610297', 'Eda', 'Doğan', '2002-08-04', 'Female', 'O+', '+905557788990', 'Türkiye', 'Kayseri', 'Kocasinan', 'Kocasinan Blv.', '33', '2', '38010', 'edaa.dogan02@email.com', 'o2p3q4r5s6'),
(35, '47561029388', 'Süleyman', 'Avcı', '1962-03-15', 'Male', 'AB-', '+905328899001', 'Türkiye', 'Trabzon', 'Akçaabat', 'İnönü Cd.', '15', '1', '61300', 'savci_62@email.com', 't7u8v9w0x1'),
(36, '56102938479', 'Aslı', 'Bozkurt', '1995-10-10', 'Female', 'A-', '+905339900112', 'Türkiye', 'Eskişehir', 'Odunpazarı', 'Atatürk Blv.', '140', '16', '26020', 'asli.bozkurt@email.com', 'y2z3a4b5c6'),
(37, '61029384760', 'İbrahim', 'Karakaya', '1979-06-25', 'Male', 'O-', '+905441011223', 'Türkiye', 'Gaziantep', 'Şahinbey', 'Gazi Muhtar Paşa Blv.', '75', '4', '27090', 'ibrahim.karakaya@email.com', 'd7e8f9g0h1'),
(38, 'DE987654321', 'Lukas', 'Schmidt', '1987-12-12', 'Male', 'B+', '+491523456789', 'Almanya', 'Münih', 'Altstadt', 'Kaufingerstraße', '12', '5', '80331', 'lukas.schmidt@email.de', 'i2j3k4l5m6'),
(39, '10293847567', 'Tuğçe', 'Ersoy', '1998-03-08', 'Female', 'A+', '+905552122334', 'Türkiye', 'Denizli', 'Pamukkale', 'İstiklal Cd.', '50', '9', '20150', 'tugce.ersoy@email.com', 'n7o8p9q0r1'),
(40, '29384756107', 'Gökhan', 'Çelik', '1982-09-17', 'Male', 'AB+', '+905323233445', 'Türkiye', 'Samsun', 'İlkadım', '100. Yıl Blv.', '210', '12', '55030', 'gokhancelik_82@email.com', 's2t3u4v5w6'),
(41, '38475610298', 'Ceren', 'Yücel', '1993-05-02', 'Female', 'O+', '+905334344556', 'Türkiye', 'İzmir', 'Bornova', 'Süvari Cd.', '85', '6', '35040', 'ceren.yucel93@email.com', 'x7y8z9a0b1'),
(42, '47561029389', 'Barış', 'Taşkın', '1986-11-20', 'Male', 'B-', '+905445455667', 'Türkiye', 'Ankara', 'Keçiören', 'Fatih Cd.', '125', '3', '06280', 'baris.taskin@email.com', 'c2d3e4f5g6'),
(43, 'FR123456789', 'Claire', 'Bernard', '1990-01-14', 'Female', 'A-', '+33698765432', 'Fransa', 'Lyon', 'Presqu''île', 'Rue de la République', '30', '4B', '69002', 'claire.bernard@email.fr', 'h7i8j9k0l1'),
(44, '56102938480', 'Serkan', 'Şimşek', '1975-08-29', 'Male', 'O-', '+905556566778', 'Türkiye', 'İstanbul', 'Bakırköy', 'İncirli Cd.', '95', '10', '34140', 'serkan.simsek75@email.com', 'm2n3o4p5q6'),
(45, '61029384761', 'Melis', 'Kurt', '1999-12-31', 'Female', 'AB-', '+905327677889', 'Türkiye', 'Antalya', 'Konyaaltı', 'Akdeniz Blv.', '150', '18', '07070', 'melis.kurt99@email.com', 'r7s8t9u0v1'),
(46, '10293847568', 'Ozan', 'Şen', '1983-04-06', 'Male', 'A+', '+905338788990', 'Türkiye', 'Muğla', 'Fethiye', 'Atatürk Cd.', '40', '2', '48300', 'ozan.sen83@email.com', 'w2x3y4z5a6'),
(47, '29384756108', 'Derya', 'Koçyiğit', '1992-02-19', 'Female', 'B+', '+905449899001', 'Türkiye', 'Kocaeli', 'Gebze', 'İsmetpaşa Cd.', '112', '7', '41400', 'derya_kocyigit@email.com', 'b7c8d9e0f1'),
(48, 'UK12345678C', 'James', 'Brown', '1977-10-23', 'Male', 'O+', '+447911234567', 'Birleşik Krallık', 'Birmingham', 'Edgbaston', 'Broad St', '200', '15', 'B15 1AY', 'james.brown.uk@email.co.uk', 'g2h3i4j5k6'),
(49, '38475610299', 'Bahar', 'Turan', '1989-07-09', 'Female', 'A-', '+905550900112', 'Türkiye', 'Sakarya', 'Adapazarı', 'Çark Cd.', '65', '4', '54100', 'bahar.turan89@email.com', 'l7m8n9o0p1'),
(50, '47561029390', 'Cemil', 'Karakuş', '1968-01-03', 'Male', 'AB+', '+905321011223', 'Türkiye', 'Diyarbakır', 'Kayapınar', 'Diclekent Blv.', '80', '1', '21070', 'cemil_karakus@email.com', 'q2r3s4t5u6'),
(51, '56102938481', 'Pınar', 'Ak', '1995-11-02', 'Female', 'O+', '+905331234567', 'Türkiye', 'Mersin', 'Mezitli', 'Soli Cd.', '14', '6', '33200', 'pinar.ak95@email.com', 'h3i4j5k6l7'),
(52, '61029384763', 'Kaan', 'Öztürk', '1988-02-19', 'Male', 'A-', '+905442345678', 'Türkiye', 'Tekirdağ', 'Çorlu', 'Omurtak Cd.', '88', '2', '59800', 'kaan.ozturk@email.com', 'm3n4o5p6q7'),
(53, 'ES123456789', 'Carlos', 'Garcia', '1979-05-14', 'Male', 'B+', '+34600123456', 'İspanya', 'Madrid', 'Centro', 'Gran Vía', '32', '5', '28013', 'carlos.garcia@email.es', 'r3s4t5u6v7'),
(54, '10293847569', 'Merve', 'Kaya', '2001-08-30', 'Female', 'AB+', '+905553456789', 'Türkiye', 'Gaziantep', 'Şahinbey', 'Karataş Blv.', '110', '14', '27470', 'merve.kaya01@email.com', 'w3x4y5z6a7'),
(55, '29384756109', 'Yasin', 'Çelik', '1984-12-12', 'Male', 'O-', '+905324567890', 'Türkiye', 'Kayseri', 'Talas', 'Mevlana Mh.', '55', '8', '38280', 'yasin_celik@email.com', 'b3c4d5e6f7'),
(56, '38475610300', 'Ebru', 'Şahin', '1990-03-25', 'Female', 'A+', '+905335678901', 'Türkiye', 'Trabzon', 'Ortahisar', 'Yavuz Selim Blv.', '72', '1', '61030', 'ebru.sahin90@email.com', 'g3h4i5j6k7'),
(57, '47561029391', 'Ali', 'Can', '1976-07-08', 'Male', 'B-', '+905446789012', 'Türkiye', 'Erzurum', 'Yakutiye', 'Cumhuriyet Cd.', '34', '5', '25200', 'alican_76@email.com', 'l3m4n5o6p7'),
(58, 'CA987654321', 'Jessica', 'Taylor', '1993-09-17', 'Female', 'O+', '+14165550198', 'Kanada', 'Toronto', 'Downtown', 'Yonge St', '100', '405', 'M5C', 'jtaylor.toronto@email.ca', 'q3r4s5t6u7'),
(59, '56102938482', 'Umut', 'Deniz', '2004-01-22', 'Male', 'A-', '+905557890123', 'Türkiye', 'Antalya', 'Muratpaşa', 'Lara Cd.', '205', '9', '07160', 'umut.deniz04@email.com', 'v3w4x5y6z7'),
(60, '61029384764', 'Seda', 'Yılmaz', '1981-10-05', 'Female', 'AB-', '+905328901234', 'Türkiye', 'İzmir', 'Buca', 'Dokuz Eylül Kampüsü', '1', '1', '35390', 'seda.yilmaz@email.com', 'a4b5c6d7e8'),

(61, '10293847570', 'Hasan', 'Mutlu', '1970-04-12', 'Male', 'A+', '+905329012345', 'Türkiye', 'İstanbul', 'Beşiktaş', 'Nispetiye Cd.', '45', '2', '34335', 'dr.hasan.mutlu@hospital.com', 'f4g5h6i7j8'),
(62, '29384756110', 'Aylin', 'Korkmaz', '1982-11-28', 'Female', 'O+', '+905330123456', 'Türkiye', 'Ankara', 'Çankaya', 'Cinnah Cd.', '76', '12', '06690', 'dr.aylin.korkmaz@hospital.com', 'k4l5m6n7o8'),
(63, 'UK23456789D', 'William', 'Davies', '1968-02-15', 'Male', 'B-', '+447912345678', 'Birleşik Krallık', 'Londra', 'Islington', 'Upper St', '120', '4', 'N1 1QP', 'dr.william.davies@hospital.co.uk', 'p4q5r6s7t8'),
(64, '38475610301', 'Nehir', 'Erdem', '1978-06-03', 'Female', 'A-', '+905441234567', 'Türkiye', 'İzmir', 'Karşıyaka', 'Bostanlı Cd.', '50', '8', '35590', 'dr.nehir.erdem@hospital.com', 'u4v5w6x7y8'),
(65, '47561029392', 'Serdar', 'Turan', '1975-09-19', 'Male', 'O-', '+905552345678', 'Türkiye', 'Antalya', 'Kepez', 'Düden Cd.', '33', '1', '07260', 'dr.serdar.turan@hospital.com', 'z4a5b6c7d8'),
(66, 'DE234567890', 'Klaus', 'Weber', '1965-12-08', 'Male', 'A+', '+491534567890', 'Almanya', 'Berlin', 'Charlottenburg', 'Kurfürstendamm', '210', '5', '10719', 'dr.klaus.weber@hospital.de', 'e4f5g6h7i8'),
(67, '56102938483', 'Elvan', 'Güneş', '1985-03-22', 'Female', 'B+', '+905323456789', 'Türkiye', 'Adana', 'Çukurova', 'Kenan Evren Blv.', '90', '3', '01170', 'dr.elvan.gunes@hospital.com', 'j4k5l6m7n8'),
(68, '61029384765', 'Fatih', 'Bulut', '1980-07-11', 'Male', 'AB+', '+905334567890', 'Türkiye', 'Gaziantep', 'Şehitkamil', 'Sanko Park Yanı', '12', '7', '27090', 'dr.fatih.bulut@hospital.com', 'o4p5q6r7s8'),
(69, '10293847571', 'Berna', 'Yavuz', '1979-01-25', 'Female', 'O+', '+905445678901', 'Türkiye', 'Eskişehir', 'Tepebaşı', 'Üniversite Cd.', '66', '2', '26170', 'dr.berna.yavuz@hospital.com', 't4u5v6w7x8'),
(70, 'US234567890', 'David', 'Miller', '1972-10-14', 'Male', 'A+', '+12125550188', 'ABD', 'New York', 'Brooklyn', 'Flatbush Ave', '500', '10', '11225', 'dr.david.miller@hospital.com', 'y4z5a6b7c8'),
(71, '29384756111', 'Murat', 'Koç', '1984-05-30', 'Male', 'B-', '+905556789012', 'Türkiye', 'Konya', 'Meram', 'Yaka Cd.', '45', '1', '42090', 'dr.murat.koc@hospital.com', 'd4e5f6g7h8'),
(72, '38475610302', 'Cansu', 'Çetin', '1988-08-18', 'Female', 'A-', '+905327890123', 'Türkiye', 'Bursa', 'Nilüfer', 'Ata Bulvarı', '88', '6', '16140', 'dr.cansu.cetin@hospital.com', 'i4j5k6l7m8'),
(73, '47561029393', 'Gürkan', 'Polat', '1976-11-07', 'Male', 'O-', '+905338901234', 'Türkiye', 'Kocaeli', 'İzmit', 'Salim Dervişoğlu Cd.', '110', '4', '41040', 'dr.gurkan.polat@hospital.com', 'n4o5p6q7r8'),
(74, 'FR234567890', 'Sophie', 'Laurent', '1981-04-29', 'Female', 'AB-', '+33687654321', 'Fransa', 'Paris', 'Montparnasse', 'Rue de Rennes', '75', '8', '75006', 'dr.sophie.laurent@hospital.fr', 's4t5u6v7w8'),
(75, '56102938484', 'Sinan', 'Aydın', '1973-12-02', 'Male', 'A+', '+905449012345', 'Türkiye', 'Trabzon', 'Yomra', 'Kaşüstü', '20', '5', '61250', 'dr.sinan.aydin@hospital.com', 'x4y5z6a7b8'),
(76, '61029384766', 'Efe', 'Can', '1982-05-14', 'Male', 'O+', '+905551234567', 'Türkiye', 'İzmir', 'Çiğli', 'Anadolu Cd.', '110', '5', '35620', 'dr.efe.can@hospital.com', 'c5d6e7f8g9'),
(77, '10293847572', 'Asya', 'Demir', '1989-09-21', 'Female', 'A+', '+905322345678', 'Türkiye', 'Ankara', 'Yenimahalle', 'Ragıp Tüzün Cd.', '45', '12', '06170', 'dr.asya.demir@hospital.com', 'h5i6j7k8l9'),
(78, 'IT345678901', 'Lorenzo', 'Bianco', '1974-11-03', 'Male', 'B-', '+393319876543', 'İtalya', 'Milano', 'Brera', 'Via Fiori Chiari', '18', '2', '20121', 'dr.lorenzo.bianco@hospital.it', 'm5n6o7p8q9'),
(79, '29384756112', 'Volkan', 'Şahin', '1977-01-15', 'Male', 'A-', '+905333456789', 'Türkiye', 'Antalya', 'Alanya', 'Atatürk Blv.', '200', '8', '07400', 'dr.volkan.sahin@hospital.com', 'r5s6t7u8v9'),
(80, '38475610303', 'Şule', 'Yılmaz', '1985-07-30', 'Female', 'O-', '+905444567890', 'Türkiye', 'Bursa', 'Osmangazi', 'Fevzi Çakmak Cd.', '60', '3', '16050', 'dr.sule.yilmaz@hospital.com', 'w5x6y7z8a9'),
(81, '47561029394', 'Necmi', 'Çetin', '1969-12-11', 'Male', 'AB+', '+905555678901', 'Türkiye', 'Adana', 'Yüreğir', 'Kozan Cd.', '150', '1', '01220', 'dr.necmi.cetin@hospital.com', 'b6c7d8e9f0'),
(82, '56102938485', 'Hande', 'Kılıç', '1990-04-26', 'Female', 'B+', '+905326789012', 'Türkiye', 'Gaziantep', 'Şahinbey', 'Üniversite Blv.', '88', '14', '27470', 'dr.hande.kilic@hospital.com', 'g6h7i8j9k0'),
(83, '61029384767', 'Levent', 'Ersoy', '1981-10-09', 'Male', 'A+', '+905337890123', 'Türkiye', 'Kayseri', 'Melikgazi', 'Mustafa Kemal Paşa Blv.', '42', '6', '38030', 'dr.levent.ersoy@hospital.com', 'l6m7n8o9p0'),
(84, '10293847573', 'Ceyda', 'Yıldız', '1986-02-17', 'Female', 'O+', '+905448901234', 'Türkiye', 'Mersin', 'Akdeniz', 'İstiklal Cd.', '33', '2', '33010', 'dr.ceyda.yildiz@hospital.com', 'q6r7s8t9u0'),
(85, '29384756113', 'Kemal', 'Doğan', '1972-08-04', 'Male', 'AB-', '+905559012345', 'Türkiye', 'Denizli', 'Merkezefendi', 'Gazi Bulvarı', '75', '9', '20010', 'dr.kemal.dogan@hospital.com', 'v6w7x8y9z0'),
(86, '38475610304', 'Gizem', 'Arslan', '1992-06-22', 'Female', 'A-', '+905320123456', 'Türkiye', 'Eskişehir', 'Tepebaşı', 'İsmet İnönü-1 Cd.', '95', '4', '26130', 'dr.gizem.arslan@hospital.com', 'a7b8c9d0e1'),
(87, '47561029395', 'Orhan', 'Tekin', '1975-03-13', 'Male', 'O-', '+905331234567', 'Türkiye', 'Samsun', 'İlkadım', 'Lise Cd.', '25', '11', '55030', 'dr.orhan.tekin@hospital.com', 'f7g8h9i0j1'),

(88, '56102938486', 'Ayşe', 'Fatma', '1993-01-05', 'Female', 'A+', '+905442345678', 'Türkiye', 'İstanbul', 'Şişli', 'Abide-i Hürriyet Cd.', '11', '3', '34381', 'ayse.fatma@hospital.com', 'k7l8m9n0o1'),
(89, '61029384768', 'Gökçe', 'Kaya', '1996-11-18', 'Female', 'O+', '+905553456789', 'Türkiye', 'Ankara', 'Keçiören', 'Sanatoryum Cd.', '55', '7', '06280', 'gokce.kaya@hospital.com', 'p7q8r9s0t1'),
(90, '10293847574', 'Emel', 'Türk', '1988-05-29', 'Female', 'B-', '+905324567890', 'Türkiye', 'İzmir', 'Bornova', 'Mustafa Kemal Cd.', '230', '12', '35040', 'emel.turk@hospital.com', 'u7v8w9x0y1'),
(91, '29384756114', 'Tarkan', 'Gümüş', '1991-09-07', 'Male', 'A-', '+905335678901', 'Türkiye', 'Bursa', 'Yıldırım', 'Ankara Yolu Cd.', '400', '1', '16260', 'tarkan.gumus@hospital.com', 'z7a8b9c0d1'),
(92, '38475610305', 'Sezen', 'Başar', '1995-02-14', 'Female', 'AB+', '+905446789012', 'Türkiye', 'Antalya', 'Muratpaşa', 'Metin Kasapoğlu Cd.', '80', '5', '07100', 'sezen.basar@hospital.com', 'e7f8g9h0i1'),

(93, '47561029396', 'Hasan', 'Şimşek', '1984-12-30', 'Male', 'O-', '+905557890123', 'Türkiye', 'İstanbul', 'Ümraniye', 'Alemdağ Cd.', '320', '8', '34764', 'hasan.simsek@hospital.com', 'j7k8l9m0n1'),
(94, '56102938487', 'Veli', 'Dağ', '1979-08-22', 'Male', 'A+', '+905328901234', 'Türkiye', 'Ankara', 'Mamak', 'Tıp Fakültesi Cd.', '145', '2', '06590', 'veli.dag@hospital.com', 'o7p8q9r0s1'),
(95, '61029384769', 'Zeynep', 'Gül', '1990-03-11', 'Female', 'B+', '+905339012345', 'Türkiye', 'İzmir', 'Buca', 'Şirinyer Sevgi Yolu', '45', '10', '35380', 'zeynep.gul@hospital.com', 't7u8v9w0x1'),
(96, '10293847575', 'Ahmet', 'Işık', '1987-06-19', 'Male', 'AB-', '+905440123456', 'Türkiye', 'Adana', 'Seyhan', 'Turhan Cemal Beriker Blv.', '500', '4', '01190', 'ahmet.isik@hospital.com', 'y7z8a9b0c1'),
(97, '29384756115', 'Burak', 'Taş', '1993-10-27', 'Male', 'O+', '+905551234567', 'Türkiye', 'Trabzon', 'Ortahisar', 'Kahramanmaraş Cd.', '60', '3', '61030', 'burak.tas@hospital.com', 'd8e9f0g1h2'),

(98, '38475610306', 'Ege', 'Yücel', '1980-01-08', 'Male', 'A-', '+905322345678', 'Türkiye', 'İstanbul', 'Kadıköy', 'Bağdat Cd.', '450', '22', '34740', 'admin.ege.yucel@hospital.com', 'i8j9k0l1m2'),
(99, '47561029397', 'Selin', 'Ak', '1985-11-15', 'Female', 'O+', '+905333456789', 'Türkiye', 'Ankara', 'Çankaya', 'Güneş Blv.', '112', '9', '06550', 'admin.selin.ak@hospital.com', 'n8o9p0q1r2'),
(100, '56102938488', 'Ali', 'Vefa', '1978-04-20', 'Male', 'B-', '+905444567890', 'Türkiye', 'İzmir', 'Karabağlar', 'Yeşillik Cd.', '300', '1', '35140', 'admin.ali.vefa@hospital.com', 's8t9u0v1w2'),
(999, '00000000000', 'SYSTEM', 'ADMINISTRATOR', CURRENT_DATE, 'PRIVATE', 'UNKNOWN', 'CLASSIFIED', 'HIDDEN', 'CONFIDENTIAL', 'ZONE_0', '0x7F000001', 'MASKED', 'RESTRICTED', 'REDACTED', 'root@localhost', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');

INSERT INTO "Department" (
  "Department_ID", 
  "Hospital_ID", 
  "Department_Name", 
  "Extension_Number"
) VALUES 
(1, 1, 'Cardiology', '1010'),
(2, 1, 'Endocrinology', '1020'),
(3, 1, 'Neurology', '1030'),

(4, 2, 'Cardiology', '2010'),
(5, 2, 'Oncology', '2040'),

(6, 3, 'Neurology', '3030'),
(7, 3, 'Oncology', '3040'),

(8, 4, 'Endocrinology', '4020'),
(9, 4, 'Pulmonology', '4050'),

(10, 5, 'Cardiology', '5010'),
(11, 5, 'Pulmonology', '5050'),

(12, 6, 'Cardiology', '6010'),
(13, 6, 'Neurology', '6030'),

(14, 7, 'Oncology', '7040'),
(15, 7, 'Endocrinology', '7020'),

(16, 8, 'Neurology', '8030'),
(17, 8, 'Pulmonology', '8050');

INSERT INTO "Patient" ("Person_ID") VALUES 
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),
(31), (32), (33), (34), (35), (36), (37), (38), (39), (40),
(41), (42), (43), (44), (45), (46), (47), (48), (49), (50),
(51), (52), (53), (54), (55), (56), (57), (58), (59), (60);

INSERT INTO "Patient_Allergy" (
  "Patient_ID", 
  "Allergy_Name"
) VALUES 
(1, 'Penicillin'),
(3, 'Peanuts'),
(6, 'Pollen'),
(10, 'Aspirin'),
(12, 'Dairy Products'),
(15, 'Sulfa Drugs'),
(20, 'Shellfish'),
(22, 'Latex'),
(28, 'Penicillin'),
(33, 'Tree Nuts'),
(39, 'Bee Stings'),
(44, 'Ibuprofen'),
(48, 'Eggs'),
(52, 'Pollen'),
(58, 'Contrast Dye');

INSERT INTO "Admin" (
  "Person_ID", 
  "Role_Level", 
  "MFA_Secret"
) VALUES 
(98, 'Level_1_Support', 'JBSWY3DPEHPK3PXP'),
(99, 'Level_2_Manager', 'KVKVE43VLBGTG62K'),
(100, 'Global_Administrator', 'ORSXG5BRGAYDAMBQ'),
(999, 'ROOT_SUPER_ADMIN', '7X7X7X_RESTRICTED_MASTER_KEY_0x7F000001_BYPASS');

INSERT INTO "Staff" (
  "Person_ID", 
  "Job_Title"
) VALUES 
(93, 'IT Support Specialist'),
(94, 'Medical Accountant'),
(95, 'Front Desk Receptionist'),
(96, 'Chief of Security'),
(97, 'Logistics and Supply Coordinator');

INSERT INTO "Medical_Staff" (
  "Person_ID", 
  "Department_ID"
) VALUES 

(61, 1),
(62, 8),
(63, 12),
(64, 6),
(65, 11),
(66, 16),
(67, 4),
(68, 9),
(69, 1),
(70, 14),
(71, 2),
(72, 10),
(73, 5),
(74, 13),
(75, 17),
(76, 10),
(77, 3),
(78, 16),
(79, 4),
(80, 3),
(81, 10),
(82, 15),
(83, 6),
(84, 7),
(85, 2),
(86, 7),
(87, 16),

(88, 1),
(89, 9),
(90, 10),
(91, 3),
(92, 5);

INSERT INTO "Room" (
  "Department_ID", 
  "Room_Number", 
  "Room_Type"
) VALUES 

(1, '101', 'Examination Room'),
(1, '102', 'Intensive Care Unit'),
(2, '101', 'Examination Room'),
(3, '105', 'EEG Lab'),

(4, '201', 'Examination Room'),
(5, '201', 'Chemotherapy Unit'),
(5, '202', 'Inpatient Ward'),

(6, '301', 'Examination Room'),
(7, '305', 'Inpatient Ward'),

(8, '401', 'Examination Room'),
(9, '401', 'Lung Function Lab'),
(9, '402', 'Inpatient Ward'),

(10, '501', 'Examination Room'),
(10, '502', 'Intensive Care Unit'),
(11, '501', 'Examination Room'),

(12, '101', 'Examination Room'),
(13, '102', 'Neurology Ward'),

(14, '701', 'Examination Room'),
(15, '702', 'Examination Room'),

(16, '801', 'Examination Room'),
(17, '802', 'Inpatient Ward');

INSERT INTO "Doctor" (
  "Person_ID", 
  "Specialty", 
  "License_Number"
) VALUES 
(61, 'Cardiologist', 'TR-61029'),
(62, 'Endocrinologist', 'TR-29384'),
(63, 'Cardiologist', 'UK-GMC6302'),
(64, 'Neurologist', 'TR-38475'),
(65, 'Pulmonologist', 'TR-47561'),
(66, 'Neurologist', 'DE-CHAR660'),
(67, 'Cardiologist', 'TR-56102'),
(68, 'Pulmonologist', 'TR-61023'),
(69, 'Cardiologist', 'TR-10293'),
(70, 'Oncologist', 'US-NY7029'),
(71, 'Endocrinologist', 'TR-29385'),
(72, 'Cardiologist', 'TR-38476'),
(73, 'Oncologist', 'TR-47562'),
(74, 'Neurologist', 'UK-GMC7403'),
(75, 'Pulmonologist', 'TR-56103'),
(76, 'Cardiologist', 'TR-61024'),
(77, 'Neurologist', 'TR-10294'),
(78, 'Neurologist', 'IT-MIL7801'),
(79, 'Cardiologist', 'TR-29386'),
(80, 'Neurologist', 'TR-38477'),
(81, 'Cardiologist', 'TR-47563'),
(82, 'Endocrinologist', 'US-NY8204'),
(83, 'Neurologist', 'TR-61025'),
(84, 'Oncologist', 'TR-10295'),
(85, 'Endocrinologist', 'TR-29387'),
(86, 'Oncologist', 'TR-38478'),
(87, 'Neurologist', 'TR-47564');

INSERT INTO "Doctor_Treatment" (
  "Doctor_ID", 
  "Treatment_Name"
) VALUES 

(61, 'Coronary Angioplasty'),
(61, 'Pacemaker Implantation'),
(63, 'Cardiac Catheterization'),
(67, 'Echocardiography Interpretation'),
(69, 'Coronary Angioplasty'),
(72, 'Heart Failure Management'),
(76, 'Pacemaker Implantation'),
(79, 'Coronary Angioplasty'),
(81, 'Cardiac Rehabilitation'),

(62, 'Insulin Pump Therapy'),
(62, 'Continuous Glucose Monitoring'),
(71, 'Hormone Replacement Therapy'),
(82, 'Thyroid Fine Needle Aspiration'),
(85, 'Insulin Pump Therapy'),

(64, 'Chronic Migraine Botox Therapy'),
(66, 'Deep Brain Stimulation (DBS)'),
(66, 'Cognitive Rehabilitation'),
(74, 'Stroke Management Protocol'),
(77, 'Epilepsy VNS Management'),
(78, 'Deep Brain Stimulation (DBS)'),
(80, 'Chronic Migraine Botox Therapy'),
(83, 'Sleep Disorder CPAP Titration'),
(87, 'Cognitive Rehabilitation'),

(65, 'Mechanical Ventilation Support'),
(68, 'Diagnostic Bronchoscopy'),
(75, 'Tuberculosis DOTS Therapy'),

(70, 'Intravenous Chemotherapy'),
(70, 'Targeted Immunotherapy'),
(73, 'Intravenous Chemotherapy'),
(84, 'Hormone Therapy for Cancer'),
(86, 'Targeted Immunotherapy');

INSERT INTO "Nurse" ("Person_ID") VALUES 
(88), (89), (90), (91), (92);

INSERT INTO "Payer" (
  "Payer_ID", 
  "Payer_Type", 
  "Patient_ID", 
  "Provider_ID"
) VALUES 

(1, 'Patient', 1, NULL),
(2, 'Patient', 2, NULL),
(3, 'Patient', 3, NULL),
(4, 'Patient', 4, NULL),
(5, 'Patient', 5, NULL),
(6, 'Patient', 6, NULL),
(7, 'Patient', 7, NULL),
(8, 'Patient', 8, NULL),
(9, 'Patient', 9, NULL),
(10, 'Patient', 10, NULL),
(11, 'Patient', 11, NULL),
(12, 'Patient', 12, NULL),
(13, 'Patient', 13, NULL),
(14, 'Patient', 14, NULL),
(15, 'Patient', 15, NULL),
(16, 'Patient', 16, NULL),
(17, 'Patient', 17, NULL),
(18, 'Patient', 18, NULL),
(19, 'Patient', 19, NULL),
(20, 'Patient', 20, NULL),
(21, 'Patient', 21, NULL),
(22, 'Patient', 22, NULL),
(23, 'Patient', 23, NULL),
(24, 'Patient', 24, NULL),
(25, 'Patient', 25, NULL),
(26, 'Patient', 26, NULL),
(27, 'Patient', 27, NULL),
(28, 'Patient', 28, NULL),
(29, 'Patient', 29, NULL),
(30, 'Patient', 30, NULL),
(31, 'Patient', 31, NULL),
(32, 'Patient', 32, NULL),
(33, 'Patient', 33, NULL),
(34, 'Patient', 34, NULL),
(35, 'Patient', 35, NULL),
(36, 'Patient', 36, NULL),
(37, 'Patient', 37, NULL),
(38, 'Patient', 38, NULL),
(39, 'Patient', 39, NULL),
(40, 'Patient', 40, NULL),
(41, 'Patient', 41, NULL),
(42, 'Patient', 42, NULL),
(43, 'Patient', 43, NULL),
(44, 'Patient', 44, NULL),
(45, 'Patient', 45, NULL),
(46, 'Patient', 46, NULL),
(47, 'Patient', 47, NULL),
(48, 'Patient', 48, NULL),
(49, 'Patient', 49, NULL),
(50, 'Patient', 50, NULL),
(51, 'Patient', 51, NULL),
(52, 'Patient', 52, NULL),
(53, 'Patient', 53, NULL),
(54, 'Patient', 54, NULL),
(55, 'Patient', 55, NULL),
(56, 'Patient', 56, NULL),
(57, 'Patient', 57, NULL),
(58, 'Patient', 58, NULL),
(59, 'Patient', 59, NULL),
(60, 'Patient', 60, NULL),

(101, 'Insurance', NULL, 1),
(102, 'Insurance', NULL, 2),
(103, 'Insurance', NULL, 3),
(104, 'Insurance', NULL, 4),
(105, 'Insurance', NULL, 5),
(106, 'Insurance', NULL, 6),
(107, 'Insurance', NULL, 7),
(108, 'Insurance', NULL, 8);

INSERT INTO "Insurance" (
  "Patient_ID", 
  "Provider_ID", 
  "Policy_Number", 
  "Coverage_Rate"
) VALUES 

(31, 1, 'SGK-99201A', 100.00),
(32, 1, 'SGK-44102B', 90.00),
(33, 1, 'SGK-12850C', 100.00),
(34, 1, 'SGK-55612D', 90.00),

(35, 2, 'ALZ-883012', 80.00),
(36, 2, 'ALZ-119405', 80.00),
(37, 2, 'ALZ-447103', 85.00),
(38, 2, 'ALZ-662941', 80.00),

(39, 3, 'ACB-228104', 90.00),
(40, 3, 'ACB-991025', 90.00),
(41, 3, 'ACB-554612', 95.00),
(42, 3, 'ACB-331084', 90.00),

(43, 4, 'AXA-774012', 75.00),
(44, 4, 'AXA-110294', 80.00),
(45, 4, 'AXA-885910', 75.00),

(46, 5, 'AND-663012', 80.00),
(47, 5, 'AND-441095', 80.00),
(48, 5, 'AND-228401', 85.00),

(49, 6, 'BUP-UK-9921', 90.00),
(50, 6, 'BUP-UK-4410', 100.00),
(51, 6, 'BUP-UK-1185', 90.00),
(52, 6, 'BUP-UK-6632', 85.00),

(53, 7, 'BCBS-US-881', 80.00),
(54, 7, 'BCBS-US-442', 90.00),
(55, 7, 'BCBS-US-229', 80.00),
(56, 7, 'BCBS-US-774', 85.00),

(57, 8, 'TK-DE-88391', 100.00),
(58, 8, 'TK-DE-11024', 90.00),
(59, 8, 'TK-DE-55419', 100.00),
(60, 8, 'TK-DE-33812', 90.00);

INSERT INTO "Patient_Disease" (
  "Patient_Person_ID", 
  "Disease_Disease_ID"
) VALUES 

(1, 1),  -- Type 2 Diabetes
(2, 2),  -- Hypertension
(3, 3),  -- Asthma
(4, 4),  -- Alzheimer's 
(5, 5),  -- Acute Myeloid Leukemia
(6, 6),  -- Chronic Migraine
(7, 7),  -- Pulmonary Tuberculosis
(8, 8),  -- Coronary Artery 
(9, 9),  -- Chronic Kidney 
(10, 10),-- Rheumatoid Arthritis
(11, 1),  -- Type 2 Diabetes
(11, 2),  -- Also Hypertension!
(12, 2),  -- Hypertension
(13, 3),  -- Asthma
(14, 4),  -- Alzheimer's 
(15, 5),  -- Acute Myeloid Leukemia
(16, 6),  -- Chronic Migraine
(17, 7),  -- Pulmonary Tuberculosis
(18, 8),  -- Coronary Artery 
(19, 1),  -- Type 2 Diabetes
(20, 2),  -- Hypertension
(21, 3),  -- Asthma
(22, 6),  -- Chronic Migraine
(23, 4),  -- Alzheimer's 
(24, 8),  -- Coronary Artery 
(25, 5),  -- Acute Myeloid Leukemia
(26, 1),  -- Type 2 Diabetes
(27, 2),  -- Hypertension
(28, 6),  -- Chronic Migraine
(29, 3),  -- Asthma
(30, 9),  -- Chronic Kidney 

(31, 1),  -- Type 2 Diabetes
(32, 2),  -- Hypertension
(33, 3),  -- Asthma
(34, 4),  -- Alzheimer's 
(35, 5),  -- Acute Myeloid Leukemia
(36, 6),  -- Chronic Migraine
(37, 7),  -- Pulmonary Tuberculosis
(38, 8),  -- Coronary Artery 
(39, 1),  -- Type 2 Diabetes
(39, 2),  -- Also Hypertension!
(40, 2),  -- Hypertension
(41, 3),  -- Asthma
(42, 4),  -- Alzheimer's 
(43, 5),  -- Acute Myeloid Leukemia
(44, 6),  -- Chronic Migraine
(45, 7),  -- Pulmonary Tuberculosis
(46, 8),  -- Coronary Artery 
(47, 1),  -- Type 2 Diabetes
(48, 2),  -- Hypertension
(49, 3),  -- Asthma
(50, 6),  -- Chronic Migraine
(51, 4),  -- Alzheimer's 
(52, 8),  -- Coronary Artery 
(53, 5),  -- Acute Myeloid Leukemia
(54, 1),  -- Type 2 Diabetes
(55, 2),  -- Hypertension
(56, 6),  -- Chronic Migraine
(57, 3),  -- Asthma
(58, 7),  -- Pulmonary Tuberculosis
(59, 8),  -- Coronary Artery 
(60, 10); -- Rheumatoid Arthritis

INSERT INTO "Appointment" (
  "Appointment_ID", 
  "Patient_ID", 
  "Doctor_ID", 
  "Appointment_Date", 
  "Appointment_Time", 
  "Status_ID", 
  "Chief_Complaint"
) VALUES 
-- ENDOCRINOLOGY (Diabetes Patients -> Endocrinologists: 62, 71, 85)
(1, 1, 62, '2026-05-10', '09:00:00', 2, 'Polyuria, polydipsia, and uncontrolled fasting blood glucose levels.'),
(2, 11, 71, '2026-05-12', '10:30:00', 2, 'Routine follow-up for HbA1c monitoring and insulin dosage adjustment.'),
(3, 19, 85, '2026-05-14', '11:00:00', 0, 'Severe hypoglycemia episode during midnight.'),
(4, 26, 62, '2026-05-15', '14:15:00', 2, 'New onset blurred vision associated with elevated blood sugar.'),
(5, 31, 71, '2026-05-18', '09:30:00', 2, 'Initial consultation for Type 2 Diabetes management and diet planning.'),
(6, 39, 85, '2026-05-19', '15:45:00', 1, 'Insulin pump malfunction and hyperglycemia evaluation.'),

-- CARDIOLOGY (Hypertension / Heart Disease Patients -> Cardiologists: 61, 63, 67, 69, 72, 76, 79, 81)
(7, 2, 61, '2026-05-11', '14:00:00', 2, 'Persistent occipital headache and blood pressure readings above 160/100 mmHg.'),
(8, 8, 63, '2026-05-13', '11:15:00', 2, 'Exertional chest pain radiating to the left shoulder and shortness of breath.'),
(9, 11, 67, '2026-05-14', '09:45:00', 2, 'Palpitations and dizziness. Patient has co-existing Type 2 Diabetes.'),
(10, 12, 69, '2026-05-15', '16:00:00', 2, 'Follow-up for chronic hypertension medication efficacy check.'),
(11, 18, 72, '2026-05-18', '10:00:00', 0, 'Acute retrosternal chest tightness while resting.'),
(12, 20, 76, '2026-05-19', '13:30:00', 2, 'Recurrent edema in lower extremities and mild dyspnea.'),
(13, 24, 79, '2026-05-20', '14:00:00', 2, 'Post-angioplasty routine cardiac rehabilitation and ECG check.'),
(14, 27, 81, '2026-05-21', '11:30:00', 2, 'Uncontrolled stage 2 hypertension despite triple drug therapy.'),
(15, 32, 61, '2026-05-22', '09:15:00', 1, 'Palpitations and fatigue reported during daily light exercises.'),
(16, 38, 63, '2026-05-22', '15:00:00', 2, 'Stable angina follow-up and review of lipid panel results.'),
(17, 39, 79, '2026-05-23', '10:30:00', 2, 'Hypertensive crisis consultation. Patient also has Type 2 Diabetes.'),

-- PULMONOLOGY (Asthma / Tuberculosis Patients -> Pulmonologists: 65, 68, 75)
(18, 3, 65, '2026-05-12', '13:30:00', 2, 'Expiratory wheezing, dry cough, and shortness of breath after minor exercise.'),
(19, 7, 68, '2026-05-13', '10:00:00', 2, 'Persistent productive cough for 3 weeks, night sweats, and hemoptysis.'),
(20, 13, 75, '2026-05-15', '11:45:00', 2, 'Acute asthma exacerbation triggered by seasonal pollen allergy.'),
(21, 17, 65, '2026-05-16', '09:00:00', 1, 'Follow-up for active Pulmonary Tuberculosis under DOTS therapy.'),
(22, 21, 68, '2026-05-18', '14:30:00', 2, 'Severe chest tightness and frequent nocturnal asthma attacks.'),

-- NEUROLOGY (Alzheimer / Migraine Patients -> Neurologists: 64, 66, 74, 77, 78, 80, 83, 87)
(23, 4, 64, '2026-05-11', '15:00:00', 2, 'Progressive short-term memory loss, spatial disorientation, and confusion.'),
(24, 6, 66, '2026-05-12', '16:30:00', 2, 'Severe throbbing unilateral headache accompanied by nausea and photophobia.'),
(25, 14, 74, '2026-05-14', '14:00:00', 0, 'Evaluation of cognitive decline and behavioral changes in advanced age.'),
(26, 16, 77, '2026-05-15', '10:30:00', 2, 'Chronic migraine refractory to standard over-the-counter analgesics.'),
(27, 22, 78, '2026-05-18', '11:00:00', 2, 'Botox injection follow-up for chronic migraine prevention.'),
(28, 23, 80, '2026-05-19', '09:30:00', 2, 'Routine cognitive evaluation and therapy management for Alzheimer''s disease.'),
(29, 28, 83, '2026-05-20', '15:15:00', 2, 'Aura symptoms including visual disturbances before intense headaches.'),
(30, 34, 87, '2026-05-21', '13:00:00', 2, 'Memory impairment assessment requested by patient''s family.'),

-- ONCOLOGY (Leukemia Patients -> Oncologists: 70, 73, 84, 86)
(31, 5, 70, '2026-05-13', '08:30:00', 2, 'Unexplained petechiae, bruising, severe fatigue, and low-grade fever.'),
(32, 15, 73, '2026-05-14', '13:00:00', 2, 'Pre-chemotherapy hematological evaluation for Acute Myeloid Leukemia.'),
(33, 25, 84, '2026-05-16', '10:00:00', 2, 'Post-chemotherapy complete blood count review and bone marrow assessment.'),
(34, 35, 86, '2026-05-19', '11:30:00', 2, 'Consultation for targeted immunotherapy protocol adjustments.');


INSERT INTO "Prescription" (
  "Appointment_ID", 
  "Medication_Name", 
  "Dosage", 
  "Instructions"
) VALUES 
-- ENDOCRINOLOGY (Diabetes - Status: 2)
(1, 'Metformin Hydrochloride 850mg', '1 tablet twice daily', 'Take orally with breakfast and dinner.'),
(2, 'Insulin Glargine (Lantus) 100 U/mL', '12 Units once daily', 'Inject subcutaneously at bedtime. Monitor fasting blood glucose.'),
(4, 'Empagliflozin (Jardiance) 10mg', '1 tablet daily', 'Take orally in the morning with or without food.'),
(5, 'Sitagliptin (Januvia) 100mg', '1 tablet daily', 'Take orally in the morning. Report any persistent abdominal pain.'),

-- CARDIOLOGY (Hypertension / Heart Disease - Status: 2)
(7, 'Lisinopril 10mg', '1 tablet daily', 'Take orally in the morning. Monitor blood pressure weekly.'),
(8, 'Nitroglycerin 0.4mg sublingual', '1 tablet as needed', 'Dissolve under the tongue immediately at the onset of chest pain.'),
(10, 'Amlodipine Besylate 5mg', '1 tablet daily', 'Take orally at night. Watch for ankle swelling.'),
(12, 'Metoprolol Succinate ER 50mg', '1 tablet daily', 'Take orally with a meal. Do not crush or chew.'),
(13, 'Atorvastatin (Lipitor) 40mg', '1 tablet daily', 'Take orally at bedtime. Avoid grapefruit juice.'),
(15, 'Ramipril 5mg', '1 tablet daily', 'Take orally in the morning. Report dry cough if it persists.'),
(16, 'Clopidogrel (Plavix) 75mg', '1 tablet daily', 'Take orally with or without food. Report unusual bleeding.'),

-- PULMONOLOGY (Asthma / Tuberculosis - Status: 2)
(18, 'Albuterol Sulfate HFA Inhaler', '2 puffs every 4-6 hours', 'Inhale as needed for shortness of breath or sudden wheezing.'),
(19, 'Rifampin 600mg + Isoniazid 300mg', '1 capsule daily', 'Take on an empty stomach 1 hour before breakfast as part of DOTS.'),
(20, 'Fluticasone/Salmeterol (Advair Diskus)', '1 inhalation twice daily', 'Rinse mouth thoroughly with water after each use.'),
(22, 'Montelukast (Singulair) 10mg', '1 tablet daily', 'Take orally in the evening for asthma control.'),

-- NEUROLOGY (Alzheimer / Migraine - Status: 2)
(23, 'Donepezil Hydrochloride (Aricept) 5mg', '1 tablet daily', 'Take orally at bedtime. May cause vivid dreams initially.'),
(24, 'Sumatriptan Succinate 50mg', '1 tablet at onset', 'Take orally at the first sign of a migraine attack.'),
(26, 'Topiramate (Topamax) 25mg', '1 tablet twice daily', 'Take orally with plenty of water to prevent kidney stones.'),
(27, 'Propanolol Hydrochloride 40mg', '1 tablet daily', 'Take orally in the morning for chronic migraine prophylaxis.'),
(28, 'Memantine Hydrochloride (Namenda) 10mg', '1 tablet twice daily', 'Take orally with breakfast and dinner to support cognitive health.'),
(29, 'Eletriptan Hydrobromide (Relpax) 40mg', '1 tablet at onset', 'Take orally immediately when headache begins. Do not exceed 80mg in 24h.'),
(30, 'Galantamine ER 8mg', '1 capsule daily', 'Take orally in the morning with food for cognitive assessment tracking.'),

-- ONCOLOGY (Leukemia - Status: 2)
(31, 'Imatinib Mesylate (Gleevec) 400mg', '1 tablet daily', 'Take orally with a large glass of water and a meal.'),
(33, 'Ondansetron (Zofran) 8mg', '1 tablet every 8 hours', 'Take orally 30 minutes before chemotherapy for nausea prevention.'),
(34, 'Allopurinol 300mg', '1 tablet daily', 'Take orally after a meal. Drink at least 2 liters of water daily.');

INSERT INTO "Lab_Result" (
  "Lab_ID", 
  "Appointment_ID", 
  "Test_Type", 
  "Result_Value", 
  "Reference_Range", 
  "Test_Date"
) VALUES 
-- Appointment 1: Diabetes Patient (Endocrinology) -> Multiple Tests Requested
(1, 1, 'Fasting Blood Glucose', '145 mg/dL', '70 - 100 mg/dL', '2026-05-10'),
(2, 1, 'Hemoglobin A1c (HbA1c)', '7.4 %', '< 5.7 %', '2026-05-10'),

-- Appointment 2: Diabetes Routine Check
(3, 2, 'Hemoglobin A1c (HbA1c)', '6.2 %', '< 5.7 %', '2026-05-12'),

-- Appointment 4: New Onset Vision Issue in Diabetes
(4, 4, 'Fasting Blood Glucose', '182 mg/dL', '70 - 100 mg/dL', '2026-05-15'),

-- Appointment 7: Hypertension Evaluation (Cardiology)
(5, 7, 'Serum Potassium', '3.8 mEq/L', '3.5 - 5.1 mEq/L', '2026-05-11'),
(6, 7, 'Serum Creatinine', '1.2 mg/dL', '0.6 - 1.2 mg/dL', '2026-05-11'),

-- Appointment 8: Exertional Chest Pain (Cardiology) -> Multiple Tests Requested
(7, 8, 'Troponin I', '0.04 ng/mL', '< 0.03 ng/mL', '2026-05-13'),
(8, 8, 'Total Cholesterol', '240 mg/dL', '< 200 mg/dL', '2026-05-13'),

-- Appointment 12: Recurrent Edema & Heart Failure Suspicion
(9, 12, 'B-Type Natriuretic Peptide (BNP)', '350 pg/mL', '< 100 pg/mL', '2026-05-19'),

-- Appointment 19: Pulmonary Tuberculosis Follow-up (Pulmonology)
(10, 19, 'Sputum Acid-Fast Bacilli (AFB) Smear', 'Positive (+)', 'Negative', '2026-05-13'),

-- Appointment 31: Acute Myeloid Leukemia (Oncology) -> Heavy Lab Panel
(11, 31, 'White Blood Cell Count (WBC)', '2.1 x10^3 / uL', '4.5 - 11.0 x10^3 / uL', '2026-05-13'),
(12, 31, 'Hemoglobin', '9.2 g/dL', '13.2 - 16.6 g/dL', '2026-05-13'),
(13, 31, 'Platelet Count', '85 x10^3 / uL', '150 - 450 x10^3 / uL', '2026-05-13'),

-- Appointment 33: Post-Chemotherapy Evaluation
(14, 33, 'White Blood Cell Count (WBC)', '3.8 x10^3 / uL', '4.5 - 11.0 x10^3 / uL', '2026-05-16'),

-- Appointment 34: Leukemia/Allopurinol Monitoring
(15, 34, 'Serum Uric Acid', '8.2 mg/dL', '3.5 - 7.2 mg/dL', '2026-05-19');

INSERT INTO "Billing" (
  "Bill_ID", 
  "Appointment_ID", 
  "Total_Amount", 
  "Patient_Share", 
  "Payment_Status"
) VALUES 
-- App 1: Patient 1 (Diabetes + 2 Lab Tests) -> Rich invoice
(1, 1, 450.00, 450.00, 2), -- Fully Paid
-- App 2: Patient 11 (Diabetes Routine)
(2, 2, 250.00, 250.00, 2), -- Fully Paid
-- App 3: Patient 19 (Diabetes) -> CANCELLED (Status_ID = 0) -> Bill is 0
(3, 3, 0.00, 0.00, 2), 
-- App 4: Patient 26 (Diabetes + 1 Lab)
(4, 4, 350.00, 350.00, 1), -- Partially Paid
-- App 7: Patient 2 (Hypertension + 2 Lab Tests)
(7, 7, 500.00, 500.00, 2),
-- App 8: Patient 8 (Chest Pain Cardiology + 2 Heavy Lab Tests) -> Expensive
(8, 8, 850.00, 850.00, 2),
-- App 9: Patient 11 (Cardiology multi-disease follow-up + No Lab)
(9, 9, 300.00, 300.00, 1), -- Partially Paid
-- App 10: Patient 12 (Hypertension Follow-up)
(10, 10, 250.00, 250.00, 2),
-- App 11: Patient 18 -> CANCELLED (Status_ID = 0) -> Bill is 0
(11, 11, 0.00, 0.00, 2),
-- App 12: Patient 20 (Edema Cardiology + 1 Heavy Lab)
(12, 12, 600.00, 600.00, 2),
-- App 13: Patient 24 (Post-angioplasty Rehab)
(13, 13, 400.00, 400.00, 2),
-- App 14: Patient 27 (Stage 2 Hypertension Consultation)
(14, 14, 300.00, 300.00, 0), -- Unpaid
-- App 18: Patient 3 (Asthma Exacerbation + 1 Lab)
(18, 18, 400.00, 400.00, 2),
-- App 19: Patient 7 (Tuberculosis + 1 Lab)
(19, 19, 450.00, 450.00, 2),
-- App 20: Patient 13 (Asthma Acute Attack + 1 Lab)
(20, 20, 420.00, 420.00, 2),
-- App 22: Patient 21 (Asthma Night Attacks Follow-up)
(22, 22, 280.00, 280.00, 1), -- Partially Paid
-- App 23: Patient 4 (Alzheimer Advanced Screening - No Lab)
(23, 23, 350.00, 350.00, 2),
-- App 24: Patient 6 (Migraine Intensive Consultation)
(24, 24, 320.00, 320.00, 2),
-- App 25: Patient 14 -> CANCELLED (Status_ID = 0) -> Bill is 0
(25, 25, 0.00, 0.00, 2),
-- App 26: Patient 16 (Chronic Migraine Refractory)
(26, 26, 320.00, 320.00, 2),
-- App 27: Patient 22 (Botox Injection Follow-up)
(27, 27, 300.00, 300.00, 2),
-- App 28: Patient 23 (Alzheimer Cognitive Evaluation)
(28, 28, 350.00, 350.00, 0), -- Unpaid
-- App 29: Patient 28 (Migraine Aura Screening)
(29, 29, 320.00, 320.00, 2),
-- App 31: Patient 5 (Leukemia Heavy Panel + 3 Lab Tests) -> Highly Expensive
(31, 31, 1200.00, 1200.00, 2),
-- App 32: Patient 15 (Pre-chemo Hematological Evaluation)
(32, 32, 800.00, 800.00, 1), -- Partially Paid
-- App 33: Patient 25 (Post-chemo Bone Marrow Assessment + 1 Lab)
(33, 33, 950.00, 950.00, 2),

-- App 5: Patient 31 -> SGK (Provider 1) %100 Coverage -> Patient Share = 0
(5, 5, 250.00, 0.00, 2),
-- App 6: Patient 39 -> POSTPONED (Status_ID = 1)
(6, 6, 250.00, 25.00, 0),
-- App 15: Patient 32 -> POSTPONED (Status_ID = 1)
(15, 15, 300.00, 30.00, 0), -- Unpaid
-- App 16: Patient 38 -> Allianz (Provider 2) %80 Coverage -> Patient Share = 20%
(16, 16, 350.00, 70.00, 2), -- Fully Paid
-- App 17: Patient 39 -> Acıbadem (Provider 3) %90 Coverage -> Patient Share = 10% (Cardiology Crisis)
(17, 17, 600.00, 60.00, 1), -- Partially Paid
-- App 21: Patient 17 -> POSTPONED (Status_ID = 1)
(21, 21, 280.00, 280.00, 0), 
-- App 30: Patient 34 -> Neurology Check. St Thomas
(30, 30, 350.00, 52.50, 2),
-- App 34: Patient 35 -> Oncology targeted therapy.
(34, 34, 1100.00, 220.00, 2);

INSERT INTO "Payment" (
  "Payment_ID", 
  "Bill_ID", 
  "Payer_ID", 
  "Amount_Paid", 
  "Payment_Date"
) VALUES 

(1, 1, 1, 450.00, '2026-05-10 10:15:00'),    -- Patient 1 paid full bill 1
(2, 2, 11, 250.00, '2026-05-12 11:30:00'),   -- Patient 11 paid full bill 2
(3, 4, 26, 150.00, '2026-05-15 15:00:00'),   -- Patient 26 partially paid bill 4 (200.00 left)
(4, 7, 2, 500.00, '2026-05-11 15:20:00'),    -- Patient 2 paid full bill 7
(5, 8, 8, 850.00, '2026-05-13 12:45:00'),    -- Patient 8 paid full bill 8 (Heavy cardiology)
(6, 9, 11, 100.00, '2026-05-14 11:00:00'),   -- Patient 11 partially paid bill 9
(7, 10, 12, 250.00, '2026-05-15 17:00:00'),  -- Patient 12 paid full bill 10
(8, 12, 20, 600.00, '2026-05-19 14:45:00'),  -- Patient 20 paid full bill 12
(9, 13, 24, 400.00, '2026-05-20 15:30:00'),  -- Patient 24 paid full bill 13
(10, 18, 3, 400.00, '2026-05-12 14:45:00'),  -- Patient 3 paid full bill 18
(11, 19, 7, 450.00, '2026-05-13 11:15:00'),  -- Patient 7 paid full bill 19
(12, 20, 13, 420.00, '2026-05-15 13:00:00'), -- Patient 13 paid full bill 20
(13, 22, 21, 150.00, '2026-05-18 16:00:00'), -- Patient 21 partially paid bill 22
(14, 23, 4, 350.00, '2026-05-11 16:15:00'),  -- Patient 4 paid full bill 23
(15, 24, 6, 320.00, '2026-05-12 17:45:00'),  -- Patient 6 paid full bill 24
(16, 26, 16, 320.00, '2026-05-15 11:30:00'), -- Patient 16 paid full bill 26
(17, 27, 22, 300.00, '2026-05-18 12:15:00'), -- Patient 22 paid full bill 27
(18, 29, 28, 320.00, '2026-05-20 16:30:00'), -- Patient 28 paid full bill 29
(19, 31, 5, 1200.00, '2026-05-13 10:00:00'), -- Patient 5 paid full bill 31 (Leukemia check)
(20, 32, 15, 400.00, '2026-05-14 14:30:00'), -- Patient 15 partially paid bill 32
(21, 33, 25, 950.00, '2026-05-16 11:20:00'), -- Patient 25 paid full bill 33

-- Bill 5: Patient 31 has %100 SGK (Payer 101). No patient share.
(22, 5, 101, 250.00, '2026-05-18 18:00:00'), -- SGK covers 100% of bill 5

-- Bill 16: Patient 38 has Allianz (%80). Total: 350.00, Patient Share: 70.00
(23, 16, 102, 280.00, '2026-05-22 17:00:00'), -- Allianz (Payer 102) pays corporate 80% share
(24, 16, 38, 70.00, '2026-05-22 15:45:00'),   -- Patient 38 pays remaining 20% share at discharge

-- Bill 17: Patient 39 has Acıbadem (%90). Total: 600.00, Patient Share: 60.00 (PARTIALLY PAID)
(25, 17, 103, 540.00, '2026-05-24 09:00:00'), -- Acıbadem (Payer 103) cleared their 90% share. Patient share still pending.

-- Bill 30: Patient 34 has Bupa (%85). Total: 350.00, Patient Share: 52.50
(26, 30, 106, 297.50, '2026-05-21 16:00:00'), -- Bupa Global (Payer 106) pays 85%
(27, 30, 34, 52.50, '2026-05-21 14:00:00'),   -- Patient 34 pays 15% cash

-- Bill 34: Patient 35 has Allianz (%80). Total: 1100.00, Patient Share: 220.00
(28, 34, 102, 880.00, '2026-05-20 10:00:00'), -- Allianz (Payer 102) pays 80%
(29, 34, 35, 220.00, '2026-05-19 13:00:00');  -- Patient 35 pays 20%

COMMIT;
