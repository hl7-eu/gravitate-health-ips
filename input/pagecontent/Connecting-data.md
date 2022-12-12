## Taking data to G-lens

For G-lens purposes, we need 4 main aspects:
1. ePI
2. IPS
3. Persona Vector
4. Query
   
   
## Persona's Dimensions checklist

Taking into account the persona vector, there are at least two paths:

1. Assuming a lot of data comes from validated questionnaires, we can represent it as a pair of Questionnaire/QuestionnaireResponse
2. Creating Simple Observations for all of them and coupling them together as message, document, etc

It is true that some could be infered from IPS directly or indirectly. But only some take part in the mandatory sections of IPS as can be seen below.

| Dimension              | IPS                                      | Terminology Examples                                                          |
|------------------------|------------------------------------------|-------------------------------------------------------------------------------|
| Age                    | subject.birthDate                        |                                                                               |
| Social Support/ family | N/A                                      | 91663-5 Social support index [MOS Social Support Survey]                      |
| Sex                    | subject.gender                           |                                                                               |
| WorkLife               | N/A                                      |                                                                               |
| Smoking,ongoing        | Social History                           |                                                                               |
| Physical Activity      | N/A                                      |                                                                               |
| Organized              | N/A                                      |                                                                               |
| Extrovert/introvert    | N/A                                      |                                                                               |
| Emotional/Rational     | N/A                                      |                                                                               |
| # diagnoses            | ProblemList Section                      |                                                                               |
| Chronic Afliction      | secondary interpretation of Problem List |                                                                               |
| # Medicines            | MedicationSummary Section                |                                                                               |
| Health Advice received | N/A                                      |                                                                               |
| Concern Domains        | N/A                                      |                                                                               |
| Share info Willingly   | N/A                                      |                                                                               |
| Mood Level             | N/A                                      | 65457-4 First of all, how are you feeling today compared to your usual state |
| Autonomy               | Functional Status                        |                                                                               |
| Health Literacy        | N/A                                      | 85450-5 Health literacy and communication total                               |
| Digital Literacy       | N/A                                      |                                                                               |
| Tool Support Interest  | N/A                                      |                                                                               |

## Possible rules to test
1. Maria has a prescription of Dovato (dolutegravir / lamivudine), Biktarvy (bictegravir / emtricitabine / tenofovir alafenamide) which are contraindicated (both for HIV and reduce efficacy)
2. Maria has a prescription of Pentasa (mesalamine), Biktarvy (bictegravir / emtricitabine / tenofovir alafenamide) which are contraindicated (kidney impact)

3. Person A has lactose intolerance and is prescribed Karvea which has lactose as excipient
4. Person B has been prescribed Humalog and Furosemide which are contraindicated since sulfonamides can cause hypoglycaemia
5. Person C has a pregnancy and has been prescribed Diplexil (Valproate) which is contraindicated due to harm to fetus
6. Person D has psoriasis and was prescribed Bisoprolol which is contraindicated, since it could worse the symptons
7. Person E has a prescription of AB and adalimumab, since AB indicates a possible infection and AB is contraindicated with adalimumab.
8. *Generic rule for same ATC in active medication*


