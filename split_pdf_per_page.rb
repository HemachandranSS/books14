# require "combine_pdf"
# require "fileutils"

# def split_pdf(
#   pdf_path = "./tmp/Scientists_-_Dorling_Kindersley.pdf",
#   output_dir = "./Scientists_-_Dorling_Kindersley"
# )
#   FileUtils.mkdir_p(output_dir)

#   pdf = CombinePDF.load(pdf_path)

#   pdf.pages.each_with_index do |page, index|
#     page_number = index + 1
#     output_path = File.join(output_dir, "#{page_number}.pdf")

#     new_pdf = CombinePDF.new
#     new_pdf << page
#     new_pdf.save(output_path)

#     puts "Created #{output_path}"
#   end

#   puts "Done! #{pdf.pages.length} pages created."
# end

# split_pdf

#--------------------------------------------------------

require "hexapdf"
require "fileutils"


def split_pdf(
  pdf_path = "./tmp/Jewel_A_Celebration_of_Earth_s_Treasures.pdf",
  output_dir = "./books/visual-books/Jewel_A_Celebration_of_Earth_s_Treasures"
)
  FileUtils.mkdir_p(output_dir)

  pdf = HexaPDF::Document.open(pdf_path)

  pdf.pages.each_with_index do |page, index|
    page_number = index + 1
    output_path = File.join(output_dir, "#{page_number}.pdf")

    new_pdf = HexaPDF::Document.new

    new_page = new_pdf.import(page)
    new_pdf.pages.add(new_page)

    new_pdf.write(output_path)

    puts "Created #{page_number}.pdf"
  end

  puts "Done! #{pdf.pages.count} pages created."
end

#split_pdf

# file_names = [
#     "201607_dmystify_Life.pdf",
#     "201608_dmystify_Quantum_world.pdf",
#     "201609_dmsytify_Human_Body.pdf",
#     "201610_dmsytify_Geology_Dating.pdf",
#     "201611_dmsytify_Intelligent_Plants.pdf",
#     "201612_dmystify_Natural_Selection.pdf",
#     "201701_dmystify_Time.pdf",
#     "201702_dmystify_Stars.pdf",
#     "201703_dmystify_Microscopic_Life.pdf",
#     "201704_dmystify_Fossils.pdf",
#     "201705_dmystify_Oceans.pdf",
#     "201706_dmystify_Pseudoscience.pdf",
#     "201707_dmystify_The_Sun.pdf",
#     "201708_dmystify_Gravity.pdf",
#     "201709_dmystify_Fringe Science.pdf",
#     "201710_dmystify_Game Theory.pdf",
#     "201711_dmystify_Gravitational Waves.pdf",
#     "201712_dmystify_Unsung Science Heroes.pdf",
#     "201801_dmystify_Water.pdf",
#     "201802_dmystify_Dinosaurs.pdf",
#     "201803_dmystify_Sound.pdf",
#     "201804_dmystify_Light.pdf",
#     "201805_Dmystify_LHC.pdf",
#     "201806_dmystify_Moons of the Solar System.pdf",
#     "201807_dmystify_Exoplanets.pdf",
#     "201808_dmystify_ISRO.pdf",
#     "201809_dmystify_Mars.pdf",
#     "201810_dmystify_Subatomic Particles.pdf",
#     "201811_dmystify_Electricity.pdf",
#     "201812_dmystify_Antimatter.pdf",
#     "201901_dmystify_Space.pdf",
#     "201902_dmystify_The Atmosphere.pdf",
#     "201903_dmystify_DNA.pdf",
#     "201904_dmystify_Physics.pdf",
#     "201905_Dmystify_Chemistry.pdf",
#     "201906_dmystify_18 Wacky science experiments.pdf",
#     "201907_dmystify_Biology.pdf",
#     "201908_Dmystify_Volcanoes.pdf",
#     "201909_Dmystify_Music.pdf",
#     "201910_Dmystify_Archaeology.pdf",
#     "201911_Dmystify_Quantum Chromodynamics.pdf",
#     "201912_Dmystify_Spaceflight 2020s.pdf",
#     "202001_Dmystify_Fungi.pdf",
#     "202002_Dmystify_Astrobiology.pdf",
#     "202003_Dmystify_Viruses.pdf",
#     "202004_Dmystify_Extinction.pdf",
#     "202005_Dmystify_Homo_Sapiens.pdf",
#     "202006_dmystify_Vaccines.pdf",
#     "202007_dmystify_The Ice Age.pdf",
#     "202008_dmystify_Languages.pdf",
#     "202009_dmystify_Plate tectonics.pdf",
#     "202010_dmystify_Biochemistry.pdf",
#     "202012_dmystify_Explorers.pdf",
#     "202101_dmystify_Nothing.pdf",
#     "202102_dmystify_Forensic Science.pdf",
#     "202103_dmystify_Snakes.pdf",
#     "202104_dmystify_Microtechnology.pdf",
#     "202105_dmystify_Asteroids.pdf",
#     "202107_dmystify_Gases.pdf",
#     "202108_dmystify_Hydraulics.pdf",
#     "202109_dmystify_Optics.pdf",
#     "202110_dmystify_Colonising Mars.pdf",
#     "202111_dmystify_Chaos Theory.pdf",
#     "202112_dmystify_Pollution.pdf",
#     "202201_dmystify_Plants.pdf",
#     "202202_dmystify_Oil.pdf",
#     "202203_dmystify_Units.pdf",
#     "202204_dmystify_Telescopes.pdf",
#     "202205_dmystify_Notbable Scientists - Part 1.pdf",
#     "202206_dmystify_Notbable Scientists - Part 2.pdf",
#     "202207_dmystify_Magnetism.pdf",
#     "202208_dmystify_Motion.pdf",
#     "202209_dmystify_Heat.pdf",
#     "202210_dmystify_Birds.pdf",
#     "202211_dmystify_Carbon.pdf"
# ]


# file_names.each do |file_name|
#   split_pdf(
#     pdf_path= "./tmp/#{file_name}",
#     output_dir= "./books/visual-books/digit_dmystify/#{File.basename(file_name, '.pdf')}"
#   )
# end

# file_names = [
#   'History_of_the_World_Map_by_Map_DK_Publishing.pdf',
#   'Super_Simple_Biology.pdf',
#   'SuperSimple_Chemistry_-_DK_UserUpload_Net.pdf',
#   'Super_Simple_Physics_-_DK.pdf',
# 'The_Amazon_-_Tom_Jackson_DK_Eyewitness.pdf',
#   'The_Animal_Book_A_Visual_Encyclopedia_of_Life_on_Earth.pdf',
#   'THE_BODY_ATLAS_-_A_PICTORIAL_GUIDE_TO_THE_HUMAN_BODY_-_1ST_ED__2020_Giuliano_Fornari_Steve_Parker.pdf',
#  'DK_Life_Stories_Albert_Einstein_-_Wil_Mara.pdf',
#   'How_Food_Works_-_DK.pdf',
#   'How_Management_Works_The_Concepts_Visually_Explained_by_DK.pdf',
#   'How_to_be_a_Global_Citizen_Be_Informed_Get_Involved_by_Dorling_Kindersley.pdf',
#   'Journey_An_Illustrated_History_of_Travel_DK_Simon_Adams.pdf',
#   'Medical_Symptoms_Visual_Guide_The_Easy_Way_to_Identify_Medical_Problems_2nd_Edition_DK_Dorling_Kindersley.pdf'
#  'My_Encyclopedia_of_Very_Important_Things.pdf',
#  'Philosophy_A_Visual_Encyclopedia_DK.pdf',
#  'The_Illustrated_Mahabharata_The_Definitive_Guide_to_Indias_Greatest_Epic_DK.pdf',
#  'The_Poetry_Book_-_DK.pdf',
#  'The_Religions_Book.pdf',
#  'Whats_the_Point_of_Philosophy_-_DK.pdf',
#  'What_s_the_Point_of_Science_by_DK.pdf'
# ]

# file_names = [
#   "200503_FT_Photography.pdf",
#   "200504_FT_Antivirus.pdf",
#   "200505_FT_Wireless.pdf",
#   "200506_FT_UpgradeYour_PC.pdf",
#   "200507_FT_MSOffice.pdf",
#   "200508_FT_Internet.pdf",
#   "200509_FT_YourWebPresence.pdf",
#   "200510_FT_Digital_Entertainment.pdf",
#   "200511_FT_Essential_Windows_Tools.pdf",
#   "200512_FT_Gaming.pdf",
#   "200601_FT_Mobile_Telephony.pdf",
#   "200602_FT_Windows_XP.pdf",
#   "200603_FT_Troubleshooting_Your_PC.pdf",
#   "200604_FT_Linux.pdf",
#   "200605_FT_Photoshop.pdf",
#   "200606_FT_DIGITAL_AUDIO.pdf",
#   "200607_FT_WEB_DESIGN.pdf",
#   "200608_FT_Registry.pdf",
#   "200609_FT_Security.pdf",
#   "200610_FT_DIGITAL_VIDEO.pdf",
#   "200611_FT_Open_Source_Software.pdf",
#   "200612_FT_Google.pdf",
#   "200701_FT_Google_Advanced.pdf",
#   "200702_FT_Blogging.pdf",
#   "200703_FT_Freeware.pdf",
#   "200704_FT_The_Student_Web.pdf",
#   "200705_FT_EXCEL_2007.pdf",
#   "200706_FT_Windows_Vista.pdf",
#   "200707_FT_Apple.pdf",
#   "200708_FT_The_Social_Web.pdf",
#   "200709_FT_The_Free_Office.pdf",
#   "200710_FT_PowerPoint.pdf",
#   "200711_FT_Computing_Ages,_Events,_Evolution.pdf",
#   "200801_FT_Tech_Jargon.pdf",
#   "200802_FT_Web_Essentials.pdf",
#   "200803_FT_Web_Advanced.pdf",
#   "200804_FT_Digital_Imaging.pdf",
#   "200805_FT_SketchUp.pdf",
#   "200807_FT_Troubleshooting_II.pdf",
#   "200808_FT_Keyboard_Shortcuts.pdf",
#   "200809_FT_FlashCS3.pdf",
#   "200810_FT_Advanced_Flash.pdf",
#   "200811_FT_C++.pdf",
#   "200812_FT_Vista_Secrets.pdf",
#   "200901_FT_PHP.pdf",
#   "200902_FT_Linux_Beginners.pdf",
#   "200903_FT_Digital_Photography.pdf",
#   "200904_FT_Ajax.pdf",
#   "200905_FT_Freeware.pdf",
#   "200906_FT-Jumbo_Tech_Careers.pdf",
#   "200906_FT_Mobile_Apps.pdf",
#   "200907_FT_Security.pdf",
#   "200908_FT_Open_Source_Software.pdf",
#   "200909_FT_Wireless_Technologies.pdf",
#   "200910_FT_Your_Mobile_Phone.pdf",
#   "200911_FT_Gaming_Consoles.pdf",
#   "200912_FT_Agent001.pdf",
#   "201001_FT_Maya.pdf",
#   "201002_FT_OpenSolaris.pdf",
#   "201003_FT_Mac_OS.pdf",
#   "201004_FT_Facebook_Apps.pdf",
#   "201005_FT_iPhone.pdf",
#   "201006_FT_Ethical_Hacking.pdf",
#   "201007_FT_Linux_Administration.pdf",
#   "201008_FT_CSS.pdf",
#   "201009_FT_Making_Money_from_Web_Services.pdf",
#   "201010_FT_WordPress.pdf",
#   "201011_FT_Windows7.pdf",
#   "201012_FT_Build_Your_Own_Robot.pdf",
#   "201101_FT_Java.pdf",
#   "201102_FT_.Net.pdf",
#   "201103_FT_Android.pdf",
#   "201104_FT_3Ds_Max.pdf",
#   "201105_FT_Android_SDK.pdf",
#   "201106_FT-MeeGo.pdf",
#   "201106_FT_Ubuntu.pdf",
#   "201107_FT_Developing_Chrome_Apps.pdf",
#   "201107_FT_Rich_Internet_Apps.pdf",
#   "201108_FT_Facebook+Google.pdf",
#   "201108_FT_iOS.pdf",
#   "201109_FT_Nano_Technology.pdf",
#   "201110_FT_bada.pdf",
#   "201110_FT_HTML5.pdf",
#   "201111_FT_Digital_Photography.pdf",
#   "201112_FT_Artificial_Intelligence.pdf",
#   "201201_FT_Space_Exploration.pdf",
#   "201202_FT_Networking_Everything.pdf",
#   "201203_FT_Careers_in_Gaming.pdf",
#   "201203_FT_Security_Redux.pdf",
#   "201204_FT_Virtualization.pdf",
#   "201205_FT_Windows_Phone.pdf",
#   "201206_FT_Tablets.pdf",
#   "201207_FT_Hacking_your_mobile_device.pdf",
#   "201208_FT_Free_Everything.pdf",
#   "201209_FT_Going_Green.pdf",
#   "201210_FT_E-commerce.pdf",
#   "201211_FT_Cryptography.pdf",
#   "201212_FT_Cyber_Crime.pdf",
#   "201301_FT_Augmented_Reality.pdf",
#   "201302_FT_Windows_8.pdf",
#   "201303_FT_Mobile_Apps.pdf",
#   "201304_FT_Mobile_Gaming.pdf",
#   "201305_FT_100_Inventions_of_All_Time.pdf",
#   "201306_FT_Embedded_Systems.pdf",
#   "201307_FT_Mobile_and_Laptop_Hardware.pdf",
#   "201308_FT_BlackBerry_10.pdf",
#   "201309_FT_PC_Hardware.pdf",
#   "201310_FT_Cloud_Services.pdf",
#   "201311_FT_Developing_for_Firefox.pdf",
#   "201312_FT_iOS7.pdf",
#   "201401_FT_Tech_Careers.pdf",
#   "201402_FT_Mining_Bitcoins.pdf",
#   "201403_FT_3D_Printing.pdf",
#   "201404_FT_Smartphone_Photography.pdf",
#   "201405_FT_Office_Suites.pdf",
#   "201406_FT_Chrome_OS.pdf",
#   "201407_FT_E-Learning.pdf",
#   "201408_FT_Backing_up_your_digital_life.pdf",
#   "201409_FT_Multimedia_Editing.pdf",
#   "201410_FT_Rediscovering_Linux.pdf",
#   "201411_FT_Apple_Tech_Today.pdf",
#   "201412_FT_Arduino_for_Everyone.pdf",
#   "201501_FT_Hottest_Programming_Languages_Today.pdf",
#   "201502_FT_Emulating_Everything.pdf",
#   "201503_FT_Kids_Tech.pdf",
#   "201504_FT_Raspberry_Pi.pdf",
#   "201505_FT_Internet_of_Things.pdf",
#   "201506_FT_Learn_Anthing.pdf",
#   "201507_FT_Open_Source_Creative_Suite.pdf",
#   "201508_FT_Custom_CMS_Using_Django.pdf",
#   "201509_FT_Windows_10.pdf",
#   "201510_FT_UX_Design.pdf",
#   "201511_FT_Wearables.pdf",
#   "201601_FT_Maker_Technology.pdf",
#   "201602_FT_Virtual_Reality.pdf",
#   "201603_FT_Display_Technology.pdf",
#   "201604_FT_Big_Data.pdf",
#   "201605_FT_Social_Media_Management.pdf",
#   "201606_FT_Android_Studio.pdf",
#   "201607_FT_Swift.pdf",
#   "201608_FT_SEO.pdf",
#   "201609_FT_Build_Your_Own_Website.pdf",
#   "201610_FT_Secure_Everything.pdf",
#   "201611_FT_Audio_Tech.pdf",
#   "201612_FT_Home_Automation.pdf",
#   "201701_FT_Angular__2.pdf",
#   "201702_FT_Become_a_Youtuber.pdf",
#   "201703_FT_Consoles.pdf",
#   "201704_FT_Robotics.pdf",
#   "201705_FT_SoCs.pdf",
#   "201706_FT_Building_a_PC.pdf",
#   "201707_FT_Coding_Better.pdf",
#   "201708_FT_Apple_Ecosystem_1.pdf",
#   "201709_FT_Apple_Ecosystem_2.pdf",
#   "201710_FT_Google_(Part_1).pdf",
#   "201711_FT_Google_(Part_2).pdf",
#   "201712_FT_Making_Money_from_Home.pdf",
#   "201801_FT_Amazon_Web_Services.pdf",
#   "201802_FT_Blockchain.pdf",
#   "201803_FT_Selling_Online.pdf",
#   "201804_FT_Laravel.pdf",
#   "201805_FT_Adobe_XD.pdf",
#   "201806_FT_Custom_Android_ROM.pdf",
#   "201807_FT_Google_Analytics.pdf",
#   "201808_FT_Python.pdf",
#   "201809_FT_PC_Cooling.pdf",
#   "201810_FT_3D_Games_in_Unity.pdf",
#   "201811_FT_Shopping_Smarter_Online.pdf",
#   "201812_FT_Building_AR_Apps.pdf",
#   "201901_FT_Getting_Started_with_AI.pdf",
#   "201902_FT_Photo_Editing.pdf",
#   "201903_FT_Microsoft_Excel.pdf",
#   "201904_FT_Blender.pdf",
#   "201905_FT_Keras.pdf",
#   "201906A_FT_Ethical_Hacking.pdf",
#   "201906B_FT_100_Open-Source_Software_You_Must_Try.pdf",
#   "201907_FT_Ubuntu.pdf",
#   "201908_FT_Social_Media_Marketing.pdf",
#   "201909_FT_Flutter.pdf",
#   "201910_FT_Electronics.pdf",
#   "201911_FT_Best_Mobile_Games.pdf",
#   "201912_FT_TikTok-ing.pdf",
#   "202001_FT_MySQL.pdf",
#   "202002_FT_Unreal_Engine.pdf",
#   "202003_FT_Essential_Software.pdf",
#   "202004_FT_Hacking_The_Command_Line.pdf",
#   "202005_FT_Unity_2D.pdf",
#   "202006a_FT_The_How_To_Guide_(Part_1).pdf",
#   "202006b_FT_Hacking_the_Command_Line.pdf",
#   "202007_FT_The_How_To_Guide_(Part_2).pdf",
#   "202008_FT_Becoming_A_Better_Developer.pdf",
#   "202009_FT_Software_Testing.pdf",
#   "202010_FT_Django_3.pdf",
#   "202011_FT_Microsoft_s_Productivity_Suite.pdf",
#   "202012_FT_Adobe_Animate.pdf",
#   "202101_FT_Livestreaming_Games_-_A.pdf",
#   "202102_FT_Livestreaming_Games_-_B.pdf",
#   "202103_FT_FreeBSD.pdf",
#   "202104_FT_Building_a_Discord_community.pdf",
#   "202105_FT_Vue.js.pdf",
#   "202106_FT_Vue.js_-_Part_-_2.pdf",
#   "202107_FT_Autodesk_Motionbuilder.pdf",
#   "202108a_FT_Must_Have_Apps.pdf",
#   "202108b_FT_Linux_Server_Administration.pdf",
#   "202109_FT_Digit_Video_Editing_on_Mobiles.pdf",
#   "202110_FT_Digit_Adobe_After_Effects.pdf",
#   "202111a_FT_Everything_Crypto.pdf",
#   "202111b_FT_Managing_Your_Data_Privacy.pdf",
#   "202112_Linux_Desktop_Environments.pdf",
#   "202201_Researching_Anything.pdf",
#   "202202_Android_Modifications.pdf",
#   "202203_FT_Windows_Registry.pdf",
#   "202204_FT_Ethical_Hacking.pdf",
#   "202205_FT_Robotics.pdf",
#   "202206_FT_Must_Have_Windows_11_Apss.pdf",
#   "202207_FT_Getting_Everything_Done_For_Free.pdf",
#   "202208_FT_Google_Workspace.pdf",
#   "202209_FT_WordPress.pdf",
#   "202210_FT_Adobe_Illustrator.pdf",
#   "202211_FT_Coding_in_2022.pdf",
#   "202302_Digit_FT_to_Audio_Production.pdf",
#   "202303_Digit_FT_to_Stable_Diffusion.pdf",
#   "202304_Digit_FT_to_AI_Apps.pdf",
#   "202305_Digit_FT_to_Android_App_Development.pdf",
#   "202306_Digit_FT_to_PC_Maintenance_(Part_-_1).pdf",
#   "202306_Digit_FT_to_Prompt_Engineering.pdf",
#   "202307_FT_to_PC_Maintenance_(Part_-_2).pdf",
#   "202308_FT_to_Home_Automation.pdf",
#   "202309_FT_to_Unreal_Engine_5.pdf",
#   "202310_FT_to_Android_App_Development_(Foldables_Edition).pdf",
#   "202311_FT_to_Notion.pdf",
#   "202312_FT_CodingWithAI.pdf",
#   "202401_FT_Metaverse.pdf",
#   "202402_FT_Canva.pdf",
#   "202403_FT_QuantumComputing.pdf",
#   "202404_FT_OnlineSafety.pdf",
#   "202405_FT_DigitalDetox.pdf",
#   "202406_FT_to_AI_Unleashed.pdf",
#   "202407_FT_to_Coding_-_Part_-_1.pdf",
#   "202408_FT_to_Coding_-_Part_-_2.pdf",
#   "202409_FT_to_Content_Creation.pdf",
#   "202410_FT_to_Buying_Gadgets.pdf",
#   "202411_FT_to_Tech_Jargons.pdf"
# ]

# file_names = [
#   "200106_Digit.pdf",
#   "200107_Digit.pdf",
#   "200108_Digit.pdf",
#   "200109_Digit.pdf",
#   "200110_Digit.pdf",
#   "200111_Digit.pdf",
#   "200112_Digit.pdf",
#   "200201_Digit.pdf",
#   "200202_Digit.pdf",
#   "200203_Digit.pdf",
#   "200204_Digit.pdf",
#   "200205_Digit.pdf",
#   "200206_Digit.pdf",
#   "200207_Digit.pdf",
#   "200208_Digit.pdf",
#   "200209_Digit.pdf",
#   "200210_Digit.pdf",
#   "200211_Digit.pdf",
#   "200212_Digit.pdf",
#   "200301_Digit.pdf",
#   "200302_Digit.pdf",
#   "200303_Digit.pdf",
#   "200304_Digit.pdf",
#   "200305_Digit.pdf",
#   "200306_Digit.pdf",
#   "200307_Digit.pdf",
#   "200308_Digit.pdf",
#   "200309_Digit.pdf",
#   "200310_Digit.pdf",
#   "200311_Digit.pdf",
#   "200312_Digit.pdf",
#   "200401_Digit.pdf",
#   "200402_Digit.pdf",
#   "200403_Digit.pdf",
#   "200404_Digit.pdf",
#   "200405_Digit.pdf",
#   "200406_Digit.pdf",
#   "200407_Digit.pdf",
#   "200408_Digit.pdf",
#   "200409_Digit.pdf",
#   "200410_Digit.pdf",
#   "200411_Digit.pdf",
#   "200412_Digit.pdf",
#   "200501_Digit.pdf",
#   "200502_Digit.pdf",
#   "200503_Digit.pdf",
#   "200504_Digit.pdf",
#   "200505_Digit.pdf",
#   "200506_Digit.pdf",
#   "200507_Digit.pdf",
#   "200508_Digit.pdf",
#   "200509_Digit.pdf",
#   "200510_Digit.pdf",
#   "200511_Digit.pdf",
#   "200512_Digit.pdf",
#   "200601_Digit.pdf",
#   "200602_Digit.pdf",
#   "200603_Digit.pdf",
#   "200604_Digit.pdf",
#   "200605_Digit.pdf",
#   "200606_Digit.pdf",
#   "200607_Digit.pdf",
#   "200608_Digit.pdf",
#   "200609_Digit.pdf",
#   "200610_Digit.pdf",
#   "200611_Digit.pdf",
#   "200612_Digit.pdf",
#   "200701_Digit.pdf",
#   "200702_Digit.pdf",
#   "200703_Digit.pdf",
#   "200704_Digit.pdf",
#   "200705_Digit.pdf",
#   "200706_Digit.pdf",
#   "200707_Digit.pdf",
#   "200708_Digit.pdf",
#   "200709_Digit.pdf",
#   "200710_Digit.pdf",
#   "200711_Digit.pdf",
#   "200712_Digit.pdf",
#   "200801_Digit.pdf",
#   "200802_Digit.pdf",
#   "200803_Digit.pdf",
#   "200804_Digit.pdf",
#   "200805_Digit.pdf",
#   "200806_Digit.pdf",
#   "200807_Digit.pdf",
#   "200808_Digit.pdf",
#   "200809_Digit.pdf",
#   "200810_Digit.pdf",
#   "200811_Digit.pdf",
#   "200812_Digit.pdf",
#   "200901_Digit.pdf",
#   "200902_Digit.pdf",
#   "200903_Digit.pdf",
#   "200904_Digit.pdf",
#   "200905_Digit.pdf",
#   "200906_Digit.pdf",
#   "200907_Digit.pdf",
#   "200908_Digit.pdf",
#   "200909_Digit.pdf",
#   "200910_Digit.pdf",
#   "200911_Digit.pdf",
#   "200912_Digit.pdf",
#   "201001_Digit.pdf",
#   "201002_Digit.pdf",
#   "201003_Digit.pdf",
#   "201004_Digit.pdf",
#   "201005_Digit.pdf",
#   "201006_Digit.pdf",
#   "201007_Digit.pdf",
#   "201008_Digit.pdf",
#   "201009_Digit.pdf",
#   "201010_Digit.pdf",
#   "201011_Digit.pdf",
#   "201012_Digit.pdf",
#   "201101_Digit.pdf",
#   "201102_Digit.pdf",
#   "201103_Digit.pdf",
#   "201104_Digit.pdf",
#   "201105_Digit.pdf",
#   "201106_Digit1.pdf",
#   "201106_Digit2.pdf",
#   "201107_Digit.pdf",
#   "201108_Digit.pdf",
#   "201109_Digit.pdf",
#   "201110_Digit.pdf",
#   "201111_Digit.pdf",
#   "201112_Digit.pdf",
#   "201201_Digit.pdf",
#   "201202_Digit.pdf",
#   "201203_Digit.pdf",
#   "201204_Digit.pdf",
#   "201205_Digit.pdf",
#   "201206_Digit.pdf",
#   "201207_Digit.pdf",
#   "201208_Digit.pdf",
#   "201209_Digit.pdf",
#   "201210_Digit.pdf",
#   "201211_Digit.pdf",
#   "201212_Digit.pdf",
#   "201301_Digit.pdf",
#   "201302_Digit.pdf",
#   "201303_Digit.pdf",
#   "201304_Digit.pdf",
#   "201305_Digit.pdf",
#   "201306_Digit.pdf",
#   "201307_Digit.pdf",
#   "201308_Digit.pdf",
#   "201309_Digit.pdf",
#   "201310_Digit.pdf",
#   "201311_Digit.pdf",
#   "201312_Digit.pdf",
#   "201401_Digit.pdf",
#   "201402_Digit.pdf",
#   "201403_Digit.pdf",
#   "201404_Digit.pdf",
#   "201405_Digit.pdf",
#   "201406_Digit.pdf",
#   "201407_Digit.pdf",
#   "201408_Digit.pdf",
#   "201409_Digit.pdf",
#   "201410_Digit.pdf",
#   "201411_Digit.pdf",
#   "201412_Digit.pdf",
#   "201501_Digit.pdf",
#   "201502_Digit.pdf",
#   "201503_Digit.pdf",
#   "201504_Digit.pdf",
#   "201505_Digit.pdf",
#   "201506_Digit1.pdf",
#   "201506_Digit2.pdf",
#   "201507_Digit.pdf",
#   "201508_Digit.pdf",
#   "201509_Digit.pdf",
#   "201510_Digit.pdf",
#   "201511_Digit.pdf",
#   "201512_Digit.pdf",
#   "201601_Digit.pdf",
#   "201602_Digit.pdf",
#   "201603_Digit.pdf",
#   "201604_Digit.pdf",
#   "201605_Digit.pdf",
#   "201606_Digit.pdf",
#   "201607_Digit.pdf",
#   "201608_Digit.pdf",
#   "201609_Digit.pdf",
#   "201610_Digit.pdf",
#   "201611_Digit.pdf",
#   "201612_Digit.pdf",
#   "201701_Digit.pdf",
#   "201702_Digit.pdf",
#   "201703_Digit.pdf",
#   "201704_Digit.pdf",
#   "201705_Digit.pdf",
#   "201706_Digit.pdf",
#   "201707_Digit.pdf",
#   "201708_Digit.pdf",
#   "201709_Digit.pdf",
#   "201710_Digit.pdf",
#   "201711_Digit.pdf",
#   "201712_Digit.pdf",
#   "201801_Digit.pdf",
#   "201802_Digit.pdf",
#   "201803_Digit.pdf",
#   "201804_Digit.pdf",
#   "201805_Digit.pdf",
#   "201806a_Digit.pdf",
#   "201806b_Digit.pdf",
#   "201807_Digit.pdf",
#   "201808_Digit.pdf",
#   "201809_Digit.pdf",
#   "201810_Digit.pdf",
#   "201811_Digit.pdf",
#   "201812_Digit.pdf",
#   "201901_Digit.pdf",
#   "201902_Digit.pdf",
#   "201903_Digit.pdf",
#   "201904_Digit.pdf",
#   "201905_Digit.pdf",
#   "201906_Digit.pdf",
#   "201907_Digit.pdf",
#   "201908_Digit.pdf",
#   "201909_Digit.pdf",
#   "201910_Digit.pdf",
#   "201911_Digit.pdf",
#   "201912_Digit.pdf",
#   "202001_Digit.pdf",
#   "202002_Digit.pdf",
#   "202003_Digit.pdf",
#   "202004_Digit.pdf",
#   "202005_Digit.pdf",
#   "202006_Digit.pdf",
#   "202007_Digit.pdf",
#   "202008_Digit.pdf",
#   "202009_Digit.pdf",
#   "202010_Digit.pdf",
#   "202011_Digit.pdf",
#   "202012_Digit.pdf",
#   "202101_Digit.pdf",
#   "202102_Digit.pdf",
#   "202103_Digit.pdf",
#   "202104_Digit.pdf",
#   "202105_Digit.pdf",
#   "202106_Digit.pdf",
#   "202107_Digit.pdf",
#   "202108_Digit.pdf",
#   "202109_Digit.pdf",
#   "202110_Digit.pdf",
#   "202111_Digit.pdf",
#   "202112_Digit.pdf",
#   "202201_Digit.pdf",
#   "202202_Digit.pdf",
#   "202203_Digit.pdf",
#   "202204_Digit.pdf",
#   "202205_Digit.pdf",
#   "202206_Digit.pdf",
#   "202207_Digit.pdf",
#   "202208_Digit.pdf",
#   "202209_Digit.pdf",
#   "202210_Digit.pdf",
#   "202211_Digit.pdf",
#   "202212_Digit.pdf",
#   "202301_Digit.pdf",
#   "202302_Digit.pdf",
#   "202303_Digit.pdf",
#   "202304_Digit.pdf",
#   "202305_Digit.pdf",
#   "202306_Digit.pdf",
#   "202307_Digit.pdf",
#   "202308_Digit.pdf",
#   "202309_Digit.pdf",
#   "202310_Digit.pdf",
#   "202311_Digit.pdf",
#   "202312_Digit.pdf",
#   "202401_Digit.pdf",
#   "202402_Digit.pdf",
#   "202403_Digit.pdf",
#   "202404_Digit.pdf",
#   "202405_Digit.pdf",
#   "202406_Digit.pdf",
#   "202407_Digit.pdf",
#   "202408_Digit.pdf",
#   "202409_Digit.pdf",
#   "202410_Digit.pdf",
#   "202411_Digit.pdf"
# ]

# file_names.each do |file_name|
#   split_pdf(
#     pdf_path= "./tmp/#{file_name}",
#     output_dir= "./books/visual-books/digit_mag/#{File.basename(file_name, '.pdf')}"
#   )
# end

# file_names = [
#   "OSFY_jan_2009.pdf",
#   "OSFY_feb_2009.pdf",
#   "OSFY_march_2009.pdf",
#   "OSFY_april_2009.pdf",
#   "OSFY_may_2009.pdf",
#   "OSFY_june_2009.pdf",
#   "OSFY_july_2009.pdf",
#   "OSFY_aug_2009.pdf",
#   "OSFY_sept_2009.pdf",
#   "OSFY_oct_2009.pdf",
#   "OSFY_nov_2009.pdf",
#   "OSFY_dec_2009.pdf",

#   "OSFY_jan_2010.pdf",
#   "OSFY_feb_2010.pdf",
#   "OSFY_march_2010.pdf",
#   "OSFY_april_2011.pdf",
#   "OSFY_may_2010.pdf",
#   "OSFY_june_2010.pdf",
#   "OSFY_july_2010.pdf",
#   "OSFY_august_2010.pdf",
#   "OSFY_sep_2010.pdf",
#   "OSFY_oct_2010.pdf",
#   "OSFY_nov_2010.pdf",
#   "OSFY_dec_2010.pdf",

#   "OSFY_july_2011.pdf",
#   "OSFY_jan_2011.pdf",
#   "OSFY_march_2011.pdf",
#   "OSFY_april_2011.pdf",
#   "OSFY_may_2011.pdf",
#   "OSFY_june_2011.pdf",
#   "OSFY_july_2011.pdf",
#   "OSFY_august_2011.pdf",
#   "OSFY_oct_2011.pdf",
#   "LFY_dec_2011.pdf",

#   "LFY_jan_2012.pdf",
#   "LFY_feb_2012.pdf",
#   "LFY_march_2012.pdf",
#   "LFY_april_2012.pdf",
#   "LFY_may_2012.pdf",
#   "LFY_june_2012.pdf",
#   "LFY_july_2012.pdf",
#   "LFY_august_2012.pdf",
#   "LFY_sept_2012.pdf",
#   "LFY_oct_2012.pdf",
#   "OSFY_nov_2012.pdf",
#   "OSFY_dec_2012.pdf",

#   "OSFY_jan_2013.pdf",
#   "OSFY_feb_2013.pdf",
#   "OSFY_march_2013.pdf",
#   "OSFY_april_2013.pdf",
#   "OSFY_may_2013.pdf",
#   "OSFY_june_2013.pdf",
#   "OSFY_july_2013.pdf",
#   "OSFY_aug_2013.pdf",
#   "OSFY_sep_2013.pdf",
#   "OSFY_oct_2013.pdf",
#   "OSFY_nov_2013.pdf",
#   "OSFY_dec_2013.pdf",

#   "OSFY_jan_2014.pdf",
#   "OSFY_feb_2014.pdf",
#   "OSFY_mar_2014.pdf",
#   "OSFY_april_2014.pdf",
#   "OSFY_may_2014.pdf",
#   "OSFY_june_2014.pdf",
#   "OSFY_july_2014.pdf",
#   "OSFY_aug_2014.pdf",
#   "OSFY_sept_2014.pdf",
#   "OSFY_oct_2014.pdf",
#   "OSFY_nov_2014.pdf",
#   "OSFY_dec_2014.pdf",

#   "OSFY_jan_2015.pdf",
#   "OSFY_feb_2015.pdf",
#   "OSFY_mar_2015.pdf",
#   "OSFY_april_2015.pdf",
#   "OSFY_may_2015.pdf",
#   "OSFY_june_2015.pdf",
#   "OSFY_july_2015.pdf",
#   "OSFY_aug_2015.pdf",
#   "OSFY_sep_2015.pdf",
#   "OSFY_oct_2015.pdf",
#   "OSFY_nov_2015.pdf",
#   "OSFY_dec_2015.pdf",

#   "OSFY_jan_2016.pdf",
#   "OSFY_feb_2016.pdf",
#   "OSFY_march_2016.pdf",
#   "OSFY_april_2016.pdf",
#   "OSFY_may_2016.pdf",
#   "OSFY_june_2016.pdf",
#   "OSFY_july_2016.pdf",
#   "OSFY_aug_2016.pdf",
#   "OSFY_sep_2016.pdf",
#   "OSFY_oct_2016.pdf",
#   "OSFY_nov_2016.pdf",
#   "OSFY_dec_2016.pdf",

#   "OSFY_jan_2017.pdf",
#   "OSFY_feb_2017.pdf",
#   "OSFY_mar_2017.pdf",
#   "OSFY_apr_2017.pdf",
#   "OSFY_may_2017.pdf",
#   "OSFY_june_2017.pdf",
#   "OSFY_july_2017.pdf",
#   "OSFY_aug_2017.pdf",
#   "OSFY_sep_2017.pdf",
#   "OSFY_oct_2017.pdf",
#   "OSFY_nov_2017.pdf",

#   "OSFY_jan_2018.pdf",
#   "OSFY_feb_2018.pdf",
#   "OSFY_mar_2018.pdf",
#   "OSFY_april_2018.pdf",
#   "OSFY_may_2018.pdf",
#   "OSFY_june_2018.pdf",
#   "OSFY_july_2018.pdf",
#   "OSFY_aug_2018.pdf",
#   "OSFY_sep_2018.pdf",
#   "OSFY_oct_2017.pdf",
#   "OSFY_nov_2018.pdf",
#   "OSFY_dec_2018.pdf",

#   "OSFY_jan_2019.pdf",
#   "OSFY_feb_2019.pdf",
#   "OSFY_mar_2019.pdf",
#   "OSFY_apr_2019.pdf",
#   "OSFY_may_2019.pdf",
#   "OSFY_june_2019.pdf",
#   "OSFY_july_2019.pdf",
#   "OSFY_aug_2019.pdf",
#   "OSFY_sep_2019.pdf",
#   "OSFY_oct_2019.pdf",
#   "OSFY_nov_2019.pdf",
#   "OSFY_dec_2019.pdf",

#   "OSFY_jan_2020.pdf",
#   "OSFY_feb_2020.pdf",
#   "OSFY_mar_2020.pdf",
#   "OSFY_apr_2020.pdf",
#   "OSFY_may_2020.pdf",
#   "OSFY_june_2020.pdf",
#   "OSFY_july_2020.pdf",
#   "OSFY_aug_2020.pdf",
#   "OSFY_sep_2020.pdf",
#   "OSFY_oct_2020.pdf",
#   "OSFY_nov_2020.pdf",
#   "OSFY_dec_2020.pdf",

#   "OSFY_jan_2021.pdf",
#   "feb2021.pdf",
#   "march2021.pdf",
#   "april2021.pdf",
#   "june2021.pdf",
#   "July2021.pdf",
#   "OSFYAug2021.pdf",
#   "OSFYSep2021.pdf",
#   "OSFYOct2021.pdf",
#   "OSFYNov2021.pdf",
#   "OSFYDec2021.pdf",

#   "OSFYJan2022.pdf",
#   "OSFYFeb2022.pdf",
#   "OSFYMarch2022.pdf",
#   "OSFYApril2022.pdf",
#   "OSFYMay2022.pdf",
#   "OSFYJune2022.pdf",
#   "OSFYJuly2022.pdf",
#   "OSFYAug2022.pdf",
#   "OSFYSep2022.pdf",
#   "OSFYOct2022.pdf",
#   "OSFYNov2022.pdf",
#   "OSFYDec2022.pdf",

#   "OSFYJan2023.pdf",
#   "OSFYFeb2023.pdf",
#   "OSFYMarch2023.pdf",
#   "OSFYApril2023.pdf",
#   "OSFYMay2023.pdf",
#   "OSFYJune2023.pdf",
#   "OSFYJuly2023.pdf",
#   "OSFYAug2023.pdf",
#   "OSFYSep2023.pdf",
#   "OSFYOct2023.pdf",
#   "OSFYNov2023.pdf",
#   "OSFYDec2023.pdf",

#   "OSFYJan2024.pdf",
#   "OSFYFeb2024.pdf",
#   "OSFYMarch2024.pdf",
#   "OSFYApril2024.pdf",
#   "OSFYMay2024.pdf",
#   "OSFYJune2024.pdf",
#   "OSFYJuly2024.pdf",
#   "OSFYAug2024.pdf",
#   "OSFYSep2024.pdf",
#   "OSFYOct2024.pdf",
#   "OSFYNov2024.pdf",
#   "OSFYDec2024.pdf",

#   "OSFYJan2025.pdf",
#   "OSFYFeb2025.pdf",
#   "OSFYMarch2025.pdf",
#   "OSFYApril2025.pdf",
#   "OSFYMay2025.pdf",
#   "OSFYJune2025.pdf",
#   "OSFYJuly2025.pdf",
#   "OSFYAug2025.pdf",
#   "OSFYSep2025.pdf",
#   "OSFYOct2025.pdf",
#   "OSFYNov2025.pdf",
#   "OSFYDec2025.pdf",

#   "OSFYJan2026.pdf",
#   "OSFYFeb2026.pdf",
#   "OSFYMar2026.pdf",
#   "OSFYApr2026.pdf",
#   "OSFYMay2026.pdf"
# ]


# file_names.each_slice((file_names.size / 20.0).ceil).with_index(1) do |files, batch_number|
#   files.each do |file_name|
#     split_pdf(
#       pdf_path= "./tmp/#{file_name}",
#       output_dir= "./books/visual-books/osfy/#{File.basename(file_name, '.pdf')}"
#     )
#   end

#   puts "Adding batch #{batch_number} to Git..."
#   system("git add books/visual-books/osfy")
  
#   system(
#     "git commit -m 'Add OSFY magazine batch #{batch_number} of 20'"
#   )
  
#   puts "Pushing batch #{batch_number} to remote origin..."
#   system("git push origin main")

#   puts "Batch #{batch_number} completed and pushed successfully!"

# end

# file_names = [
#   'OSFYAug2026.pdf',
#   'OSFYJuly2026.pdf',
#   'OSFYJune2026.pdf',
#   'OSFYSep2026.pdf',
  
# ]


# file_names = [
#   "Digit-FT-to-Tech-Resolutions_Issue_12_Vol_19_December_2024_High-Res.pdf",

#   "Digit-FT-to-Best-of-AI-in-2024_Issue_01_Vol_20_January_2025_High-Res.pdf",
#   "Digit-FT-to-Smartphone-Apps_Issue_02_Vol_20_February_2025_High-Res.pdf",
#   "Digit-FT-to-Linux-for-Beginners_Issue_03_Vol_20_March_2025_High-Res.pdf",
#   "Digit-FT-to-Online-Scams_Issue_04_Vol_20_April_2025_High-Res.pdf",
#   "Digit-FT-to-Mindfulness-Tech_Issue_05_Vol_20_May_2025_High-Res.pdf",
#   "Digit-FT-to-Secure-Office-Network_Issue_06_Vol_20_June_2025_High-Res.pdf",
#   "Digit-FT-to-Mobile-Security-101_Issue_07_Vol_20_July_2025_High-Res.pdf",
#   "Digit-FT-to-Best-Indian-Apps_Issue_08_Vol_20_August_2025_High-Res.pdf",
#   "Digit-FT-to-Enhanced-Entertainment_Issue_09_Vol_20_September_2025_High-Res.pdf",
#   "Digit-FT-to-Buying-Any-Laptop_Issue_10_Vol_20_October_2025_High-Res.pdf",
#   "Digit-FT-to-Essential-PC-Hardware_Issue_11_Vol_20_November_2025_Medium-Res.pdf",
#   "Digit-FT-to-Free-Mobile-Apps-You-Must-Try_Issue_12_Vol_20_December_2025_High-Res.pdf",

#   "Digit-FT-to-Smart-Resolutions-with-Help-of-AI_Issue_01_Vol_21_January_2026_High-Res.pdf",
#   "Digit-FT-to-DIY-Smart-Home_Issue_02_Vol_21_February_2026_High-Res.pdf",
#   "Digit-FT-to-Semiconductors-101_Issue_03_Vol_21_March_2026_High-Res.pdf",
#   "Digit-FT-to-Windows-11_Issue_04_Vol_21_April_2026_High-Res.pdf",
#   "Digit-FT-to-Backing-Up-Your-Data_Issue_05_Vol_21_May_2026_High-Res.pdf",
#   "Digit-FT-to-Mastering-Android_Issue_06_Vol_21_June_2026_High-Res.pdf",
#   "Digit-FT-to-AI-Agents_Issue_07_Vol_21_July_2026_High-Res.pdf",
#   "Digit-FT-to-Being-Anonymous-Onine_Issue_08_Vol_21_August_2026_High-Res.pdf",
#   "Digit-FT-to-Podcasting_Issue_09_Vol_21_September_2026_High-Res.pdf"
# ]

# file_names = [
#   "Digit_Vol_24_Issue_12_December_2024_Medium-Res_Better.pdf",
#   "Digit_Vol_25_Issue_01_January_2025_Medium-Res.pdf",
#   "Digit_Vol_25_Issue_02_February_2025_Medium_2.pdf",
#   "Digit_Vol_25_Issue_03_March_2025_Medium-Res-02.pdf",
#   "Digit_Vol_25_Issue_04_April_2025_Medium-Res-01.pdf",
#   "Digit_Vol_25_Issue_05_May_2025_Medium-Res_01.pdf",
#   "Digit_Vol_25_Issue_06_June_2025_Medium-Res-1.pdf",
#   "Digit_Vol_25_Issue_07_July_2025_Midum-Res.pdf",
#   "Digit_Vol_25_Issue_08_August_2025_Medium-Res.pdf",
#   "Digit_Vol_25_Issue_09_September_2025_Medium-Res.pdf",
#   "Digit_Vol_25_Issue_10_October_2025_Low-Res1.pdf",
#   "Digit_Vol_25_Issue_11_November_2025_Medium-Res.pdf",
#   "Digit_Vol_25_Issue_12_December_2025_Low-Res.pdf",
#   "Digit_Vol_26_Issue_01_January_2026_Medium-Res.pdf",
#   "Digit_Vol_26_Issue_02_February_2026_Medium-Res.pdf",
#   "Digit_Vol_26_Issue_03_March_2026_Medium-Res-1.pdf",
#   "Digit_Vol_26_Issue_04_April_2026_Medium-Res.pdf",
#   "Digit_Vol_26_Issue_05_May_2026_Medium-Res.pdf",
#   "Digit_Vol_26_Issue_06_June_2026_Low-Res.pdf",
#   "Digit_Vol_26_Issue_07_July_2026_Medium-Res.pdf",
#   "Digit_Vol_26_Issue_08_August_2026_Medium-Res.pdf",
#   "Digit_Vol_26_Issue_09_September_2026_Medium-Res-1.pdf"
# ]


# file_names.each_slice((file_names.size / 4.0).ceil).with_index(1) do |files, batch_number|
#   processed_any = false

#   files.each do |file_name|
#     pdf_path = "./tmp/#{file_name}"
#     output_dir = "./books/visual-books/digit_mag/#{File.basename(file_name, '.pdf')}"

#     # Skip if PDF does not exist
#     unless File.exist?(pdf_path)
#       puts "Skipping missing file: #{pdf_path}"
#       next
#     end

#     # Skip if already processed
#     if Dir.exist?(output_dir) && !Dir.empty?(output_dir)
#       puts "Already processed: #{file_name}"

#       # Delete the original PDF to free disk space
#       File.delete(pdf_path)
#       puts "Deleted completed PDF: #{pdf_path}"

#       next
#     end

#     puts "Processing: #{file_name}"

#     begin
#       split_pdf(
#         pdf_path= pdf_path,
#         output_dir= output_dir
#       )

#       # Delete PDF only after successful processing
#       if Dir.exist?(output_dir) && !Dir.empty?(output_dir)
#         File.delete(pdf_path)
#         puts "Successfully processed and deleted: #{pdf_path}"
#       end

#       processed_any = true

#     rescue StandardError => e
#       puts "Error processing #{file_name}: #{e.message}"
#       puts "Skipping and continuing..."
#       next
#     end
#   end

#   unless processed_any
#     puts "Batch #{batch_number}: Nothing new to commit. Skipping."
#     next
#   end

#   puts "Adding batch #{batch_number} to Git..."

#   system("git add books/visual-books/digit_mag")

#   # Commit only when there are staged changes
#   if system("git diff --cached --quiet")
#     puts "No changes to commit for batch #{batch_number}. Skipping push."
#     next
#   end

#   system(
#     "git commit -m 'Add Digit magazine batch #{batch_number} of 20'"
#   )

#   puts "Pushing batch #{batch_number} to remote origin..."

#   system("git push origin main")

#   puts "Batch #{batch_number} completed and pushed successfully!"
# end









# categories = Dir.children("./tmp").select do |entry|
#   File.directory?(File.join("./tmp", entry))
# end

# categories.each do |category|

#   category_dir = File.join("./tmp", category)

#   file_names = Dir.children(category_dir).select do |file_name|
#     file_name.downcase.end_with?(".pdf")
#   end
  
#   if file_names.empty?
#     puts "\n======================================"
#     puts "Processing category: #{category}"
#     puts "No PDFs found. Skipping category."
#     puts "======================================"

#     next
#   end


#   puts "\n======================================"
#   puts "Processing category: #{category}"
#   puts "Total PDFs: #{file_names.size}"
#   puts "======================================"

#   file_names
#     .each_slice((file_names.size / 4.0).ceil)
#     .with_index(1) do |files, batch_number|

#     processed_any = false

#     files.each do |file_name|

#       # PDF location inside category directory
#       pdf_path = File.join(category_dir, file_name)

#       # Remove .pdf extension for directory name
#       file_name_directory = File.basename(file_name, ".pdf")

#       # Final output directory
#       output_dir = File.join(
#         "./books/visual-books",
#         category,
#         file_name_directory
#       )

#       # Skip if PDF does not exist
#       unless File.exist?(pdf_path)
#         puts "Skipping missing file: #{pdf_path}"
#         next
#       end

#       # Skip if already processed
#       if Dir.exist?(output_dir) && !Dir.empty?(output_dir)

#         puts "Already processed: #{file_name}"

#         # Delete original PDF to free disk space
#         File.delete(pdf_path)

#         puts "Deleted completed PDF: #{pdf_path}"

#         next
#       end

#       puts "Processing: #{file_name}"

#       begin

#         split_pdf(
#           pdf_path= pdf_path,
#           output_dir= output_dir
#         )

#         # Delete PDF only after successful processing
#         if Dir.exist?(output_dir) && !Dir.empty?(output_dir)

#           File.delete(pdf_path)

#           puts "Successfully processed and deleted: #{pdf_path}"

#           processed_any = true
#         end

#       rescue StandardError => e

#         puts "Error processing #{file_name}: #{e.message}"
#         puts "Skipping and continuing..."

#         next
#       end
#     end

#     # Skip Git commit if nothing was processed
#     unless processed_any

#       puts "Batch #{batch_number}: Nothing new to commit. Skipping."

#       next
#     end

#     puts "Adding #{category} batch #{batch_number} to Git..."

#     system("git add books/visual-books/#{category}")

#     # Commit only when there are staged changes
#     if system("git diff --cached --quiet")

#       puts "No changes to commit for #{category} batch #{batch_number}. Skipping push."

#       next
#     end

#     system(
#       "git commit -m 'Add #{category} batch #{batch_number} of #{files.size}'"
#     )

#     puts "Pushing #{category} batch #{batch_number} to remote origin..."

#     system("git push origin main")

#     puts "#{category} batch #{batch_number} completed and pushed successfully!"
#   end
# end





# file_names = [
#   "Composers_DK.pdf",
#   "Dinosaurs_-_A_Visual_Encyclopedia_-_DK_-_2011.pdf",
#   "DK_CAREERS_-_THE_GRAPHIC_GUIDE_TO_FIND_THE_PERFECT_JOB_FOR_YOU_-_1ST_ED__2015_Allison_Singer.pdf",
#   "DK_Findout_33_Coding_-_James_Floyd_Kelly.pdf",
#   "DKfindout_Dinosaurs_-_DK.pdf",
#   "DKfindout_Energy_-_DK.pdf",
#   "DKfindout_Stone_Age_-_Klint_Janulis.pdf",
#   "dk-tank-the-definitive-visual-history-of-armored-v.pdf",
#   "DK_-_Under_Your_Feet.pdf",
#   "Energizing_Workout_-_DK.pdf",
#   "Europe_by_Train_-_DK_Eyewitness.pdf",
#   "Fashion_The_Definitive_Visual_Guide_Caryn_Franklin.pdf",
#   "Find_My_Favorite_Animals_-_DK.pdf",
#   "Firearms_-_An_Illustrated_History_DK_Smithsonian_-_2014.pdf",
#   "How_People_Live_-_DK_Publishing.pdf",
#   "murray_stuart_mars_dk_eyewitness_books.pdf",
#   "My_Encyclopedia_of_Very_Important_Dinosaurs_For_Little_Dinosaur_Lovers_Who_Want_to_Know_Everything_by_DK_Englishare.pdf",
#   "Quilt_Step_by_Step_-_DK.pdf",
#   "The_Civil_War_-_DK.pdf",
#   "The_Mandalorian_Handbook_-_DK_Matt_Jones.pdf",
#   "The_Marvel_Encyclopedia.pdf",
#   "The_Movie_Book_Big_Ideas_Simply_Explained_by_Danny_Leigh_Louis_Baxter_John_Farndon.pdf",
#   "The_Vietnam_War_2025_Edition_-_DK.pdf",
#   "think_of_a_number_-_ball_j.pdf",
#   "Whales_and_Dolphins_-_DK_Eye_Wonder.pdf"
# ]




# file_names.each_slice((file_names.size / 6.0).ceil).with_index(1) do |files, batch_number|
#   files.each do |file_name|
#     split_pdf(
#       pdf_path= "./tmp/#{file_name}",
#       output_dir= "./books/visual-books/#{File.basename(file_name, '.pdf')}"
#     )
#   end

#   puts "Adding batch #{batch_number} to Git..."
#   system("git add books/visual-books/")
  
#   system(
#     "git commit -m 'Add OSFY magazine batch #{batch_number} of 20'"
#   )
  
#   puts "Pushing batch #{batch_number} to remote origin..."
#   system("git push origin main")

#   puts "Batch #{batch_number} completed and pushed successfully!"

# end


# file_names = [
#   'Money_smart_in_your_20s_and_30s_-_Zebra_learn.pdf',
#   'Stock_Investing_Mastermind_-_ZebraLearn.pdf',
#   'Trading_mastermind_-_Zebra_learn.pdf',
#   '51_Trading_Strategies_-_Optimise_Your_Trades_with_51_-_Aseem_Singhal.pdf',
#   'Futures_and_options_blueprint_-_Zebra_learn.pdf'
# ]

# file_names = [
#   'The_Industry_Handbook_-_ZebraLearn.pdf',
#   'Financial_Statement_Analysis_-_Zebra_Learn.pdf',
#   'Fundraising_Decoded_-_ZebraLearn.pdf',

#   'Basics_of_Equity_Research.pdf',
#   'Screener.pdf',
#   'Options_Trading_Essentials.pdf'
# ]


# file_names = [
#   "10001_ways_to_live_large_on_a_small_budget_-_By_the_writers_of_wise_bread.pdf",
#   "100_Baggers_-_Christopher_Meyers.pdf",
#   "31_Days_to_Radically_Reduce_Your_Expenses_-_Kalyn_Brooke.pdf",
#   "A_Financial_Survival_Guide_for_Young_Adults_on_Their_Own_-_Dara_Duguay.pdf",
#   "A_Fool_and_His_Money_-_John_Rothchild.pdf",
#   "All_About_Asset_Allocation_-_Richard_A_Ferri.pdf",
#   "Are_You_a_Stock_or_a_Bond_-_Moshe_A_Milevsky.pdf",
#   "A_Short_History_of_Financial_Euphoria_-_John_Kenneth_Galbraith.pdf",
#   "Asset_Management_A_Systematic_Approach_to_Factor_Investing_-_Andrew_Ang.pdf",
#   "At_the_Crest_of_the_Tidal_Wave_A_Forecast_for_the_Great_Bear_Market_-_Robert_Prechter.pdf",
#   "A_Zebra_in_lion_country_-_Ralph_wanger.pdf",
#   "Bad_With_Money_-_Gaby_Dunn.pdf",
#   "Barefoot_Investor_for_Families_-_Scott_Pape.pdf",
#   "Behavioral_Finance_and_Wealth_Management_-_Michael_M_Pompian.pdf",
#   "Book_of_investing_wisdom_-_Peter_Krass.pdf",
#   "Budgets_Dont_Work_But_This_Does_-_Melissa_Browne.pdf",
#   "Buy_Low_Rent_High_-_Samuel_Leeds.pdf",
#   "Buy_What_You_Love_Without_Going_Broke_-_Jen_Smith.pdf",
#   "Cashing_In_On_The_American_Dream_-_Paul_Terhorst.pdf",
#   "Choose_FI_Your_Blueprint_to_Financial_Independence_-_Chris_Mamula.pdf",
#   "Cold_Hard_Truth_on_Family_Kids_and_Money_-_Kevin_OLeary.pdf",
#   "Cold_Hard_Truth_On_Men_Women_and_Money_50_Common_Money_Mistakes_and_How_to_Fix_Them_-_Kevin_OLeary.pdf",
#   "Common_Stocks_and_Uncommon_Profits_and_Other_Writings_-_Philip_Arthur_Fisher.pdf",
#   "Complete_financial_guide_for_young_couples_-_Larry_Burkett.pdf",
#   "Coupon_Crazy_-_Mary_Potter_Kenyon.pdf",
#   "Cryptoassets_-_Chris_Burniske.pdf",
#   "Debt_Cures_They_dont_want_you_to_know_-_Kevin_Trudeau.pdf",
#   "Debt_free_living_-_Larry_Burkett.pdf",
#   "Deep_Value_Investing_Spanish_Edition_-_Tobia_E_Carlisle.pdf",
#   "Deep_Value_Investing_-_Tobia_E_Carlisle.pdf",
#   "DeFi_and_the_Future_of_Finance_-_Campbell_R_Harvey.pdf",
#   "DIY_Financial_Advisor_-_Wesley_R_Gray.pdf",
#   "Dual_Momentum_Investing_-_Gary_Antonacci.pdf",
#   "Encyclopedia_of_Chart_Patterns_3rd_Edition_-_Thomas_Bulkowski.pdf",
#   "Enough_-_John_C_Bogle.pdf",
#   "EVERYDAY_MILLIONAIRES_-_CHRIS_HOGAN.pdf",
#   "Everything_Personal_Finance_In_Your_20S_And_30S_-_Debby_Fowles.pdf",
#   "Family_Fortunes_-_Bill_Bonner.pdf",
#   "First-time_Home_Buyer_-_Scott_Trench.pdf",
#   "Five_Steps_to_Financial_Wellbeing_-_Clare_Seal.pdf",
#   "Following_the_Trend_Diversified_Managed_Futures_Trading_-_Andreas_Clenow.pdf",
#   "Friends_That_Invest_Your_Guide_to_Financial_Independence_Through_Shares_and_Stocks_-_Simran_Kaur.pdf",
#   "From_the_Rat_Race_to_Financial_Freedom_-_Manoj_Arora.pdf",
#   "Gamechanger_-_Pranav_Surya.pdf",
#   "Get_a_Financial_Life_Personal_Finance_in_Your_Twenties_and_Thirties_-_Beth_Kobliner.pdf",
#   "Global_Asset_Allocation_-_Meb_Faber.pdf",
#   "Grow_Rich_With_Peace_of_Mind_-_Napoleon_Hill.pdf",
#   "Grow_your_money_-_Bola_Sokunbi.pdf",
#   "Heads_Up_Money_-_DK.pdf",
#   "Hedge_fun_markets_wizards_-_Jack_Dschwager.pdf",
#   "How_Money_Works_The_Facts_Visually_Explained_-_Beverly_Blair_Harzog.pdf",
#   "How_Much_Can_I_Spend_in_Retirement_A_Guide_to_Investment-Based_Retirement_Income_Strategies_-_Wade_D_Pfau.pdf",
#   "How_Not_to_Invest_-_Barry_Ritholtz.pdf",
#   "How_to_Adult_-_Jake_Cousineau.pdf",
#   "How_to_be_rich_-_J_Paul_Getty.pdf",
#   "How_to_Buy_a_Home_-_Power_Emily.pdf",
#   "How_to_Make_Money_in_Stocks_-_William_J_ONeil.pdf",
#   "How_To_Make_One_Hell_Of_A_Profit_And_Still_Get_To_Heaven_-_John_F_Demartini.pdf",
#   "How_To_Make_Your_First_Million_-_Warren_ingram.pdf",
#   "How_to_manage_your_money_An_indept_bible_study_on_personal_finances_-_Larry_Burkett.pdf",
#   "How_to_raise_your_salary_-_Napoleon_Hill (1).pdf",
#   "How_to_raise_your_salary_-_Napoleon_Hill.pdf",
#   "How_to_Retire_Happy_Wild_and_Free_-_Ernie_Zelinski.pdf",
#   "How_to_speak_money_-_John_Lanchester.pdf",
#   "How_to_Survive_Without_a_Salary_Learning_How_to_Live_the_Conserver_Lifestyle_-_Charles_Long.pdf",
#   "How_to_travel_the_world_on_50_a_day_-_Matt_Kepnes.pdf",
#   "If_You_Can_How_Millennials_Can_Get_Rich_Slowly_-_William_J_Bernstein.pdf",
#   "Index_Investing_For_Dummies_-_Russell_Wild.pdf",
#   "Inheritocracy_-_Eliza_Filby.pdf",
#   "Insurance_for_Dummies_-_Jack_Hungelmann.pdf",
#   "Invested_-_Danielle_Town.pdf",
#   "Investing_for_Kids_-_Dylin_Redling.pdf",
#   "investing_in_duplexestriplexesand_quads_-_Larry_BLoftis.pdf",
#   "investing_in_real_state_-_Gary_Eldred.pdf",
#   "investment_banking_for_dummies_-_matt_krantz.pdf",
#   "Investment_Philosophies_-_Aswath_Damodaran.pdf",
#   "Invest_Your_Way_to_Financial_Freedom_-_Ben_Carlson.pdf",
#   "It_not_about_the_money_-_Brent_Kessel.pdf",
#   "I_Will_Teach_You_to_Be_Rich_The_Journal_No_Complicated_Math_No_More_Procrastinating_Design_Your_Rich_Life_Today_-_Ramit_Sethi.pdf",
#   "Japanese_Candlestick_Charting_Techniques_-_Steve_Nison.pdf",
#   "Jesus_and_Money_A_Guide_for_Times_of_Financial_Crisis_-_Ben_Witherington_III.pdf",
#   "Lighten_Up_Love_What_You_Have_Have_What_You_Need_Be_Happier_with_Less_-_Peter_Walsh.pdf",
#   "Live_on_less_invest_the_rest_-_Andrew_Craig.pdf",
#   "Living_On_Almost_Nothing_-_Amber_Storck.pdf",
#   "Made_whole_-_Tiffany_aliche.pdf",
#   "Making_money_simple_-_Peter_Lazaroff.pdf",
#   "Manage_Your_money_like_a_fuckin_grown_up_-_Sam_Beckbessinger.pdf",
#   "Millennial_money_-_Patrick_Oshaughnessy.pdf",
#   "Millionaire_Milestones_-_Sam_Dogen.pdf",
#   "Mind_Over_Money_Overcoming_the_Money_Disorders_That_Threaten_Our_Financial_Health_-_Brad_Klontz.pdf",
#   "Miracle_Morning_Millionaires_-_Hal_Elrod.pdf",
#   "Money_and_marriage_-_Matt_bell.pdf",
#   "Money_for_tomorrow_-_Whitney_Elkins-Hutten.pdf",
#   "Money_Hacks_-_Lisa_Rowan.pdf",
#   "Money_Honey_-_Rachel_Richards.pdf",
#   "Money_Masters_of_our_time_-_John_Train.pdf",
#   "Money_School_-_Lacey_Filipich.pdf",
#   "Money_Wise_-_Deepak_Shenoy.pdf",
#   "Multiple_streams_of_internet_income_-_Robert_G_Allen.pdf",
#   "Nice_Girls_Dont_Get_Rich_75_Avoidable_Mistakes_Women_Make_with_Money_-_Lois_P_Frankel.pdf",
#   "Only_the_Best_Will_Do_-_Peter_Seilern.pdf",
#   "Own_Your_Time_-_Andy_Hill.pdf",
#   "Personal_Finance_8th_Edition_2021_-_Jack_R_Kapoor.pdf",
#   "Personal_Finance_in_Your_20s_n_30s_For_Dummies_-_Eric_Tyson.pdf",
#   "Personal_Finance_Simplified_-_Tycho_Press.pdf",
#   "Pit_Bull_-_marty_schwartz.pdf",
#   "Prince_Charming_isnt_Coming_-_Barbara_Stanny.pdf",
#   "Protecting_Your_1_Asset_Creating_Fortunes_from_Your_Ideas_An_Intellectual_Property_Handbook_-_Michael_A_Lechter.pdf",
#   "Psychology_of_Financial_Planning_The_Practitioners_Guide_to_Money_and_Behavior_-_Brad_Klontz.pdf",
#   "Psych_Yourself_Rich_-_Farnoosh_Torabi.pdf",
#   "Quantitative_value_-_Wesley_gray.pdf",
#   "Rational_Expectations_-_William_Bernstein.pdf",
#   "Real_Estate_Investing_for_Dummies_-_Eric_Tyson_and_Robert_S_Griswold.pdf",
#   "Real_Estate_riches_-_Dr_Dolf_de_roos.pdf",
#   "Retire_Inspired_-_Chris_Hogan.pdf",
#   "Retirement_Bites_A_Gen_X_Guide_to_Securing_Your_Financial_Future_-_Kerry_Hannon.pdf",
#   "Rich_bitch_-_Nicole_Lapin.pdf",
#   "Rich_by_Retirement_-_Joshua_Giersch.pdf",
#   "Rich_Dad_Poor_Dad_-_ROBERT_T_KIOYSAKI.pdf",
#   "Rich_Dads_Advisors_-_Michael_Maloney.pdf",
#   "Rich_Dads_Escape_from_the_rat_race_-_Robert_T_Kiyosaki.pdf",
#   "Rich_Dads_Rich_Kid_Smart_Kid_-_Robert_Kiyosaki.pdf",
#   "Rich_Enough_A_Laid-back_Guide_for_Every_Kiwi_-_Mary_Holm.pdf",
#   "Richest_man_in_Babylon_-_George_Samuel_Clason.pdf",
#   "Richest_man_of_babylon_-_George_Samuel_clason.pdf",
#   "Rich_Girl_Nation_-_Katie_Gatti_Tassin.pdf",
#   "Rich_Habits_Rich_Habits_The_Daily_Success_Habits_of_Wealthy_Individuals_-_Thomas_C_Corley.pdf",
#   "Romancing_the_Balance_Sheet_For_Anyone_Who_Owns_Runs_Or_Manages_a_Business_-_Anil_Lamba.pdf",
#   "safe_strategies_for_financial_freedom_-_D_R_Barton.pdf",
#   "Safety-First_Retirement_Planning_An_Integrated_Approach_for_a_Worry-Free_Retirement_3_The_Retirement_Researcher_Guide_Series_-_Wade_Pfau.pdf",
#   "Secrets_of_a_Pivot_Boss_-_Frank_Ochoa.pdf",
#   "Secrets_of_six_figures_women_-_Barbara_stanny.pdf",
#   "Security_Analysis_by_Benjamin_Graham_and_David_Dodd_-_Benjamin_Graham_and_David_Dodd.pdf",
#   "Short-Term_Rental_Long-Term_Wealth_-_Avery_Carl.pdf",
#   "Simple_Wealth_Inevitable_Wealth_-_Nick_Murray.pdf",
#   "Smart_women_finish_rich_-_David_Bach.pdf",
#   "Smart_Women_Love_Money_-_Alice_Finn.pdf",
#   "Smashed_Avocado_-_Nicole_Haddow.pdf",
#   "Speedwealth_-_T_Harv_Eker.pdf",
#   "Spenditude_-_Gordon_Paul.pdf",
#   "Spend_Well_Live_Rich_previously_published_as_7_Money_Mantras_for_a_Richer_Life_How_to_Get_What_You_Want_with_the_Money_You_Have_-_Michelle_Singletary.pdf",
#   "Stock_Market_101_2nd_Edition_-_Michele_Cagan.pdf",
#   "Stocks_for_the_Long_Run_5E_-_Siegel_Jeremy_J.pdf",
#   "Stop_Acting_Rich_And_Start_Living_Like_A_Real_Millionaire_-_Thomas_J_Stanley.pdf",
#   "Stop_Over-Thinking_Your_Money_-_Preet_Banerjee.pdf",
#   "Tax_Free_Retirement_-_Patrick_Kelly.pdf",
#   "Tax_Planning_to_and_Through_Early_Retirement_-_Garrett_Cody.pdf",
#   "Technical_Analysis_of_the_Futures_Markets_-_John_J_Murphy.pdf",
#   "Technical_Manual_and_Dictionary_of_Classical_Ballet_-_Gail_Grant.pdf",
#   "The_16_Percent_Solution_by_-_Joel_Moskowitz.pdf",
#   "The_21_day_financial_fast_-_Michelle_Singletary.pdf",
#   "The_Abundance_Code_-_Julie_Ann_Cairns.pdf",
#   "The_Art_of_Spending_Money_-_Morgan_Housel.pdf",
#   "The_Automatic_Millionaire_Expanded_and_Updated_A_Powerful_One-Step_Plan_to_Live_and_Finish_Rich_-_David_Bach.pdf",
#   "The_baby_steps_millionaire_-_Dave_Ramsey.pdf",
#   "The_Behavioral_Investor_-_Daniel_Crosby.pdf",
#   "The_Bogle_Effect_-_Eric_Balchunas.pdf",
#   "The_Bond_Book_Third_Edition_-_Annette_Thau.pdf",
#   "The_Book_on_Managing_Rental_Properties_-_Heather.pdf",
#   "The_cashflow_quadrant_-_Robert_kiyosaki.pdf",
#   "The_Complete_Guide_to_Property_Investment_-_Rob_Dix.pdf",
#   "The_Devils_Financial_Dictionary_-_Jason_Zweig.pdf",
#   "The_Dicipline_Trader_-_Mark_Douglas.pdf",
#   "The_Endowment_-_Kristen_Trotter.pdf",
#   "the_great_depression_a_diary_-_benjamin_roth.pdf",
#   "The_Hidden_Wealth_of_Nations_-_Gabriel_Zucman.pdf",
#   "The_intelligent_investor_-_Benjamin_Graham.pdf",
#   "The_Internet_of_Money_Vol_2_-_Andreas_M_Antonopoulos.pdf",
#   "the_last_chance_millionaire_-_douglas_r_andrew.pdf",
#   "The_laws_of_money_-_Suze_Orman.pdf",
#   "The_long_and_short_of_it_-_John_kay.pdf",
#   "The_Manual_of_Ideas_-_John_Mihaljevic.pdf",
#   "The_Millionaire_in_You_-_Ten_Things_You_need_to_do_NOW_to_have_Money_and_the_TIME_TO_ENJOY_IT_-_Michael_LeBoeuf.pdf",
#   "The_millionaire_maker_-_Loral_langemeier.pdf",
#   "The_Millionaire_Makers_Guide_to_Creating_a_Cash_Machine_for_Life_-_Loral_Langemeier.pdf",
#   "The_millionare_fastlane_-_MJ_Demarco.pdf",
#   "The_Money_Class_-_Suze_Orman.pdf",
#   "The_Money_Game_-_Adam_Smith.pdf",
#   "the_money_masters_-_john_train.pdf",
#   "The_Motley_Fool_Million_Dollar_Portfolio_-_Tom_Gardner.pdf",
#   "The_Motley_Fools_Rule_Breakers_Rule_Makers_-_David_Gardner.pdf",
#   "The_Neatest_Little_Guide_to_Stock_Market_Investing_-_Jason_Kelly.pdf",
#   "The_new_rules_of_retirement_-_Robert_C_Carlson.pdf",
#   "The_Overtaxed_Investor_-_Phil_Demuth.pdf",
#   "The_psychology_of_money_-_Morgan_Housel.pdf",
#   "The_Quest_for_Alpha_The_Holy_Grail_of_Investing_-_Larry_E_Swedroe.pdf",
#   "The_richest_man_of_Babylon_-_George_clason.pdf",
#   "The_side_hustle_guide_-_Bola_Sokunbi.pdf",
#   "The_Simple_Path_to_Wealth_Revised_n_Expanded_-_JL_Collins.pdf",
#   "The_Single_Best_Investment_-_Lowell_Miller.pdf",
#   "The_Six-Figure_Second_Income_-_David_Lindahl.pdf",
#   "The_smart_money_woman_-_Arese_ugwu.pdf",
#   "The_Think_and_Grow_Rich_Success_Journal_-_Napoleon_Hill.pdf",
#   "The_Wall_Street_Journal_Guide_to_Understanding_Money_and_Investing_-_Kenneth_M_Morris.pdf",
#   "The_wealth_choice_-_Dennis_Kimbro.pdf",
#   "The_Wealth_Ladder_-_Nick_Maggiulli.pdf",
#   "The_wealthy_renter_-_Alex_Avery.pdf",
#   "The_Web_of_Debt_5th_edition_The_Shocking_Truth_About_Our_Money_System_and_How_We_Can_Break_Free_-_Ellen_brown.pdf",
#   "The_worlds_simplest_stock_picking_strategy_-_Edward_ryan.pdf",
#   "To_Buy_or_Not_to_Buy_Why_We_Overshop_and_How_to_Stop_-_April_Lane_Benson.pdf",
#   "Trading_Basics_Evolution_of_a_Trader_-_Thomas_N_Bulkowski.pdf",
#   "Trillions_How_a_Band_of_Wall_Street_Renegades_Invented_the_Index_Fund_-_Robin_Wigglesworth.pdf",
#   "Triumph_of_the_Optimists_101_Years_of_Global_Investment_Returns_-_Elroy_Dimson.pdf",
#   "Using_your_money_wisely_Biblical_principles_under_scrutiny_-_Larry_Burkett.pdf",
#   "Victory_lap_retirement_-_Mike_Drak.pdf",
#   "Warren_Buffett_Accounting_Book_-_Stig_Brodersen.pdf",
#   "Wealth_secrets_of_the_1_-_Sam_Wilkin.pdf",
#   "Well_Endowed_-_Vivian_Tu.pdf",
#   "What_Every_Real_Estate_Investor_Needs_to_Know_About_Cash_flow_-_Frank_Gallinelli.pdf",
#   "What_rich_people_know_and_desperately_want_to_keep_it_secret_-_Brain_sher.pdf",
#   "What_works_on_wall_street_-_4th_edition_-_James_P_OShaughnessy.pdf",
#   "What_Your_CPA_Isnt_Telling_You_-_Mark_J_Kohler.pdf",
#   "Where_the_money_is_-_Adam_Seessel.pdf",
#   "Why_Does_the_Stock_Market_Go_Up_-_Brian_Feroldi.pdf",
#   "Your_Complete_Guide_to_Factor-Based_Investing_-_Andrew_L_Berkin.pdf",
#   "Youre_So_Money_-_Farnoosh_Torabi.pdf",
#   "Your_money_life_your_20s_-_Peter_Dunn.pdf",
#   "Your_Money_The_Missing_Manual_-_JD_Roth.pdf",
#   "Your_Money_Your_Brain_How_The_New_Science_Of_Neuroeconomics_Can_Help_Make_You_Rich_by_Jason_Zweig_-_Jason_zweing.pdf",
#   "Your_retirement_salary_-_Richard_Dyson.pdf",
#   "You_Werent_Supposed_To_See_That_-_Joshua_Brown.pdf"
# ]

# file_names = [
#   'The_Money_Guide.pdf',
#   'Generative AI 360 degree.pdf',
#   'The_Consulting_Way.pdf',
#   'Startupology.pdf',
#   'Employee Management.pdf'
# ]

# file_names = [
#   'Bulls_Bears_and_Other_Beasts_-_Santosh_Nair.pdf',
#   'Coffee_Can_Investing_The_Low_Risk_Road_to_Stupendous_Wealth_-_Saurabh_Mukherjea.pdf',
#   'Fooled_by_Randomness_The_Hidden_Role_of_Chance_in_Life_and_in_the_Markets_-_Nassim_Nicholas_Taleb.pdf',
#   'Fundamental_Analysis_for_Investors_-_Raghu_Palat.pdf',
#   'Indian_Stock_Market_Basic_-_Deepak_Shinde.pdf',
#   'I_Will_Teach_You_to_Be_Rich_The_Journal_No_Complicated_Math_No_More_Procrastinating_Design_Your_Rich_Life_Today_-_Ramit_Sethi.pdf',
#   'Lets_Talk_Money_-_Monika_Halan.pdf',
#   'Mastering_Fundamental_Analysis_-_Lalit_Mohanty.pdf',
#   'One_Up_on_Wall_Street__How_to_Use_What_You_-_Peter_Lynch.pdf',
#   'practical_python_for_effective_algorithmic_trading_-_Kuldeep_Singh_Rathore.pdf',
#   'Rich_Dad_Poor_Dad_-_Robert_T_Kiyosaki.pdf',
#   'Secrets_of_the_Millionaire_Mind_-_Harv_Eker.pdf',
#   'Security_Analysis_7th_Edition_-_Benjamin_Graham.pdf',
#   'Stocks_To_Riches_-_Parag_Parikh.pdf',
#   'The_Black_Swan__The_Impact_of_the_Highly_I_-_Nassim_Nicholas_Taleb.pdf',
#   'The_Dhandho_Investor__The_Low-Risk_Value_M_-_Mohnish_Pabrai.pdf',
#   'The_intelligent_investor_-_Benjamin_Graham.pdf',
#   'The_Millionaire_Next_Door__The_Surprising_-_Thomas_Stanley.pdf',
#   'The_millionare_fastlane_-_MJ_Demarco.pdf',
#   'The_psychological_of_money_Indonesian_Edition_-_Morgan_housel.pdf',
#   'The_richest_man_of_Babylon_-_George_clason.pdf',
#   'The_Science_of_Algorithmic_Trading_and_Portfolio_Management_-_Robert_Kissell.pdf',
#   'The_Subtle_Art_of_Intraday_Trading_-_Indrazith_Shantharaj.pdf',
#   'The_Warren_Buffett_Way_-_Robert_G_Hagstrom.pdf',
#   'THINK_AND_GROW_RICH_-_NEPOLEON_HILL.pdf',
#   'The_psychology_of_money_-_Morgan_housel.pdf'
# ]


# file_names = [
#   "10001_ways_to_live_large_on_a_small_budget_-_By_the_writers_of_wise_bread.pdf",
#   "100_Baggers_-_Christopher_Meyers.pdf",
#   "31_Days_to_Radically_Reduce_Your_Expenses_-_Kalyn_Brooke.pdf",
#   "A_Financial_Survival_Guide_for_Young_Adults_on_Their_Own_-_Dara_Duguay.pdf",
#   "A_Fool_and_His_Money_-_John_Rothchild.pdf",
#   "All_About_Asset_Allocation_-_Richard_A_Ferri.pdf",
#   "Are_You_a_Stock_or_a_Bond_-_Moshe_A_Milevsky.pdf",
#   "A_Short_History_of_Financial_Euphoria_-_John_Kenneth_Galbraith.pdf",
#   "Asset_Management_A_Systematic_Approach_to_Factor_Investing_-_Andrew_Ang.pdf",
#   "At_the_Crest_of_the_Tidal_Wave_A_Forecast_for_the_Great_Bear_Market_-_Robert_Prechter.pdf",
#   "A_Zebra_in_lion_country_-_Ralph_wanger.pdf",
#   "Bad_With_Money_-_Gaby_Dunn.pdf",
#   "Barefoot_Investor_for_Families_-_Scott_Pape.pdf",
#   "Behavioral_Finance_and_Wealth_Management_-_Michael_M_Pompian.pdf",
#   "Book_of_investing_wisdom_-_Peter_Krass.pdf",
#   "Budgets_Dont_Work_But_This_Does_-_Melissa_Browne.pdf",
#   "Buy_Low_Rent_High_-_Samuel_Leeds.pdf",
#   "Buy_What_You_Love_Without_Going_Broke_-_Jen_Smith.pdf",
#   "Cashing_In_On_The_American_Dream_-_Paul_Terhorst.pdf",
#   "Choose_FI_Your_Blueprint_to_Financial_Independence_-_Chris_Mamula.pdf",
#   "Cold_Hard_Truth_on_Family_Kids_and_Money_-_Kevin_OLeary.pdf",
#   "Cold_Hard_Truth_On_Men_Women_and_Money_50_Common_Money_Mistakes_and_How_to_Fix_Them_-_Kevin_OLeary.pdf",
#   "Common_Stocks_and_Uncommon_Profits_and_Other_Writings_-_Philip_Arthur_Fisher.pdf",
#   "Complete_financial_guide_for_young_couples_-_Larry_Burkett.pdf",
#   "Coupon_Crazy_-_Mary_Potter_Kenyon.pdf",
#   "Cryptoassets_-_Chris_Burniske.pdf",
#   "Debt_Cures_They_dont_want_you_to_know_-_Kevin_Trudeau.pdf",
#   "Debt_free_living_-_Larry_Burkett.pdf",
#   "Deep_Value_Investing_Spanish_Edition_-_Tobia_E_Carlisle.pdf",
#   "Deep_Value_Investing_-_Tobia_E_Carlisle.pdf",
#   "DeFi_and_the_Future_of_Finance_-_Campbell_R_Harvey.pdf",
#   "DIY_Financial_Advisor_-_Wesley_R_Gray.pdf",
#   "Dual_Momentum_Investing_-_Gary_Antonacci.pdf",
#   "Encyclopedia_of_Chart_Patterns_3rd_Edition_-_Thomas_Bulkowski.pdf",
#   "Enough_-_John_C_Bogle.pdf",
#   "EVERYDAY_MILLIONAIRES_-_CHRIS_HOGAN.pdf",
#   "Everything_Personal_Finance_In_Your_20S_And_30S_-_Debby_Fowles.pdf",
#   "Family_Fortunes_-_Bill_Bonner.pdf",
#   "First-time_Home_Buyer_-_Scott_Trench.pdf",
#   "Five_Steps_to_Financial_Wellbeing_-_Clare_Seal.pdf",
#   "Following_the_Trend_Diversified_Managed_Futures_Trading_-_Andreas_Clenow.pdf",
#   "Friends_That_Invest_Your_Guide_to_Financial_Independence_Through_Shares_and_Stocks_-_Simran_Kaur.pdf",
#   "From_the_Rat_Race_to_Financial_Freedom_-_Manoj_Arora.pdf",
#   "Gamechanger_-_Pranav_Surya.pdf",
#   "Get_a_Financial_Life_Personal_Finance_in_Your_Twenties_and_Thirties_-_Beth_Kobliner.pdf",
#   "Global_Asset_Allocation_-_Meb_Faber.pdf",
#   "Grow_Rich_With_Peace_of_Mind_-_Napoleon_Hill.pdf",
#   "Grow_your_money_-_Bola_Sokunbi.pdf",
#   "Heads_Up_Money_-_DK.pdf",
#   "Hedge_fun_markets_wizards_-_Jack_Dschwager.pdf",
#   "How_Money_Works_The_Facts_Visually_Explained_-_Beverly_Blair_Harzog.pdf",
#   "How_Much_Can_I_Spend_in_Retirement_A_Guide_to_Investment-Based_Retirement_Income_Strategies_-_Wade_D_Pfau.pdf",
#   "How_Not_to_Invest_-_Barry_Ritholtz.pdf",
#   "How_to_Adult_-_Jake_Cousineau.pdf",
#   "How_to_be_rich_-_J_Paul_Getty.pdf",
#   "How_to_Buy_a_Home_-_Power_Emily.pdf"
# ]

# file_names = [
#   # 2009
#   "EFY_jan_2009.pdf",
#   "EFY_feb_2009.pdf",
#   "EFY_march_2009.pdf",
#   "EFY_april_2009.pdf",
#   "EFY_may_2009.pdf",
#   "EFY_june_2009.pdf",
#   "EFY_july_2009.pdf",
#   "EFY_aug_2009.pdf",
#   "EFY_sep_2009.pdf",
#   "EFY_oct_2009.pdf",
#   "EFY_nov_2009.pdf",
#   "EFY_dec_2009.pdf",

#   # 2010
#   "EFY_jan_2010.pdf",
#   "EFY_feb_2010.pdf",
#   "EFY_march_2010.pdf",
#   "EFY_april_2010.pdf",
#   "EFY_may_2010.pdf",
#   "EFY_june_2010.pdf",
#   "EFY_july_2010.pdf",
#   "EFY_aug_2010.pdf",
#   "EFY_sept_2010.pdf",
#   "EFY_oct_2010.pdf",
#   "EFY_nov_2010.pdf",
#   "EFY_dec_2010.pdf",

#   # 2011
#   "EFY_jan_2011.pdf",
#   "EFY_feb_2011.pdf",
#   "EFY_mar_2011.pdf",
#   "EFY_april_2011.pdf",
#   "EFY_may_2011.pdf",
#   "EFY_june_2011.pdf",
#   "EFY_july_2011.pdf",
#   "EFY_august_2011.pdf",
#   "EFY_sep_2011.pdf",
#   "EFY_oct_2011.pdf",
#   "EFY_nov_2011.pdf",
#   "EFY_dec_2011.pdf",

#   # 2012
#   "EFY_jan_2012.pdf",
#   "EFY_feb_2012.pdf",
#   "EFY_march_2012.pdf",
#   "EFY_april_2012.pdf",
#   "EFY_may_2012.pdf",
#   "EFY_june_2012.pdf",
#   "EFY_july_2012.pdf",
#   "EFY_aug_2012.pdf",
#   "EFY_dec_2012.pdf",

#   # 2013
#   "EFY_jan_2013.pdf",
#   "EFY_feb_2013.pdf",
#   "EFY_march_2013.pdf",
#   "EFY_april_2013.pdf",
#   "EFY_may_2013.pdf",
#   "EFY_june_2013.pdf",
#   "EFY_july_2013.pdf",
#   "EFY_aug_2013.pdf",
#   "EFY_sep_2013.pdf",
#   "EFY_oct_2013.pdf",
#   "EFY_nov_2013.pdf",
#   "EFY_dec_2013.pdf",

#   # 2014
#   "EFY_jan_2014.pdf",
#   "EFY_feb_2014.pdf",
#   "EFY_march_2014.pdf",
#   "EFY_apri_2014.pdf",
#   "EFY_may_2014.pdf",
#   "EFY_june_2014.pdf",
#   "EFY_july_2014.pdf",
#   "EFY_aug_2014.pdf",
#   "EFY_sept_2014.pdf",
#   "EFY_oct_2014.pdf",
#   "EFY_nov_2014.pdf",
#   "EFY_dec_2014.pdf",

#   # 2015
#   "EFY_jan_2015.pdf",
#   "EFY_feb_2015.pdf",
#   "EFY_mar_2015.pdf",
#   "EFY_april_2015.pdf",
#   "EFY_may_2015.pdf",
#   "EFY_june_2015.pdf",
#   "EFY_july_2015.pdf",
#   "EFY_aug_2015.pdf",
#   "EFY_sep_2015.pdf",
#   "EFY_oct_2015.pdf",
#   "EFY_nov_2015.pdf",
#   "EFY_dec_2015.pdf",

#   # 2016
#   "EFY_jan_2016.pdf",
#   "EFY_feb_2016.pdf",
#   "EFY_march_2016.pdf",
#   "EFY-April-2016.pdf",
#   "EFY_may_2016.pdf",
#   "EFY_june_2016.pdf",
#   "EFY_july_2016.pdf",
#   "EFY_Aug_2016.pdf",
#   "EFY_sep_2016.pdf",
#   "EFY_oct_2016.pdf",
#   "EFY_nov_2016.pdf",
#   "EFY_dec_2016.pdf"
# ]


# file_names = [
#   # 2017
#   "EFY_jan_2017.pdf",
#   "EFY_feb_2017.pdf",
#   "EFY_mar_2017.pdf",
#   "EFY_apr_2017.pdf",
#   "EFY_may_2017.pdf",
#   "EFY_june_2017.pdf",
#   "EFY_july_2017.pdf",
#   "EFY_Aug_2017.pdf",
#   "EFY_sep_2017.pdf",
#   "EFY_oct_2017.pdf",
#   "EFY_nov_2017.pdf",
#   "EFY_dec_2017.pdf",

#   # 2018
#   "EFY_jan_2018.pdf",
#   "EFY_feb_2018.pdf",
#   "EFY_mar_2018.pdf",
#   "EFY_april_2018.pdf",
#   "EFY_may_2018.pdf",
#   "EFY_june_2018.pdf",
#   "EFY_july_2018.pdf",
#   "EFY_Aug_2018.pdf",
#   "EFY_sep_2018.pdf",
#   "EFY_oct_2018.pdf",
#   "EFY_nov_2018.pdf",
#   "EFY_dec_2018.pdf",

#   # 2019
#   "EFY_jan_2019.pdf",
#   "EFY_feb_2019.pdf",
#   "EFY_mar_2019.pdf",
#   "EFY_apr_2019.pdf",
#   "EFY_may_2019.pdf",
#   "EFY_june_2019.pdf",
#   "EFY_july_2019.pdf",
#   "EFY_aug_2019.pdf",
#   "EFY_sep_2019.pdf",
#   "EFY_oct_2019.pdf",
#   "EFY_nov_2019.pdf",
#   "EFY_dec_2019.pdf",

#   # 2020
#   "EFY_jan_2020.pdf",
#   "EFY_feb_2020.pdf",
#   "EFY_mar_2020.pdf",
#   "EFY_apr_2020.pdf",
#   "EFY_may_2020.pdf",
#   "EFY_june_2020.pdf",
#   "EFY_july_2020.pdf",
#   "EFY_aug_2020.pdf",
#   "EFY_sep_2020.pdf",
#   "EFY_oct_2020.pdf",
#   "EFY_nov_2020.pdf",
#   "EFY_dec_2020.pdf",

#   # 2021
#   "EFY_jan_2021.pdf",
#   "EFY February 2021.pdf",
#   "EFY March 2021.pdf",
#   "EFY April 2021.pdf",
#   "EFY May 2021.pdf",
#   "EFY June 2021.pdf",
#   "EFY July 2021-1.pdf",
#   "EFYAug2021.pdf",
#   "EFYSep2021.pdf",
#   "EFYOct2021.pdf",
#   "EFYNov2021.pdf",
#   "EFYDec2021.pdf",

#   # 2022
#   "EFYJan2022.pdf",
#   "EFYFeb2022.pdf",
#   "EFYMarch2022.pdf",
#   "EFYApril2022.pdf",
#   "EFYMay2022.pdf",
#   "EFYJune2022.pdf",
#   "EFYJuly2022.pdf",
#   "EFYAug2022.pdf",
#   "EFYSep2022.pdf",
#   "EFYOct2022.pdf",
#   "EFYNov2022.pdf",
#   "EFYDec2022.pdf",

#   # 2023
#   "EFYJan2023.pdf",
#   "EFYFeb2023.pdf",
#   "EFYMarch2023.pdf",
#   "EFYApril2023.pdf",
#   "EFYMay2023.pdf",
#   "EFYJune2023.pdf",
#   "EFYJuly2023.pdf",
#   "EFYAug2023.pdf",
#   "EFYSep2023.pdf",
#   "EFYOct2023.pdf",
#   "EFYNov2023.pdf",
#   "EFYDec2023.pdf",

#   # 2024
#   "EFYJan2024.pdf",
#   "EFYFeb2024.pdf",
#   "EFYMarch2024.pdf",
#   "EFYApril2024.pdf",
#   "EFYMay2024.pdf",
#   "EFYJune2024.pdf",
#   "EFYJuly2024.pdf",
#   "EFYAug2024.pdf",
#   "EFYSep2024.pdf",
#   "EFYOct2024.pdf",
#   "EFYNov2024.pdf",
#   "EFYDec2024.pdf"
# ]


# file_names = [
#   # 2025
#   "EFYJan2025.pdf",
#   "EFYFeb2025.pdf",
#   "EFYMarch2025.pdf",
#   "EFYApril2025.pdf",
#   "EFYMay2025.pdf",
#   "EFY-Jun-2025.pdf",
#   "EFYJuly2025.pdf",
#   "EFYAug2025.pdf",
#   "EFYSep2025.pdf",
#   "EFYOct2025.pdf",
#   "EFYNov2025.pdf",
#   "EFYDec2025.pdf",

#   # 2026
#   "EFYJan2026.pdf",
#   "EFYFeb2026.pdf",
#   "EFYMar2026.pdf",
#   "EFYApr2026.pdf",
#   "EFYMay2026.pdf",
#   "EFYJune2026.pdf",
#   "EFYJuly2026.pdf",
#   "EFYAug2026.pdf",
#   "EFYSep2026.pdf",
#   "நாணயம்_விகடன்_Sep_04_2026.pdf",
#   "நாணயம்_விகடன்_Sep_11_2026.pdf"
# ]

# file_names = [
#   'ஆனந்த_விகடன்_Sep_10_2025.pdf',
#   'பசுமை_விகடன்_Sep_11_2025.pdf',
#   'Vikatan_Plus_Sep_11_2025.pdf',
#   'சக்தி_விகடன்_Sep_15_2026.pdf',
#   'Children_39_s_Illustrated_World_Atlas_New_Edition.pdf',
#   'DK_Animal_Atlas-The_Worlds_Wildlife_As_You_Have_Never_Seen_It_Before-2021.pdf',
#   'How_Animals_Work_-_David_Burnie_UserUpload_Net.pdf',
#   'The_Little_Book_of_History_-_DK.pdf',
#   'english_for_everyone_level_1_course_book_beginner.pdf',
#   'English_for_Everyone_DK_-_English_for_Everyone_Level_2_Beginner_Course_Book-DK_Publishing_2016.pdf',
#   'English_for_Everyone_Course_Book_Level_3_Intermediate_-_DK.pdf',
#   'English_for_Everyone_Course_Book_Level_4_Advanced_-_Dorling_Kindersley.pdf',
#   'english_for_everyone_practice_book_level_1_beginner.pdf',
#   'english_for_everyone_junior_beginners_course_compressed.pdf',
#   'english_for_everyone_illustrated_english_dictionary.pdf',
#   'english_for_everyone_english_vocabulary_builder_DK.pdf',
#   'English_for_Everyone_English_Grammar_-_Dorling_Kindersley.pdf',
#   'dk_english_for_everyone_level_2_beginner_practice_book.pdf',
#   'English_for_Everyone_Business_English_Practice_Book_Level_2_-_Dorling_Kindersley_UserUpload_Net.pdf',
#   'DK_English_for_Everyone_-_Course_Book_Level_4_Advanced_-_2016.pdf'
# ]

# file_names = [
#   'Greek-Myths-DK-Readers-Level-3.pdf',
#   'Greek_Myths.pdf',
#   'Hindi-English_Bilingual_Visual_Dictionary_3rd_Edition_-_facebook_com_LinguaLIB.pdf',
#   'Life_Cycles_Everything_from_Start_to_Finish.pdf',
#   'Look_I_m_A_Scientist_by_DK.pdf',
#   'Manmade_Wonders_of_the_World.pdf',
#   'On_this_Day_-_Dorling_Kindersley.pdf',
#   'Publishing_Great_Paintings__The_World_39_s_Mast_z-lib_org.pdf',
#   'Shakespeare_Eyewitness_Books.pdf',
#   'Super_Dinosaur_Encyclopedia_The_Biggest_Fastest_Coolest_Prehistoric_Creatures (1).pdf',
#   'The_Book_of_Brilliant_Bugs.pdf',
#   'The_Cook_39_s_Herb_Garden_z-lib_org.pdf',
#   'The_Natural_History_Book_The_Ultimate_Visual_Guide_to_Everything_on_Earth_by_DK.pdf',
#   'The_Tea_Book_-_Experience_the_World_39_s_Finest_Teas.pdf',
#   'Weather_-_Explore_nature_with_fun_facts_and_activities.pdf'
# ]

# file_names = [
#   'ஜூனியர்_விகடன்_Sep_16_2025.pdf'
# ]

# file_names = [
#   'மோட்டார்_விகடன்_Sep_01_2026.pdf',
#   'அவள்_விகடன்_Sep_10_2026.pdf'
# ]

# file_names = [
#   'Sportstar_06-01-2024.pdf',
#   'Sportstar_20-01-2024.pdf',
#   'Sportstar_03-02-2024.pdf',
#   'SportStar-17-02-2024.pdf',
#   'SportStar-02-03-2024.pdf',
#   'SportStar-16-03-2024.pdf',
#   'Sportstar-30-03-2024.pdf',
#   'SportStar-13-04-2024.pdf',
#   'sportstar_27-04-2024.pdf',
#   'sportstar_11-05-2024.pdf',
#   'sportstar_25-05-2024.pdf',
#   'Sportstar_08-06-2024.pdf',
#   'sportstar_22-06-2024.pdf',
#   'sportstar_06-07-2024.pdf',
#   'sportstar_20-07-2024.pdf',
#   'Sportstar_17-08-2024.pdf',
#   'Sportstar_31-08-2024.pdf',
#   'SportStar_14-09-2024.pdf',
#   'SportStar_28-09-2024.pdf',
#   'SPORTSTAR_12-10-2024.pdf',
#   'Sportstar_26-10-2024.pdf',
#   'Sportstar_09-11-2024.pdf',
#   'Sportstar_23-11-2024.pdf',
#   'Sportstar_07-12-2024.pdf',
#   'Sportstar_21-12-2024.pdf'
# ]

# file_names = [
#   'Sportstar_04_01_2025.pdf',
#   'SportStar_18_01_2025.pdf',
#   'SportStar_21_01_2025.pdf',
#   'Sportstar_Feb_10_2025.pdf',
#   'SportStar_21_02_2025.pdf',
#   'SportStar_Mar_04_2025.pdf',
#   'SportStar_Mar_13_2025.pdf',
#   'SportStar_Mar_28_2025.pdf',
#   'Sportstar_26-04-2025.pdf',
#   'Sportstar_10-05-2025.pdf',
#   'Sportstar_24-05-2025.pdf',
#   'Sportstar_07-06-2025.pdf',
#   'Sportstar_21-06-2025.pdf',
#   'Sportstar_05-07-2025.pdf',
#   'Sportstar_19-07-2025.pdf',
#   'Sportstar_02-08-2025.pdf',
#   'Sportstar_16-08-2025.pdf',
#   'Sportstar_30-08-2025.pdf',
#   'Sportstar_13-09-2025.pdf',
#   'Sportstar_27-09-2025.pdf',
#   'Sportstar_11-10-2025.pdf',
#   'Sportstar_25-10-2025.pdf',
#   'Sportstar_08-11-2025.pdf',
#   'Sportstar_22-11-2025.pdf',
#   'Sportstar_06-12-2025.pdf',
#   'Sportstar_20-12-2025.pdf'
# ]

# file_names = [
#   'Sportstar_03-01-2026.pdf',
#   'Sportstar_17-01-2026.pdf',
#   'SportStar_31-01-2026.pdf',
#   'Sportstar_14-02-2026.pdf',
#   'Sportstar_28-02-2026.pdf',
#   'Sportstar_14-03-2026.pdf',
#   'Sportstar_28-03-2026.pdf',
#   'Sportstar_11-04-2026.pdf',
#   'Sportstar_25-04-2026.pdf',
#   'Sportstar_09-05-2026.pdf',
#   'Sportstar_23-05-2026.pdf',
#   'Sportstar_06-06-2026.pdf',
#   'Sportstar_20-06-2026.pdf',
#   'Sportstar_04-07-2026.pdf',
#   'Sportstar_18-07-2026.pdf',
#   'Sportstar_01-08-2026.pdf',
#   'Sportstar_15-08-2026.pdf',
#   'Sportstar_29-08-2026.pdf',
#   'Sportstar_12-09-2026.pdf',
#   'Sportstar_26-09-2026.pdf'
# ]

# file_names = [
#   'ஆனந்த_விகடன்_Sep_17_2026.pdf'
# ]


# file_names = [
#   "Django_in_Action_-_Christopher_Trudeau.pdf",
#   "Django_Visual_Guide_-_Ben_Bloomfield.pdf",
#   "DK_-_See_How_They_Grow_33_Bunny.pdf",
#   "DK_-_See_How_They_Grow_33_Butterfly.pdf",
#   "DK_-_See_How_They_Grow_33_Chick.pdf",
#   "DK_-_See_How_They_Grow_33_Fox.pdf",
#   "DK_-_See_How_They_Grow_33_Frog.pdf",
#   "DK_-_See_How_They_Grow_33_Kitten.pdf",
#   "DK_-_See_How_They_Grow_33_Lamb.pdf",
#   "DK_-_See_How_They_Grow_33_Mouse.pdf",
#   "DK_-_See_How_They_Grow_33_Penguin.pdf",
#   "Pig_See_How_They_Grow.pdf",
#   "Pony_See_How_They_Grow.pdf",
#   "Puppy_See_How_They_Grow.pdf"
# ]

# file_names = [
#   'ஜூனியர்_விகடன்_Sep_19_2026.pdf'
# ]

# file_names = [
#   'Eric Matthes - Python Crash Course-No Starch Press (2023).pdf',
#   'Beyond_the_Basic_Stuff_with_Python_-_Al_Sweigart.pdf',
#   'Dive_into_algorithms_-_Bradford_Tuckfield.pdf',
#   'Object-Oriented_Python_Master_OOP_by_Building_Games_and_GUIs_-_Irv_Kalb.pdf',
#   'Python_Flash_Cards_-_Eric_Matthes.pdf',
#   'The_Recursive_Book_of_Recursion_-_Al_Sweigart.pdf',
#   'The_Big_Book_of_Small_Python_Projects_-_Al_Sweigart.pdf'
# ]


# file_names.each_slice((file_names.size / 4.0).ceil).with_index(1) do |files, batch_number|
#   processed_any = false

#   files.each do |file_name|
#     pdf_path = "./tmp/#{file_name}"
#     output_dir = "./books/visual-books/#{File.basename(file_name, '.pdf')}"

#     # Skip if PDF does not exist
#     unless File.exist?(pdf_path)
#       puts "Skipping missing file: #{pdf_path}"
#       next
#     end

#     # Skip if already processed
#     if Dir.exist?(output_dir) && !Dir.empty?(output_dir)
#       puts "Already processed: #{file_name}"

#       # Delete the original PDF to free disk space
#       File.delete(pdf_path)
#       puts "Deleted completed PDF: #{pdf_path}"

#       next
#     end

#     puts "Processing: #{file_name}"

#     begin
#       split_pdf(
#         pdf_path= pdf_path,
#         output_dir= output_dir
#       )

#       # Delete PDF only after successful processing
#       if Dir.exist?(output_dir) && !Dir.empty?(output_dir)
#         File.delete(pdf_path)
#         puts "Successfully processed and deleted: #{pdf_path}"
#       end

#       processed_any = true

#     rescue StandardError => e
#       puts "Error processing #{file_name}: #{e.message}"
#       puts "Skipping and continuing..."
#       next
#     end
#   end
  
#   unless processed_any
#     puts "Batch #{batch_number}: Nothing new to commit. Skipping."
#     next
#   end

#   puts "Adding batch #{batch_number} to Git..."

#   system("git add books/visual-books/")

#   # Commit only when there are staged changes
#   if system("git diff --cached --quiet")
#     puts "No changes to commit for batch #{batch_number}. Skipping push."
#     next
#   end

#   system(
#     "git commit -m 'Add  book batch #{batch_number} of 1'"
#   )

#   puts "Pushing batch #{batch_number} to remote origin..."

#   system("git push origin main")

#   puts "Batch #{batch_number} completed and pushed successfully!"
# end




# file_names = [
#   'business_today_2022_March_20.pdf',
#   'business_today_2022_April_03.pdf',
#   'business_today_2022_April_17.pdf',
#   'business_today_2022_May_01.pdf',
#   'business_today_2022_May_15.pdf',
#   'business_today_2022_May_29.pdf',
#   'business_today_2022_June_12.pdf',
#   'business_today_2022_June_26.pdf',
#   'business_today_2022_July_10.pdf',
#   'business_today_2022_August_07.pdf',
#   'business_today_2022_August_21.pdf',
#   'business_today_2022_September_04.pdf',
#   'business_today_2022_October_16.pdf',
#   'business_today_2022_October_30.pdf',
#   'business_today_2022_November_27.pdf',
#   'business_today_2022_December_11.pdf',
#   'business_today_2022_December_25.pdf',
#   'business_today_2023_January_08.pdf',
#   'business_today_2023_January_22.pdf',
#   'business_today_2023_February_05.pdf',
#   'business_today_2023_February_19.pdf',
#   'business_today_2023_March_05.pdf',
#   'business_today_2023_April_02.pdf',
#   'business_today_2023_April_16.pdf',
#   'business_today_2023_April_30.pdf',
#   'business_today_2023_May_28.pdf',
#   'business_today_2023_June_11.pdf',
#   'business_today_2023_June_25.pdf',
#   'business_today_2023_July_09.pdf',
#   'business_today_2023_July_23.pdf',
#   'business_today_2023_August_06.pdf',
#   'business_today_2023_August_20.pdf',
#   'business_today_2023_September_03.pdf',
#   'business_today_2023_September_17.pdf',
#   'business_today_2023_October_01.pdf',
#   'business_today_2023_October_15.pdf',
#   'business_today_2023_October_29.pdf',
#   'business_today_2023_November_12.pdf',
#   'business_today_2023_November_26.pdf',
#   'business_today_2023_December_10.pdf',
#   'business_today_2023_December_24.pdf'
# ]


# file_names = [
#   'business_today_2024_January_07.pdf',
#   'business_today_2024_January_21.pdf',
#   'business_today_2024_February_04.pdf',
#   'business_today_2024_February_18.pdf',
#   'business_today_2024_March_03.pdf',
#   'business_today_2024_March_17.pdf',
#   'business_today_2024_March_31.pdf',
#   'business_today_2024_April_14.pdf',
#   'business_today_2024_April_28.pdf',
#   'business_today_2024_May_12.pdf',
#   'business_today_2024_May_26.pdf',
#   'business_today_2024_June_09.pdf',
#   'business_today_2024_June_23.pdf',
#   'business_today_2024_July_07.pdf',
#   'business_today_2024_July_21.pdf',
#   'business_today_2024_August_04.pdf',
#   'business_today_2024_August_18.pdf',
#   'business_today_2024_September_01.pdf',
#   'business_today_2024_September_15.pdf',
#   'business_today_2024_September_29.pdf',
#   'business_today_2024_October_13.pdf',
#   'business_today_2024_October_27.pdf',
#   'business_today_2024_November_10.pdf',
#   'business_today_2024_November_24.pdf',
#   'business_today_2024_December_08.pdf',
#   'business_today_2024_December_22.pdf',

#   'business_today_2025_January_05.pdf',
#   'business_today_2025_January_19.pdf',
#   'business_today_2025_February_02.pdf',
#   'business_today_2025_February_16.pdf',
#   'business_today_2025_March_02.pdf',
#   'business_today_2025_March_16.pdf',
#   'business_today_2025_March_30.pdf',
#   'business_today_2025_April_13.pdf',
#   'business_today_2025_April_27.pdf',
#   'business_today_2025_May_11.pdf',
#   'business_today_2025_May_25.pdf',
#   'business_today_2025_June_08.pdf',
#   'business_today_2025_June_22.pdf',
#   'business_today_2025_July_06.pdf',
#   'business_today_2025_July_20.pdf',
#   'business_today_2025_August_17.pdf',
#   'business_today_2025_August_31.pdf',
#   'business_today_2025_September_14.pdf',
#   'business_today_2025_September_28.pdf',
#   'business_today_2025_October_12.pdf',
#   'business_today_2025_October_26.pdf'
# ]


# file_names = [
#   'business_today_2025_November_09.pdf',
#   'business_today_2025_November_23.pdf',
#   'business_today_2025_December_07.pdf',
#   'business_today_2025_December_21.pdf',

#   'business_today_2026_January_04.pdf',
#   'business_today_2026_January_18.pdf',
#   'business_today_2026_February_01.pdf',
#   'business_today_2026_February_15.pdf',
#   'business_today_2026_March_01.pdf',
#   'business_today_2026_March_15.pdf',
#   'business_today_2026_March_29.pdf',
#   'business_today_2026_April_12.pdf',
#   'business_today_2026_April_26.pdf',
#   'business_today_2026_May_10.pdf',
#   'business_today_2026_May_24.pdf',
#   'business_today_2026_June_07.pdf',
#   'business_today_2026_June_21.pdf',
#   'business_today_2026_July_05.pdf',
#   'business_today_2026_July_19.pdf',
#   'business_today_2026_August_02.pdf',
#   'business_today_2026_August_16.pdf',
#   'business_today_2026_August_30.pdf',
#   'business_today_2026_September_13.pdf',
#   'business_today_2026_September_27.pdf'
# ]


# file_names = [
#   "india_today_2007_June_04.pdf",
#   "india_today_2007_June_11.pdf",
#   "india_today_2007_June_18.pdf",
#   "india_today_2007_June_25.pdf",
#   "india_today_2007_July_02.pdf",
#   "india_today_2007_July_09.pdf",
#   "india_today_2007_July_16.pdf",
#   "india_today_2007_July_23.pdf",
#   "india_today_2007_July_30.pdf",
#   "india_today_2007_August_06.pdf",
#   "india_today_2007_August_13.pdf",
#   "india_today_2007_August_20.pdf",
#   "india_today_2007_August_27.pdf",
#   "india_today_2007_September_03.pdf",
#   "india_today_2007_September_10.pdf",
#   "india_today_2007_September_17.pdf",
#   "india_today_2007_September_24.pdf",
#   "india_today_2007_October_01.pdf",
#   "india_today_2007_October_08.pdf",
#   "india_today_2007_October_15.pdf",
#   "india_today_2007_October_22.pdf",
#   "india_today_2007_October_29.pdf",
#   "india_today_2007_November_05.pdf",
#   "india_today_2007_November_12.pdf",
#   "india_today_2007_November_19.pdf",
#   "india_today_2007_November_26.pdf",
#   "india_today_2007_December_03.pdf",
#   "india_today_2007_December_10.pdf",
#   "india_today_2007_December_17.pdf",
#   "india_today_2007_December_24.pdf",
#   "india_today_2007_December_31.pdf"
# ]


# file_names = [
#   'india_today_2008_January_07.pdf',
#   'india_today_2008_January_14.pdf',
#   'india_today_2008_January_21.pdf',
#   'india_today_2008_January_28.pdf',
#   'india_today_2008_February_04.pdf',
#   'india_today_2008_February_11.pdf',
#   'india_today_2008_February_18.pdf',
#   'india_today_2008_February_25.pdf',
#   'india_today_2008_March_03.pdf',
#   'india_today_2008_March_10.pdf',
#   'india_today_2008_March_17.pdf',
#   'india_today_2008_March_24.pdf',
#   'india_today_2008_March_31.pdf',
#   'india_today_2008_April_07.pdf',
#   'india_today_2008_April_14.pdf',
#   'india_today_2008_April_21.pdf',
#   'india_today_2008_April_28.pdf',
#   'india_today_2008_May_05.pdf',
#   'india_today_2008_May_12.pdf',
#   'india_today_2008_May_19.pdf',
#   'india_today_2008_May_26.pdf',
#   'india_today_2008_June_02.pdf',
#   'india_today_2008_June_09.pdf',
#   'india_today_2008_June_16.pdf',
#   'india_today_2008_June_23.pdf',
#   'india_today_2008_June_30.pdf'
# ]


file_names = [
  "india_today_2008_July_07.pdf",
  "india_today_2008_July_14.pdf",
  "india_today_2008_July_21.pdf",
  "india_today_2008_July_28.pdf",
  "india_today_2008_August_04.pdf",
  "india_today_2008_August_11.pdf",
  "india_today_2008_August_18.pdf",
  "india_today_2008_August_25.pdf",
  "india_today_2008_September_01.pdf",
  "india_today_2008_September_08.pdf",
  "india_today_2008_September_15.pdf",
  "india_today_2008_September_22.pdf",
  "india_today_2008_September_29.pdf"
]




require "fileutils"
require "shellwords"

# ============================================================
# CONFIGURATION
# ============================================================

# GitHub hard limit is 100 MB.
# We use 90 MB as a safe limit.
MAX_SIZE = 90 * 1024 * 1024


# ============================================================
# HELPERS
# ============================================================

def file_size_mb(file_path)
  File.size(file_path).to_f / 1024 / 1024
end


# ============================================================
# COMPRESS SINGLE PDF
# ============================================================

def compress_pdf(pdf_path)

  return true unless File.exist?(pdf_path)

  original_size = File.size(pdf_path)
  original_mb = file_size_mb(pdf_path)

  # ----------------------------------------------------------
  # Already small enough
  # ----------------------------------------------------------

  if original_size <= MAX_SIZE

    puts "OK: #{pdf_path} (#{original_mb.round(2)} MB)"

    return true

  end


  puts
  puts "============================================================"
  puts "OVERSIZED PDF FOUND"
  puts "File: #{pdf_path}"
  puts "Size: #{original_mb.round(2)} MB"
  puts "Target: < 90 MB"
  puts "============================================================"


  # ----------------------------------------------------------
  # Compression levels
  #
  # Start with better quality.
  # If still >90 MB, use stronger compression.
  # ----------------------------------------------------------

  compression_levels = [
    "/prepress",
    "/printer",
    "/ebook",
    "/screen"
  ]


  compression_levels.each do |quality|

    compressed_path =
      "#{pdf_path}.compressed_#{quality.delete('/')}.pdf"


    File.delete(compressed_path) if File.exist?(compressed_path)


    puts
    puts "Trying Ghostscript: #{quality}"


    command = [
      "gs",
      "-sDEVICE=pdfwrite",
      "-dCompatibilityLevel=1.4",
      "-dPDFSETTINGS=#{quality}",
      "-dNOPAUSE",
      "-dBATCH",
      "-sOutputFile=#{Shellwords.escape(compressed_path)}",
      Shellwords.escape(pdf_path)
    ].join(" ")


    puts command


    success = system(command)


    unless success

      puts "Ghostscript failed using #{quality}"

      File.delete(compressed_path) if File.exist?(compressed_path)

      next

    end


    # --------------------------------------------------------
    # Verify Ghostscript output
    # --------------------------------------------------------

    unless File.exist?(compressed_path)

      puts "Ghostscript did not create output."

      next

    end


    compressed_size = File.size(compressed_path)
    compressed_mb = file_size_mb(compressed_path)


    puts "Result: #{compressed_mb.round(2)} MB"


    # --------------------------------------------------------
    # Compression must actually reduce size
    # --------------------------------------------------------

    if compressed_size >= original_size

      puts "Compression did not reduce the file size."

      File.delete(compressed_path)

      next

    end


    # --------------------------------------------------------
    # Successfully below 90 MB
    # --------------------------------------------------------

    if compressed_size <= MAX_SIZE

      FileUtils.mv(
        compressed_path,
        pdf_path,
        force: true
      )


      puts
      puts "✓ COMPRESSED SUCCESSFULLY"
      puts "  File     : #{pdf_path}"
      puts "  Original : #{original_mb.round(2)} MB"
      puts "  Final    : #{compressed_mb.round(2)} MB"
      puts


      return true

    end


    # --------------------------------------------------------
    # Still too large
    # --------------------------------------------------------

    puts "#{quality} still produced #{compressed_mb.round(2)} MB."

    File.delete(compressed_path)

  end


  # ----------------------------------------------------------
  # All compression levels failed
  # ----------------------------------------------------------

  puts
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  puts "ERROR: Could NOT compress below 90 MB"
  puts "File: #{pdf_path}"
  puts "Current size: #{file_size_mb(pdf_path).round(2)} MB"
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"


  false

end


# ============================================================
# COMPRESS ALL PDFs INSIDE A BOOK DIRECTORY
# ============================================================

def compress_all_pdfs(output_dir)

  pdf_files = Dir.glob(
    File.join(output_dir, "**", "*.pdf")
  )


  puts
  puts "Found #{pdf_files.length} PDF files."


  all_successful = true


  pdf_files.each do |pdf_path|

    unless compress_pdf(pdf_path)

      all_successful = false

    end

  end


  all_successful

end


# ============================================================
# GLOBAL OVERSIZED PDF CHECK
# ============================================================

def oversized_pdfs

  Dir.glob(
    "books/visual-books/**/*.pdf"
  ).select do |file|

    File.size(file) > MAX_SIZE

  end

end


# ============================================================
# FINAL SIZE VERIFICATION
# ============================================================

def verify_all_pdfs

  oversized = oversized_pdfs


  if oversized.empty?

    puts
    puts "============================================================"
    puts "✓ FINAL PDF SIZE CHECK PASSED"
    puts "All PDFs are below 90 MB."
    puts "============================================================"
    puts

    return true

  end


  puts
  puts "============================================================"
  puts "ERROR: OVERSIZED PDFs FOUND"
  puts "============================================================"


  oversized.each do |file|

    puts "#{file_size_mb(file).round(2)} MB - #{file}"

  end


  puts
  puts "Attempting emergency compression..."
  puts


  # ----------------------------------------------------------
  # IMPORTANT:
  #
  # Compress the oversized files AGAIN here.
  #
  # This catches files that somehow escaped the normal
  # processing flow.
  # ----------------------------------------------------------

  oversized.each do |file|

    compress_pdf(file)

  end


  # ----------------------------------------------------------
  # Check again
  # ----------------------------------------------------------

  remaining = oversized_pdfs


  if remaining.empty?

    puts
    puts "✓ Emergency compression successful."
    puts "All PDFs are now below 90 MB."

    return true

  end


  puts
  puts "============================================================"
  puts "ERROR: PDFs STILL EXCEED 90 MB"
  puts "============================================================"


  remaining.each do |file|

    puts "#{file_size_mb(file).round(2)} MB - #{file}"

  end


  puts
  puts "Git commit/push cancelled."


  false

end


# ============================================================
# MAIN PROCESSING
# ============================================================

file_names.each_slice(
  (file_names.size / 8.0).ceil
).with_index(1) do |files, batch_number|


  processed_any = false


  puts
  puts
  puts "============================================================"
  puts "STARTING BATCH #{batch_number}"
  puts "============================================================"


  files.each do |file_name|


    pdf_path = "./tmp/#{file_name}"


    output_dir =
      "./books/visual-books/#{File.basename(file_name, ".pdf")}"


    # --------------------------------------------------------
    # SOURCE PDF CHECK
    # --------------------------------------------------------

    unless File.exist?(pdf_path)

      puts
      puts "Skipping missing file:"
      puts pdf_path

      next

    end


    # --------------------------------------------------------
    # ALREADY PROCESSED
    # --------------------------------------------------------

    if Dir.exist?(output_dir) && !Dir.empty?(output_dir)

      puts
      puts "Already processed:"
      puts file_name


      File.delete(pdf_path)


      puts "Deleted completed source PDF:"
      puts pdf_path


      next

    end


    puts
    puts "============================================================"
    puts "PROCESSING: #{file_name}"
    puts "============================================================"


    begin


      # ------------------------------------------------------
      # SPLIT PDF
      # ------------------------------------------------------

      puts
      puts "Splitting PDF..."


      split_pdf(
        pdf_path= pdf_path,
        output_dir= output_dir
      )


      puts "Splitting completed."


      # ------------------------------------------------------
      # COMPRESS ALL SPLIT PDFs
      # ------------------------------------------------------

      puts
      puts "Checking split PDFs for compression..."


      unless compress_all_pdfs(output_dir)

        raise(
          "One or more split PDFs could not be compressed below 90 MB."
        )

      end


      # ------------------------------------------------------
      # VERIFY THIS BOOK
      # ------------------------------------------------------

      book_oversized = Dir.glob(
        File.join(output_dir, "**", "*.pdf")
      ).select do |file|

        File.size(file) > MAX_SIZE

      end


      unless book_oversized.empty?


        puts
        puts "Found oversized PDFs after compression."


        book_oversized.each do |file|

          puts "#{file_size_mb(file).round(2)} MB - #{file}"

        end


        # Emergency compression
        book_oversized.each do |file|

          compress_pdf(file)

        end


        # Check again
        book_oversized = Dir.glob(
          File.join(output_dir, "**", "*.pdf")
        ).select do |file|

          File.size(file) > MAX_SIZE

        end


        unless book_oversized.empty?

          raise(
            "Unable to compress all split PDFs below 90 MB."
          )

        end

      end


      # ------------------------------------------------------
      # DELETE ORIGINAL
      # ------------------------------------------------------

      if Dir.exist?(output_dir) && !Dir.empty?(output_dir)

        File.delete(pdf_path)

        puts
        puts "✓ Successfully processed:"
        puts pdf_path
        puts "Source PDF deleted."

      end


      processed_any = true


    rescue StandardError => e


      puts
      puts "============================================================"
      puts "ERROR PROCESSING #{file_name}"
      puts "============================================================"

      puts e.message

      puts
      puts "Skipping and continuing..."


      next

    end

  end


  # ----------------------------------------------------------
  # NOTHING PROCESSED
  # ----------------------------------------------------------

  unless processed_any

    puts
    puts "Batch #{batch_number}: Nothing new to commit."
    puts "Skipping."

    next

  end


  # ==========================================================
  # FINAL GLOBAL SIZE CHECK
  # ==========================================================

  unless verify_all_pdfs

    puts
    puts "Batch #{batch_number} was NOT committed."

    next

  end


  # ==========================================================
  # GIT ADD
  # ==========================================================

  puts
  puts "Adding files to Git..."


  unless system(
    "git add books/visual-books/"
  )

    puts "ERROR: git add failed."

    next

  end


  # ==========================================================
  # CHECK STAGED CHANGES
  # ==========================================================

  if system(
    "git diff --cached --quiet"
  )

    puts
    puts "No changes to commit."

    next

  end


  # ==========================================================
  # COMMIT
  # ==========================================================

  puts
  puts "Committing batch #{batch_number}..."


  commit_success = system(
    "git commit -m 'Add book batch #{batch_number}'"
  )


  unless commit_success

    puts "ERROR: Git commit failed."

    next

  end


  # ==========================================================
  # PUSH
  # ==========================================================

  puts
  puts "Pushing batch #{batch_number} to origin/main..."


  push_success = system(
    "git push origin main"
  )


  unless push_success

    puts
    puts "ERROR: Git push failed."
    puts "The commit exists locally but push failed."

    next

  end


  puts
  puts "============================================================"
  puts "✓ BATCH #{batch_number} COMPLETED"
  puts "✓ PDFs compressed"
  puts "✓ Size verified"
  puts "✓ Git committed"
  puts "✓ Git pushed"
  puts "============================================================"


end


# ============================================================
# DONE
# ============================================================

puts
puts
puts "============================================================"
puts "ALL PROCESSING COMPLETED"
puts "============================================================"


