import 'package:cbt_test/utils/app_images.dart';

import '../model/jameel_question_model.dart';

class DataHelper {
  static const List<String> behavioralObjectivestives = [
    'Define aromatic hydrocarbon and know benzene formula',
    'Identify the structure of benzene and its derivatives',
    'Draw the structure of benzene and its derivatives',
    'Name the structure of benzene derivatives',
    'Know the physical and chemical properties of benzene',
    'Know the uses of benzene',
  ];
  static const List<String> presentationSteps = [
    'STEP 1: The teacher defines and write the molecular formula of benzene explaining in details how it comes about molecular formula.',
    'STEP 2: The teacher draws the structures on the board and asks the students to identify which could be benzene based on the explanation in step 1. The teacher explains the derivatives of benzene (other structures): Phenol, Benzoic acid, Bichlorobenzene',
    'STEP 3: The teacher draws some benzene derivatives and names them, e.g., Cycloheptatriene, Cyclopropane, Benzeneamine',
    'STEP 4: The teacher states the physical and chemical properties of benzene:',
    '  - Physical properties:',
    '    1. Benzene is a colorless liquid with a sweet smell',
    '    2. It is soluble in water',
    '    3. It has a boiling point of 80°C',
    '  - Chemical properties:',
    '    1. Substitution reaction of benzene:',
    '       C6H6 + Cl2 → C6H5Cl + HCl',
    '    2. Nitration reaction:',
    '       C6H6 + HNO3 → C6H5NO2 + H2O',
    '    3. Sulphonation reaction:',
    '       C6H6 + H2SO4 → C6H5SO3H + H2O',
    '       The two reactions can be used to test for aromatic hydrocarbon',
    'The teacher states the uses of benzene:',
    '  1. Benzene can be used as a solvent for fat, oil, and resins',
    '  2. It can also be used in the manufacture of styrene',
  ];
  static const List<String> questions = [
    "1. Define aromatic hydrocarbon",
    "2. What are the uses of benzene",
    "3. What are the physical and chemical properties of benzene",
  ];
  static List<JameelQuestionModel> jameelQuestions = [
    JameelQuestionModel(
      question:
          "The term aromatic was first used to describe a group of compounds which have________",
      answer: "pleasant smell",
      options: [
        "rosery smell",
        "sour taste",
        "pleasant smell",
        "bad smell",
      ],
      isImage: null,
    ),
    JameelQuestionModel(
      question:
          "Aromatic hydrocarbon is grouped as benzene and its derivatives",
      answer: "true",
      options: [
        "not sure",
        "true",
        "partially true",
        "false",
      ],
      isImage: null,
    ),
    JameelQuestionModel(
      question: "Benzene is structurally represented as _________",
      answer: "C6H6",
      options: [
        "C6H6",
        "C5H6",
        "C6H5",
        "C12H15",
      ],
      isImage: null,
    ),
    JameelQuestionModel(
      question:
          "The molecular structure of the primary aromatic hydrocarbon is",
      answer: "B",
      options: [
        "A",
        "B",
        "C",
        "D",
      ],
      isImage: null,
    ),
    JameelQuestionModel(
      question: "What is the IUPAC names of this compound?",
      answer: "1, 2 dichloro-benzene",
      options: [
        "2, 3 dicyclo-benzene",
        "1, 2 chloro-benzene",
        "1, 2 dichloro-benzene",
        "Dichloro-hexane",
      ],
      isImage: AppImages.heptatriene,
    ),
    JameelQuestionModel(
      question: "What is the IUPAC names of this compound?",
      answer: "cyclo-heptatriene",
      options: [
        "dicyclo-hexane",
        "dicyclo-heptatriene",
        "cyclo-hexane",
        "cyclo-heptatriene",
      ],
      isImage: AppImages.cyclo,
    ),
    JameelQuestionModel(
      question: "What is the IUPAC names of this compound?",
      answer: "cyclopropane",
      options: [
        "cyclo octane",
        "cyclopropane",
        "cyclobutene",
        "cyclohexane",
      ],
      isImage: AppImages.cycloPropane,
    ),
    JameelQuestionModel(
      question: "What is the IUPAC names of this compound?",
      answer: "benzenamine",
      options: [
        "benzenamine",
        "benzoic",
        "heptatriene",
        "dibenzene",
      ],
      isImage: AppImages.benzeneMine,
    ),
    JameelQuestionModel(
      question: "The physical properties of benzene are;\n",
      answer: "i. benzene is a colorless liquid with a sweet smell\n"
          "ii. it is soluble in water\n"
          "iii. it has a boiling point of 80^0c",
      options: [
        "i. benzene is brownish in color with a sweet smell\n"
            "ii. it is soluble in water\n"
            "iii. it has a boiling point of 180^0c\n",
        "i. benzene is yellowish brown with a choking color\n"
            "ii. it is insoluble in an organic solvent\n"
            "iii. it has a boiling point of 120^0c\n",
        "i. benzene is a colorless liquid with a sweet smell\n"
            "ii. it is soluble in water\n"
            "iii. it has a boiling point of 80^0c",
        "i. benzene is a colorless liquid with a distinct odor\n"
            "ii. it is highly flammable\n"
            "iii. it has a boiling point of 80^0c\n"
            "iv. it is commonly used as a solvent in various industries and is a key component in the production of many chemicals and plastics.",
      ],
      isImage: null,
    ),
  ];
}
