## Taking data to G-lens

For G-lens purposes, we need 4 main aspects:
1. ePI
2. IPS
3. Persona Vector
4. Query
   
   
## Persona's Dimensions checklist

These are the persona's dimensions. It is true that some could be inferred from IPS directly or indirectly. But only some take part in the mandatory sections of IPS as can be seen below. For the ones not possible to be inferred from IPS, there are at least two paths:

1. Assuming a lot of data comes from validated questionnaires, we can represent it as a pair of Questionnaire/QuestionnaireResponse and then transform them into Observations/Conditions
2. Third parties (Social Worker, phycologist, physician, nurse, etc) asserts the observations/Condition directly for all/part of the dimensions. 
   
Then, in both cases, observation can be coupled together as a document or message to be transmitted along with IPS.


| Dimension              | IPS                                      | Terminology Examples                                                         | (validity) Questionnaire suggestion   |
|------------------------|------------------------------------------|------------------------------------------------------------------------------|----------------------------|
| Age                    | subject.birthDate                        |                                                                              |                            |
| Social Support/ family | N/A                                      | 91663-5 Social support index [MOS Social Support Survey]                     | \- 1.[paper](https://www.researchgate.net/publication/301305243_A_Multidimensional_Approach_to_Social_Support_The_Questionnaire_on_the_Frequency_of_and_Satisfaction_with_Social_Support_QFSSS)                           |
| Sex                    | subject.gender                           |                                                                              |                            |
| WorkLife               | N/A                                      |                                                                              |  [PRAPARE](https://prapare.org/) \- 2.[paper](https://pubmed.ncbi.nlm.nih.gov/19839663/)                        |
| Smoking,ongoing        | Social History                           |                                                                              |                            |
| Physical Activity      | N/A                                      |                                                                              | \-  1.[paper](https://journals.lww.com/acsm-msse/Fulltext/2003/08000/International_Physical_Activity_Questionnaire_.20.aspx#FUA1A-20) 2.[questions](https://sites.google.com/site/theipaq/questionnaire_links)                        |
| Organized              | N/A                                      |                                                                              |                            |
| Extrovert/introvert    | N/A                                      |                                                                              |                            |
| Emotional/Rational     | N/A                                      |                                                                              |                            |
| # diagnoses            | ProblemList Section                      |                                                                              |                            |
| Chronic Afliction      | secondary interpretation of Problem List |                                                                              |                            |
| # Medicines            | MedicationSummary Section                |                                                                              |                            |
| Health Advice received | N/A                                      |                                                                              |                            |
| Concern Domains        | N/A                                      |                                                                              |                            |
| Share info Willingly   | N/A                                      |                                                                              |                            |
| Mood Level             | N/A                                      | 65457-4 First of all, how are you feeling today compared to your usual state | \+\- 1.[paper](https://d1wqtxts1xzle7.cloudfront.net/53247538/Development_short_questionnaire_epidemologic_studies_child_depression_Angold_Messer_1995-libre.pdf?1495551322=&response-content-disposition=inline%3B+filename%3DDEVELOPME_NT_OF_A_SHORT_QUESTIONNAIRE_FO.pdf&Expires=1670866969&Signature=E--~gd9gStyfqRYGb5Jebs85fO3SWXM7WidTjFGdUsEvjXhYt7BauqMXAoxlSLumfSpL8rJipNhir9VnpHZUexkF-Ez8f7n6-ZmmmB2lm~10AhXPIkcF8ADE-NClBU-9~KBekDK3YC6JVRaslXYcWogz71pq1UT0WUjsAh-hj9frLj3PSUW9lr-YlNLWr85OWN70ocnow7ZKvyWER6~OpGOXt-dnZekPBltsIPtdLZBgJarzeGXe1fmJediJCBWgj4waXEgoTaQsOuJy8DJ2UtHOnsWWKexl2ZGSEaHlAzDG797SGdzLursC~QA8sRcEZ4zCEChmEsRP-GUwT6tkKA__&Key-Pair-Id=APKAJLOHF5GGSLRBV4ZA)    2.[paper2](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1495268/)                       |
| Autonomy               | Functional Status                        |                                                                              |                            |
| Health Literacy        | N/A                                      | 85450-5 Health literacy and communication total                              |   1. European Health Literacy Survey Questionnaire (HLS-EU-Q)   2.[example paper](https://journals.lww.com/cancernursingonline/Abstract/2018/03000/Validation_of_the_European_Health_Literacy_Survey.14.aspx)                      |
| Digital Literacy       | N/A                                      |                                                                              |   \+ 1.[revision](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7889415/) 1.[paper](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9394541/)                         |
| Tool Support Interest  | N/A                                      |                                                                              |                            |


## Possible rules to test
1. Pedro has a prescription of Dovato (dolutegravir / lamivudine), Biktarvy (bictegravir / emtricitabine / tenofovir alafenamide) which are contraindicated (both for HIV and reduce efficacy)
2. Pedro has a prescription of Pentasa (mesalamine), Biktarvy (bictegravir / emtricitabine / tenofovir alafenamide) which are contraindicated (kidney impact)

3. Person A has lactose intolerance and is prescribed Karvea which has lactose as excipient
4. Person B has been prescribed Humalog and Furosemide which are contraindicated since sulfonamides can cause hypoglycaemia
5. Person C has a pregnancy and has been prescribed Diplexil (Valproate) which is contraindicated due to harm to fetus
6. Person D has psoriasis and was prescribed Bisoprolol which is contraindicated, since it could worse the symptons
7. Person E has a prescription of AB and adalimumab, since AB indicates a possible infection and AB is contraindicated with adalimumab.
8. *Generic rule for same ATC in active medication*


