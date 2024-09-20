<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="../FeuilleDeStyle/CDA-FO.xsl"?><?oxygen SCHSchema="../schematrons/profils/IHE.sch"?><?oxygen SCHSchema="../schematrons/profils/structurationMinimale/ASIP-STRUCT-MIN-StrucMin.sch"?><?oxygen SCHSchema="../schematrons/profils/CI-SIS_ModelesDeContenusCDA.sch"?><?oxygen SCHSchema="../schematrons/profils/CI-SIS_Modeles_ANS.sch"?><?oxygen SCHSchema="../schematrons/profils/terminologies/schematron/terminologie.sch"?><?oxygen SCHSchema="../schematrons/CI-SIS_ANEST-CR-ANEST_2022.01.sch"?><!-- 
	**********************************************************************************************************
	Système : ANS
	Document : Compte-rendu d'anesthésie (ANEST-CR-ANEST_2022.01)	
	**********************************************************************************************************
	format HL7 - CDA Release 2 - selon schéma XML (CDA.xsd) du standard ANSI/HL7 CDA, R2-2005 4/21/2005
	**********************************************************************************************************	
    21/12/2020 : Création		
    13/07/2021 : Correction unité "ml" par "mL"
    29/04/2022 : Migration des terminologies et JDVs en SNOMED CT
    25/08/2023 : Migration des terminologies et JDVs après validation
    08/12/2023 : Mise à jour des JDVs
	**********************************************************************************************************
--><ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ../infrastructure/cda/CDA_extended.xsd">
  <!-- 
  **************************************************************************************************************
	EN TETE DU DOCUMENT
	**************************************************************************************************************
    -->
  <realmCode code="FR"/>
  <!-- Référence au standard CDA R2  -->
  <typeId root="2.16.840.1.113883.1.3" extension="POCD_HD000040"/>
  <!-- Déclaration de conformité aux spécifications HL7 France -->
  <templateId root="2.16.840.1.113883.2.8.2.1"/>
  <!-- Déclaration de conformité aux spécifications du CI-SIS -->
  <templateId root="1.2.250.1.213.1.1.1.1"/>
  <!-- Déclaration de conformité aux spécifications du modèle CR-ANEST version 2022 -->
  <templateId root="1.2.250.1.213.1.1.1.40" extension="2022.01"/>
  <!-- Identifiant unique du document -->
  <id root="1.2.250.1.213.1.1.1.40.12345.1"/>
  <!-- Type de document -->
  <code code="77436-4" displayName="CR d'anesthésie" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
  <!-- Titre du document -->
  <title>Compte rendu d'anesthésie</title>
  <!-- Date de création du document -->
  <effectiveTime value="20200319111700+0100"/>
  <!-- Niveau de confidentialité du document -->
  <confidentialityCode code="N" displayName="Normal" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality"/>
  <!-- Langue du document -->
  <languageCode code="fr-FR"/>
  <!-- Identifiant commun à toutes les versions successives du document -->
  <setId root="1.2.250.1.213.1.1.1.40.12345"/>
  <!-- Numéro de la version du présent document (entier positif) -->
  <versionNumber value="1"/>
  <!-- Patient -->
  <recordTarget>
    <patientRole>
      <!-- INS-NIR de test : 1.2.250.1.213.1.4.10 -->
      <id extension="279035121518989" root="1.2.250.1.213.1.4.10"/>
      <!-- IPP du patient dans l'établissement avec root = l'OID de l'ES -->
      <id extension="1234567890121" root="1.2.3.4.567.8.9.10"/>
      <!-- Adresse du patient -->
      <addr>
        <houseNumber>28</houseNumber>
        <streetName>Avenue de Breteuil</streetName>
        <unitID>Escalier A</unitID>
        <postalCode>75007</postalCode>
        <city>PARIS</city>
        <country>FRANCE</country>
      </addr>
      <!-- Coordonnées télécom du patient -->
      <telecom value="tel:0144534551" use="H"/>
      <telecom value="tel:0647151010" use="MC"/>
      <telecom value="mailto:279035121518989@patient.mssante.fr"/>
      <!-- Identité du patient -->
      <patient classCode="PSN">
        <name>
          <!-- Nom et prénom(s) de naissance -->
          <!-- Nom de l’acte de naissance -->
          <family qualifier="BR">PAT-TROIS</family> 
          <!-- Prénoms de l’acte de naissance -->
          <given>DOMINIQUE MARIE-LOUISE</given>
          <!-- Premier prénom de l’acte de naissance -->
          <given qualifier="BR">DOMINIQUE</given>
          <!-- Nom et prénom utilisés -->
          <family qualifier="CL">PAT-TROIS</family>
          <given qualifier="CL">DOMINIQUE</given>        
        </name>
        <administrativeGenderCode code="F" displayName="Féminin" codeSystem="2.16.840.1.113883.5.1"/>
        <birthTime value="19790328"/>
        <!-- Représentant du patient -->
        <guardian>
          <addr use="H">
            <houseNumber>28</houseNumber>
            <streetName>Avenue de Breteuil</streetName>
            <postalCode>75007</postalCode>
            <city>PARIS</city>
            <country>FRANCE</country>
          </addr>
          <telecom value="tel:0147150000" use="H"/>
          <guardianPerson>
            <name>
              <prefix>MME</prefix>
              <family>NESSI</family>
              <given>Jeanne</given>
            </name>
          </guardianPerson>
        </guardian>
        <!-- Lieu de naissance du patient -->
        <birthplace>
          <place>
            <addr>
              <county>63220</county>
              <city>MAZOIRES</city>
            </addr>
          </place>
        </birthplace>
      </patient>
    </patientRole>
  </recordTarget>
  <!-- Auteur du document -->
  <author>
    <time value="20200319111700+0100"/>
    <assignedAuthor classCode="ASSIGNED">
      <!-- PS identifié par son N°RPPS -->
      <id root="1.2.250.1.71.4.2.1" extension="801234567897"/>
      <!-- [1..1] Profession / spécialité du PS (obligatoire pour les PS) -->
      <code code="G15_10/SM02" displayName="Médecin - Anesthésie-réanimation (SM)" codeSystem="1.2.250.1.213.1.1.4.5"/>
      <!-- Adresse -->
      <addr>
        <houseNumber>20</houseNumber>
        <streetName>Rue Leblanc</streetName>
        <postalCode>75015</postalCode>
        <city>PARIS</city>
      </addr>
      <!-- Coordonnées télécom -->
      <telecom value="tel:0647150000" use="MC"/>
      <telecom value="tel:0141291290" use="WP"/>
      <telecom value="mailto:pierre.legris@mssante.fr"/>
      <!-- Nom de l'auteur -->
      <assignedPerson>
        <name>
          <given>Pierre</given>
          <family>LEGRIS</family>
          <prefix>M</prefix>
          <suffix>DR</suffix>
        </name>
      </assignedPerson>
      <!-- ES (optionnel)  -->
      <representedOrganization>
        <!-- établissement identifié par son N° FINESS -->
        <id root="1.2.250.1.71.4.2.2" extension="1750803447"/>
        <name>Hôpital Européen Georges Pompidou</name>
      </representedOrganization>
    </assignedAuthor>
  </author>
  <!-- Personne à prévenir en cas d'urgence -->
  <informant>
    <relatedEntity classCode="ECON">
      <code code="SIS" displayName="Soeur" codeSystem="2.16.840.1.113883.5.111"/>
      <addr nullFlavor="NAV"/>
      <telecom value="tel:0647150100" use="MC"/>
      <relatedPerson>
        <name>
          <family>NESSI</family>
          <given>Sophie</given>
        </name>
      </relatedPerson>
    </relatedEntity>
  </informant>
  <!-- Personne de confiance -->
  <informant>
    <relatedEntity classCode="NOK">
      <code code="SIS" displayName="Soeur" codeSystem="2.16.840.1.113883.5.111"/>
      <addr nullFlavor="NAV"/>
      <telecom value="tel:0647150100" use="MC"/>
      <relatedPerson>
        <name>
          <family>NESSI</family>
          <given>Sophie</given>
        </name>
      </relatedPerson>
    </relatedEntity>
  </informant>
  <!-- Organisation chargée de la conservation du document -->
  <custodian typeCode="CST">
    <assignedCustodian>
      <representedCustodianOrganization>
        <id root="1.2.250.1.71.4.2.2" extension="1750803447"/>
        <name>Hôpital Européen Georges Pompidou</name>
        <telecom value="tel:0141297500" use="WP"/>
        <addr>
          <houseNumber>20</houseNumber>
          <streetName>Rue Leblanc</streetName>
          <postalCode>75015</postalCode>
          <city>PARIS</city>
        </addr>
      </representedCustodianOrganization>
    </assignedCustodian>
  </custodian>
  <!-- Responsable du document -->
  <legalAuthenticator>
    <time value="20200319111700-0100"/>
    <signatureCode code="S"/>
    <assignedEntity>
      <!-- PS identifié par son N°RPPS -->
      <id root="1.2.250.1.71.4.2.1" extension="801234567897"/>
      <!-- [1..1] Profession / spécialité du PS (obligatoire pour les PS) -->
      <code code="G15_10/SM02" displayName="Médecin - Anesthésie-réanimation (SM)" codeSystem="1.2.250.1.213.1.1.4.5"/>
      <!-- [0..*] Adresse du PS-->
      <addr>
        <houseNumber>20</houseNumber>
        <streetName>Rue Leblanc</streetName>
        <postalCode>75015</postalCode>
        <city>PARIS</city>
      </addr>
      <!-- [0..*] Coordonnées télécom du PS-->
      <telecom value="tel:0647150000" use="MC"/>
      <telecom value="tel:0141291290" use="WP"/>
      <telecom value="mailto:pierre.legris@mssante.fr"/>
      <!-- Identité du PS -->
      <assignedPerson>
        <name>
          <given>Pierre</given>
          <family>LEGRIS</family>
          <prefix>M</prefix>
          <suffix>DR</suffix>
        </name>
      </assignedPerson>
      <!-- ES (optionnel) -->
      <representedOrganization>
        <!-- établissement identifié par son N° FINESS -->
        <id root="1.2.250.1.71.4.2.2" extension="1750803447"/>
        <name>Hôpital Européen Georges Pompidou</name>
        <telecom value="tel:0141297500" use="WP"/>
        <addr>
          <houseNumber>20</houseNumber>
          <streetName>Rue Leblanc</streetName>
          <postalCode>75015</postalCode>
          <city>PARIS</city>
        </addr>
        <standardIndustryClassCode code="ETABLISSEMENT" displayName="Etablissement de santé" codeSystem="1.2.250.1.213.1.1.4.9" codeSystemName="practiceSettingCode"/>
      </representedOrganization>
    </assignedEntity>
  </legalAuthenticator>
  <!-- Medecin traitant-->
  <participant typeCode="INF">
    <functionCode code="PCP" displayName="Médecin Traitant" codeSystem="2.16.840.1.113883.5.88"/>
    <time nullFlavor="NA"/>
    <associatedEntity classCode="PROV">
      <id root="1.2.250.1.71.4.2.1" extension="801984758437"/>
      <code code="G15_10/SM26" displayName="Médecin - Qualifié en Médecine Générale (SM)" codeSystem="1.2.250.1.213.1.1.4.5"/>
      <addr>
        <houseNumber>3</houseNumber>
        <streetName>Rue Petit Pont</streetName>
        <postalCode>75005</postalCode>
        <city>PARIS</city>
      </addr>
      <telecom value="tel:0147150000" use="WP"/>
      <associatedPerson>
        <name>
          <prefix>M</prefix>
          <suffix>DR</suffix>
          <given>Stéphane</given>
          <family>MEDIONI</family>
        </name>
      </associatedPerson>
      <scopingOrganization>
        <id root="1.2.250.1.71.4.2.2" extension="1801984755893"/>
        <name>Cabinet du Dr Medioni</name>
        <telecom value="tel:0142515100" use="WP"/>
        <addr>
          <houseNumber>3</houseNumber>
          <streetName>Rue Petit Pont</streetName>
          <postalCode>75005</postalCode>
          <city>PARIS</city>
        </addr>
      </scopingOrganization>
    </associatedEntity>
  </participant>
  <!-- Acte documenté -->
  <documentationOf>
    <serviceEvent>
      <!-- Code de l'acte  -->
      <code code="JQGA003" displayName="Accouchement par césarienne au cours du travail, par laparotomie" codeSystem="1.2.250.1.213.2.5" codeSystemName="CCAM"/>
      <!-- Date de l'acte -->
      <effectiveTime>
        <low value="20200319091100+0100"/>
        <high value="20200319102200+0100"/>
      </effectiveTime>
      <!-- Personne ayant exécuté l'acte -->
      <performer typeCode="PRF">
        <assignedEntity>
          <!-- PS identifié par son N°RPPS -->
          <id root="1.2.250.1.71.4.2.1" extension="801234567897"/>
          <!-- Profession / spécialité du PS -->
          <code code="G15_10/SM02" displayName="Médecin - Anesthésie-réanimation (SM)" codeSystem="1.2.250.1.213.1.1.4.5"/>
          <!-- Adresse -->
          <addr>
            <houseNumber>20</houseNumber>
            <streetName>Rue Leblanc</streetName>
            <postalCode>75015</postalCode>
            <city>PARIS</city>
          </addr>
          <!-- Coordonnées télécom -->
          <telecom value="tel:0647150000" use="MC"/>
          <telecom value="tel:0141291290" use="WP"/>
          <telecom value="mailto:Charles.BOILEAU@mssante.fr"/>
          <!-- Nom de l'auteur -->
          <assignedPerson>
            <name>
              <given>Pierre</given>
              <family>LEGRIS</family>
              <prefix>M</prefix>
              <suffix>DR</suffix>
            </name>
          </assignedPerson>
          <!-- ES -->
          <representedOrganization>
            <!-- établissement identifié par son N° FINESS -->
            <id root="1.2.250.1.71.4.2.2" extension="1750803447"/>
            <name>Hôpital Européen Georges Pompidou</name>
            <!-- standardIndustryClassCode obligatoire -->
            <standardIndustryClassCode code="ETABLISSEMENT" displayName="Etablissement de santé" codeSystem="1.2.250.1.213.1.1.4.9" codeSystemName="practiceSettingCode"/>
          </representedOrganization>
        </assignedEntity>
      </performer>
    </serviceEvent>
  </documentationOf>
  <!-- Contexte de la prise en charge -->
  <componentOf>
    <encompassingEncounter>
      <!-- Type de prise en charge -->
      <code code="IMP" displayName="Hospitalisation (établissement, y compris HAD)" codeSystem="2.16.840.1.113883.5.4" codeSystemName="ActEncounterCode"/>
      <!-- Date de la prise en charge -->
      <effectiveTime>
        <low value="20200318115500+0100"/>
        <high value="20200325102200+0100"/>
      </effectiveTime>
      <!-- Responsable de la prise en charge (identifié par son N°RPPS) -->
      <responsibleParty>
        <assignedEntity>
          <!-- PS identifié par son N°RPPS -->
          <id root="1.2.250.1.71.4.2.1" extension="801234567897"/>
          <!-- Profession / spécialité du PS -->
          <code code="G15_10/SM26" codeSystem="1.2.250.1.213.1.1.4.5" displayName="Médecin - Qualifié en Médecine Générale (SM)"/>
          <!-- Adresse du PS-->
          <addr>
            <houseNumber>20</houseNumber>
            <streetName>Rue Leblanc</streetName>
            <postalCode>75015</postalCode>
            <city>PARIS</city>
          </addr>
          <!-- Coordonnées télécom du PS-->
          <telecom value="tel:0141297500" use="WP"/>
          <!-- Identité du PS -->
          <assignedPerson>
            <name>
              <given>Léon </given>
              <family>AUGUIN</family>
              <prefix>M</prefix>
              <suffix>PR</suffix>
            </name>
          </assignedPerson>
          <!-- Etablissement de rattachement du PS -->
          <representedOrganization>
            <id root="1.2.250.1.71.4.2.2" extension="1750803447"/>
            <name>Hôpital Européen Georges Pompidou</name>
            <addr>
              <houseNumber>20</houseNumber>
              <streetName>Rue Leblanc</streetName>
              <postalCode>75015</postalCode>
              <city>PARIS</city>
            </addr>
            <standardIndustryClassCode code="ETABLISSEMENT" displayName="Etablissement de santé" codeSystem="1.2.250.1.213.1.1.4.9" codeSystemName="practiceSettingCode"/>
          </representedOrganization>
        </assignedEntity>
      </responsibleParty>
      <!-- Etablissement de santé au sein duquel la prise en charge est organisée -->
      <location>
        <healthCareFacility>
          <code code="SA01" displayName="Etablissement public de santé" codeSystem="1.2.250.1.71.4.2.4"/>
        </healthCareFacility>
      </location>
    </encompassingEncounter>
  </componentOf>
  <!-- 
	********************************************************
	Corps du document
	********************************************************
	-->
  <component>
    <structuredBody>
      <!-- [1..1] Section FR-Actes-et-interventions-CR-ANEST : Acte chirurgical, Types d'anesthésies, Accès veineux, Cathéter intra artériel, Ventilation, Intubation, Transfusion -->
      <component>
        <section>
          <!-- Conformité IHE PCC -->
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.13.2.11"/>
          <!-- Conformité CI-SIS -->
          <templateId root="1.2.250.1.213.1.1.2.118"/>
          <id root="4C46931F-9622-474D-8B15-2D5E5D70D267"/>
          <code code="29554-3" displayName="Actes" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
          <title>Actes réalisés au cours de l’intervention</title>
          <text>
            <paragraph>Intervention ayant nécessité l'anesthésie</paragraph>
            <table border="0">
              <thead>
                <tr>
                  <th align="center">Date de début</th>
                  <th align="center">Date de fin</th>
                  <th align="center">Type</th>
                  <th align="center">Score ASA</th>
                  <th align="center">Acte en urgence ?</th>
                  <th align="center">Latéralité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>19/03/2020 à 09h11</td>
                  <td>19/03/2020 à 09h45</td>
                  <td>
                    <content ID="CHIR-acte-CCAM">[CCAM : JQGA003] Accouchement par césarienne au
                      cours du travail, par laparotomie</content>
                  </td>
                  <td>
                    <content ID="CHIR-scoreASA">2</content>
                  </td>
                  <td>
                    <content ID="CHIR-enUrgence">oui</content>
                  </td>
                  <td>
                    <content ID="CHIR-lateralite">-</content>
                  </td>
                </tr>
              </tbody>
            </table>
            <br/>
            <paragraph>Actes réalisés au cours de l'intervention</paragraph>
            <table border="0">
              <thead>
                <tr>
                  <th>Acte</th>
                  <th>Localisation</th>
                  <th>Latéralité</th>
                  <th>Difficultés (Facile, Difficile, Impossible)</th>
                  <th>DM</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <content ID="ANEST-typeAnestesie-01">Anesthésie générale</content>
                  </td>
                  <td>
                    <content ID="ANEST-localisation-01"> </content>
                  </td>
                  <td>
                    <content ID="ANEST-lateralite-01"> </content>
                  </td>
                  <td>
                    <content ID="ANEST-difficulte-01">Facile</content>
                  </td>
                  <td>-</td>
                </tr>
                <tr>
                  <td>
                    <content ID="ANEST-typeAnestesie-02">Anesthésie locorégionale péridurale ou
                      épidurale</content>
                  </td>
                  <td>
                    <content ID="ANEST-localisation-02"> </content>
                  </td>
                  <td>
                    <content ID="ANEST-lateralite-02"> </content>
                  </td>
                  <td>
                    <content ID="ANEST-difficulte-02">Facile</content>
                  </td>
                  <td>
                    <content ID="ANEST-DM-02">[N020101]</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="acces-veineux-peripherique">Pose d'un cathéter veineux
                      périphérique</content>
                  </td>
                  <td>
                    <content ID="acces-veineux-peripherique-abord">Veines du membre
                      supérieur</content>
                  </td>
                  <td>
                    <content ID="acces-veineux-peripherique-lateralite">Droit</content>
                  </td>
                  <td>
                    <content ID="acces-veineux-peripherique-difficulte">Facile</content>
                  </td>
                  <td>
                    <content ID="acces-veineux-peripherique-DM">[C010101]</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="acces-veineux-central">Pose d'un cathéter veineux central, par voie
                      transcutanée</content>
                  </td>
                  <td>
                    <content ID="acces-veineux-central-abord">Veine fémorale</content>
                  </td>
                  <td>
                    <content ID="acces-veineux-central-lateralite">Droit</content>
                  </td>
                  <td>
                    <content ID="acces-veineux-central-difficulte">Facile</content>
                  </td>
                  <td>
                    <content ID="acces-veineux-central-DM">[C0102]</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="catheter">Pose d'un cathéter intra-artériel</content>
                  </td>
                  <td>
                    <content ID="catheter-abord">Artère fémorale</content>
                  </td>
                  <td>
                    <content ID="catheter-lateralite">Droit</content>
                  </td>
                  <td>
                    <content ID="catheter-difficulte">Facile</content>
                  </td>
                  <td>
                    <content ID="catheter-DM">[C0103]</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="ventilation-masque">Ventilation au masque</content>
                  </td>
                  <td/>
                  <td/>
                  <td>
                    <content ID="ventilation-masque-difficulte">Facile</content>
                  </td>
                  <td>
                    <content ID="ventilation-masque-DM">[R0102]</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="ventilation-dispositif-supraglottique">Utilisation d'un dispositif
                      supraglottique</content>
                  </td>
                  <td/>
                  <td/>
                  <td>
                    <content ID="ventilation-dispositif-supraglottique-difficulte">Facile</content>
                  </td>
                  <td>
                    <content ID="ventilation-dispositif-supraglottique-DM">[R0102]</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="intubation">Intubation</content>
                  </td>
                  <td>
                    <content ID="intubation-abord">Intubation orotrachéale</content>
                  </td>
                  <td/>
                  <td>
                    <content ID="intubation-difficulte">Difficile (Score de Cormack : Grade 3 :
                      Seule une infime partie de la glotte est vue)</content>
                  </td>
                  <td>
                    <content ID="intubation-DM">[R010302]</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="Tracheotomie-par-cervicotomie">Trachéotomie, par
                      cervicotomie</content>
                  </td>
                  <td/>
                  <td/>
                  <td>
                    <content ID="Tracheotomie-par-cervicotomie-difficulte">Difficile</content>
                  </td>
                  <td>
                    <content ID="Tracheotomie-par-cervicotomie-DM">[R01050201]</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="sondeGastrique">Pose d'une sonde nasogastrique</content>
                  </td>
                  <td/>
                  <td/>
                  <td>
                    <content ID="sondeGastrique-difficulte">Facile</content>
                  </td>
                  <td>
                    <content ID="sondeGastrique-DM">[G02020101]</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="DM-prealablement-pose">Utilisation d’un DM préalablement
                      posé</content>
                  </td>
                  <td>
                    <content ID="DM-prealablement-pose-localisationAnatomique">Veine
                      fémorale</content>
                  </td>
                  <td>
                    <content ID="DM-prealablement-pose-lateralite">Droit</content>
                  </td>
                  <td>
                    <content ID="DM-prealablement-pose-difficulte">Facile</content>
                  </td>
                  <td>
                    <content ID="DM-prealablement-pose-DM">[C010204]</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="transfusion">Transfusion de produit sanguin labile non
                      érythrocytaire</content>
                  </td>
                  <td/>
                  <td/>
                  <td/>
                  <td/>
                </tr>
              </tbody>
            </table>
          </text>
          <!-- [1..1] Entrée Acte : Intervention ayant nécessité l'anesthésie -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="F01CCD35-57EA-42FF-9DE2-1D4C41CFDDA2"/>
              <!-- Acte [CCAM] -->
              <code code="JQGA003" displayName="Accouchement par césarienne au cours du travail, par laparotomie" codeSystem="1.2.250.1.213.2.5" codeSystemName="CCAM">
                <originalText><reference value="#CHIR-acte-CCAM"/></originalText>
              </code>
              <text><reference value="#CHIR-type-01"/></text>
              <statusCode code="completed"/>
              <!-- Date de l'intervention -->
              <effectiveTime>
                <low value="20200319091100+0100"/>
                <high value="20200319094500+0100"/>
              </effectiveTime>
              <!-- En urgence (à insérer si acte réalisé en urgence) -->
              <priorityCode code="UR" displayName="Urgent" codeSystem="2.16.840.1.113883.5.7" codeSystemName="HL7:ActPriority">
                <originalText><reference value="#CHIR-enUrgence"/></originalText>
              </priorityCode>
              <!-- [0..1]  Score ASA -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id root="91BD3828-117A-4028-A14F-5583975B0C3E"/>
                  <code code="9266-8" codeSystem="2.16.840.1.113883.6.1" displayName="APS score" codeSystemName="LOINC"/>
                  <text><reference value="#CHIR-scoreASA"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime nullFlavor="NA"/>
                  <!-- score ASA : valeur issue du JDV_ScoreASA_CISIS (1.2.250.1.213.1.1.5.501) -->
                  <value xsi:type="CD" code="MED-614" displayName="2 - Patient avec anomalie systémique modérée" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP">
                    <originalText><reference value="#CHIR-scoreASA"/></originalText>
                  </value>
                </observation>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [1..*] Entrée Acte : Type d'anesthésie, localisation, latéralité et difficulté de l'anesthésie (Anesthésie générale) -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="440FD441-9C55-4125-BCA9-50E1B11711C4"/>
              <code code="50697003" displayName="anesthésie générale" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                <originalText><reference value="#ANEST-typeAnestesie-01"/></originalText>
              </code>
              <text><reference value="#ANEST-typeAnestesie-01"/></text>
              <statusCode code="completed"/>
              <effectiveTime value="20200319"/>
              <!-- [0..1] Localisation anatomique : valeur issue du JDV_LocalisationAnesthesie_CISIS (1.2.250.1.213.1.1.5.641) -->
              <!-- <targetSiteCode>  </targetSiteCode> -->
              <!-- [0..1] Entrée FR-Simple-Observation : Difficulté -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-023" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP" displayName="Précision difficulté"/>
                  <text><reference value="#ANEST-difficulte-01"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Difficulté : valeur issue du JDV_Difficulte_CISIS (1.2.250.1.213.1.1.5.494) -->
                  <value xsi:type="CD" code="36203004" displayName="facile" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                </observation>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [1..*] Entrée Acte : Type d'anesthésie, localisation, latéralité et difficulté de l'anesthésie (ALR péridurale ou épidurale) -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="0F6596E2-B68C-449D-A992-B5A9967E054C"/>
              <code code="MED-582" displayName="Anesthésie locorégionale péridurale ou épidurale" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP">
                <originalText><reference value="#ANEST-typeAnestesie-02"/></originalText>
              </code>
              <text><reference value="#ANEST-typeAnestesie-02"/></text>
              <statusCode code="completed"/>
              <effectiveTime value="20200319"/>
              <!-- [0..1] Localisation anatomique : valeur issue du JDV_LocalisationAnesthesie_CISIS (1.2.250.1.213.1.1.5.641) -->
              <targetSiteCode code="182245002" displayName="membre supérieur entier" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                <originalText><reference value="#ANEST-localisation-02"/></originalText>
                <!-- [0..1] Latéralité : JDV_Lateralite_CISIS (1.2.250.1.213.1.1.5.160) -->
                <qualifier>
                  <name code="20228-3" displayName="Latéralité" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <value code="24028007" displayName="droit" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                    <originalText><reference value="#ANEST-lateralite-02"/></originalText>
                  </value>
                </qualifier>
              </targetSiteCode>
              <!-- [0..1] Entrée FR-Simple-Observation : Difficulté -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-023" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP" displayName="Précision difficulté"/>
                  <text><reference value="#ANEST-difficulte-02"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Difficulté : valeur issue du JDV_Difficulte_CISIS (1.2.250.1.213.1.1.5.494) -->                  
                  <value xsi:type="CD" code="36203004" displayName="facile" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                </observation>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id de DM -->
                  <id root="E085B89C-FC72-4307-94BD-287CEBEB1548"/>
                  <!-- code de DM référencé -->
                  <code code="N020101" displayName="CATHÉTERS ET SETS DE PÉRIDURALE" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [0..1] Entrée Acte : Accès veineux périphérique (à créer uniquement si Accès veineux périphérique) -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="D1E1D926-C275-42E1-BD84-356661ECE788"/>
              <code code="MED-658" displayName="Pose d'un cathéter veineux périphérique" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP">
                <originalText><reference value="acces-veineux-peripherique"/></originalText>
              </code>
              <text><reference value="#acces-veineux-peripherique"/></text>
              <statusCode code="completed"/>
              <effectiveTime value="20200319"/>
              <!-- [0..1] Localisation anatomique : valeur issue du JDV_AbordVeineuxPeripherique_CISIS (1.2.250.1.213.1.1.5.495) -->
              <targetSiteCode code="181387000" displayName="veines du membre supérieur entier" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                <originalText><reference value="#acces-veineux-peripherique-abord"/></originalText>
                <!-- [0..1] Latéralité : JDV_Lateralite_CISIS (1.2.250.1.213.1.1.5.160) -->
                <qualifier>
                  <name code="20228-3" displayName="Latéralité" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <value code="24028007" displayName="droit" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                    <originalText><reference value="#acces-veineux-peripherique-lateralite"/></originalText>
                  </value>
                </qualifier>
              </targetSiteCode>
              <!-- [0..1] Entrée FR-Simple-Observation : Difficulté -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-023" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP" displayName="Précision difficulté"/>
                  <text><reference value="#acces-veineux-peripherique-difficulte"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Difficulté : valeur issue du JDV_Difficulte_CISIS (1.2.250.1.213.1.1.5.494) -->
                  <value xsi:type="CD" code="36203004" displayName="facile" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                </observation>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id de DM -->
                  <id root="E085B89C-FC72-4307-94BD-287CEBEB2211"/>
                  <!-- code de DM référencé -->
                  <code code="C010101" displayName="CATHÉTERS VEINEUX PÉRIPHÉRIQUES" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [0..1] Entrée Acte : Acces veineux central (à créer uniquement si Accès veineux central) -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="CFF8AFA9-1C53-4C48-819A-3B1A65CDF34D"/>
              <code code="EPLF002" displayName="Pose d'un cathéter veineux central, par voie transcutanée" codeSystem="1.2.250.1.213.2.5" codeSystemName="CCAM">
                <originalText><reference value="acces-veineux-central"/></originalText>
              </code>
              <text><reference value="#acces-veineux-central"/></text>
              <statusCode code="completed"/>
              <effectiveTime value="20200319"/>
              <!-- [0..1] Localisation anatomique : valeur issue du JDV_AbordVeineuxCentral_CISIS (1.2.250.1.213.1.1.5.496) -->
              <targetSiteCode xsi:type="CD" code="362071002" displayName="veine fémorale entière" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                <originalText><reference value="#acces-veineux-central-abord"/></originalText>
                <!-- [0..1] Latéralité : JDV_Lateralite_CISIS (1.2.250.1.213.1.1.5.160) -->
                <qualifier>
                  <name code="20228-3" displayName="Latéralité" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <value code="24028007" displayName="droit" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                    <originalText><reference value="#acces-veineux-central-lateralite"/></originalText>
                  </value>
                </qualifier>
              </targetSiteCode>
              <!-- [0..1] Entrée FR-Simple-Observation : Difficulté -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-023" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP" displayName="Précision difficulté"/>
                  <text><reference value="#acces-veineux-central-difficulte"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Difficulté : valeur issue du JDV_Difficulte_CISIS (1.2.250.1.213.1.1.5.494) -->
                  <value xsi:type="CD" code="36203004" displayName="facile" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                </observation>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id de DM -->
                  <id root="909CA0F1-04C2-4B42-86A1-FB346AB218CC"/>
                  <!-- code de DM référencé -->
                  <code code="C0102" displayName="CATHÉTERS VEINEUX CENTRAUX" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id de DM -->
                  <id root="0DDF2334-BF23-49C1-B9C0-B965F36C3446"/>
                  <!-- code de DM référencé -->
                  <code code="C010204" displayName="SYSTÈMES D'ACCÈS VEINEUX IMPLANTABLES" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [0..1] Entrée Acte : Pose d'un cathéter intra-artériel (à créer uniquement si Pose d'un cathéter intra-artériel) -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="31E2E35D-65AA-4032-81B6-EFFB23DA60B4"/>
              <!-- Code et libellé de l'acte -->
              <code code="MED-632" displayName="Pose d'un cathéter intra-artériel" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
              <text><reference value="#catheter"/></text>
              <statusCode code="completed"/>
              <!-- Date de l'acte -->
              <effectiveTime value="20200319"/>
              <!-- [0..1] Localisation anatomique : JDV_AccesArtere_CISIS (1.2.250.1.213.1.1.5.516) -->
              <targetSiteCode code="244332003" displayName="artère fémorale entière" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                <originalText><reference value="#catheter-abord"/></originalText>
                <!-- [0..1] Latéralité : JDV_Lateralite_CISIS(1.2.250.1.213.1.1.5.160) -->
                <qualifier>
                  <name code="20228-3" displayName="Latéralité" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <value code="24028007" displayName="droit" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                    <originalText><reference value="#catheter-lateralite"/></originalText>
                  </value>
                </qualifier>
              </targetSiteCode>
              <!-- [0..1] Entrée FR-Simple-Observation : Difficulté -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-023" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP" displayName="Précision difficulté"/>
                  <text><reference value="#catheter-difficulte"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Difficulté : valeur issue du JDV_Difficulte_CISIS (1.2.250.1.213.1.1.5.494) -->
                  <value xsi:type="CD" code="36203004" displayName="facile" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                </observation>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id de DM -->
                  <id root="D062C86F-DDDB-4CE6-8FAD-2E4B7340D88A"/>
                  <!-- code de DM référencé -->
                  <code code="C0103" displayName="CATHETERS ARTERIELS" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [0..1] Entrée Acte : Ventilation au masque (à créer uniquement si Ventilation au masque) -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="8F3CE6C6-3950-428C-8683-87C8BEA1DEBD"/>
              <!-- Code et libellé de l'acte -->
              <code code="MED-671" displayName="Ventilation au masque" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
              <text><reference value="#ventilation-masque"/></text>
              <statusCode code="completed"/>
              <!-- Date de l'acte -->
              <effectiveTime value="20200319"/>
              <!-- [0..1] Localisation anatomique -->
              <targetSiteCode nullFlavor="NA"/>
              <!-- [0..1] Entrée FR-Simple-Observation : Difficulté -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-023" displayName="Précisions difficultés" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                  <text><reference value="#ventilation-masque-difficulte"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Difficulté : valeur issue du JDV_Difficulte_CISIS (1.2.250.1.213.1.1.5.494) -->
                  <value xsi:type="CD" code="36203004" displayName="facile" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                </observation>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id du DM référencé -->
                  <id root="E6297058-FE7F-4540-AF09-86E7F3D2EDA6"/>
                  <!-- code de DM référencé -->
                  <code code="R0102" displayName="MASQUES ET TUBES LARYNGÉS" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"> </code>
                </act>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [0..1] Entrée Acte : Ventilation avec un MASQUES ET TUBES LARYNGÉS (à créer uniquement si Ventilation avec un MASQUES ET TUBES LARYNGÉS) -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="8E882DD6-BC20-449E-A6E9-2CF681D7ECFE"/>
              <!-- Code et libellé de l'acte -->
              <code code="GDFA014" displayName="Laryngectomie supraglottique" codeSystem="1.2.250.1.213.2.5" codeSystemName="CCAM"/>
              <text><reference value="#ventilation-dispositif-supraglottique"/></text>
              <statusCode code="completed"/>
              <!-- Date de l'acte -->
              <effectiveTime value="20200319"/>
              <!-- [0..1] Localisation anatomique -->
              <targetSiteCode nullFlavor="NA"/>
              <!-- [0..1] Entrée FR-Simple-Observation : Difficulté -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-023" displayName="Précisions difficultés" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                  <text><reference value="#ventilation-dispositif-supraglottique-difficulte"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Difficulté : valeur issue du JDV_Difficulte_CISIS (1.2.250.1.213.1.1.5.494) -->
                  <value xsi:type="CD" code="36203004" displayName="facile" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                </observation>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id du DM référencé -->
                  <id root="E6297058-FE7F-4540-AF09-86E7F3D2EDA6"/>
                  <!-- code de DM référencé -->
                  <code code="R0102" displayName="MASQUES ET TUBES LARYNGÉS" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"> </code>
                </act>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [0..1] Entrée Acte : Intubation : Intubation orotrachéale/Intubation nasotrachéale/Abord trachéal direct (à créer uniquement si Intubation) -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="3B1B8223-49E2-455E-90A1-BD1B457297E6"/>
              <!-- Code et libellé de l'acte -->
              <code code="GELD004" displayName="Intubation trachéale" codeSystem="1.2.250.1.213.2.5" codeSystemName="CCAM">
                <originalText><reference value="#intubation"/></originalText>
              </code>
              <text><reference value="#intubation"/></text>
              <statusCode code="completed"/>
              <!-- Date de l'acte -->
              <effectiveTime value="20200319"/>
              <!-- [0..1] Localisation anatomique : JDV_TypeIntubation_CISIS (1.2.250.1.213.1.1.5.524) -->
              <targetSiteCode code="MED-655" displayName="Intubation orotrachéale" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP">
                <originalText><reference value="#intubation-abord"/></originalText>
              </targetSiteCode>
              <!-- [0..1] Entrée FR-Simple-Observation : Difficulté -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-023" displayName="Précisions difficultés" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                  <text><reference value="#intubation-difficulte"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Difficulté : valeur issue du JDV_Difficulte_CISIS (1.2.250.1.213.1.1.5.494) -->
                  <value xsi:type="CD" code="52925006" displayName="difficile" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                </observation>
              </entryRelationship>
              <!-- [0..1] Entrée FR-Simple-Observation : Score de Cormack -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id root="3DAC7355-184B-4FC8-95E3-03146498F3DA"/>
                  <code code="MED-594" displayName="Score de Cormack" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                  <text><reference value="#scoreCormack1"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Score de Cormak : valeur issue du JDV_ScoreCormack_CISIS (1.2.250.1.213.1.1.5.502) -->
                  <value xsi:type="CD" code="MED-621" displayName="Grade 3 : Seule une infime partie de la glotte est vue" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP">
                    <originalText><reference value="#scoreCormack"/></originalText>
                  </value>
                </observation>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM (Sonde d'intubation) -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id du DM référencé -->
                  <id root="4D8BDD45-20FB-45FF-B32B-CB5018EDF100"/>
                  <!-- Type de DM -->
                  <code code="R010302" displayName="SONDES D'INTUBATION ENDOTRACHÉALES À BALLONNET" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM (Long mandrin béquillé) -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id de DM référencé -->
                  <id root="3858EAD3-0876-4C97-8FBF-D4B2E82DB9BE"/>
                  <!-- Type de DM -->
                  <code code="R018004" displayName="GUIDES À CHANGEURS D'INTUBATION" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM (Vidéolaryngoscope) -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id du DM référencé -->
                  <id root="1E1EFEB6-8D8A-4864-8144-63082A1E057A"/>
                  <!-- Type de DM -->
                  <code code="Z12021004" displayName="VIDÉOLARYNGOSCOPES" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM (LMA fast trach) -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id du DM référencé -->
                  <id root="6AD5FDDD-A700-4CE3-84AF-EE9E39A3AB54"/>
                  <!-- Type de DM -->
                  <code code="R0102" displayName="MASQUES ET TUBES LARYNGÉS POUR INTUBATION" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM (Fibroscope) -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id du DM référencé -->
                  <id root="742A7658-F4A2-4641-B0F0-380DD414EC9D"/>
                  <!-- Type de DM -->
                  <code code="Z12029006" displayName="FIBROSCOPES D’INTUBATION" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM (SONDES NASALES D'OXYGÉNOTHÉRAPIE HAUT DÉBIT) -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id du DM référencé -->
                  <id root="86C9CAD3-7482-4DBC-8BCB-BDB7375EE148"/>
                  <!-- Type de DM -->
                  <code code="R0301020302" displayName="SONDES NASALES D'OXYGÉNOTHÉRAPIE HAUT DÉBIT" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [0..1] Entrée Acte : Trachéotomie, par cervicotomie -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="8E882DD6-BC20-449E-A6E9-2CF681D5EDFF"/>
              <!-- Code et libellé de l'acte -->
              <code code="GEPA004" displayName="Trachéotomie, par cervicotomie" codeSystem="1.2.250.1.213.2.5" codeSystemName="CCAM"/>
              <text><reference value="#Tracheotomie-par-cervicotomie"/></text>
              <statusCode code="completed"/>
              <!-- Date de l'acte -->
              <effectiveTime value="20200319"/>
              <!-- [0..1] Localisation anatomique -->
              <targetSiteCode nullFlavor="NA"/>
              <!-- [0..1] Entrée FR-Simple-Observation : Difficulté -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-023" displayName="Précisions difficultés" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                  <text><reference value="#Tracheotomie-par-cervicotomie-difficulte"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Difficulté : valeur issue du JDV_Difficulte_CISIS (1.2.250.1.213.1.1.5.494) -->
                  <value xsi:type="CD" code="36203004" displayName="facile" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                </observation>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id du DM référencé -->
                  <id root="E6297058-FE7F-4540-AF09-86E7F3D2EDA6"/>
                  <!-- code du DM référencé -->
                  <code code="R01050201" displayName="CANULES ET SETS DE TRACHÉOTOMIE, À BALLONNET, NON ARMÉES" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"> </code>
                </act>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id du DM référencé -->
                  <id root="E6297058-FE7F-4540-AF09-86E7F3D2EDA6"/>
                  <!-- code de DM référencé -->
                  <code code="R0106" displayName="SETS DE TRACHÉOTOMIE PERCUTANÉE" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"> </code>
                </act>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [0..1] Entrée Acte : Pose d'une sonde gastrique (à créer uniquement si Pose d'une sonde gastrique) -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="11E2E35D-65AA-4032-81B6-EFFB23DA50B6"/>
              <!-- Code et libellé de l'acte -->
              <code code="MED-876" displayName="Pose d'une sonde nasogastrique" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
              <text><reference value="#sondeGastrique"/></text>
              <statusCode code="completed"/>
              <!-- Date de l'acte -->
              <effectiveTime value="20200319"/>
              <!-- [0..1] Entrée FR-Simple-Observation : Difficulté -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-023" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP" displayName="Précision difficulté"/>
                  <text><reference value="#sondeGastrique-difficulte"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Difficulté : valeur issue du JDV_Difficulte_CISIS (1.2.250.1.213.1.1.5.494) -->
                  <value xsi:type="CD" code="36203004" displayName="facile" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                </observation>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id de DM -->
                  <id root="73FB6512-8E8B-42B6-89A3-0C70393F3901"/>
                  <!-- code de DM référencé -->
                  <code code="G02020101" displayName="SONDES NASO-GASTRIQUES" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [0..*] Entrée Acte : Utilisation d’un DM préalablement posé (à créer uniquement si utilisation d’un DM préalablement posé ) -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="00E2E35D-65AA-4035-81B6-EFFB11DA50F8"/>
              <!-- Code et libellé de l'acte -->
              <code code="MED-885" displayName="Utilisation d’un DM préalablement posé" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
              <text><reference value="#DM-prealablement-pose"/></text>
              <statusCode code="completed"/>
              <!-- Date de l'acte -->
              <effectiveTime value="20200319"/>
              <!-- [0..1] Localisation anatomique : JDV_AbordVeineuxPeripherique_CISIS (1.2.250.1.213.1.1.5.495) ou     
                JDV_AbordVeineuxCentral_CISIS  (1.2.250.1.213.1.1.5.496) ou JDV_AccesArtere_CISIS(1.2.250.1.213.1.1.5.516) ou 
                JDV_TypeIntubation_CISIS (1.2.250.1.213.1.1.5.524) -->
              <targetSiteCode xsi:type="CD" code="362071002" displayName="veine fémorale entière" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                <originalText><reference value="#DM-prealablement-pose-localisationAnatomique"/></originalText>
                <!-- [0..1] Latéralité : JDV_Lateralite_CISIS(1.2.250.1.213.1.1.5.160) -->
                <qualifier>
                  <name code="20228-3" displayName="Latéralité" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <value code="24028007" displayName="droit" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                    <originalText><reference value="#DM-prealablement-pose-lateralite"/></originalText>
                  </value>
                </qualifier>
              </targetSiteCode>
              <!-- [0..1] Entrée FR-Simple-Observation : Difficulté -->
              <entryRelationship typeCode="COMP" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-023" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP" displayName="Précision difficulté"/>
                  <text><reference value="#sondeGastrique-difficulte"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <!-- Difficulté : valeur issue du JDV_Difficulte_CISIS (1.2.250.1.213.1.1.5.494) -->
                  <value xsi:type="CD" code="36203004" displayName="facile" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                </observation>
              </entryRelationship>
              <!-- [0..*] Entrée FR-Reference-interne : Réference interne au DM -->
              <entryRelationship typeCode="REFR" inversionInd="false">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.36"/>
                  <!-- id de DM -->
                  <id root="A49B3402-2D7D-496A-B7FC-9F9450B2F915"/>
                  <!-- valeur provenant du guide SFAR -->
                  <code code="C010204" displayName="SYSTÈMES D'ACCÈS VEINEUX IMPLANTABLES" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"/>
                </act>
              </entryRelationship>
            </procedure>
          </entry>
          <!-- [0..1] Entrée Acte : Transfusion (à créer uniquement si Transfusion)  -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.29"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.62"/>
              <id root="9E4A04DC-B9E6-4590-B3AD-996B70511D59"/>
              <!-- Type de transfusion : voir guide SFAR -->
              <code code="FELF006" displayName="Transfusion de produit sanguin labile non érythrocytaire" codeSystem="1.2.250.1.213.2.5" codeSystemName="CCAM"/>
              <text><reference value="#transfusion"/></text>
              <statusCode code="completed"/>
              <effectiveTime value="20200319"/>
            </procedure>
          </entry>
        </section>
      </component>
      <!-- [0..1] Section FR-Dispositifs-medicaux -->
      <component>
        <section>
          <!-- Conformité CCD -->
          <templateId root="2.16.840.1.11383.10.20.1.7"/>
          <!-- Conformité IHE -->
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.5.3.5"/>
          <!-- Conformité CI-SIS -->
          <templateId root="1.2.250.1.213.1.1.2.1"/>
          <id root="5D743612-F997-4BCA-B990-B06A33B27B19"/>
          <code code="46264-8" displayName="Dispositifs médicaux" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
          <title>Dispositifs médicaux</title>
          <text>
            <paragraph>DM posés pendant l'intervention</paragraph>
            <table border="0">
              <thead align="center">
                <tr>
                  <th>Type de dispositif médical</th>
                  <th>Taille ou diamètre</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <content ID="DM-01">[N020101] CATHÉTERS ET SETS DE PÉRIDURALE</content>
                  </td>
                  <td/>
                </tr>
                <tr>
                  <td>
                    <content ID="DM-02">[C010101] CATHÉTERS VEINEUX PÉRIPHÉRIQUES</content>
                  </td>
                  <td/>
                </tr>
                <tr>
                  <td>
                    <content ID="DM-03">[C0102] CATHÉTERS VEINEUX CENTRAUX</content>
                  </td>
                  <td/>
                </tr>
                <tr>
                  <td>
                    <content ID="DM-04">[C0103] CATHETERS ARTERIELS</content>
                  </td>
                  <td/>
                </tr>
                <tr>
                  <td>
                    <content ID="DM-05">[R0102] MASQUES ET TUBES LARYNGÉS</content>
                  </td>
                  <td/>
                </tr>
                <tr>
                  <td>
                    <content ID="DM-06">[R0102] MASQUES ET TUBES LARYNGÉS</content>
                  </td>
                  <td>
                    <content ID="DM-06-taille">2,5</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="DM-07">[R010302] SONDES D'INTUBATION ENDOTRACHÉALES À BALLONNET</content>
                  </td>
                  <td>
                    <content ID="DM-07-taille">3</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="DM-08">[R01050201] TRACHEOTOMIE</content>
                  </td>
                  <td/>
                </tr>
                <tr>
                  <td>
                    <content ID="DM-09">[G02020101] SONDES NASO-GASTRIQUES</content>
                  </td>
                  <td>
                    <content ID="DM-09-diametre">18</content>
                  </td>
                </tr>
              </tbody>
            </table>
            <paragraph>DM préalablement posés</paragraph>
            <table border="0">
              <thead>
                <tr>
                  <th>Type de dispositif médical</th>
                  <th>Taille ou diamètre</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <content ID="DM-10">[C010204] CHAMBRE CATHETER IMPLANTABLE INTRAVEINEUX
                      SOUS-CUTANÉS</content>
                  </td>
                  <td/>
                </tr>
              </tbody>
            </table>
          </text>
          <!-- DM posés pendant l'intervention -->
          <!-- [0..1] Entrée Dispositif médical : N020101 CATHÉTERS ET SETS DE PÉRIDURALE -->
          <entry>
            <supply classCode="SPLY" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.34"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.20"/>
              <!-- Identifiant de la fourniture du DM -->
              <id root="CE31E8A4-A6BD-437F-BF1F-77DF24844722"/>
              <!-- Référence vers la partie narrative de la section DM -->
              <text><reference value="#DM-01"/>
              </text>
              <!-- Date d'utilisation du DM -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="20200319"/>
              </effectiveTime>
              <!-- Description du dispositif médical -->
              <participant typeCode="DEV">
                <participantRole classCode="MANU">
                  <!-- Type de DM -->
                  <playingDevice classCode="DEV" determinerCode="INSTANCE">
                    <code code="N020101" displayName="CATHÉTERS ET SETS DE PÉRIDURALE" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN">
                      <originalText><reference value="#DM-01"/></originalText>
                    </code>
                  </playingDevice>
                </participantRole>
              </participant>
            </supply>
          </entry>
          <!-- [0..*] Entrée Dispositif médical : C010101 CATHÉTERS VEINEUX PÉRIPHÉRIQUES -->
          <entry>
            <supply classCode="SPLY" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.34"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.20"/>
              <!-- Identifiant de la fourniture du DM -->
              <id root="B2753194-C06F-4581-8362-BDFDE78C901D"/>
              <!-- Référence vers la partie narrative de la section DM -->
              <text><reference value="#DM-02"/>
              </text>
              <!-- Date d'utilisation du DM -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="20200319"/>
              </effectiveTime>
              <!-- Description du dispositif médical -->
              <participant typeCode="DEV">
                <participantRole classCode="MANU">
                  <!-- Type de DM -->
                  <playingDevice classCode="DEV" determinerCode="INSTANCE">
                    <code code="C010101" displayName="CATHÉTERS VEINEUX PÉRIPHÉRIQUES" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN">
                      <originalText><reference value="#DM-02"/></originalText>
                    </code>
                  </playingDevice>
                </participantRole>
              </participant>
            </supply>
          </entry>
          <!-- [0..*] Entrée Dispositif médical : C0102 CATHÉTERS VEINEUX CENTRAUX -->
          <entry>
            <supply classCode="SPLY" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.34"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.20"/>
              <!-- Identifiant de la fourniture du DM -->
              <id root="6B648226-9221-4FC5-B935-DB515708014D"/>
              <!-- Référence vers la partie narrative de la section DM -->
              <text><reference value="#DM-03"/>
              </text>
              <!-- Date d'utilisation du DM -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="20200319"/>
              </effectiveTime>
              <!-- Description du dispositif médical -->
              <participant typeCode="DEV">
                <participantRole classCode="MANU">
                  <!-- Type de DM -->
                  <playingDevice classCode="DEV" determinerCode="INSTANCE">
                    <code code="C0102" displayName="CATHÉTERS VEINEUX CENTRAUX" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN">
                      <originalText><reference value="#DM-03"/></originalText>
                    </code>
                  </playingDevice>
                </participantRole>
              </participant>
            </supply>
          </entry>
          <!-- [0..*] Entrée Dispositif médical : C0103 CATHETERS ARTERIELS -->
          <entry>
            <supply classCode="SPLY" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.34"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.20"/>
              <!-- Identifiant de la fourniture du DM -->
              <id root="74999C4B-E482-4A58-B02A-E4921DD548F4"/>
              <!-- Référence vers la partie narrative de la section DM -->
              <text><reference value="#DM-04"/>
              </text>
              <!-- Date d'utilisation du DM -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="20200319"/>
              </effectiveTime>
              <!-- Description du dispositif médical -->
              <participant typeCode="DEV">
                <participantRole classCode="MANU">
                  <!-- Type de DM -->
                  <playingDevice classCode="DEV" determinerCode="INSTANCE">
                    <code code="C0103" displayName="CATHETERS ARTERIELS" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN">
                      <originalText><reference value="#DM-04"/></originalText>
                    </code>
                  </playingDevice>
                </participantRole>
              </participant>
            </supply>
          </entry>
          <!-- [0..*] Entrée Dispositif médical : R0102 MASQUES ET TUBES LARYNGÉS -->
          <entry>
            <supply classCode="SPLY" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.34"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.20"/>
              <!-- Identifiant de la fourniture du DM -->
              <id root="A57EFD03-ECA6-4A29-92B4-B1DCEE469077"/>
              <!-- Référence vers la partie narrative de la section DM -->
              <text><reference value="#DM-05"/>
              </text>
              <!-- Date d'utilisation du DM -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="20200319"/>
              </effectiveTime>
              <!-- Description du dispositif médical -->
              <participant typeCode="DEV">
                <participantRole classCode="MANU">
                  <!-- Type de DM -->
                  <playingDevice classCode="DEV" determinerCode="INSTANCE">
                    <code code="R0102" displayName="MASQUES ET TUBES LARYNGÉS" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN">
                      <originalText><reference value="#DM-05"/></originalText>
                    </code>
                  </playingDevice>
                </participantRole>
              </participant>
            </supply>
          </entry>
          <!-- [0..*] Entrée Dispositif médical : R0102 MASQUES ET TUBES LARYNGÉS -->
          <entry>
            <supply classCode="SPLY" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.34"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.20"/>
              <!-- Identifiant de la fourniture du DM -->
              <id root="33CA2DCA-EBB8-4FC2-99BA-7069A4CA232D"/>
              <!-- Référence vers la partie narrative de la section DM -->
              <text><reference value="#DM-06"/>
              </text>
              <!-- Date d'utilisation du DM -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="20200319"/>
              </effectiveTime>
              <!-- Description du dispositif médical -->
              <participant typeCode="DEV">
                <participantRole classCode="MANU">
                  <!-- Type de DM -->
                  <playingDevice classCode="DEV" determinerCode="INSTANCE">
                    <code code="R0102" displayName="MASQUES ET TUBES LARYNGÉS" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN">
                      <originalText><reference value="#DM-06"/></originalText>
                    </code>
                  </playingDevice>
                </participantRole>
              </participant>
              <!-- Taille du DM -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-234" displayName="Taille" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                  <text><reference value="#DM-06-taille"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <value xsi:type="REAL" value="2.5"/>
                </observation>
              </entryRelationship>
            </supply>
          </entry>
          <!-- [0..*] Entrée Dispositif médical : R010302 SONDES D'INTUBATION ENDOTRACHÉALES À BALLONNET -->
          <entry>
            <supply classCode="SPLY" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.34"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.20"/>
              <!-- Identifiant de la fourniture du DM -->
              <id root="456C06B8-5117-452B-A4CC-FB0BB18EAC39"/>
              <!-- Référence vers la partie narrative de la section DM -->
              <text><reference value="#DM-07"/>
              </text>
              <!-- Date d'utilisation du DM -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="20200319"/>
              </effectiveTime>
              <!-- Description du dispositif médical -->
              <participant typeCode="DEV">
                <participantRole classCode="MANU">
                  <!-- Type de DM -->
                  <playingDevice classCode="DEV" determinerCode="INSTANCE">
                    <code code="R010302" displayName="SONDES D'INTUBATION ENDOTRACHÉALES À BALLONNET" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN">
                      <originalText><reference value="#DM-07"/></originalText>
                    </code>
                  </playingDevice>
                </participantRole>
              </participant>
              <!-- Taille de la sonde -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="GEN-234" displayName="Taille" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                  <text><reference value="#DM-07-taille"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <value xsi:type="REAL" value="3"/>
                </observation>
              </entryRelationship>
            </supply>
          </entry>
          <!-- [0..1] Entrée Dispositif médical : R01050201 CANULES ET SETS DE TRACHÉOTOMIE, À BALLONNET, NON ARMÉES -->
          <entry>
            <supply classCode="SPLY" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.34"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.20"/>
              <!-- Identifiant de la fourniture du DM -->
              <id root="9DA3171E-00CD-4675-828C-1A8DC478A0DE"/>
              <!-- Référence vers la partie narrative de la section DM -->
              <text><reference value="#DM-08"/>
              </text>
              <!-- Date d'utilisation du DM -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="20200319"/>
              </effectiveTime>
              <!-- Description du dispositif médical -->
              <participant typeCode="DEV">
                <participantRole classCode="MANU">
                  <!-- Type de DM -->
                  <playingDevice classCode="DEV" determinerCode="INSTANCE">
                    <code code="R01050201" displayName="CANULES ET SETS DE TRACHÉOTOMIE, À BALLONNET, NON ARMÉES" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN">
                      <originalText><reference value="#DM-08"/></originalText>
                    </code>
                  </playingDevice>
                </participantRole>
              </participant>
            </supply>
          </entry>
          <!-- [0..*] Entrée Dispositif médical : G02020101 SONDES NASO-GASTRIQUES -->
          <entry>
            <supply classCode="SPLY" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.34"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.20"/>
              <!-- Identifiant de la fourniture du DM -->
              <id root="5CB75BC4-30C0-4AFD-BF86-B0F307758A4D"/>
              <!-- Référence vers la partie narrative de la section DM -->
              <text><reference value="#DM-09"/>
              </text>
              <!-- Date d'utilisation du DM -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="20200319"/>
              </effectiveTime>
              <!-- Description du dispositif médical -->
              <participant typeCode="DEV">
                <participantRole classCode="MANU">
                  <!-- Type de DM -->
                  <playingDevice classCode="DEV" determinerCode="INSTANCE">
                    <code code="G02020101" displayName="SONDES NASO-GASTRIQUES" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN">
                      <originalText><reference value="#DM-09"/></originalText>
                    </code>
                  </playingDevice>
                </participantRole>
              </participant>
              <!-- Diamètre de la sonde gastrique -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id nullFlavor="UNK"/>
                  <code code="L0033" displayName="Diamètre" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                  <text><reference value="#DM-09-diametre"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20200319"/>
                  <value xsi:type="INT" value="18"/>
                </observation>
              </entryRelationship>
            </supply>
          </entry>
          <!-- DM préalablement posés -->
          <!-- [0..1] Entrée Dispositif médical : C010204 CHAMBRE CATHETER IMPLANTABLE INTRAVEINEUX SOUS-CUTANÉ -->
          <entry>
            <supply classCode="SPLY" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.34"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.20"/>
              <!-- Identifiant de la fourniture du DM -->
              <id root="BC600215-BC59-4DBB-AFF9-669C8D694AEA"/>
              <!-- Référence vers la partie narrative de la section DM -->
              <text><reference value="#DM-10"/>
              </text>
              <!-- Date d'utilisation du DM -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="20200319"/>
              </effectiveTime>
              <!-- Description du dispositif médical -->
              <participant typeCode="DEV">
                <participantRole classCode="MANU">
                  <!-- Type de DM -->
                  <playingDevice classCode="DEV" determinerCode="INSTANCE">
                    <code code="C010204" displayName="SYSTÈMES D'ACCÈS VEINEUX IMPLANTABLES" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN">
                      <originalText><reference value="#DM-10"/></originalText>
                    </code>
                  </playingDevice>
                </participantRole>
              </participant>
            </supply>
          </entry>
        </section>
      </component>
      <!-- [1..1] Section FR-Traitements-administres -->
      <component>
        <section>
          <!-- Conformité IHE PCC -->
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.3.21"/>
          <!-- Conformité CI-SIS -->
          <templateId root="1.2.250.1.213.1.1.2.145"/>
          <id root="F7597366-7D4A-4C92-9A1D-E9E01BF1FE42"/>
          <code code="18610-6" displayName="Traitements administrés" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
          <title>Médicaments et gaz administrés</title>
          <text>
            <table border="0">
              <thead align="center">
                <tr>
                  <th align="center">Produit</th>
                  <th align="center">Dose cumulée</th>
                </tr>
              </thead>
              <tbody align="left">
                <tr>
                  <td>
                    <content ID="Trait-01">AMOXICILLINE ET INHIBITEUR D'ENZYME [ATC:
                      J01CR02]</content>
                  </td>
                  <td>
                    <content ID="Dose-01">100 g/ml</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="Trait-02">LIDOCAÏNE [ATC: N01BB02]</content>
                  </td>
                  <td>
                    <content ID="Dose-02">20 g/ml</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="Trait-03">ISOFLURANE [ATC: N01AB06]</content>
                  </td>
                  <td>
                    <content ID="Dose-03">500 g/ml</content>
                  </td>
                </tr>
              </tbody>
            </table>
          </text>
          <!-- [1..*] Entrée FR-Traitement : AMOXICILLINE ET INHIBITEUR D'ENZYME [ATC: J01CR02] -->
          <entry>
            <substanceAdministration classCode="SBADM" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.24"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.7"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.42"/>
              <!-- Mode d'administration (normal) -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.7.1"/>
              <id root="D408C376-8BE1-4994-A8D2-CCB0F507DB8D"/>
              <code code="DRUG" displayName="Médicament" codeSystem="2.16.840.1.113883.5.4" codeSystemName="HL7:ActCode"/>
              <text><reference value="#Trait-01"/></text>
              <statusCode code="completed"/>
              <!-- Durée du traitement -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="202003190911"/>
                <high value="202003191020"/>
              </effectiveTime>
              <!-- Voie d'administration -->
              <routeCode code="20045000" displayName="Voie intraveineuse" codeSystemName="EDQM" codeSystem="0.4.0.127.0.16.1.1.2.1"/>
              <!-- Dose -->
              <doseQuantity>
                <low value="100" unit="mg">
                  <translation>
                    <originalText><reference value="#Dose-01"/></originalText>
                  </translation>
                </low>
                <high value="100" unit="mg">
                  <translation>
                    <originalText><reference value="#Dose-01"/></originalText>
                  </translation>
                </high>
              </doseQuantity>
              <!-- Médicament -->
              <consumable>
                <manufacturedProduct>
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.53"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.7.2"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.43"/>
                  <manufacturedMaterial>
                    <code code="68132834" displayName="AUGMENTIN 1 g/200 mg, poudre et solvant pour solution injectable / pour perfusion (I.V.)" codeSystem="1.2.250.1.213.2.3.1" codeSystemName="CIS">
                      <originalText mediaType="text/xml">
                        <reference value="#Trait-01"/></originalText>
                      <translation code="J01CR02" displayName="AMOXICILLINE ET INHIBITEUR D'ENZYME" codeSystem="2.16.840.1.113883.6.73" codeSystemName="ATC"> </translation>
                    </code>
                    <name>AUGMENTIN 1 g/200 mg, poudre et solvant pour solution injectable</name>
                  </manufacturedMaterial>
                </manufacturedProduct>
              </consumable>
            </substanceAdministration>
          </entry>
          <!-- [1..*] Entrée FR-Traitement : LIDOCAÏNE [ATC: N01BB02] -->
          <entry>
            <substanceAdministration classCode="SBADM" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.24"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.7"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.42"/>
              <!-- Mode d'administration (normal) -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.7.1"/>
              <id root="0304035E-5CE9-497C-AF21-C420E77098B4"/>
              <code code="DRUG" displayName="Médicament" codeSystem="2.16.840.1.113883.5.4" codeSystemName="HL7:ActCode"/>
              <text><reference value="#Trait-02"/></text>
              <statusCode code="completed"/>
              <!-- Durée du traitement -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="202003190911"/>
                <high value="202003191020"/>
              </effectiveTime>
              <!-- Date de l'injection -->
              <effectiveTime operator="A" value="201702220830"/>
              <!-- Voie d'administration -->
              <routeCode code="20045000" displayName="Voie intraveineuse" codeSystemName="EDQM" codeSystem="0.4.0.127.0.16.1.1.2.1"/>
              <!-- Dose -->
              <doseQuantity>
                <low value="20" unit="mg">
                  <translation>
                    <originalText><reference value="#Dose-02"/></originalText>
                  </translation>
                </low>
                <high value="20" unit="mg">
                  <translation>
                    <originalText><reference value="#Dose-02"/></originalText>
                  </translation>
                </high>
              </doseQuantity>
              <!-- Médicament -->
              <consumable>
                <manufacturedProduct>
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.53"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.7.2"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.43"/>
                  <manufacturedMaterial>
                    <code code="69036269" displayName="CHLORHYDRATE DE LIDOCAINE Renaudin 10 mg/ml, solution injectable" codeSystem="1.2.250.1.213.2.3.1" codeSystemName="CIS">
                      <originalText><reference value="#Trait-02"/></originalText>
                      <translation code="N01BB02" displayName="LIDOCAÏNE" codeSystem="2.16.840.1.113883.6.73" codeSystemName="ATC"> </translation>
                    </code>
                    <name>CHLORHYDRATE DE LIDOCAINE Renaudin 10 mg/ml</name>
                  </manufacturedMaterial>
                </manufacturedProduct>
              </consumable>
            </substanceAdministration>
          </entry>
          <!-- [1..*] Entrée FR-Traitement : ISOFLURANE [ATC: N01AB06] -->
          <entry>
            <substanceAdministration classCode="SBADM" moodCode="EVN">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.24"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.7"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.42"/>
              <!-- Mode d'administration (normal) -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.7.1"/>
              <id root="9DD931ED-81D5-471B-84C1-86641B3B96E5"/>
              <code code="DRUG" displayName="Médicament" codeSystem="2.16.840.1.113883.5.4" codeSystemName="HL7:ActCode"/>
              <text><reference value="#Trait-03"/></text>
              <statusCode code="completed"/>
              <!-- Durée du traitement -->
              <effectiveTime xsi:type="IVL_TS">
                <low value="202003190911"/>
                <high value="202003191020"/>
              </effectiveTime>
              <!-- Voie d'administration -->
              <routeCode code="20045000" displayName="Voie intraveineuse" codeSystemName="EDQM" codeSystem="0.4.0.127.0.16.1.1.2.1"/>
              <!-- Dose -->
              <doseQuantity>
                <low value="500" unit="g/mL">
                  <translation>
                    <originalText><reference value="#Dose-03"/></originalText>
                  </translation>
                </low>
                <high value="500" unit="g/mL">
                  <translation>
                    <originalText><reference value="#Dose-01"/></originalText>
                  </translation>
                </high>
              </doseQuantity>
              <!-- Médicament -->
              <consumable>
                <manufacturedProduct>
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.53"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.7.2"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.43"/>
                  <manufacturedMaterial>
                    <code code="61070419" displayName="ISOFLURANE BELAMONT, gaz anesthésique pour inhalation en flacon" codeSystem="1.2.250.1.213.2.3.1" codeSystemName="CIS">
                      <originalText mediaType="text/xml">
                        <reference value="#Trait-03"/></originalText>
                      <translation code="N01AB06" displayName="ISOFLURANE" codeSystem="2.16.840.1.113883.6.73" codeSystemName="ATC"> </translation>
                    </code>
                    <name>ISOFLURANE BELAMONT, gaz anesthésique pour inhalation en flacon</name>
                  </manufacturedMaterial>
                </manufacturedProduct>
              </consumable>
            </substanceAdministration>
          </entry>
        </section>
      </component>
      <!-- [0..1] Section FR-Commentaire-non-code : Observations particulières ou faits marquants / Évènements -->
      <component>
        <section>
          <!-- Conformité CCD -->
          <templateId root="2.16.840.1.113883.10.12.201"/>
          <!-- Conformité IHE PCC -->
          <templateId root="1.3.6.1.4.1.19376.1.4.1.2.16"/>
          <!-- Conformité CI-SIS -->
          <templateId root="1.2.250.1.213.1.1.2.73"/>
          <code code="55112-7" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
          <title>Observations particulières ou faits marquants / Évènements</title>
          <text>
            <paragraph>(texte libre)</paragraph>
          </text>
        </section>
      </component>
      <!-- [1..1] Section FR-Examen-physique-detaille-code : Complications et symptomes -->
      <component>
        <section>
          <!-- Conformité IHE PCC parent (FR-Examen-physique-non-code) -->
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.3.24"/>
          <!-- Conformité IHE PCC parent (FR-Examen-physique-detaille) -->
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.9.15"/>
          <!-- Conformité IHE PCC -->
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.9.15.1"/>
          <!-- Conformité CI-SIS -->
          <templateId root="1.2.250.1.213.1.1.2.84"/>
          <id root="59DADEFA-BEAB-4414-B9A0-F524DC2A35CB"/>
          <code code="29545-1" displayName="Examen physique" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
          <title>Complications et symptômes</title>
          <text/>
          <!-- [0..1] Sous-section FR-Systeme-cardiovasculaire -->
          <component>
            <section>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.9.29"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.2.98"/>
              <id root="2B1B33B8-148B-48B8-A413-3F2FA65A2F40"/>
              <code code="10200-4" displayName="Système cardiovasculaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
              <title>Système cardiovasculaire</title>
              <text>
                <table border="0">
                  <thead align="center">
                    <tr>
                      <th>Complications et symptômes cardiovasculaires</th>
                      <th>Précision</th>
                    </tr>
                  </thead>
                  <tbody align="left">
                    <tr>
                      <td>
                        <content ID="arret-cardiaque">Arrêt cardiaque, sans précision [CIM-10 :
                          I46.9]</content>
                      </td>
                      <td>
                        <content ID="commentaire-arret-cardiaque">(texte libre) </content>
                        <br/>
                        <content ID="cause_décès_01">Décès du patient : Arrêt cardiaque</content>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <content ID="hypotension">Hypotension [CIM-10 : I95]</content>
                      </td>
                      <td>
                        <content ID="commentaire-hypotension">(texte libre)</content>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <content ID="saignement"> Hémorragie et hématome compliquant un acte à visée
                          diagnostique et thérapeutique non classés ailleurs [CIM-10 :
                          T81.0]</content>
                      </td>
                      <td>
                        <content ID="commentaire-saignement">(texte libre)</content>
                        <br/>
                        <content ID="quantite-saignement">quantité : 20 ml</content>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <content ID="transfusionSanguine">Complications consécutives à une injection
                          thérapeutique, une perfusion et une transfusion [CIM-10 : T80]</content>
                      </td>
                      <td>
                        <content ID="commentaire-transfusion">(texte libre)</content>
                        <br/>
                        <content ID="quantite-transfusion">quantité : 10 ml</content>
                        <br/>
                        <content ID="type-produit-sanguin-labile">type de produit sanguin labile :
                          transfusion de plaquettes</content>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </text>
              <!-- [0..*] Entrée FR-Probleme : Arrêt cardiaque -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="DBB5D1A2-B568-4715-B6B8-647A2477D792"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#arret-cardiaque"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low value="20200319"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="I46.9" displayName="Arrêt cardiaque, sans précision" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#arret-cardiaque"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-arret-cardiaque"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                  <!-- [0..1] Entrée FR-Statut-clinique-du-patient : à créer si décès du patient -->
                  <entryRelationship typeCode="REFR" inversionInd="false">
                    <observation classCode="OBS" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.51"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.1.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.31"/>
                      <code code="11323-3" displayName="Statut clinique du patient" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <!-- Cause du décès -->
                      <text><reference value="#cause_deces_01"/></text>
                      <statusCode code="completed"/>
                      <!-- Valeur provenant du JDV_HealthStatusCodes_CISIS (1.2.250.1.213.1.1.4.2.283.1) -->
                      <value xsi:type="CE" code="419620001" displayName="mort" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </entry>
              <!-- [0..*] Entrée FR-Probleme : Hypotension -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="EEE09996-3DF3-47DE-A963-CD1AB5F376F5"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#hypotension"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low value="20200319"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="I95" displayName="Hypotension" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#hypotension"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-hypotension"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
              <!-- [0..*] Entrée FR-Probleme : Saignement peropératoire (quantité)-->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="6CF58675-79B6-4ABC-A0A4-F52DFC3628A7"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#saignement"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low value="20200319"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="T81.0" displayName="Hémorragie et hématome compliquant un acte à visée diagnostique et thérapeutique, non classés ailleurs" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#saignement"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Simple-Observation : quantité -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <observation classCode="OBS" moodCode="EVN">
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.48"/>
                      <id root="EEE09996-3DF3-47DE-A963-CD1AB5F257E3"/>
                      <code code="GEN-167" displayName="Quantité" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                      <text><reference value="#quantite-saignement"/></text>
                      <statusCode code="completed"/>
                      <effectiveTime>
                        <low value="20200319"/>
                      </effectiveTime>
                      <value xsi:type="PQ" value="20" unit="mL"/>
                    </observation>
                  </entryRelationship>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-saignement"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
              <!-- [0..*] Entrée FR-Probleme : Transfusion / Type de produit sanguin labile / quantité-->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="56E84ADC-3451-4EE6-A314-4AC38B7F2D39"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#transfusionSanguine"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low value="20200319"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="T80" displayName="Complications consécutives à une injection thérapeutique, une perfusion et une transfusion" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#transfusionSanguine"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Simple-Observation : Type de produit sanguin labile -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <observation classCode="OBS" moodCode="EVN">
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.48"/>
                      <id root="EEE09996-3DF3-33DE-A963-CD1AB5F117FF"/>
                      <code code="933-2" displayName="Type de produit sanguin" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#type-produit-transfusion"/></text>
                      <statusCode code="completed"/>
                      <effectiveTime>
                        <low value="20200319"/>
                      </effectiveTime>
                      <!-- valeur provenant de JDV_TypeProduitSanguinLabile_CISIS (1.2.250.1.213.1.1.5.587) -->
                      <value xsi:type="CD" code="C15366" codeSystem="2.16.840.1.113883.3.26.1.1" codeSystemName="NCIT" displayName="Transfusion de plaquettes">
                        <originalText><reference value="#type-produit-sanguin-labile"/></originalText>
                      </value>
                    </observation>
                  </entryRelationship>
                  <!-- [0..1] Entrée FR-Simple-Observation : quantité -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <observation classCode="OBS" moodCode="EVN">
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.48"/>
                      <id root="EEE09996-3DF3-47DE-A963-CD1AB5F257E3"/>
                      <code code="GEN-167" displayName="Quantité" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                      <text><reference value="#quantite-transfusion"/></text>
                      <statusCode code="completed"/>
                      <effectiveTime>
                        <low value="20200319"/>
                      </effectiveTime>
                      <value xsi:type="PQ" value="10" unit="mL"/>
                    </observation>
                  </entryRelationship>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-transfusion"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
            </section>
          </component>
          <!-- [0..1] Sous-section FR-Systeme-respiratoire  -->
          <component>
            <section>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.9.30"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.2.99"/>
              <id root="9F00D94C-1780-44F0-B107-5EF7933E3B70"/>
              <code code="11412-4" displayName="Système respiratoire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
              <title>Système respiratoire</title>
              <text>
                <table border="0">
                  <thead align="center">
                    <tr>
                      <th>Complications et symptômes respiratoires</th>
                      <th>Précision</th>
                    </tr>
                  </thead>
                  <tbody align="left">
                    <tr>
                      <td>
                        <content ID="bris-dentaire">Fracture dentaire [CIM-10 : S02.5]</content>
                      </td>
                      <td>
                        <content ID="commentaire-bris-dentaire">(Texte libre)</content>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <content ID="dyspnee">Dyspnée [CIM-10 : R06.0]</content>
                      </td>
                      <td>
                        <content ID="commentaire-dyspnee">(Texte libre) Dyspnée majeure
                          peropératoire</content>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </text>
              <!-- [0..*] Entrée FR-Probleme : Bris dentaire -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="36466FB3-59A2-4521-BEF9-054CB8135F44"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#bris-dentaire"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low nullFlavor="UNK"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="S02.5" displayName="Fracture dentaire" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#bris-dentaire"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-bris-dentaire"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
              <!-- [0..*] Entrée FR-Probleme : Dyspnée majeure per-opératoire -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="323676A8-0FD5-4E18-A1BD-F540244C6D83"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#dyspnee"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low nullFlavor="UNK"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="R06.0" displayName="Dyspnée" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#dyspnee"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-dyspnee"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
            </section>
          </component>
          <!-- [0..1] Sous-section FR-Systeme-nerveux -->
          <component>
            <section>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.9.35"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.2.104"/>
              <id root="C8CC52B1-6748-406F-9759-48D04C72333A"/>
              <code code="10202-0" displayName="Système nerveux" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
              <title>Système nerveux</title>
              <text>
                <table border="0">
                  <thead align="center">
                    <tr>
                      <th>Complications et symptômes du système nerveux</th>
                      <th>Précision</th>
                    </tr>
                  </thead>
                  <tbody align="left">
                    <tr>
                      <td>
                        <content ID="convulsions">Convulsions, non classées ailleurs [CIM-10 :
                          R56]</content>
                      </td>
                      <td>
                        <content ID="commentaire-convulsions">(Texte libre)</content>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <content ID="coma">Coma, sans précision [CIM-10 : R40.2]</content>
                      </td>
                      <td>
                        <content ID="commentaire-coma">(Texte libre)</content>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </text>
              <!-- [0..*] Entrée FR-Probleme : Convulsions -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="DE297AFB-539C-4610-860E-E344F01B4E94"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#convulsions"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low nullFlavor="UNK"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="R56" displayName="Convulsions, non classées ailleurs" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#convulsions"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-convulsions"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
              <!-- [0..*] Entrée FR-Probleme : Coma -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="3ABDBE1D-4EA7-4903-A4A9-17D01F075007"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#coma"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low nullFlavor="UNK"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="R40.2" displayName="Coma, sans précision" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#coma"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-coma"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
            </section>
          </component>
          <!-- [0..1] Sous-section FR-Systeme-oculaire   -->
          <component>
            <section>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.9.19"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.2.88"/>
              <id root="CC7B5669-1062-43D2-96B4-E342B3B8DE8A"/>
              <code code="10197-2" displayName="Système oculaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
              <title>Système oculaire</title>
              <text>
                <table border="0">
                  <thead align="center">
                    <tr>
                      <th>Complications et symptômes du système oculaire</th>
                      <th>Précision</th>
                    </tr>
                  </thead>
                  <tbody align="left">
                    <tr>
                      <td>
                        <content ID="lesion-oculaire"> Affection de l'oeil et de ses annexes, sans
                          précision [CIM-10 : H57.9]</content>
                      </td>
                      <td>
                        <content ID="commentaire-lesion-oculaire">(Texte libre)</content>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <content ID="diminution-acuite-visuelle">Déficience visuelle binoculaire ou
                          monoculaire, incluant la cécité [CIM-10 : H54]</content>
                      </td>
                      <td>
                        <content ID="commentaire-diminution-acuite-visuelle">(Texte libre)</content>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </text>
              <!-- [0..*] Entrée FR-Probleme : Lésion oculaire -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="606D9352-B278-4615-A184-87EB42C21D06"/>
                  <code code="282291009" displayName="Diagnostic" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#lesion-oculaire"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low nullFlavor="UNK"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="H57.9" displayName="Affection de l'œil et de ses annexes, sans précision" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#lesion-oculaire"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-lesion-oculaire"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
              <!-- [0..*] Entrée FR-Probleme : Diminution / perte de l'acuité visuellle -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="4F006E49-3AE4-4D65-94A4-29844F6E21E7"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#diminution-acuite-visuelle"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low nullFlavor="UNK"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="H54" displayName="Déficience visuelle incluant la cécité (binoculaire ou monoculaire)" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#diminution-acuite-visuelle"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-diminution-acuite-visuelle"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
            </section>
          </component>
          <!-- [0..1] Sous-section FR-Systeme-tegumentaire   -->
          <component>
            <section>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.9.17"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.2.86"/>
              <id root="688F50C4-BA47-471E-8AF1-A9CC64936704"/>
              <code code="29302-7" displayName="Système tégumentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
              <title>Système tégumentaire</title>
              <text>
                <table border="0">
                  <thead align="center">
                    <tr>
                      <th>Complications et symptômes du système tégumentaire</th>
                      <th>Précision</th>
                    </tr>
                  </thead>
                  <tbody align="left">
                    <tr>
                      <td>
                        <content ID="brulures">Brûlures de parties multiples du corps, degré non
                          précisé [CIM-10 : T29.0]</content>
                      </td>
                      <td>
                        <content ID="commentaire-brulures">(Texte libre)</content>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </text>
              <!-- [0..*] Entrée FR-Probleme : Brûlures -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="4AFBFF40-3A49-4353-877E-B444474145C8"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#brulures"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low nullFlavor="UNK"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="T29.0" displayName="Brulures de parties multiples du corps, degré non précisé" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#brulures"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-brulures"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
            </section>
          </component>
          <!-- [0..1] Sous-section FR-Vaisseaux  -->
          <component>
            <section>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.9.33"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.2.102"/>
              <id root="8450CFAC-6F2B-4D84-88A4-00F85F25DDB2"/>
              <code code="10208-7" displayName="Vaisseaux" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
              <title>Vaisseaux</title>
              <text>
                <table border="0">
                  <thead align="center">
                    <tr>
                      <th>Complications et symptômes - Voies veineuses</th>
                      <th>Précision</th>
                    </tr>
                  </thead>
                  <tbody align="left">
                    <tr>
                      <td>
                        <content ID="diffusion-sous-cutanee">Complications consécutives à une
                          injection thérapeutique, une perfusion et une transfusion [CIM-10 :
                          T80]</content>
                      </td>
                      <td>
                        <content ID="commentaire-diffusion-sous-cutanee">(Texte libre)</content>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <br/>
                <table border="0">
                  <thead align="center">
                    <tr>
                      <th>Complications et symptômes - Voies artérielles</th>
                      <th>Précision</th>
                    </tr>
                  </thead>
                  <tbody align="left">
                    <tr>
                      <td>
                        <content ID="ischemie-territoire-aval">Ischémie du territoire d'aval [CIM-10
                          : I73.9]</content>
                      </td>
                      <td>
                        <content ID="commentaire-ischemie-territoire-aval">(Texte libre)</content>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </text>
              <!-- [0..*] Entrée FR-Probleme : Diffusion sous cutanée -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="78DEE52A-A6F9-4419-9D3B-07120416FF08"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#diffusion-sous-cutanee"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low nullFlavor="UNK"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="T80" displayName="Complications consécutives à une injection thérapeutique, une perfusion et une transfusion" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#diffusion-sous-cutanee"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-diffusion-sous-cutanee"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
              <!-- [0..*] Entrée FR-Probleme : Ischémie du territoire d'aval -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="796C3FD1-6B3F-4BA4-B1E6-FE8F2ACDC451"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#ischemie-territoire-aval"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low nullFlavor="UNK"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="I73.9" displayName="Maladie vasculaire périphérique, sans précision" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#ischemie-territoire-aval"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-ischemie-territoire-aval"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
            </section>
          </component>
          <!-- [0..1] Sous-section FR-Systeme-uro-genital -->
          <component>
            <section>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.9.36"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.2.105"/>
              <id root="1661274A-9943-4EEA-945E-95CD511675BB"/>
              <code code="11400-9" displayName="Système uro-génital" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
              <title>Système uro-génital</title>
              <text>
                <table border="0">
                  <thead align="center">
                    <tr>
                      <th>Complications et symptômes du système uro-génital</th>
                      <th>Précision</th>
                    </tr>
                  </thead>
                  <tbody align="left">
                    <tr>
                      <td>
                        <content ID="anurie_oligurie">Anurie et oligurie [CIM-10 : R34]</content>
                      </td>
                      <td>
                        <content ID="commentaire-anurie_oligurie">(Texte libre)</content>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </text>
              <!-- [0..*] Entrée FR-Probleme : Anurie / Oligurie -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="2EBBBDCF-80E1-48F2-9434-9F19EA389F85"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#anurie_oligurie"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low nullFlavor="UNK"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="R34" displayName="Anurie et oligurie" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                    <originalText><reference value="#anurie_oligurie"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Commentaire-ER -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <act classCode="ACT" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.40"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.32"/>
                      <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-anurie_oligurie"/></text>
                      <statusCode code="completed"/>
                    </act>
                  </entryRelationship>
                </observation>
              </entry>
            </section>
          </component>
          <!-- [0..1] Sous-section FR-Etat-general : Température, Nausées (NVPO), Douleurs, Autres complications et symptômes -->
          <component>
            <section>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.9.16"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.2.85"/>
              <id root="AD37267C-23E5-4D77-A56A-CD0B5991FC97"/>
              <code code="10210-3" displayName="État général" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
              <title>Autres complications et symptômes</title>
              <text>
                <table border="0">
                  <thead align="center">
                    <tr>
                      <th>Autres complications et symptômes</th>
                      <th>Précision</th>
                    </tr>
                  </thead>
                  <tbody align="left">
                    <tr>
                      <td>
                        <content ID="hypothermie">Hypothermie [CIM-10 : T68]</content>
                      </td>
                      <td>
                        <content ID="commentaire-hypothermie">Température corporelle :
                          34°C</content>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <content ID="NVPO">Nausées et vomissements [CIM-10 : R11]</content>
                      </td>
                      <td>
                        <content ID="NVPO-severite">2 - Nausées modéréés</content>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <content ID="douleur">Douleur, sans précision [CIM-10 : R52.9]</content>
                      </td>
                      <td>
                        <content ID="douleur-severite">Douleur faible (1-3)</content>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <content ID="autres-complications">Autres complications et
                          symptômes</content>
                      </td>
                      <td>
                        <content ID="commentaire-autres-complications">(Texte libre)</content>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </text>
              <!-- [0..*] Entrée FR-Probleme : Hypothermie -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="F2F36161-CCC9-46C3-94FE-3BE26BA13EF7"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#hypothermie"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low value="20200319"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="T68" displayName="Hypothermie" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM-10">
                    <originalText><reference value="#hypothermie"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Signe-vital-observé : température corporelle -->
                  <entryRelationship typeCode="RSON" inversionInd="false">
                    <observation classCode="OBS" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.31"/>
                      <!-- Conformité IHE PCC Simple Observation -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13.2"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.50"/>
                      <id root="460C5268-C9EF-45BA-9F9B-3D440B1CDA38"/>
                      <code code="8310-5" displayName="Température corporelle" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                      <text><reference value="#commentaire-hypothermie"/></text>
                      <statusCode code="completed"/>
                      <effectiveTime value="20190901"/>
                      <value xsi:type="PQ" value="34" unit="Cel"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </entry>
              <!-- [0..*] Entrée FR-Probleme : Nausées et vomissements -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="6EA829EB-26A0-4E22-9C9A-2D1C7C02973D"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#NVPO"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low value="20200319"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="R11" displayName="Nausées et vomissements" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM-10">
                    <originalText><reference value="#NVPO"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Severite -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <observation classCode="OBS" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.55"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.1"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.29"/>
                      <code code="SEV" displayName="Sévérité" codeSystem="2.16.840.1.113883.5.4" codeSystemName="HL7:ActCode"/>
                      <text><reference value="#NVPO-severite"/></text>
                      <statusCode code="completed"/>
                      <!-- Valeur issue du JDV_NVPO_CISIS (1.2.250.1.213.1.1.5.498) -->
                      <value xsi:type="CD" code="MED-628" displayName="2 - Nausées modéréés" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </entry>
              <!-- [0..*] Entrée FR-Probleme : Douleurs -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="59B8B712-26D5-4D72-9BA2-642CFE2249A9"/>
                  <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#douleur"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low value="20200319"/>
                  </effectiveTime>
                  <value xsi:type="CD" code="R52.9" displayName="Douleur, sans précision" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM-10">
                    <originalText><reference value="#douleur"/></originalText>
                  </value>
                  <!-- [0..1] Entrée FR-Severite -->
                  <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <observation classCode="OBS" moodCode="EVN">
                      <!-- Conformité CCD -->
                      <templateId root="2.16.840.1.113883.10.20.1.55"/>
                      <!-- Conformité IHE PCC -->
                      <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.1"/>
                      <!-- Conformité CI-SIS -->
                      <templateId root="1.2.250.1.213.1.1.3.29"/>
                      <code code="SEV" displayName="Sévérité" codeSystem="2.16.840.1.113883.5.4" codeSystemName="HL7:ActCode"/>
                      <text><reference value="#douleur-severite"/></text>
                      <statusCode code="completed"/>
                      <!-- Valeur issue du JDV_EvaluationDouleur_CISIS (1.2.250.1.213.1.1.5.499) -->
                      <value xsi:type="CD" code="MED-602" displayName="Douleur faible (1-3)" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </entry>
              <!-- [0..*] Entrée Problème : Autres complications et symptomes -->
              <entry>
                <observation classCode="OBS" moodCode="EVN" negationInd="false">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.28"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.37"/>
                  <id root="4DF19CD9-98DA-425D-821B-ABA0461B6925"/>
                  <code code="418799008" displayName="symptôme rapporté par le patient ou le répondant" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                  <text><reference value="#autres-complications"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime>
                    <low value="20200319"/>
                  </effectiveTime>
                  <value xsi:type="CD">
                    <originalText><reference value="#autres-complications"/></originalText>
                  </value>
                </observation>
              </entry>
            </section>
          </component>
        </section>
      </component>
      <!-- [0..1] Section FR-Resultats-evenements : Complications liées à l'ALR, Complications liées aux médicaments, Défaillances matérielles -->
      <component>
        <section>
          <!-- Conformité IHE PCC -->
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.21.2.9"/>
          <!-- Conformité IHE PCC Résultats d’évènements (non codé) -->
          <templateId root="1.3.6.1.4.1.19376.1.7.3.1.1.13.7"/>
          <!-- Conformité CI-SIS -->
          <templateId root="1.2.250.1.213.1.1.2.163"/>
          <id root="1D913DC2-D477-443B-8E22-0580DC2DEEBB"/>
          <code code="42545-4" displayName="Evènements observés" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
          <title>Évènements observés</title>
          <text>
            <table border="0">
              <thead>
                <tr>
                  <th>Complications liées à l'ALR</th>
                  <th>Précision</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <content ID="complication-ALR-1">Troubles de la sensibilité cutanée [CIM-10 :
                      R20]</content>
                  </td>
                  <td>
                    <content ID="complication-ALR-1-commentaire">(Texte libre)</content>
                  </td>
                </tr>
              </tbody>
            </table>
            <br/>
            <table border="0">
              <thead>
                <tr>
                  <th>Complications liées aux médicaments</th>
                  <th>Précision</th>
                  <th>Sévérité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <content ID="complication-medicament-01">Intoxication par anesthésiques locaux
                      [CIM-10 : T41.3]</content>
                  </td>
                  <td>
                    <content ID="complication-medicament-01-commentaire">(texte libre)</content>
                  </td>
                  <td>
                    <content ID="complication-medicament-01-severite">[Classification Ring et
                      Messmer] Grade II : Symptômes quantifiables mais ne menaçant pas la vie :
                      signes cutanés, hypotension, tachycardie, difficultés ventilatoires, toux,
                      difficultés à gonfler les poumons</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="complication-medicament-02">Effet indésirable d'un médicament, sans
                      précision [CIM-10 : T88.7]</content>
                  </td>
                  <td>
                    <content ID="complication-medicament-02-commentaire">(texte libre)</content>
                  </td>
                  <td>
                    <content ID="complication-medicament-02-severite">[Classification Ring et
                      Messmer] Grade I : Signes cutanés, érythème généralisé, urticaire,
                      angiœdème</content>
                  </td>
                </tr>
              </tbody>
            </table>
            <br/>
            <table border="0">
              <thead>
                <tr>
                  <th>Défaillances matérielles</th>
                  <th>Précision</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <content ID="def-materielle-01">Problème lié au dispositif de transfert des
                      liquides ou des gaz (p. ex., problème de dosage, d'alimentation, etc…) [IMDRF
                      : A150000]</content>
                  </td>
                  <td>
                    <content ID="def-materielle-01-commentaire">(texte libre)</content>
                  </td>
                </tr>
                <tr>
                  <td>
                    <content ID="def-materielle-02"> ÉQUIPEMENTS DE SURVEILLANCE DE LA RELAXATION NEUROMUSCULAIRE [EMDN :
                      Z1203019001]</content>
                  </td>
                  <td>
                    <content ID="def-materielle-02-commentaire">(texte libre)</content>
                  </td>
                </tr>
              </tbody>
            </table>
          </text>
          <!-- Complications liées à l'ALR -->
          <!-- [0..*] Entrée FR-Probleme : Complications liées à l'ALR -->
          <entry>
            <observation classCode="OBS" moodCode="EVN" negationInd="false">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.28"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.37"/>
              <id root="7DB73970-4776-4590-912B-9C919E5CC2FF"/>
              <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
              <text><reference value="#complication-ALR-1"/></text>
              <statusCode code="completed"/>
              <effectiveTime>
                <low value="20200319"/>
              </effectiveTime>
              <value xsi:type="CD" code="R20" displayName="Troubles de la sensibilité cutanée" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                <originalText><reference value="#complication-ALR-1"/></originalText>
              </value>
              <!-- [0..1] Entrée FR-Commentaire-ER -->
              <entryRelationship typeCode="SUBJ" inversionInd="true">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.40"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.32"/>
                  <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <text><reference value="#complication-ALR-1-commentaire"/></text>
                  <statusCode code="completed"/>
                </act>
              </entryRelationship>
            </observation>
          </entry>
          <!-- Complications liées aux médicaments -->
          <!-- [0..*] Entrée FR-Probleme : Complications liées aux médicaments (Intoxication aux anesthésiques locaux) -->
          <entry>
            <observation classCode="OBS" moodCode="EVN" negationInd="false">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.28"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.37"/>
              <id root="8B661685-BDF1-4A1D-87D3-4D37900C5E08"/>
              <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
              <text><reference value="#complication-medicament-01"/></text>
              <statusCode code="completed"/>
              <effectiveTime>
                <low value="20200319"/>
              </effectiveTime>
              <value xsi:type="CD" code="T41.3" displayName="Intoxication par anesthésiques locaux" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM_10">
                <originalText><reference value="#complication-medicament-01"/></originalText>
              </value>
              <!-- [0..1] Entrée FR-Commentaire-ER -->
              <entryRelationship typeCode="SUBJ" inversionInd="true">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.40"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.32"/>
                  <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <text><reference value="#complication-medicament-01-commentaire"/></text>
                  <statusCode code="completed"/>
                </act>
              </entryRelationship>
              <!-- [0..1] Entrée FR-Severite -->
              <entryRelationship typeCode="SUBJ" inversionInd="true">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.55"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.29"/>
                  <code code="SEV" displayName="Sévérité" codeSystem="2.16.840.1.113883.5.4" codeSystemName="HL7:ActCode"/>
                  <text><reference value="#complication-medicament-01-severite"/></text>
                  <statusCode code="completed"/>
                  <!-- Valeur issue du JDV_ClassificationRingMessmer_CISIS (1.2.250.1.213.1.1.5.497) -->
                  <value xsi:type="CD" code="MED-624" displayName="Grade II : Symptômes quantifiables mais ne menaçant pas la vie : signes cutanés, hypotension, tachycardie, difficultés ventilatoires, toux, difficultés à gonfler les poumons" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP">
                    <originalText><reference value="#complication-medicament-01-severite"/></originalText>
                  </value>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!-- [0..*] Entrée FR-Probleme : Complications liées aux médicaments (Réaction d'hypersensibilité immédiate) -->
          <entry>
            <observation classCode="OBS" moodCode="EVN" negationInd="false">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.28"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.5"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.37"/>
              <id root="FE489DDF-924D-43B0-8DB8-49042D84B64E"/>
              <code code="55607006" displayName="problème" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
              <text><reference value="#complication-medicament-02"/></text>
              <statusCode code="completed"/>
              <effectiveTime>
                <low value="20200319"/>
              </effectiveTime>
              <value xsi:type="CD" code="T88.7" displayName="Effet indésirable d'un médicament, sans précision" codeSystem="2.16.840.1.113883.6.3" codeSystemName="CIM-10">
                <originalText><reference value="#complication-medicament-02"/></originalText>
              </value>
              <!-- [0..1] Entrée FR-Commentaire-ER -->
              <entryRelationship typeCode="SUBJ" inversionInd="true">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.40"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.32"/>
                  <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <text><reference value="#complication-medicament-02-commentaire"/></text>
                  <statusCode code="completed"/>
                </act>
              </entryRelationship>
              <!-- [0..1] Entrée FR-Severite -->
              <entryRelationship typeCode="SUBJ" inversionInd="true">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.55"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.1"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.29"/>
                  <code code="SEV" displayName="Sévérité" codeSystem="2.16.840.1.113883.5.4" codeSystemName="HL7:ActCode"/>
                  <text><reference value="#complication-medicament-02-severite"/></text>
                  <statusCode code="completed"/>
                  <!-- Valeur issue du JDV_ClassificationRingMessmer_CISIS (1.2.250.1.213.1.1.5.497) -->
                  <value xsi:type="CD" code="MED-623" displayName="Grade I : Signes cutanés, érythème généralisé, urticaire, angiœdème" codeSystem="1.2.250.1.213.1.1.4.322" codeSystemName="TA_ASIP">
                    <originalText><reference value="#complication-medicament-02-severite"/></originalText>
                  </value>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!-- Défaillance matérielle -->
          <!-- [0..*] Entrée Simple observation : [A150000] Problème lié au dispositif de transfert des liquides ou des gaz -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.48"/>
              <id root="E494FB3A-DE0A-4701-B011-9ABFE159882C"/>
              <!-- valeur issue du JDV_DefaillanceMaterielle_CISIS (1.2.250.1.213.1.1.5.526) -->
              <code code="A150000" displayName="Problème lié au dispositif de transfert des liquides ou des gaz (p. ex., problème de dosage, d'alimentation, etc…)" codeSystem="1.2.250.1.213.2.64" codeSystemName="IMDRF"> </code>
              <text><reference value="#def-materielle-01"/></text>
              <statusCode code="completed"/>
              <effectiveTime value="20200319"/>
              <value xsi:type="BL" value="false"/>
              <!-- [0..1] Entrée FR-Commentaire-ER -->
              <entryRelationship typeCode="SUBJ" inversionInd="true">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.40"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.32"/>
                  <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <text><reference value="#def-materielle-01-commentaire"/></text>
                  <statusCode code="completed"/>
                </act>
              </entryRelationship>
            </observation>
          </entry>
          <!-- [0..*] Entrée Simple observation : [Z1203019001]  ÉQUIPEMENTS DE SURVEILLANCE DE LA RELAXATION NEUROMUSCULAIRE -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.48"/>
              <id root="E494FB3A-DE0A-4701-B011-9ABFE159882C"/>
              <!-- valeur issue du JDV_DefaillanceMaterielle_CISIS (1.2.250.1.213.1.1.5.526) -->
              <code code="Z1203019001" displayName="ÉQUIPEMENTS DE SURVEILLANCE DE LA RELAXATION NEUROMUSCULAIRE" codeSystem="1.2.250.1.213.2.68" codeSystemName="EMDN"> </code>
              <text><reference value="#def-materielle-02"/></text>
              <statusCode code="completed"/>
              <effectiveTime value="20200319"/>
              <value xsi:type="BL" value="false"/>
              <!-- [0..1] Entrée FR-Commentaire-ER -->
              <entryRelationship typeCode="SUBJ" inversionInd="true">
                <act classCode="ACT" moodCode="EVN">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.40"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.2"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.32"/>
                  <code code="48767-8" displayName="Commentaire" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <text><reference value="#def-materielle-02-commentaire"/></text>
                  <statusCode code="completed"/>
                </act>
              </entryRelationship>
            </observation>
          </entry>
        </section>
      </component>
      <!-- [0..1] Section FR-Plan-de-soins : Surveillance ou SSPI / USI / Réanimation -->
      <component>
        <section>
          <!-- Conformité CCD -->
          <templateId root="2.16.840.1.113883.10.20.1.10"/>
          <!-- Conformité IHE PCC -->
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.3.36"/>
          <!-- Conformité CI-SIS -->
          <templateId root="1.2.250.1.213.1.1.2.158"/>
          <id root="A7C97994-659C-4F45-95F7-ED75C340FB42"/>
          <code code="18776-5" displayName="Plan de soins" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
          <title>Surveillance post-opératoire</title>
          <!-- Bloc narratif de la section -->
          <text>
            <list>
              <item>SSPI / USI / Réanimation : <content ID="réanimation">Description (texte
                  libre)</content> / <content ID="temperature">Température du patient :
                  36°C</content></item>
            </list>
            <list>
              <item>Ambulatoire : <content ID="ambulatoire">Non</content></item>
            </list>
          </text>
          <!-- [0..1] Entrée Demande d'examen ou de suivi : SSPI / USI / Réanimation  -->
          <entry>
            <observation classCode="OBS" moodCode="INT">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.25"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.20.3.1"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.27"/>
              <id root="4975226A-4D54-4625-8AEC-3170E4E3AB03"/>
              <code code="ETABLISSEMENT" displayName="Etablissement de santé" codeSystem="1.2.250.1.213.1.1.4.9" codeSystemName="TRE_A01-CadreExercice"/>
              <text><reference value="#reanimation"/></text>
              <statusCode code="completed"/>
              <effectiveTime value="20200319"/>
              <value xsi:type="CD">
                <originalText><reference value="#reanimation"/></originalText>
              </value>
              <!-- [0..1] Entrée FR-Signe-vital-observé : température corporelle -->
              <entryRelationship typeCode="RSON" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité CCD -->
                  <templateId root="2.16.840.1.113883.10.20.1.31"/>
                  <!-- Conformité IHE PCC Simple Observation -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13.2"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.50"/>
                  <id root="8C29CC6F-37FD-454F-BE34-7C3F03641B75"/>
                  <code code="8310-5" displayName="Température corporelle" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <text><reference value="#temperature"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20190901"/>
                  <value xsi:type="PQ" value="36" unit="Cel"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!-- [0..1] Entrée Demande d'examen ou de suivi : Surveillance ambulatoire -->
          <entry>
            <observation classCode="OBS" moodCode="INT">
              <!-- Conformité CCD -->
              <templateId root="2.16.840.1.113883.10.20.1.25"/>
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.20.3.1"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.27"/>
              <id root="8802EDC1-DE4C-4829-9CE8-A21D50226088"/>
              <code code="AMBULATOIRE" displayName="Ambulatoire" codeSystem="1.2.250.1.213.1.1.4.9" codeSystemName="TRE_A01-CadreExercice"/>
              <text><reference value="#ambulatoire"/></text>
              <statusCode code="completed"/>
              <effectiveTime value="20200319"/>
              <value xsi:type="BL" value="false"/>
            </observation>
          </entry>
        </section>
      </component>
      <!-- [0..1] Section FR-Documents-ajoutes -->
      <component>
        <section>
          <!-- Conformité CI-SIS -->
          <templateId root="1.2.250.1.213.1.1.2.37"/>
          <id root="C06CF4D4-C616-4E5B-9A59-80065863CB5E"/>
          <code code="55107-7" displayName="Documents ajoutés" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
          <title>Document(s) ajouté(s)</title>
          <text>
            <!-- Conseil : créer une table par document -->
            <table border="0">
              <thead>
                <tr>
                  <th>
                    <content ID="titreDoc" styleCode="BoldItalics">CR Echo-Doppler veineux du
                      15/12/2019</content>
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <renderMultiMedia referencedObject="DOC-001"/>
                  </td>
                </tr>
              </tbody>
            </table>
          </text>
          <!-- Entrée Document attaché [0..*] -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.18"/>
              <id root="A5516277-3F86-4681-9013-93868243AB67"/>
              <code code="55107-7" displayName="Document attaché" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
              <statusCode code="completed"/>
              <!-- Type de document attaché [1..1] -->
              <component typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Conformité IHE PCC -->
                  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.13"/>
                  <!-- Conformité CI-SIS -->
                  <templateId root="1.2.250.1.213.1.1.3.48"/>
                  <id root="2714D00E-26AA-4E7D-95F9-C5AE5316CE1E"/>
                  <code code="69764-9" displayName="Type de document" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                  <text><reference value="#titreDoc"/></text>
                  <statusCode code="completed"/>
                  <effectiveTime value="20191215"/>
                  <value xsi:type="CD">
                    <originalText><reference value="#titreDoc"/></originalText>
                  </value>
                </observation>
              </component>
              <!-- Document attaché [1..1] -->
              <component>
                <observationMedia classCode="OBS" moodCode="EVN" ID="DOC-001">
                  <value mediaType="application/pdf" representation="B64">
                    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Pg0KZW5kb2JqDQo2IDAgb2JqDQo8PC9UeXBlL0ZvbnREZXNjcmlwdG9yL0ZvbnROYW1lL0FCQ0RFRStDYWxpYnJpLEJvbGQvRmxhZ3MgMzIvSXRhbGljQW5nbGUgMC9Bc2NlbnQgNzUwL0Rlc2NlbnQgLTI1MC9DYXBIZWlnaHQgNzUwL0F2Z1dpZHRoIDUzNi9NYXhXaWR0aCAxNzU5L0ZvbnRXZWlnaHQgNzAwL1hIZWlnaHQgMjUwL1N0ZW1WIDUzL0ZvbnRCQm94WyAtNTE5IC0yNTAgMTI0MCA3NTBdIC9Gb250RmlsZTIgNDUgMCBSPj4NCmVuZG9iag0KNyAwIG9iag0KPDwvVHlwZS9Gb250L1N1YnR5cGUvVHJ1ZVR5cGUvTmFtZS9GMi9CYXNlRm9udC9BQkNERUUrQ2FsaWJyaS9FbmNvZGluZy9XaW5BbnNpRW5jb2RpbmcvRm9udERlc2NyaXB0b3IgOCAwIFIvRmlyc3RDaGFyIDMyL0xhc3RDaGFyIDIzMy9XaWR0aHMgNDYgMCBSPj4NCmVuZG9iag0KOCAwIG9iag0KPDwvVHlwZS9Gb250RGVzY3JpcHRvci9Gb250TmFtZS9BQkNERUUrQ2FsaWJyaS9GbGFncyAzMi9JdGFsaWNBbmdsZSAwL0FzY2VudCA3NTAvRGVzY2VudCAtMjUwL0NhcEhlaWdodCA3NTAvQXZnV2lkdGggNTIxL01heFdpZHRoIDE3NDMvRm9udFdlaWdodCA0MDAvWEhlaWdodCAyNTAvU3RlbVYgNTIvRm9udEJCb3hbIC01MDMgLTI1MCAxMjQwIDc1MF0gL0ZvbnRGaWxlMiA0NyAwIFI+Pg0KZW5kb2JqDQo5IDAgb2JqDQo8PC9BdXRob3IoYXBlcmllKSAvQ3JlYXRvcij+/wBNAGkAYwByAG8AcwBvAGYAdACuACAAVwBvAHIAZAAgADIAMAAxADApIC9DcmVhdGlvbkRhdGUoRDoyMDE5MTIxOTE0MjIyNCswMScwMCcpIC9Nb2REYXRlKEQ6MjAxOTEyMTkxNDIyMjQrMDEnMDAnKSAvUHJvZHVjZXIo/v8ATQBpAGMAcgBvAHMAbwBmAHQArgAgAFcAbwByAGQAIAAyADAAMQAwKSA+Pg0KZW5kb2JqDQoxNiAwIG9iag0KPDwvVHlwZS9PYmpTdG0vTiAzMy9GaXJzdCAyNDEvRmlsdGVyL0ZsYXRlRGVjb2RlL0xlbmd0aCA1NTc+Pg0Kc3RyZWFtDQp4nN2WwWrjMBCG74W+w7yBNDOybEMpLNuWXUpDSAp7KD24iTYxTaziOtC+/Y48Kc2hh1rHhaCR5Pk/jawfK+jAApZQIGAFaAmwBiwYyMrPASFQUQARsPVADFyUQA6creQBuKIG8qKWbIF4AqrAo+hq8N6LCErhMkJZWmCCKpEYqtIBO6hFywXUpaR4WV3SuZRYSZJUg5LCUg5WXhYEJJl0UijVFpxUytI4llg7aQCdSxBAXxUikm2VMpaSrDQom7Cy1sWFmadkCwuzNHNz//4SzHLoD6vhehf25vYB7COY+QbGnMvL87NvSHC6hKZLeLrETZcU0yV+uqScLqmmS+qMo8w5/ozzxwwDYIYDMMMCmOEBzDABZrgAM2yAGT6gDB9QzncgwweU4QPK8AFl+IAyfEBf+8B+aJp++NraKSFdX2OoNNRjIKsBNZAG1qA6ub/G4DUohZRCSmGlsFJYKawUVgorhZXCSmGlsFKcUpxSnFLcSHmE43ZPtnffh7CIcTCLuAt3zUu6y9KLkNcQuvFputXSzPhJUMzJ01l4G27DO+ARfSOsLg7BzFJz3a0/B/eS+hTfzDKsBvMrNOvQaz9pPvq/u13bheW2SRWmiR+dEJqhjd1x3A/t30Y64+hP7J+fYnw2V3F12EtN48zrNoRBT/KuWfXxZPxzK+3J+KptdnFzMrHctetwkqvrSNqmb/bmpt0c+nDc6+ywf31If2mKz7f7nxjl/OwfnwR1Sg0KZW5kc3RyZWFtDQplbmRvYmoNCjQ0IDAgb2JqDQpbIDIyNiAwIDAgMCAwIDAgMCAyMzMgMCAwIDAgMCAyNTggMCAwIDQzMCA1MDcgNTA3IDUwNyAwIDAgNTA3IDAgMCAwIDUwNyAwIDAgMCAwIDAgMCAwIDYwNiA1NjEgNTI5IDYzMCA0ODggMCAwIDAgMjY3IDAgMCA0MjMgODc0IDAgMCA1MzIgMCA1NjMgNDczIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgNDk0IDAgNDE4IDUzNyA1MDMgMCA0NzQgMCAyNDYgMCAwIDI0NiA4MTMgNTM3IDUzOCAwIDAgMzU1IDM5OSAzNDcgNTM3IDQ3MyAwIDQ1OSAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCA1MDMgNTAzXSANCmVuZG9iag0KNDUgMCBvYmoNCjw8L0ZpbHRlci9GbGF0ZURlY29kZS9MZW5ndGggODU1MzIvTGVuZ3RoMSAxODA2NTI+Pg0Kc3RyZWFtDQp4nOycCXxTVfb4z30vSZs9aZsmbdomadp0SZt0X6C0oRtdKLS0wRYotBQEFaQCBUFRdMYNZXTEZdRRcF9QCQG0CCIqbqOo46DjMio6zrh2xG0cwba/c99JSkGccdT//Obz//W2533vPXc/d31JARgAmPAhg+bq1vpJZ3lb3wTh1n8AJG6vqaxuy/942xyAwMUA2n01lZOrvnh54ykA92C8/IpJ1TW17z/+pQjCpkgA8W+Tmqe2vtfBrgHYMxnY9W9NavVXivKMIyB0ZAHUvj611Zv3rXpnNAB7FWvt6lnc3TvljIYVAOlnY/6YnhXL7d76wnqAhmoAReTJvQsW3/xR5b0A7isAlNELupf1ggWcWP8HmN+wYNGqk6+4Yff1AM2TMc3ahfO753193UVPYvmzML5oISq06yOSMHwVhlMWLl5+5kaNbhqAUALgqjxt/tLT71q2owXg+hSsv27Rkp7ud2e8UQRw1nMASdMXd5/Zm6COPQfz92N+++ndi+e/Vd96CcCNi9Aes3qXLFs+bIULsT1P8/jepfN703cOY/qC29Com4DbVr4XYto/zJmjL/sK4tBM6HZ9fPZznK/sgHuOvD64XvlJxBOYVgkCkMN8ChgCtk+16cjrhy9UfiKVNMqJX3ONPhO6QA6TcewEMIAXQ6CZj/UKGCvKGoTdGBspv06ej0UmEcUX4SEBIkHQRwiiTCYKsoMgDPvg3mGqF6Cp1W4HO8DQMLUh4ibBZQe2Uap3r1zHe4ql6462hr2A0+c1MMO/6WRnw3pZGUw9UZxcDeuP6fH7x4Z/ihOSf3xZ4twT51UM/Xztk1UeLUt23nF2eBoqfq56xtyY+6lO/AIm/ah8HVD3Q9LJGqHxmHAENITlx9T73+LEZ8H67+ZhX8NpP0fdWM45J9Irzodz0N4njONO1vTDxuxETnj12HLFXKj/Qfme/PfPlR/rsO+rfmha8RmIPaH+Pn52/nc6YcEJdAv/8+0Yc2NuzI25/wtOuAH++oPTGv7fnXVi78jb5X+1Y2/BKvH8H34Oj7kf5vB9vRTlKpT2Ubqu49JU/scbNubG3Jgbc2NuzI25MTfmxtyYG3NjbsyNuTE35sbcmBtzY+7/RyeGJIH+9oylY4hJYRnTIHPADjIwoE8LyZAGWZAHhVAKNVAPTdAMrdAN82EBnAJLYAWcCZtgO3w4PCyVrcW8PIdXyjERc0zGHNOgC3qkHItgaSjHB5iDDX+FTVkiZuBzt7gbYJh/bxMRaueH8KXUvinDPawcikN/j5c16ulBKZCkCEokTQmUj+6p2CBeKy4SPxEHxL9hn4wQBRbsZzlUwwyYzQaYwAwsniWxJayPrWBr2GXsCnY928H2goJ9IpXx2fF/B4hhIfS9zr/6docdbcVIk64Z8fmlZ7h13P9ZKOar48o52nJyXunJe8HdSSjYm+9tBPYSn1I/kc0onZI+1GfJf7TfwJ78F70aXbad2X546mNyfv7j8oWc+JNyH+d8tXNmd86aOaOj3d/WOq2leeqUpsmNDfV1k2prqqsqJ/oqyieUjR9XWlJcVOj1ZGelu1JTnMk2S4zRoNeqVcrICIVcJgoMsmqctV32gKsrIHM56+qyedjZjYruUYqugB1VtcemCdi7pGT2Y1P6MOXJx6X0UUrfSEpmsJdBWXaWvcZpD+yvdtr72YyWdvSvr3Z22AMDkr9J8stcUkCLAYcDc9hrLAur7QHWZa8J1K5YuK6mqxrL26pWVTmr5quys2CrSo1eNfoC6c7erSy9nEkeIb1m3FYBIrW82oCYWtM9L9Dc0l5TbXU4OiQdVEllBRRVgQipLPspvM1wqX1r1t51l/UbYG6XWzPPOa97VntA7MZM68SadesuChjdgQxndSBj9XsW7PL8QJazuibgdmJhjdNGKmABearBaV/3FWDjnQOfHKvpDmkUqYavgHt5F0fMhPFhP2DbsIXYP4eDt+XSfh/MxUBgbUs7he0w1xoEn9fdERC6eMzecIzJz2PWhmNGsnc5HXyoarpCvysWWgJr59qzs9D60m8q/mK8PSC6uub2LOTsnr/OWV1NdmtrD/iq0ePrDvW1ZmuOF9N3d2EnTuFmaGkPeJ29gRhnJSVAhZ2PwSmt7VKWULZATFUAunpCuQLemmreLnvNuq5qaiAvy9nSvhPyhw9uLbBbt+XjRtrB2xGIrcJBcdWsa593csDWZZ2H8/Nke7vVEfB1oPk6nO3zO/goOQ2BjINYnUOqUcqFfTsudTgx73lEaqS9XbCKHXy0UGGvxYezsgwjDDhcUpCPaGWZvZ1ZIZwMawml4L5jysGAmFpVx6NEnrWqzurocJD7J02yhtokTw1EjirLgIqRNlE939s0Ss0blGGvmV89qoHHFCoPNTBU2onbKXBbhCrGHJF8OOvCUWIqrlzUCViMpOKjaLEHoNne7pzv7HDiHPI1t/O+cVtL49vY6mxsmdEujXZolrQdE6L4EgoFwIHR4YBQhXOw1m0ND6sUniSFR4J1x0XXh6Pt6yKdja3reOHOUIFgxxWEnVa46rsvLYkqwKVZi7ubs7bbaTfYa9d19w+vnbtuq8+3rrema+E4Xoazft46Z2t7mVVq67T2NdbVvKooaGSNbZXZWbj3VG51sotbtvrYxa0z2ncaAOwXt7UHBSZUdVV2bE3BuPaddtzbJa3AtVzJA3Ye4CVNw0CklN660wewVoqVSQop3NPPQNJFhnUMevoF0hnCOgF1MtL5JB13OEiWhWhi3G5r7PP48JzdsXBdVwdfXBCLQ4m/LMCc5RAQnOVbmaDQBFTO+ZUBtbOS6yu4voL0Cq6PwInBYhkah+9J67qcuE/hhGoHK6OpKPIi7f3Dw23tjv3WgQ4HTrVZKDPaA0o37v3y1AZMN4lLF6onBdb2dPN2gL+d541Ire/pwGkbLhCT1AeUWIIyVAKmqJXy8OmImXpwbHAApfxrMRBY2xHocPNK20/pkKazIQB1znE47FSm3MUr8nasi3LmSWsTl4Iq9SIOJbYNWttJY8UgVtZBRorQYMt7nBjV02VHa8ugpxWnOu2lKitp5uOWKHPNl0RlDUUC75aYqtaqAkoPFoi/3K/28CUpT43o6KDGS6GLQgmwbkNAjS1yjTJlKANaB6PqeVvw9yJsKk/6KC+mpR+mOc/EnYU3WiopAqMD2tT6btz8Kb8aNc6ScOZIvkeoQ2XsI20E77kG7S6mtvUP3+lc5RjlsrOc/HDgExOsO3FiQ8e64xWBme7srMjjtVpJvW5dpPbEGchekdoRohK2KsV+4ZtgUqKtX/hHMMmN+DqYlIX4O+ErwpcU9wWFPid8RjhE+JTwN0o5QPiElB8TPiJ8SPiA8D7hr4S/EN4LJikRf6bQu4R3golRiIPBxDjE28FEL+ItwpuEPxHeoCSvU+g1wquEPxJeIbxMOED4A+Elwu8JLxJeIDxPjdhPeI7wLOF3VO0zlPJpwlOEJwlPEPYRHic8RniUsJfwCJW5h/AwKXcTdhEeIuwk9BMeJDxA2EHYTthGCBK2BhPyEAHClmBCPuJ+wn2EewmbCfcEE3IRdxPuonx3Eu4g3E64jXAr4RbKfjNhE2Ej4SbCjYTfUtE3EK6n7NcRfkO4lnAN4WrKdxVhA+FKwq8JVxAuJ/yKil5P2S8jXEpYR7iEcDFluIhwIeECwi8JvyCcH7QWIM4jrCWcSziHsIZwNuEswmrCKsKZhJWEFYQ+wnLCMsJSwhmEXsKSYHwh4nTCYsIiwmmEUwmnEBYSFhBOJswnzCP0EOYSugldhDmE2YROwizCTMIMQkcwrhjRTjiJMJ3gJ7QRWgnTCC2EZsJUwhRCE2EyoZHQQKgn1BEmEWoJNYRqQhWhkjCR4CNUEMoJEwhlhPGEcYTSoKUUUUIoJhQRCgkFhHxCHiGXkCNBZEGLB0NeUnoI2YQsgpuQScggpBPSCC5CatA8HpFCcAbNfEInB83jEA5S2gk2QhIhkZBAsBLiCXEEC8FMiCWYqIYYqiGalFEEI8FA0BN0BC1BQ1ATVAQllRlJiCClgiAnyAgiQSAwAkhgw4QhwiDhW8IRwmHCN4R/EL6WqmV/l3rEviLll4QvCJ8TPiMcInxK+BthgPAJ4WPCR4QPCR8Q3qf6/hqMdSL+QngvGIsTjP2Z8G4wtgTxDuFgMLYK8XYwthrxFuFNwp+CsTWIN4KxtYjXCa8RXqWi/0h4hQp7mQo7QPgD4SUq7PeU70XCC4TnCfsJzxGepXy/o6KfITxNjX+K8CTV90QwthKxjzI8ThU9Rq1+lArbS3iEsIfwMGE3YRfhISp6JxXdT0U/SEU/QNhB2E4VbSMECVup2gBhC+F+Kvo+wr2EzYR7CHcHTbjvsruCpomIOwl3BE1NiNuDpimI24KmqYhbg6ZpiFuCJh/iZkqyiZJspCQ3UZIbKe63lPIGCl1PKa8j/IYyXEu4JmhqRlxN2a8ibCBcSU36NaW8glJeTvhV0NSCWE8pLyNcSlgXjGlHXBKM6UBcHIyZhbgoGNOJuDAY04C4IBgzE/FLivsFpTyfkpzn24I8pK+xfaqrsx3UTLE9hvIoyl6UR9TTbUGUrSgBlC0o96Pch3IvymaUe1DuRrkL5U6UO1BuR7kN5VaUW1BuRtmEshHlJtVC2/Uo16H8BuValGtQrka5CmUDypUov0a5QrnQdjnKr1DWo1yGMlEpfCschulgE44gF4KNnRuM5svxnGAUn1rLCcuCRj61lhLOIPQSlhBOJywmLCKcRjiVUEYYHzRwjCOUEkoIxYQiQiGhgJBPyAvq+TzNJeQQoghGgoGgJ+gI2iAOSj/TENQEFUFJiCREBLV8qBW+mci/oQygfILyMcpHKB/icL6N8hbKmyh/QnkD5XWU13BYXkX5I8oelIdRdqPsQnkI5UYcit+i9LO1ZOnVQSOf8qvIOGcSVhJWEPoIVYRKssNEgo9QQSgnTKAumwgxhGiOnaIoCkGf7bY9ogDbUfahiCJQW84itNKoT6OWtRCaCVMJUwhNhMmERkIDoZ5QR5hEqCXUEKoJyQQHNd5OsBGSCImEBIKVEE+II1iom2ZCrO8G5CDKtyhHUA6jfIMD/A+Ur1H+jvIVypcoX+Cofo7yGcr7KH9F+QvKeyh/RnkX5R0c3f0oz6E8i/I7lGdQnkZ5CuVJlCdQ9qE8jtKP8iCO+AMoO1C2o2xDuYGPvjBINl5DOJtwStCIVyG2kLCAzHIyYT5hHqGHMJfQTegizCHMJnQSZhFmEmYQOgjthJMI0wl+QhvBS/CQqbMJWQQ3IZOQQUgnpBFchFQamxSCkyAnyAgiQSAwWpHguwU5jDKE8gEa9hWUl1EOoPwB5SWU36O8iPICyvNo6J0oF4iptl+KHtsvmMd2ft1a/3mb1/rPrVvjP2fzGr96zfg1jWtE9Ror4qw1m9e8sUZxdt1q/1mbV/tlq2NWC6pVdSv9Z25e6VevZJoVdX3+tr73+r7sE2P62vrm9S3vu6rvACoibuvb3revT+wf3uuL6isZX7u274o+IQbjBehjeq529Kl1tcvrlvqXbV7qly0tWCqM/3IpO7iUCTlLWfPSrqUCptq2NCW9lqcuXBobX2tYmrPUt1Q8o26Jv3fzEv/UJUuWnLtk45JHlsjPXXL5EmEL+gTfEqW29vS6xf63FzPYLQyDAWWvMBwUVUt2CUPA4FNhyDfMTkMDnIqGOMWzwL9w8wL/yZ55/vmb5/l7PHP93Z4u/xxPp3/25k7/LM8M/8zNM/wdnnb/SZh+uqfN79/c5m/1tPinbW7xT/VM8U9BfZOn0T95c6O/wVPnr99c52+uY5M8tf4asciGJwgk4W9v0tqkQ0kydVdib6LQm3gw8VCi2JtwKEE418r08efGXx4v6vEh0CPOFnd53Ma4LXFyveQRNb1Ra6OEXuNao5Bj9BlfNB40ysC4ySjoL9dv1G/Ri1P1c/Sf6of1si16tkX3iO4FnThVN0e3RCfqdTwsGnw6T26tXmvT+iZ5tWKZV1uhnaoVL9cyn9aTV+vTpqTVVmimauZoxI0a5tO4Mmo/VQ2rBJ8KIz5VDiuFYSUDkdkZ418u2pkYiWOznZlsteLDjH/1KQfGroA2d2N/xPC0xkBk88wAuziQ2sqfvpYZAcXFAfDPmNm+lbFfdWxlQlVbIIZ/biyFL1i/HhIrGwOJre1BcdOmxMqOxsBa7vf5JP8w9wMm6XDPXta3bNly9zI3PlBmL0PN8j78lcDwiexbzmOWLwNM4v4ex1Ms4+iTEi3rm9OHZWAEqpdJah6aLSX5vjL+o+57e/KfcOx/s/L/284yZzZAxE0AQxtGfY19Hv78FjbDDngIHoXfwR/gC6aCLrgAHoE/w0fwORzBdRnBTCyBZfx8354P/UK+GLTiXlDwf0k7fHj4w6G7hz/E5a8bpdmAIbPMdVQzHDU8cLxuaMNQ/9DzCjUYpLwG4VnUHmIDw4eFCh4eLuJh4SLul3IcirhpaMvQxmOa0wtLoQ/OhFWwGs6CNXAOnAu/gAvhIrgYLkFbnIv+S+EyWA+/gsvhCvg1XAkb4Cq4Gq6Ba+E3cB1cDzegHW+Em2BjKI6Hb8Kfa6RYHnML3AF3w73IW+E2uB3uhLswfA9a/164H3WkofB9qNkEN6P2DtTyVFy3BX8CsBWCsA2245hROBzqh73wADyI3ImjuQt2w8OwB8dxL47sY5KOa8Lh709Jz8dhHzwBT8JT8DQ8gzPjWXgO9sPz8MKPinliRMNDL8Lv4SWcawfgZXgF/givwRvwFrwNB+FdnHWffCf+VUzxOqZ5M5TqHUz1F/gQUw5gSkpHaf4kxX4glXAA8x6E91gkfMUEOALD6OOjd400QtdJ48hHj4/ObZKd+XhswTAfoTtHxuY+tPF9OJ48xP3Xh0bjfky7FS0Ytt+JrfZ8aHTI3rsxDbcFj9kfssVToZHg5ewZyfusFBeU8j02UupRi1IPXx5lnT+NsuFf4K+SZch6FHvUejzFe5iGW5mXcaxt38W8ZH2el+tH5+Fxr2P4Q9wdPkFLc34sjcTH8P6I//1Q/AD8DT6Fr6TnIfgM95Mv4EsM/x01hzD0Xe3xmq/x5x/wDRzGEfwWBkeFBo+LGYQhHGO8QDCBiTB01HdUK4mMyZkC97RIpmQqpmFapmN6vI5EHBejHokxfidGc4I4paSJYtEsBvdLM7OweGbFfTORJTEbc7DkUXFxIzF2jHGyFJYaiouVcsaN5LVhCvOotBksh63Ep5t5mBf9uayAFbJiVoqabAznYXgcxuVIrIRmmAuL4LD8A+E5LD8Gd5WteMuCoWXiG7hjihABpdAEU6BtN2jZjbitjmPPbq+ujsyO2INBAezsWYhE893oi5YJWqu1wlmouExsMdZXRFwmtEHF4FtvPomP/VGl3v3M++bAKwOGwSeNpd6BAwO5OczoMEoSoxMiIhQKZ7JHKExzFeXn55ULhQUuZ7JOkHQFRcXlYn5ekiDGhDXlAg8z8Y1vp4o1gynCKsf41lw5c6eabdGRkaItSZuab9c3NjmL0uPlskiFKI+MSCuqdPpXNiQ/r7KkJSSmWVTIxATk4GNy3eHP5bojJ8mqj+wWPihtL09RrNKqBbky8sb0JFNKbsKERq1eK9dZzfEJEZFGnSqzrnvwuvhUs0plTo1PSOVlpQ6OR4uYhw/LHpfHQDK44B1+B/W374SU4Q+2q/VssrN/+ANfEvelarROixZimS7WpVY5k1VglzmZ0elKxdc6X5JPDRoWJWo0aYkpTmeSShsLzmRLRFTitCi/3A+WioqKKHNpiTHfiJadM7szP75pII/FeWd3xlv25+WvuWjfPmbZN7uTvLk5eEm1HtuMHdzzU2rLzXG7O1JjY2nc0kRHhE50JrtcRcWMBssc4RQdsq0aRWxJbn5pkkZ20lD8NJk2sdDtKYhRaNjlCoOzPH98bZpR8Rh7kC2Zm5JpkotKg5bJBnXRapnCnOmUnW00qUVRHRv95ODrOB/XA8iKcGYmgRtKYGPYvjZhw454tcmkBv69XpYrn3/TpY5Pw5fbbbm5ESn9oY6n4AuxT2loKbDwUAF/dfZFtGEHsUPuigE3dm+glHkH8rwDOEmjSnGSWrf+yGJyczpwYsucjmRXobGgKN+BJjHxmZ4ksgKP4HQa+TSPPuqVFbmqOnvPnTJ0lyM728FqVt5+RpnFU+Uu7qxJH7rXklM/4YINpdXZsVVJ42bU/XZPcWOxjf2ypnd6eXp0WpZsYVZaesvZbd7W6gKDKm/qqezttPKM2KGA1Vsx+E32pJz4oSvM2VX8L0inDn8s08iduLIvJfsFE8C9R3gKdGBh3eAAV6ibLv75RnSrrJ/NeLAwR+prDv8AxKecLvV10H1goII/0GIHcJJZd//YAtBWqTE62gAKooqKcPooTKG1zncBU0ySwE3Ep5VMIypUsRUz+6oveOWa5vab3rygaJ6/2qpSiDKVTqn31M+vbVrlz/KedFZT7cn1Xq1KEynbF+eMizKnOGKn3frlLbczuH9GVKLLGpXgSkjKjNc43c6KvjsWLr1zUaEj3R5pcfO/w+Uzjf8/mVFggzPITo9AtHADXgjjhStBCZZQJy39zONT6lqsUv+s/PMbn3zUZGC02eHy+6E5aOYIx8wc+ah5srfz/m/uHXpWmiWT7/vs9ulDh9xzrl51wSWLrurJFa4PDm5qpAnRsvGjW2fdtHzit1eUnHEXjjz2SbwM+5QFAeoRn9vClT69Mtoebcc+xVu02KL4h/A2j2P4gJY1uVyKuPC0j5ParW1Jk9qdxj+b8imOnfZu3l9cOKVer4FvEdYHfo4iaXoI31lKTofxOC92T6VXDq7gthEuVOpUcjlOiqE8dpFSz/165dAq9hL3L8ADQE1mUsWlJeExoB7apzbjweAyq4Y2qC1pfK2sHz7Mrsbd3ASZ4b0GhKt2+FSGabQxMi+2FPu5LawIt5VPZWPomDKxq7VJeWmu/CSt1pbnSstL0qaoDCqFAh+yJ8M+CI1QG9YXD43h+kzCVbg/K/XTTJKNTPzzxVE2Yt79vH7f9yY41nihBpGx2tAgqsEtjmxtUr7UKnYtKuSnJ2VYNWiaa8MtO/KpOi6DrKE4A+dPGbxGrfOptTk5Zq9X5bFY4vuFedtTcjUaFXoehJSiljiN2rKLZYMPPMOHthucwuTc/uFDPjv3mQ38qaWn2ZuT61HY0lts/pEDh584/M2UHzV5edjNAwN5xnwDfxhLJ3jz84352O0dP28txwyek/EDDY825jQeHVF+O8GzjeXzU06ypeIMdWJOakpOgkYYukQWZctJTs6xRYlD1wjqJC/qE9VF2fd6KnPsGmaRsWStLaMkdas1LW7UHEg88p7WqBLlaoNalnDkzyP68/KL9M7SzG8HRZY5LkWvw1zS3oR3DBHHIQEyYG1oJacodgkbwAiJwqM+JRhTpbmAx7t7m0KhcfaPnPzMvd1natFI3efzg59Vbm7d0Hr99zKGt6pjLYSTSzZ6wxKrz3947aLQEtDkprNcT+vylW1ZQwM5tU0ZvSsq/EUJ4gWL71pWNtQz0vfLvN4Ic/mcc+dWt2eqh+qTJ/hDPW/CnhdBNdxIPd9u8BgzVLsE/o8MioUbghkVRumvczyGcNsNeFxv8/nME8KKCXhiP+BztJjD02CkP9LhfwA3bLzplPLD/8eVMmoepYke8TvmiTUniaG7gNkcG8sKXGkuV9haTZFJ4/Iy8xI1suWm9Fxf5rSw4XC7n5pfaZ2y5iSPwze7LDE/Oz16sV41dN+4ypj87BUXlrSVJCSr9SqZTG3UMEfu5Pz4oegRe16blSYT1UUnrWyaeFpbebQuvbTeM+xyivN87VFyxdCvrbnVfAeqGP4QN9FUqIdd4R1oonDtjpS8lDyNld+uQOPhy60YVCz7AWMx/sSWhU1S1s+yfZqJVnlGa6w0j2L5Vx0++fTwZoRWHXAb6XgwDPBpJ50VA9LlwfMzFRuelMkeWfhFgd4oPIpQ+PjLhUK8bPL59/dULWsfH6+W4fGgy29eUp8zuTAhp2nuwrlNOTV9Gzs8s5rLYyLkghihVatzamcVu31uk3fqvIXzpuSwX558/YKCWFtyfK7HlhmvdqQ7zJnlrqyKXHfOBP/yls71nR6dJSlGZ3bGJ6bHaxIcVlNqQaKb4pfhzJ6Edl8h/hHywccyQvcypbmgX5i5HdLSYFy/UOMzGEUz+8LMzP2aAvZtASvg310oNVq8gxZ4Jmb2M4vPejCZiWuS1ycLvuTm5K5kUZ9sSxY0suRkWWL/8EGfToPmS7QYWFPiYU8Dn8t4kWVNE97zaZpkYPGGD1433fQ7O+d08rXgdXeeMdB5Bq6OfaX8ZOdrw6f/X26NtMr464fLVVgYen3k45tfWEAjG9LIpG06gsY6Nj+vqFhcEePOzM4wFq+fPmnlSTkTVm1feZIxbWJORc/kfIPaqFaoEmpnLxl/ytVdWV93TZheFDeporDDY9MZIiIMuknjK1PrF9VNWdaYUpRZkRmTkJygi3eZbSmJzqToDP+Fs16PSsl3lPiKCvh6qhv+SHSIr0BheL/C23baHmG5dNu24eUy5ehLhS0Y3SB7iNVBLlpSrWZNuVnSdM/i3+L6lE3hS7N75Nq9Ly907f5pJR1z/w6vEAUtEMXoyzd2RR5hGddwkmfBxkXFVWfeNje9qaowVikXYwxGV0Fd3tyF8flN+QWNJS6tUhMhC8Q7LXqzI97gW7N9+YWPry3HRRCrtzjjxnnRbNdeWXd6Q6rNZVNZM/m51ohr4Dn5YnxzLoWrQ9ZSW0t3CfyfonmFpT5VtKNWXZpmlekyw3sDzrN6n9LSMPIuVr/dp2uSTw4fU/wSaS6tkG7hNG2VP7aM0beD0fMNt/ORi5Xoco1+YSkWn1NZMpLs6XHqmmtnnby+Iz1/7pVzGleX8StDKl4ZDhf1FOVOcpuiMqoL4nPzi+y0gav06p6GaVMv3Nazcs+FdRPGM7wTqBUKtUE1WFBdlzttfmHJqa15+uTidG63BrTbA7h3uKGAyclu26KjHVn8rw7dBbJ+bjmHmBWdJVizHpfxZWrGezjIDDJhcrOsSyZskgVkgkyW4EWLbNOzJk6fHdN433M1WP4OOoNOMIo6pUXDmpQWTKD8xpcQnkTuA7g0B0KrtPOM2Z3ugdmd/Bx9Ezd3r2Tx/2zd0v6vcDpGzVvTsbNbMKUVSeMUIT6QkTL4jnV858TKefU5eqUmUhRkkdpxM5ZXrtx25vjyFXef2rvx5JwvxZlzciZ54wR22JNV2jkxOdocHRHliIu1xep1FrOxbPVDa1Y+ckFtZd+m2fZTV6VMaPUOD9O4yM8WXPzfSYKCDayA72gj2OesEPi/P7QObRBvEf8A5TAF5jAhdMOeqs+JEEucDfkNjzeItgbW8M4zeI/UMM0zrSyplVlaWetn+03MbGJgMpgEvcnUVSJ+U1aXac+q3F0pQCWr3F/SoJ/JDOLM53z2qXRkotUqBjo7o0orpP2Ub60Y7HxFAs51Pmr+0TWrG9i/rvxo3WWVz1UKskqm/6f1zz7agmMaQC2QBtEZG0tntStNgTtRrDl0cwoPZjHu/QVF0pNWIl6uWIFrZK/nn7C40tJ0Yigk3hJrOCU2uqD7kjb3FJMmOt/z2uSVLe5xy7f0Lb15gdfoyLG5vUVuZ2bx3IunZTY5mNVoGnq4uT61JDWqeZKrJDV6fF3FtnhbtGL+rNIpOTFiV47HMsExZVWr26TTpsQmpgqRYmrV7LLKvul5Kb6OQkdZcZ7ZPNU7vjvNObd+yln+bJUya+ibuuY4d6mteqols3hwenaOII922pMMeQVml5ev6NPwvXO9fAq+dzqgJvzpQ6zwCF75TUIXqMDGztrhizPU0yb1Cpr06OcM34074UtpNN/hufXQbGy1RtqQEjVhRpe3+cdP8LeVJavozVklrsZdCfcgvYrlTB5XUj95fCmeb+dgS1fLe7GlFaEZq9eaGB45ahXTAlPLoF/o4i/MtdSc0AuzdJp34mtzSH3i1+bvtGqkMXJneEOkNiiUuP81w+bQ21BtdL8wZ1tSUp6K//V4c3naLrRaHhiO3uWbgo0Noz/Qa/LpfBMbymuzS+qzJ8dNplZV8JvlqA9ySg/wzwX5Z3to5p9U2LH9lc7ZCOM/UYQsYpI+GxPM9AmrSaHUJOSkuvAV0+gsTM2eVYR2SuF2MiYXpXhmFYbNporPsNkzzaqGDc3F7TV5xvSmxsa0jtWN9hF7CsbshsLE2qrBLd+vEc8O+xY0N5vdZanu8rTosgXrmoDGQHwJxyAPzguNQWY0N3oSqHEEIAnfow5tw4uI9D6lCZnNp/ZlN2TGpdSP2CiKLBR6Iw0b+t/J+S8se6whTeJLmoTclNTcBE10SqkrZ+53TXZd68w1TckjhmKDE/+ZWdAc3f/D3reAR1Vd++99zsyZOfPKTMhjMoTkJIGQd0KAJEAIAypCeAUEtFokIQ8SmSTDZBISTEK0vmqpl1pv659a1NZ6rbaU+kzVtqNgtBQfLdRGq96U0voo0shnMdeGmfvb+5yZTEJs6ev7f/f7Mou9Zr/3b6+19tp7n5khWL8rQu/rdJDGNDJ77OlhnNAOR58CbiJJYw/AXG45pjLDqd2yk3GvWTPZ08OLbTF2+4nsdvp54x+j6nTlu/uv33XIX7Z491PXdx5qKwuejy++YknZxpLpCXM2VizYWOKi7/ueva1yWW9/h+/Ht1Yu7e2/YVnrhoLsda2X4z0/e22rqnPhGX5n8Wo6z4zBandbiCvGlGoqNIlW0cS2dWjP1E+vcJvcuZWZMfHKynius/B62MrOC0c0bZv+dv2oKfJNfBL18gUiCc9gLzcZ45JSYuNz8qHkCcrNqCgrS7amKE6zXieIq2YWuEwGo8Exszzv/IkL1dtavDQzRjTIJkt8Dma/MvS+cBazX0neH7spF0Ruype604lFV0ALTpXCFZredZS6mRGXKqWCyK+3MeW0nD2pms6vuKfY9bYywc7uTySB2nUJZyNqhXy0O+4WfsnduiXX/uEW/Bt3gXYr/+bR/oF7tXB2QeMdVxRfs6IowaIzWmRzrntTSfr82XGzFq9Zv2bxrOJrb92Ys86dN82oE0WDxShnLlhVlF6s2DMr1q1fV4Ej0mr/2tkxic74/LwZGfGGpBSXzZXlSslVktPz3Fcvce9YnWOJjY+JiU9NnJ4eZ4h3xttcGXGpOUpyWp77c9BSYui0cIfuh2Qh+aqqpaccDuuibJKRz3aGRGt+2G3n49b0WMaKGdZwhpVdoxJXzGHfpHUbNOFggb3Ml+Xc88VHih3qAfdHJP8f6UT1VDrtaWN6ZvjyGrZh9eAqsadHCeGDrHCHOTajsDR5VcuK9B3T4phZXmeeoXqw55mhxk07XLAoTklyGCSzpN+dVzgNm3bmus4N9GeFpTOyEk0vYuPU67FxvmhKzJpRWhjcsnKlQTYY4mdCWl3sBiYOwIvv0Fa0ebZ6/UoVtrpjpuWvnG3WJ62c6QxvdBMuSmyFcpfFT5C2i6k+2a1q7Dk191glpWP3q2OmpOzUtGwnHPOGz/esSeOTx5KOnQX3XVMavlelR/vkxi82CJGMoHE5d+DC+nAO5p2A3esxzDuPbNLunfa01H7hpifd8WmKlJbRL2xxW9xESctamWZ2rTRr7mgJTSp0Od/GXGIXuOxvu/CGeT81oZK2bgyR58ljnjlxWmLpNO2z7ceoqNcFP9Y7Zl9SMv+STIc++LFkoObkObOy2cPAn0vSS6I1uTBzVqHLJN6rtzkSbKNvOOItOr0l3i7OjlNsEiaj08sOy/mdSUnCf1gcsh43SbY7K5jflzG/QrJXnd+zJF24nTjJTCHHLRc4QSTRbOkXatwxbvaptJhgVgpJRoYZB6gnWJ5izl6ZYXbMWOkY23DHzT+pEDJw2t+G+2ByiB17GjfdPWlbpviE8ENSUZVN6TRcoLUzzjQumIQEySCKNxtp8sKi/NLUGN13vqOzzZiXkzfPSeVPTsnUtWBO3vwUm/7eA6LFlT87b34iNb8zD8LRi7LVRBcHD5ussqi3JTjoU/Se2CSbJEpWU/B1mmO0GHU6W1JccAf7f3fEgCDqu3GOTSBxTxG32d6nT1hBlrzjehlH1pfnFNHIR92zIxApPSfrHLMzZmS6HMbnTEJiSUFafso0Y/D/6VqtcVaJ7T7vmeNijDrZbg56iDaOEBnH5I7X99nHjxOedeTzdAMlhriUgrSC+YmC/LzRnpQ5IyPbLso79RvNdllnjIkzv2eyGnUShvwBG+MPoY8Eom/EGNkk9VncG/qJgnvDHU+a9bOmr7EvJ0uWvP2KdrIIG6U4di2Y8B2L31JTUi62yyQTdVlS52dlzUu16q1pJdnZpYrVqpRmZ5ekWelD4fO4uJfN3GCdZv3Luuyy9JiY9LLsnAUZMTEZC5glJgbfog/SNDKdxP/QjrvBHY/FmhOTif0Epv/hwJyiWfzLIGFriIB40BibHH+LweFMd82Yaaf63fb0ebMyitNi+rOWLiydETDZjFjLdjONO5Cek2AwJLAdWgj+QtysfxVySHoW819DzJDO2kdNdj0pLMRwb2P+07ShtC8tGEb19hm5adnzpuskYbPOnpyv5Mx16fTB81a7SQ/ZO6T/sDrUGPOXYh2t0+/CCLHsk7qcx8x6++VkCZsLRBv5CCBTnYWBrjYlZLimZyTINJFa0XdaXrKFindAbHr2kJ7+lDtnMGgRfQtv8r65FuMFCfjTBOnJbP30zMvZMEteLsZAr0cNNT+ixgmDJ8QLh+X4dIwdJzst0/MUJW+6KeiR4wAnPd4IOCxz6RzxjvAHBhoWQAsuHZ8XHw90C7BTvK6fhRNuLnkxfP7JDwWejIGc82nc08J/EhI64TaxNKExIlGeQZaJTFfPd9PDOyT7/Ntti7lilhO5kU+fNkU93udPgJm5spMJJrsld7o7FmPICpVNVIijAut/ev8/2LF6FUW3k52bdVHnZp34evHOJ75w88GG7Lk7n7jx5h80ZAU/McWn5pWlL1qTH5tQWDlvdjmWv0HY+41PD117zSOf3LP/L/z9u5//cuOK3NgFvod33v7Ejtyk4tV1vbCeu+ANDukTSQF5Qrs7W+VsKmdR42xKY2kRf6AO+bmLqEiy+4U7H0txmh39oXeeQKZjWmw/7XHLGRuyY+wUdsd+FhL53BeTKl5yHnaY+/KRuefhVnCKI1sou3O7ndlZNBvjRA3FRriY/mBpW7eo/WzZEv5cOfzYHUcOSX0QUzpLu6A6+M52SDLb5PMlRhtOJIh99FriDIckGG0WmqCPcc5OzSx0Go/LMWZ9XfJs9o0q/u0ss1jZZtY7cjKdqQk24+M6vUhxQpT/cpx9NE/Z3z8Rn4X9VdBYTXY2XR7V5VJ5IZUXULO7X7NFN03oF848OXcWiCx4WjhDzKEPVLM0w2zMOf206UlH2QJFWTCZCTW5rXMTpIIr7Au4BS1gP+EZ+3S9WD0o5/JvCy34kBZyE31Z3fuYpRIYF2VCnzYOHVDFiP/KkZlirt2ijTZeMaWlFeKET0SkueEvIxn4FwGehcsxnXcmKHGyZE+KG7pkQ4EjPrsiZ9E1lxVYZatRL0qmpEu2dbjrv143x7n6dt/XadDksEg7ZmS7zMbEvIy0wlkZ8cPL27ZWzUxblJeUMivVklyYnpia6HDOynDOvaZnxZLdX35k5zcs/HsE1fAdh/Q2UkHe087k+hKqnz9OaaX9guWJrOKsYtuMp4UjcCVDbjN3JTZIzraQfRibnq4vCcurhP1OK2+93E+3PTXN6dS+ZrM5stj5V43Uj2e5kk7kRi5OqpKgoZwSmlNKNShcQ//MMOM1orkWacLFiT2dyBj3rRYpI82hni7EQytvfsZX7tlc6jDqBZ1sMZqyL6m+ZOHWZTNT3A0rF27NmZGUmi7Uy8wlxwXnZVyW2fTt1oX0gabv7CyPSUyMiU3KdLGvNyYmJzrnV5UVrZrnssyYLRRnZVhcuSnlJcE/6oQ5W7/MTgzLoJGfYjUVkWVkMOzNLw0FnmIiv5TOmNMvfOUxYrMR9qndmEtf1C90PTXLzeXg7qdZjymKIVpWOFvmXBERE9yJYTMZ9y055taPsDWzQP2+EFz7ExgvRnSzu6oJK2Ksc7fMescWv+aih1DHyFVVoX4db8LltTT6cxztWwsRj18i/tSev67nsd25m5bPSTDhPClb8pZUzdnoX5EuFNy4cfu+q7MX+h72Xn1rzdJZMcG/OItWFBVemp8wLXtZ4cLtwvPrvvutO5vdlti4+KyZaVkJBlusrbzhlsoZuSUNd36+5tu7luWsbb3tQPGOfZtnppVvmDN//XxXBvvFwQGV6JrPpD8JN0bRaZXEmy+KfvzXSGeJotcuhvRrOAVVkp6eon8FGR78bDKWT0KDKskPyD+Qn/n3kum5zyJzwkXQVWNkcVnujybcHP4afVUlW8MkdP4foZiuSen9MbLv/pfSwQgNTdEU/d8hR8GkVPd30X/+G+hw7P+d1+PTNsQVcfofleIDUzRFUzRFUzRFUzRFUzRFUzRFUzRFUzRFUzRFUzRFUzRF/wzx/8mOEiJeCv5Fkf1NxBKiI7Gh94iO7g89Bx4IvUJ04iaSRBxEFzpNHMhnPMD5QOhd4hA3gceC/w9xos5rxIn4cfZ3HpGfjN5Ogl+L+slUCP0e3M7yqYvl05TQO+CpnCuc93C+n5cGQj8nFejhXVKBnDfAA6FHSQXwpJAr0X87uRJ9DoLbQ2+Cu1DzSvT53+CpnCuc93C+L/QB+H4SQ64EwlRwT+gRcjX6/4j9ZUMgvBptT4Kncq5w3hN6CzwQOkOu5TO6FvH3qQA87O86BkK/Ax9A3A4kH4P3hM7RFJSeBQ/w+EBoiKbynFSek8pzFJ6j8ByF51Shh7fB7aGPwF0YpQp4PgBP5VzhvApyr8Iop8H3s5pMGuAeUk7bOap2jqqdo+rgOR08p4Pn9CD+KfhA6Ne0B3I4Sfdi3OPgdtTZy2QInoLR92JcxhXOq0Lvgffw0n2cB0gs3YsermN/1RF19qHnU+ADwLkffZ4Gt4d+D87msh99vgueyrnCeQ+vsx89B1D/JDhsA9yF/ADqfwieyrnCeRX6CaAVi+/DLALQpgk8QGJoAEhupQPoZwjcHvoFuCv0BnhK6FXwVM4Vznt46T5Ib4A+EToNCepIiriJWR3kqAs9KHrQzyvgds5TOE/lXOG8KnQcvIfzfaGfYR3lC+kk/Bcj6zgX+eqy8RSLC8Qo5pDwX0YtEHVaXIcV49LiesSLtbiEeKUWN5AOcZsWN5Ic9KrGZaKIg1rcJNwXGctMNosjWtxCcnRrtbhVuFvXqcVtxGOwR/7uaLGhW4tTYjAc1OIC0cmO8F8YJYnGoBbXEYssa3E94vFaXEI8TYsbyCI5X4sbSbzhC1pcJna5UYubaFVkLDPJlTu1uIXEy9/W4la6Wu7X4jZSYtaxvySrkzU5q3FVzmpclbMaV+WsxlU5q3FVzmpclbMaV+WsxlU5q3FVzmpclbMaV+WsxlU5q3FVzmpclfN3iUKKSRGZQ+YjtoY0kVriI62kDaGB+JF3CWI+4uW8BjnsL9+2kAKULCUekEI2IG87aURZG0/V470etTvA61DzErTzoM425DWhRhOvV4PQjL7qeN0WpNqQ18LL1PZNQKAg1KAe++u5XUjtQsyPsViddvToR349UgxzO1rXobwFaFgvrVqvftRo1sZkNRTMsZWPyUZp43NZyefagBw2x3bk1/MWPp7j4aj92jxqUZLHe27mOR7eYw1kpOaHR2lGPx4uMa+GsgU5zXxUtU82T38UAjail89FlXdY2ip2NlIrJKBg/qrEGapm1K3B+H6eYjP2R/ShykwdReHYW7R5tXLZbuM1xxBHz4hJrZO3U2e9A+kCbg/R2pzNe2vmPXRxObRrmo+WN9OYOv96jp/NX9WLj1sDe1dHZLpW0Ic3MhsV43atThtSu7Xe/ZiFqqGOiJZquI3UILd53LzC1lwLJDV8/Fpt/IJJrH7hBfNUyDKUedDbZs1qmjT7mo8eSsHH18+P1P9s6/dzHHXcOhmmHRG9hOU12Xrcrtm6N1KbWbNqBS2oX8/taTVq1JIsLuds1Knj/V3O27by/v0gL2ZaCNrFqYCvs/HjFWi9FyLexa1yO0ftRQ9dyGVSbOCSYNY7vtdwPlvB6ux3RPr7HJ+DajldXONtHKGf23YbX4tqa4XPga2Leq7VJj5GPdfrNt42LK3LyCbMe6nW1hdVoq6pOi6TsXWyi49Vy9fRZOOqaVa3Fhps5zKsi9hdHS9nK1udQdjWvHymLZq1qX3Vc85Wz8R5s3J1lWahFdMUs4ZtkZEmQ9VyQc8XL6Ox3sOeUtF8nZ/jrh3ncy6ce9jDTMS1KEoCbCbqXFTPG947fBEvXsf9WAv3ZzWfOVNVzjXjZKp6gVaNq7NS4+3c8tp5yzruE9hs6iP9sJoevmr+mob+VetibE0UcjRsDai7QQHXlZd0flcpLpozX1nTVOtrbWtt8CuXtPq8rb4af1NrS4Gy1ONRNjRtb/S3KRvq2+p9HfV1BZfUeJq2+ZqUpjalRmlurav3tShtNS1tCsqbGpSGmuYmT5eyq8nfqLS1b/N76hVfa3tLXVPL9jalFVX99c1o2VKn1Lb6Wup9bQXKSr/SUF/jb/fVtym++hqP0uTHGLVteUpbcw0Q1NZ4EWdNmts9/iYvumxpb673oWZbvZ930KZ4fa3AzWCjd4+ndZfSCOBKU7O3ptavNLUofjYPIEMTxdPUgrFaG5RtTdt5x+pA/vpOPxo37agvULRpzm5TmmtaupTadkxexe1vxPj1uxRfDebia8K00bCmWWn3smHQ43bktDXtRnV/KybUwaZUo+yq8TWrYzEx1zbW+ACs3lcQEf3C8JjKslZP3WaIBpNR5heUztfy81n+OPH7fTV19c01vh1sLgzXmB63Q+pell3bChG0NNW3Faxur82qactW6uqVy32trf5Gv9+7sLBw165dBc3hdgWoXujv8rZu99V4G7sKa/0NrS3+Nq0qizfUYPgdrN7nWtshnC6lva0egwMQK1ZqoIt6X3OT319fp2zr4rAu27R6KUp9PAFN1bWrOtnV2FTbGNUW700ttZ72OjSF7Oqa2rweDMCk5vU1oUItatW3+AuU8NitLVBpVlO2Ut+8jTUa66olXHlSRLw6M0ooqM3va6pVLScyOjOYcF+LOICsJowC42Wrw8dMvK51V4untSZ6UGCuUZHCBDBdyJhF2v3edj/E3tFUW8/qNNZ7vBMmdDG64JoorKtvqMEyKKhp83ZqdyoScpJbyGQviho4leNebwiFwAXtJkJoFt6fVZ9x/JWXTvyzxUJRh5662PpWK6uPe8BF1o+JYfXFz19sfbud1dc5L7a+w8Hrn7jY+tOmoT7eCbuZ6Xh9dhvN5txBrCSWuIgTZ85kMg9+dSn//4cuJdeQK+FPryY95FpyOxXI16mdfIu6yPdpCnmappIXqEKO0yryW7qFnKGtZJS2U5l20DjaQ1PpXppD99H5uPG76RN0Ne7tV+L+vY1+SJvpWeoXK+n1uIPfhhv1V8Sv0fvFr9PviqfpD8UP6U/EM/Tn4kd0UPwz/T2md3Y8dnrun8T+DLAPAPsJYD8J7H8C9vPAbgb2ZGCfDezFwL4Y2FcA+yZgrwb2HZQ9WzlLe4D9JmC/E9i/AeyPAPtjwP4MsL8E7L8C9pPA/idgHR2PXTwbhT0R2GcB+1xgXwrs64B9C7DvAPYbgX0fsB8A9u8Bez+wHwH248D+38B+BtjP0y3UQlvpdGDPAbLFwL4S2DcBew2wNwP79cDOnpN8FdjvBfYHgf37wP4ssL8A7L8G9iFgfx/YPxHPCHrxI2Ga+GchDfZeOB67lBaFPQnYs4C9FNiXA/smYK8D9jZg3wvs3wD2h4H9R8D+ArD/Ath/C+wfAvt5WkWtwJ4M7LnAvgjY1wL71cDeAOw+YO8F9r3AfjewPwDsh4C9H9gDwP4asL8B7KeB/c/AHhQ/FKzAngzsucC+ENhXjsduvC4K+3RgzwX2RcC+mZ8pKnCquRT+5kpyP7D/ENifA/ZfAPs7wP5HYB+FRctUoS5gzwX2RcC+Ctg/D+w7gb0XaL8E7HcD+3eA/XFgfw7YXwH23wD774D9j8A+Knog468JTvHrQpp4WsgB9oXAXgnsVwM7cAq7x2M3nYrCPgPYFwL7lcDuB/abgf1rwP5fyDkC7L8C9rP8rxiwvzzgAuoUOgd8CbCvB/ZaYO8D9q8A+7eB/WlgfwnYXwf2U8B+lj4hCDQg2OmAMJt+KMynZ4XFYqVwmbhJuBLYa4B9F7DfAOxfAvZ7gP37wP4TYH8V2IeYPzYaQkaD01k+s6G3ocEoIT1y7Bj+HRsx6olR8r4UwOslr9FAjMaRYwN4aSUjgQD+BUaM7KFOQHsZdcSo1+LDRpkYTc/1/Q70Sd+v+t7u+xmItx0eHBwcZtXD4w1iwPB4w53Ou72SnkjSsLNzcLBT0hFJ72U9enkVJ8tl+ayKdxAgOmU9kSU3TrVjKXs4hTEkqXtw0BvoHByWBSIDLNHQRkOXjEQynfsNe6mDs0EGtUHw8koikXRDal0V0pC3aMigCxl01cPVeBXxyoNj4BCp8nq1qBe9CBhe1+fmb+4+o0CNOt4f8OjEkCCik4AZ6PVGo92uKIrb3dcnUmoU+/AuUqP+vvvuU8XERxn0MgFKRd5DRXiNqiV3O51F1YGIjoadTudwpE0nSzBVlpV5PJ7gwIBRolEaZ4nOIwzRkU6WMLJs1RboZ2mclWjxEaNMjeYLNK4NcWyEa5z+XRqXJSIbLBZLN4PRLUGXhs5jo4FANy9Q7CQqBZWrqb+ici0V1rmJSOa/9B0LhIkPoE5aGwsvFc/wRM1zW68Oq57VPqaC/AzV0yjVyywVuFD3mIakU5XPda+hFZlFo0u+XjpVnXTyRET3vGSvxQLlqwkIYsRi2dsZadNtcQ7LMpHlZPijElAtaA95ru+5PlmiMtc1D7IBqfJtHN22cpaS1ZWPpc9qsq65JYxGTYPJVk/lsCkERmQzla1DeH009Ivq34COVr8CigzFzWFsYGYPrAMD7GHIWwaDMEjEwKYE1Xcb9NSg+qKXvCaJmoxhk0CRRA1GzG8UNsuLqotIdNIZnTQYuge5XUB+JoGadBHDCGjJ8MtgogZLtGkcC/CRtBURHpUpwqCjBs08AiwucfsoGmJ+CAYywgykuoy3OKZhNmBqAwNYgmVlahwxj2dAEKlJH6gWRGLSV3NEYWfKrYQIOmYlVomYJWgaC72oiGUEdGHsOj01GZhn4AtCs5RjnTylmUrRqFqm2kpATanGAmsZa8fMxWQiJpOFpIDmgmr69oC4sAzUJI/Cf7AQHGVJY3nvSVZ0srfcZKQm02jwxcN4vYhSpoZRNgRUPjo6QdCs1BBOoNRCTbYh7zBebxxi9GrRq0UDoMiQGG8cAmhkYICP0Tl6JDDSbdk72qmqahQ2Msptx9DJPVen2UDNsoRXB++oQ1XjKMxjtNssUTOMBy4lKu0sUsJpjGgw9jJxBroHBronmI9ZoOaoWXH7sf6mLxRtP+hAfivIVxKPd3MQqnGzvSpiP8OB6qJhbj8S7IcZUGcZb8HbAraRGIyHDzc0lJc7o+0He4QZ9qPw9+pAHwMVtqBxJmQzEItBijIibkPmsA2ZuQ2ZDMRk7FbxAiYXcdHwsGpEo1rpLRIzo2CQJ4NBqDAo3YLK4bbBDsk2OmKWidkU9jsl3O+onue5PrORmk2qKcFcgqMsLVfs+S3H/Ns9FWaZms1BEiKH+56L0OG+EAkSpk11TGYRweC46TKdQIMR00Ils5WaY4bKhsqGO4f5GeLlu1+++9W7X3S+6OSGMWZdgQiqgdHRgYHDh7kxMPsa6kxmBsZ3x87RvXBCox5130Rh4Mhop8VALWMmhvkbDdTIVB0MPB/s5qXMyMZlWJxjGUBiNPYGj412BkZ7IXbNsMJ2FrAI1BJtaAGjhRptbw2Fht/l60QlPuhbwT9w3YURcDXyDXtwZEhtq2fIR9gOPDJs0hNT2N5gcLyVpvwOoxGHBmZxzOT4CYKZnGZzFs3mLMzmLIJgiewCF2F0lrDRWbjRcUWEjY5NXxLMctjqYHZa+S2SZneq4ka53THDG2uvWp7FTCwWG7HhJsFoTt+cvj2BPQGMXR2otpioxRwiIc2qomKIW2RqMaWSPX3VfZhGhKrhAlMJa2kJ8vrRumAtg4TrlNll2DCZzqINM8BqGMeSqGGjFsdQ8lDycPlw+aBn0MNc8It7X9x72HLYYjECCfenL6rWyaCpa4JTkIySAR5j2Pno5b3Pw1TLbdIto518B2ci62VC4VtuWfcpdHOqu8xqpFaTiNeiPe9i+b27Z5FspLKpvPfdwyG2+nh5kdNIxucwg43kWNihYgkWdAOol5STanCGLUS6iTb1iPkGrAK1jpNFQLZQOWaiAQ8UcSDvhH53mL8isACyt5yfFMJGrJ4isP6wNrE0zcx/hc0Ydsxbqp28GLqen4CYmGr5+Yd5I+aXuIywI3eXdXsGmE1bJdWmrRJs2ioI1jGbZpPRi1TQ873XYSQ2oyhKEcPmuXrMUl2lej21GvlpnatRnYI6C57h7BzBkZ29QiGeoRo3s24tQ/WqBlG8Fe4i0gdUJUrBEf6EyES+JVxFxNoun4fEbffV7yALPTX+FrIaJfSKDcsU3ELZ/2XN7qUSsZI4LUWJASsjnuerOTjakxiSABJXVlWtIDM3rFujkKKNG1YpuL2qddgzPTtJ5CmcVHDTDfeuI2bceZO0lJ5YyDTiItNrvW1e8gDnD3N+iPMnOX+W8+d31PtayEucv8L5Cc7f5HyI8z9wfpo9cCZnGacS5y7OCzhfxvlmzq9r3tG8g/Zyfgvnd3D+Nc4PcP4g5wcjT+b+FqcXyY2QpAgZ4AyLOPs2wv+/PAF6sP7d7+yvthWQDfxTyxvJneRb5FHyPPklOcmeWRCZz9SozfY0Yd/JENEuDmuJsucKdKH6ftsJ9f2b+6PawN7edY1LU71/fFo6MD4t3z4+bYkdn07pGJ9Om1Cefuf4dN5DRBai0vmeqHKJ0CWPj09fJuDdBJvOIlWYjw1tboSoioQqskd4QPg1uU/8pvhNckLn191PfqU/Lt1GRdMVphr6I9OtZkpfstgtlwmXWK6xHBC6rHXW64QfW/dY9wpHbILNKPzS9ontE+ENQm+oYrKRjlsPTUpHQSes70TRKY2OTkJnbMkRSgfNA1WA6jjdOZGsR2332A7a92m0P4oe4PTpZOTQOSojdJPjjggNqxSbMAllgQri7oqiAyrxkgkU97245yP0UvyboCFOwckoNivBkpCeeJNGt0fRXZyen5ReS/w0TM44pytCl2pUOSlVcdqsvY+nPo2zegOcTkRIbf2OczgpJ6ku6UDSQ4wm9p50cDJSe0/qTzqp0cdjxEZJ+pSP1cfCjNUZBRFyZyyP0FUaXQvyZ1w7MxM0b1b6rLKMa8HTZz2Z+ezso5zey1oLqst2gZTs17NPI7yefTbn2dw7GWW/nnso9x3QSJ6QZ8w7CHqpoBh0acHawn0aPTrHP9c19615t5RkgYpLLaVrSz1lD2p0qOzpspcWpoDyFnYsOlZ+jtHi7sUHOb1XkVJxl0YHFr+H9F0Vgzw1WPEB6K4lce4O9wNLEy5zgwYur1rcrdbG+6Baa2Umq7dyXqUJQs2s3LfKxqls1QZOH68WVjtXp6/6GLEqUMMaskZaU7fm3Jpza5PX/gH1ytZtXLdxdRX4NhYDNa7zreurkjjlVa3lVF3VglBd1Vl1Y1Unyn1Vg+uvXl+9/uz6sxvsGw6gXh7KeMmGkarOK7Zd4dn0ypWXXvX6ln1b9m95YPuN2wcbNzd2ht8bH258uKmo5Y6W+7zndpKdFTurd16307/zxp2Hdj6/89TOMztHfJIvzpfjm+db5qvynWmzt2W2edt62/a1DbQN+Rf6N/of9Q+1u9pPtH/aUdTR0NHZsb/j8V2uXRt3PdrZ2Hl75+Odr3QOdZm6kruWd+3rOrp75u7luxt379590+4Hdx/a/cvr465ffv3d1z96/bFuqdvZXdld132w+72enB5/z8Geod6U3nm91/Xe1vv6nrg9V+95aM8f+pL7fvIZXuvQRM803u/0nRoj5lFusI2R6ks+Y/VVTlxz41eKauuT+p+wD4qi8V7khnljxPzDDcvGSPUMzJvaH3AOJN4Fj3yiYhD+k3tj/g7P66iEp73Tdo99n/Vo2Hs67rCecAxnXMXaWg/Z7hzzoqqU4KcruCdWayXb7glLj+Vyr8zqnmDlvL4mQfR7yPoOfPo9aHGC93YU6Pbh/QSnsX3i1IT9oSJqRxjbE+5huC/YBx6YuA/A9+s0v39T2OPzftDaVoH4nWFfCH08pOkL3kn1QKqH0/QIrwgfyLR2VcQ/hjUKL+esZPXHNJyxHP2w8o+RX5V0EukLrAE+8ESUN53Ex0b71Av9qea1B7gdqR7UHfadzKcjZznrF+nlzqqSrHUb44PqTsbfsWslfoq9KphgwT6k7TzhHSU2IT44tvuo9sj2N1Y/PshqoPXzCRZWwnL4XoYcVhabYD0atlOnC+VDGAF9JN7EUzx/bEeN3lMZJr5/hnfQyB6KPdMyyZ551wV75mvqTok9Mi48F5R/quLgSG5aVRb/pvNSYBunDSbFiSs3LHF1RTLZqhaTcRWkX8l0y+TirIq7i2v+IaapqNVdkHQwNiGy157Qeu1T7YHpRbWvpIOz0mdmqkHd1WZm8p0oitiupu5ofE/8B4nvo1F0YQ2+u0aRtstG6MIWfHf9u4jvvxdNkV36M2iipBhF9u7PIL6bXzTxE8ZF0kTp8HNJFF0oP35eiSJm6aqm/z66sOe/je7iSJUzO6/Y7ik/V2la/J71BDvpcOpmOeXn2OmGpRZ3V5rYuUctY4RTUx47Kam5fC/6QCV+InLz0xQ7Nw1WDPIzETs3DaJFNz+PSJFzC6O8KmndtiqJnVl4Kk872ajxPJx7GlkOP92gHXtnxOqjhcR7q+aleYwnHUTtPHZ+SrCssq3bxs5a7JzFqYzn2Ng5i6fK1m1jnkgrAzE3wU5k/IQm8LMZiNVHC3aCQ012Ghs7n60qq/iAy+M9Jon1Z1U5lJ/jswFeFefqKtYzP+8JrC+13/Hr8EJ9RlvB7KNqikjsV1jimtD32O+wxKtIjOgLvSv+hGQT9vujnyM1yGOn+S+xKP8llsB+gyVeFTqOu/kjoXPkSOgcrSYZtIZsotvwXkuyaB1JoTvY715C61Fzq+gJ/YxQ9PN7okPdGNRNQd0Y1DXx/k6j1kdEptcSF8rzUb4V5YUoz0dfxegrC63/i+Mxs19qsV8mid2h58Se0L3AO1f8Xeh+8RTJF39PisV3UfZ+aFD8ALfdMNqT7LdmoVTEUthvs9DTcdJJYsh8YkdYSNLIIoQ69F+P0IDQFnqb+IGqHaEDYRdCJ0IXbri7Qy+Q6xG6EXoQehG+QJLITQg3I9yCcCvCbQhfRLgd4UsIexF+hBv40wgjiAcRQiSJEgSKUEXK6HqEDQhXIGxEaCLr6ABJxIy3iptJuXgNsYhbETykRdyDmd5AMsQvkBTdvaEXdPch3I/wS5KkO45wAuFXCK8j/BphEOENhDcRfoPwFsLbJElvDw3qh0Iv6P9IdPrTiH+IMBx6QdKT+VI23ueSNKkE757QoNSM0ILQitAeelvqQIBsJMhGgmyk3QiQjfQDUiYdQngK4RNSZsghiYZchK0kyVCNsA1hJ4IPoQuhD+EGBMjIsA/hKwj3ItxPsgyP4P1DhDMIwwgfIZxF+AQBMjTWItQh1CO0k0SZkDI5jiRy2z0Duzbx2PvQ+giJh9UehdUehbVlwNpWwdpuhLVdDWvbCmurgrWtQG32q69l4mbYypWhh2E3m2A3/8vbvcfHWdZ5H787kyZpDoTDcGhBOYqgIlJQVOoBURQBxeO2dVeyCkgrCiJEok85CHKmKFAOchAkFtqigIAuzSobCqVpaBraZtpg06ZpnUnMdKaT3J3adOV63jMbedh97fPa56/njw8zc899X/f1+35/v991zTQJNxrhsuQfw8+TW+XZn6O6ZCa8kByOzqzkWdZZmWifN6vi69GMt4x/rvG/b/yvGP9UZ39jYuyXXPURYz9s7CUT450T7fWWUeqMcrJRvmuUGUaZMVETJ5tl1khfMtLPjHKOEV6oRPr7yrODjPEHY/zBGMdMOjcsNc4M48wxzpnGmW2c0yfNCWuMNWPSveE5V7Ybb1/jtZrZ9405zcxajXZHcjAUze6l5JDKGpZzf5mo2Ma3VOxxRp0+Uf3liu11Zb/KOzs8KH/r/6PDlL/Tdbwvui+6NuSi6/ATXI8bcCNuws24BbdiZdgTdeFVrEI3VqMHr2EN1mIderEB/eGNaBM2YwBbMIitoSfahj9jNKyPxsKWKMZOlLALfw290W41PY49+Hf8DW+YSwi5SREmVbpiJjk77Ej+Yyglv+6xOZSq1oRc1VqsQy/SWI8N6MPr+BM2oh9DYU/VMP6CEeSwHXkUsANFjGIMMcyl6g0ENbtv6Kn5eNhT8yl8Fmfic2FLzZc9fgWzvf81fD28XHNuyNU04xv4tve+5/FSXOb5D3AFWr3+Xx6v9ngNrvf8BvCh5naPP/X4M9zp+V1YgLtxj/F/4fgvPW/zfInnT3reDh7V8KiGRzU8qvlTeKNmI3hUw6MaHtUMmOMWDIJHNcNhfc1fMCKWHLaH3po8CsbeYewiRhE7l3c1Jcd3ec2j2m/iPJzPr0Q0P0pxajxKRvND35ur12SvnvfqVq/myfINydXREdEkR0vRJ2VmWmamZWZaZqZlZlpmpmVmWmamZWZaZqadvUmm7ZFpe2TaHpm2R6btkWl7ZFFOxpRkTEnGlGRMyf1Wud9A8p9Uwj/jG+HPyW+GP8uatKxJy5q0rEnLmrSsScuatKxJy5q0rEnLmrSsSXOyxMkSJ0tcTHMxzbkS19JcS3OrxKkSp9JcSXMjTfU9VN9D9T1U30P1PVTNUTVH0RJFSxQtUTFNxRIV01RMUzFdqdhVUQ0tP6iSq629D1p77032RIcnX4v2TVptKvpmJ/TdUtH3Jq8+5NVp9L2ivLeIZlonU9bJlHUyZZ1MWSdT1smUdTJlnUxZJ1PWyZQ7HWetnGatnKZmN6nZTWp2k5rtV7M71exONbtTze5Uszutp01qtk/N9qnZPjXbp2b5rdt+NTpGnW5Xpzl1ul2d5pLfiN6T/CYuis6bWEcPtY6mrJ0pa2fK2pmydqasnSlrZ8rambJ2pqydKWtnytqZsnam1GKfWuxTi31qcZPa26nmNqm5TWquzxqXssalrG8p61vKupZSK33WtpS1bZpa6bO+peT/Jvm/Sf5vkv+b5H+//O+X/zvl/07rX5P1r0n+98n5TXJ+p5zvswamrH8p61/K+pfi1MywvZz1YlTbdmnzde+vWLu+Gjbp6vd7/0Z+POfdhXJ+enKN56oy2WsdK3u43tn9ztqgU88PV3rV6to+15aPnjexDq5y7XGu7Xbd6VG1Mxc6c54zB5252ZlzK7uscuYsroz0Ne+f7f1u75dz5BNGutW7jxjpGCO9ZKT3VM7PVXaLWyv/LVn/muwFZ+MifAcX4xJ8D5fiMtwcHV/+6wGVWn/A6HeU715x9mG0RyclOzBon7s1Ot1escn6nbJXnJoc8jhsZ/UXx0bszJKu7HbFAXaWU8sru+svimZYx2bbd30tOif59coe7Jzy/xzCOjcbF+E7uBiX4Hu4FJfh5nL2ucfX7Ni+7vHc6LuVK1OuTLky5cqUK1OuTLky5cqUK1OuTLlyuitPdeV0V55aubLJlU2ubHJlkyubXNnkyiZXNrmyyZVNE1eeOXFleY/yNY6dq67KGi+t7BTGy7+nX/5daWv5F/BFfAlfjqbYwU2xg5tiBzfFDm7KlPLvV1eVfze//Jv5FD6rsh8ve7QtWjfpmLB10rF4F96N9+A4vBfH4304AdNxIk7C+/EBnIwP4kP4ME7BDHwEH8XH8HGcik/gNHwSn8Lp+DQ+gzPwWZyJs3A2PofP4+dhcNL9eAAP4Rd4GI/gl3gUbfgVFuIxPI5FWIwleAK/xm/wJJ7C0/gtnsGzeC6MUWRwUkfon/QiluElvIzljr8S0pNWoBMr0YVX7SdWoRur1e1smfv1sLbq5TBWtRyvYAU6sRJdeBWrrAbdWB3Sk/cJg5NTYevk/XEADsRBmBq2Vt+O+8JgNQ2qHwq56oVhrPoxPI5FWIxnHV/m8SW87HlPSFevdb59S3UpbK15WxiseTsOxWE4PIzVHIEjcRTegaOtHO/EMfrWsXiX896NEzDd6xO9d4rVZobHL4ax2kTYWptEFSajGjWoxRTUoR4NaMReaMLe2Af7Yj+kwmDt/jgAB+IgTMU0HIxDYP615l9r/rXmX3s4jsCROArvwNHmNN2+4UR8yMr3YZzi2MdxOj6Nc93vGx4v8N63nHch5mAuLjfGPFyJq3C1c293/FHnP+b8x0N/7SKvF2PUsZ1h65RJYXCKWKfsF9JTxDFl/5CbcpgcuqLydyuSqMJkVKMGtZiCOtSjEeW/brEP9sV+SGF/HIADcRCmovz3L8p//aL8ty/Kf/nicByBI3EU3oGj8U4co9cci3fh3XgPjsN7cTzehxMwHSfiJLwfH8DJ+CA+hA/jFMzAR/BRfAwfR7mffQKn4ZP4FE7Hp/EZnIHP4kychbPxOXwe5b/Z8QV8EV/Cl/EV8X0V/4CZmIXyX/W4ElfhalyDH+NaXIef4HrcgBvhU0flb4D8DHfgTtyFBbgb96D810HuxwN4CL/Aw3gEv8SjaMOvsBCP4XEsgtVw0hI8gV/jN3gST+Fp/BbP4NnyXyDRyzvwIpbhJbyMV7ACnViJLrwa8rpIXhfJ6yL58l8t0aUvtg5M1flnWAem6v4zdO31VTpelY5XpeNV6XhVOl6Vjlel41XpeFU6XpWOV6XjVel4Vb8J26uexFN4Gr/FM3gWz+Ff8DyWoh3/ij/gj3gB/4YOvIhleAmroqaqbqyOmibvE9VNTkV7Td4fB+BAHISp0V7Vt4bt1bfpQrd7frfn94Zs9X1RXTUPdLN89cPeE0v1r7xnztXmXG3O1bp09ZNhuPopmG+1+epy+erfOf/3jj3v/aUw32rzrTbPavPU/fLVrzhnpfe6vH4Vq9CN1eiJmqrXurdPeNU+4VWnHVsfxnXKfPXr5uZTXXXWtSOe5zy3x662x64uwCeX6qLzRzGGGDtREtuuMFyzV9he04S9sQ8OCuM1UzENB+MQvC2qq3k7DsVhONqu8J04BsfiBMemezwRJ+m8J+OUkK+ZETXVJso/7IUqTEY1alD+IbApqEM9GtCIvdCEvbEP9sV+SEV1tfvjAByIgzAV03AwDoF51ppnrXnWmmft4TgCR+IovAP6TO278R4d8Ti81/P36ZwneD495HXifO1Jnn8AJ+OD5c4sjg/jLM/PxudCtvbzrpsVxmvPNbcLvPct112IOZgLn3Rr7Strf4B57nslrsLVzr/J/dS8Tp2vvdvjvca6Dz/H/XjMeI9jkfcXY4ljsfN2unZPGJ8SheEpk6K6KbU6Nw2n1Hncx/H9oibdPD/FqjTlQMcOwtSwfco0HFL+RrJc3RN7qZtU5WBlX/bCm8evc/zayjco5T1WMZqc+Ez4avLs8jdTUV35W63Ke+9JvC9kEifh5JBNfMzjZ8K6xBnh5cSZODv0GGmDHUXGjiJTNzO8XDcbN3h+I27CzbgFt+I2zMft+Cl+hjtwJ+7CAtyNe3Av7sPPcT8ewIN4CL/Aw3gEv8SjaAuZhneHTJQ001Jipk/D5fmfYv6x+ceJD4cN5h8nTvN4U9iSuDls0bcO07MOc+bLdV8KG+q+jK/iH/HNsKVuLi7Cd3EJLsMNIRZbLLZYbLHYYrHFYovFFostFlsstlhssdhiscVii8UWiy0WWyy2WGyx2GKxxWKLxRaLLRZbLLZYbLHYYrHF9Z8NW+rPxFk4G5/D53EOvhC2iD3m4clhPYc2JCo+hvbKdxGHin2JuJckvhbaE+fhO7gpdNKgs/xpROxLxL5E7EvEvkTsnWLvFHun2DvF3in2zrorQntdK36Ea/CT0G5enebVaV6d5tVpXp3m1WlenebVGZ3KgRYOtJhbhgMt5jcug4oyqGier5vJoJkMJr/yxi7zbZr4NHPcxKeZ4ya+I9wgu4qyq2h2g2Y3aHaDZjdodoNmN8iZFs60cKaFMy2caeFMC2daONPCmRbOtHCmhTMtnGnhTAtnWjjTwpkWzrRwpoUzLZxp4UwLZ1o408KZFs60cKaFMy2caeFMCwUGKTBIgUEKDFJgkAKDFBikwCBnWqLTqNBMhWZerKZCMz9WJz4TTRP9LNHP4tZ7fXp9ZOIz9IkT6+rxE+vq8ROfi5t5tZpXq3m1mlerqTGLGrOoMYsas6gxixqzqNFMjWZqNFOjmRrN1GimRjM1mqnRTI1majRTo5kazdRopkYzNZqp0UyNZmo0U6OZGs3UaKZGMzWaqdFMjWZqNFOjmRrN1GimxixqzKLGLGrMosYsasyixixqzKJGc1QjF4oiPlbEV4p4noj3F+HFIvxaNJVGT9Pnadr00KaHDk00KP/70WLxPy3+p8X/tPifFn+P+HvE3yP+HvH3iL/HPHrMo8c8esyjxzx6zKPHPHrMo0etzKH0f+53o9FxiS/I0pl63Rx9bq4e921chO+G3so3F3/vdfP0jKvCy/U/Cpn6/4V5uBJX4Wpcgx/jWlyHn+B66I31emO93livN9brjfV6Y73eWK831uuN9Xpjvb5Yry/W64v1+mK9vlivL9bri/X64l5TUId6PW9S5duv8txjNd6nxvvUeB/d6ulWX6meK0Kf2u1Tu31qt0/t9pl7bO6xucfmHpt7bO6xucfmHpt7bO6xucfmHpt7bO6xucfmHpt7bO6xucfmHpt7bO6xucfmHpt7bO6xucfmHpt7bO6xucfmHpt7uWfNDBupvYHC7W/2rHJEG6PpImrz/p+9P86NEjdK3Cg593Xnvs+5M1RKnUiPUSl1oj1GHt1W7v0cKnGoJMo2UbaJsk2UbaJsE2WbKNtE2SbKNlG2ibJNlG2ibBNlmyjbRNkmyjZRtomyTZRtomwTZZso20TZJso2UbaJsk2UbaJsE2WbKNtE2SbKtuj9ImnlzSrerErMiQ7gzyoRnK8Ccipgq0huE8khInmXSA4RybtEMl8kT/FuFe9W8W4V71bxbpWoWkXVKqpWUbWKqlVUraJqFVWrqFpF1SqqVlG1iqpVVK2iahVVq6haRdUqqlZRtYqqVVStomoVVauoWkXVKqpWUbWKqlVUraJqFVWrqFrV8cxKHX9QFGtE8ezEv8eW9xULo3rxdoq3U6yd4tpfTPt750nxdIqnUzyd4ukUT2dUnbicxy0y+AdhOHGdq2+zPiwof8fu6O7EdaEUTfLfXdGxztiVuMKx1srx1YnroymJG1xtL5+4O9o7ca/j94Xd9QfjELwNb8ehOAyH4wich/NxAb6FCzEHc/FtXITv4Lu4GJfge7gU38dluBzmV/8DmFO9OdX/MOyuxLPbTDOJeaEglmzirpBP3GP+sxOX6mvfx+WOXiHKVlwV1iSuxjX4Ma6L3pa4Pvwxcbvzfhr6Ez/DHbgT94YV4ltRn9DLkqjCZFSjBrWYgjrUowGN2AtN2Bv7YF/shxT2xwE4EAdhKqbh4FCkYZGGRRoWaVikYZGGRRoW6z8c1tSfghn4CD6Kj+HjOBWfwGn4JD6F0/FpfAZn4DxxnI8L8C1ciDmYi2/jInwH38XFuATfw6X4Pi7D5WjBD3AFWvHDsCKqkjlbqDhAxeHE3WGPXLou/EWe7IrO4ULMhfgtmdRrxclbcfLOyFM5TpR3ad8MeStM3gqTt8LkrTB5K0ye+jH1Y+rH1I+pH1M/pn5M/Zj6MfVj6sfUj6kfUz+mfkz9mPox9WPqx9SPqR9TP6Z+TP2Y+vH/mMGfNY8zcRbOxufweZyDL+A8Y5yPC/AtXIg5mItv4yJ8B9/FxbgE3wNtqBtTN6ZuTN2YujF1Y+rG1I2jWupuluElGZ5LXCmHr4tS1B6k9iC1i9ElNO6gcYdMzzizm9YZWmcSP1Sp8zhxpSuvCjtk/g6Zv0Pm7zBKNR+6+NDFh0Jivo7507BVBWxVAVtVwFa1tE5v6ORRL496edTFoy4edfGoi0ddPOriUQePOnjUwaMOHnXwqINHHTzq4FEHjzp41MGjDh518KiDRx086uBRB486eNTBow4edfCog0cdPOrgUQePMjzK8CjDowyPMjzK8CjDo4wK2aFCdqiQHSpkhwrZoUJ2qJAdKmSHCtmhQnaokB0qZIcK2aFCdqiQHSpkB4+7eNzF4y4ed/G4i8ddPO7icRePe3ncy+NeHvfyuJfHvTzu5XEvj3t53MvjXh738riXx7087uVxL497edzL414e9/K4l8e9PO6N5nAwx8EcB2N+t3Mx5txGzhU4V+RckXNFzpX9P5D/z3Mvx71c4hbHbuP07eE3HNzOwe0c3M7B7RzcwcExebKWi0NcHOJijos5Lua4mONijos5Lua4mONijos5Lua4mONijos5Lua4mONijos5Lua4mONijos5Lua4mONijos5Lua4mONijos5Lua4VORSkUtFLhW5VORSkUtFLhW5VORSkUtFLhW5VORSkUtFLhW5lONSjks5LuW4lONSjks5LuW4NMSlIS4NcWmIS0NcGuLSEJeGuDTEpSEuDXFpiEtDXBri0hCXhrg0xKUhLg1xaYhLQ1wa4tJQ9D4ulbhUqlTjdVETF4pcGOPCGAdKHCh/bhqj7hh1x6g7Rt0x6o5Rt0TdEnVL1C1Rt0TdEnVL1C1Rt0TdEnVL1C1Rt0TdEnVL1C1Rt0TdEnVL1C1Rt0TdEnVL1C1Rt0SdMeqMUWeMOmPUGaPOGHXGqDMWvUtnGNcZxnXhbdbzusQtori1kj9m7/nduNf794VxFTeu4sZV3LiKG1dx4ypuXMWNq7hxWo/TepzW47Qep/U4rcdpPU7rcVqP03qc1uO0Hqf1OK3HaT1O63Faj9N6nNbjtB6n9Titx2k9Hl1I6wFaD5hxzozL/SurCrKqIKsKshX9/14Bt8vyn+qGP8MduBN28InyNxv/92wf4McAPwb4McCPAX4M8GOAHwP8GODHAD8G+DHAjwF+DPBjgB8D/BjgxwA/BvgxwI8BfgzwY4AfA/wYoGCOgjkK5iiYo2COgjkK5ihYroasasiqhqxqyKqGrGrIqoasasiqhqxqyKqGrGrIqoasasiqhqxqyP4/VEOGQxkOZTiU4VCGQxkOZTiU4VCGQxkOZTiU4VCGQxkOZTiU4VCGQxkOZTiU4VCGQxkOZSprfMGudEv0gTe71106jr0k7XO0///TUc7D+bgA38KFmAOeizEnxpwYc2LMiTEnxpwYc2LMiTFXX86Fy9GCH0C+iTEnxpw9bouI/k/N5FR8rN+WK72kp5b+pxqxd2+xx75OHl8vX2/x/FZ7pdt9+r472jf6HOXylMtXduXzcKWzrvN4k75/M3zuU5vl1bnoqmMru9sFnt8bRik8KrsLsrsguwuyuyC7C7K7QPk85fOUz1M+T/k85fOUz1M+T/k85fOUz1M+T/k85fOUz1M+T/k85fOUz1M+T/k85fOUz1M+T/m87CvIvoLsK8i+guwryL6C7CvIvgJnRjkzyplRzoxyZpQzo5wZ5cwoZ0Y5M8qZUc6McmaUM6OcGeXMKGdGOTPKmVHOjHJmlDOjnBmtfFrZRamuNz+3FKNk5XONT9Jc2hN9hbZp2qb5V+BfwVq607sbOVFP3yH6DlX63+1cuktHWWCndK8d7H1hmK5DdB2i6xBdh+g6VFdeGxIhTdc0XdN0TdM1Tdc0XdN0TdM1Tdc0XdN0TdM1Tdc0XdN0TdM1Tdc0XdN0TdM1Tdc0XdN0TdM1LacKcqogpwpyqiCnCnKqIKcKcqpA9yG6D9F9iO5DdB+i+xDdh+g+RPdhug/TfZjuw3Qfpvsw3YfpPkz3YboP032Y7sN0H6b7MN2H6T5M92G6D9N9mO7DdB+m+zDdhysal3UfofFfo30Tz8nkjvBy4kV5uSxclnglPJoYC68ndoabE7vDa8nGMJg8Lowkjw+PJ08KA2/+nPJXo2nJf4iaJn5eeZBbbdz4jQp7UfYvs4d9iRMv4xWVtoIzXZ5324uu42SvxzSGov0Tw1axna4ruX4Xxt0tCpuTNaiFtdHds8kTHJ+OE/H+sCN5Stja0BxyDeeHzoZvQ39ouNgjNRqo0aAfNPzI47ww1HAlrsK1jt3q2G2YD593Gu507C7c47nsaXjAGG2h1LDI+E/iqTDS8DR+69gzXj/vUUwNPY69hjVY7/UG/MnzjRhw3vawuWEMu8LmxlQYatwfB+BQHIajHJ8bOhuv8dy8Gm8Iw423hZHGBbgPj9qxfHZC1S082kPV9VTtp2o/Vf9G1Y1UzVJ1PVVHqbqequupmadmjpo5SuYomaNkjoq7qFikYpGKRQoWKLiFguspuJ6CWyi4noJZCmYpuIWC2f+i4BYK9lOwn4L9FMxScAsFt1Cwn4L9FFxPvQL1CtQrUq9IuQLFihQrUqxIqSKlipQqUCpHqRylcpTKUSpHqRylcpTKUSpHqfUTSm2hVD+lipQqUqpIqVx0eGJxmJN4LjxBqeVy8N8p9BuqDCU2hUvl2dWJ4bBQZs9JxGGpzJ4tz/qTybAhWR3uTzaEGyuZngrHJw+N5ibfEW6Q9Z9Ivjd8k2ovyvyz5Fx78qPh0eSp4byJb6T6J34qeW5yTnhBFbRHDe6e5lPa3V91t2286Ha3QaPnjDhmtLTRimroFDV0arSXeZdctcZVu11Vro+S+U539YaJChwyr+3mdYgR0kbIGKE3aqxEuszO6ZXwlCtOdMUW99voqrUi2uPKLa46dOKqDa7aHL1NRhVclZdJYzJpTBaNyKJYFg27905ZNCyLhmXFsKwYlhHDMiKWEbFsiGVDQTYUZENBJozJhDGZMCYTYhkwJgPGZMAwx4Y5VuDWmB4/FB1lLo3ibbOvW+y+/2IOz2NF+GvlZ3hnyoArQt74GeNnjJ9puM/rh0LeOJmoylW7zfwCV/SWndU3FoeVPN/saK+j3QnZVdFvk36Rot1XQq9xe6OZ7jrf2VerpYwrnnL3ee4+z5W7KLGTEjuNsD7R5bN5t/uso0ivxzQ2hCVGfE4GrUnkZEMdUuGKpDU1aU1NWlOTR4Zrk0fhHTw+xutjcZz91Ul8/5jnp4bYbM4wmzPUXIa6u6m7W81lKLy74ZIo1fA92KlRYV7DjzyfF+ZTYj4l5qu7DLV3UnsntXc23O79Ox27C/d4fS/uc90DxnrI468p9xu0h2sbXvL4KlahG314Hf3e2+xxCwbDtY1ReLFxcljSWI0aHO710ZgbdnNgvtrLcHNn490cuQf34ud4MCyxIndUMnGQ06frOm/oOm/oOm9w/TQV/oYKf0OFv6Ga34gO4UeR9jnaZ2ifcVXjW3uT2ItiL4q9KO6MuDPiLseaEWvmzb7y3/QUcy2aZ+atPWJSnTteLgN+wv2l3L+W+9cm/sDRP6JDtb4UHZB4Ga/oIV3ydI3j5f6xwarY59P36/gTNqIfm8INic0eB7FV/m3z+GdkMRRdI1t+m/iL5yPIGWO7xzwK7rsDRc9HMRau0JPW6thZHTureueUe1Nij2P/jr+FdYk3PAZVPQkJlPtWlWyb7Hl1eFJGXpasr1T9Vap+INkU7krujX2wL1LhVNk6W7bOlq2zralPJKeFh5MHe+8QHBr9U/Jwj0fgyHC2TD5bJl+ZPNrrd+KYMFNGz0y+y/P34LjwRb3xMl1lFdcWc20x1xbL9nP0yaXJDzjnZHwwPJP8kMcP45TQlpzh8SP4aJivKmYnP+75qeFqlXGBfrpFPy3/ZPYPk7Ojtye/jjlhdfk78oY5YU3DXFwS7aVK9lIh16qQvWTJ5bLkcllyecM13v8xbsRNuBm3Rgc03Ib5uN35Cxy7G/d4fS/uM879Xj/k8RfhroZH8CjawhMNvwoPW8XaGhZ7vQRP4NdhpqqaaWVrk4GLZeBi+4InrG5tDc+GZxqew++c97xj7eHshn/1/A/4o+MvuU5uNaww7krHuvCqY6vQjR5jvYY1WOv89c7dgD7vvY4/Ob4R/cbdFNaq3JlWzzbVO1v1nt2w1TE52CAHGzKQhw1DGA69DfKwQR425CAHGwrYgaK4R1Hy/K9hXcNujHv+N8i5BjmnK1zWKO8a5V1jMqxrrPI42bFq1KDW6ym6Rx3kYGND6G1sxF6eN2Fvx/fBvtjP8VTIWuGzVvhs44HGO8g5UzENB+MQvM25h3r/MBzuHkc4psPqRpc1XhXWqPDLG2+IDmjkdSOvG3ndeAtuxW1hceOd4WGVv1inmqlTzdSpZuoCi3WrmY33G+dB4/zCmI8av83rX2EhHgvXVnYSF+oSz+gKnXYSm3WEP+gEf1LxN6ns76vsJar2CVXbYb2NVezvVew2VbleNb6kCp9ShWtU3Rkq63yV9KiKuUXFPKNitqiSW1RJlyr4o+y/f+J3nH4n+39X+TftS8Pq6Bv61UIzWWjFWpF40hr9XOjStx7Vtx41q3L3/Bfdc5nuuczKtWhiDe+wBg6Z7TarV4fVq0P/WmTmL+tTGTPvLq9gZp3Vb7bpN9vMfJN+3W/mJT27X8/un1jhHtMLFukFi8xyp1leXP4tDavXioZ/tsc9P3RYwTqsYCusYB1v7hFavL4iPDqxV1ioPheqz4VWsBUNPnc0/AS34NawTFdfpqsvq+wd7vT+XbjH63txnzEeMO5DHtvDInm/SJ4vktMZ60m/9aRf3masKf1yNTOxei2Sl4vk5SK5mJFr2+TaNrm2TW5l5FZGXm2TV9sqq9tRdpL/scJ1yKmFVrgVVo5l8mOR/MjIj23R5VaJ5VaJ5fLhBbnwK0oXrA7L5cLndfO1unm5i79M1X6qrqHqGjnxW517M2V7dOq1lO2hbI/cKFY69AFhnW68TjdeJ0emy5HdumyfLts3sV/r0VnbddZ2nbVdzqzWTV/TRVfonOt0xOU64nKqF6heoHZBB1yuAy7XAZfrgMt1wOWULeh6y3W95Trdch1thS7Wp4v16WIrdLF2XaxdB1uhg72mg72mW72mW/XpTn26U5/u1Kc7tetO7bpTu+70mq7Upyv16UrtulK7btSnG63QjdZxp0dnWauzrOVSD4d6dJfNustmHWSzbrFWtyh3hrU6w1qdYS2n1nBqDafW6AqbdYC1nFrDqTUqfy2nelT+chW/XMUvV/HLVfxyFb9cxber9nbV3qfa+1R7n2pvV+19qr1c5WtU+VpVvlaVr1Xla30OHrIzLu+pTwrj0ftVWayimlXUAhW1QEW9wuc2VbOLrwv5upCvC1VLlq95vi7h6RKeLlERsSqIedHGizYVUN4pt8n4WJYvkOULZPkCXrTJ8liWl3fKC2T5Atm8i15L6LRENu+i1RJa5WmVl9W76JWXybvos5A+C+mzkD552bxLNu+i0UIaLaTPEtkby94FMneXmBeKcVm4XsbuFMGTXo2Z+87wkNzcEE0TWcGrPpFtFtlmkWVEtVIfyIpspchWml3509lKs1tpdgWzW2lWBTMqmNFmM9psRpvNpmA2BbPZbDabzWalWRTMYnN0qDuNVT6XlNxtF8btEv9mnxxVdi9Fd1vrbuXVaszdyjmz1t3G3K28Ko3RYsxdx2gx5s5j7tznzn3u3EeLMXcfc/cxd+9z9z53X+vuY+7e5zPCpvCAyFeLerU7F90xo5f9Usddr+Ou19Me1HG7ompnlSY+PxUnfmPpuOTM6MjoGFWeVeVZZ2x2xra/f7p25maRlETSrcrLunWLpFsU3SogqwKyoukWSbdISiIpiaKkArIqIKsCsiogqwKy/+mT74HOeZtjf/8EfKTnR4Vu2Zwtf9qVzVnZnJXNWdmcrXj7JzP7a8XbyV6NVr5T2Y1xnaS6/NtIdlUfsKv6gL36BjHkwnbv5fT67Xrndr1zm965Te8s98bt+uJ2fXCb0TZV8mZdZaRkRcFidLQxnvPO89wdMdZSZ+x4Uxd7CJqM0GOEHiPusXTiZyxbuTxCnxG6jHB5hDYj3B0xh6Xm8Jw5PGcOz3F65D9pcrDXh+Dvmhzu/KO8Ptrjg87/ReU7k1w0SfTF6EDzG5lY5zaa08Zy5ZrToNn/2bwGzWvQPAbNY9AcBt17xL1H3Lt8343uu9F9N7rfRvfb6F6D7lO+x8boKKM/JvqlIm9/yxpQ/qy/1J3ylZ5fV/lJnTsnMm1jZWd7qf440RtF3O6uj7nrY+762H/bF8t98HDnlXvg0R7L/exB5/7XfjbFbH5vBpsq3zZUV34vdq47r3bn1RO/J7Q8mm7eG5y5jGvdPrVkzH8FlV6g0lIqlef+tIwuK/Usr8u7gjy1nqXWs+JZYdRHjLaUi912luWV+FkKPsvJcpY/K8uzsjzL0W7xrZDtWTFuEOMGMW7garcdYsYOMWM3WF6hl1J6KaWXyvosl7u53E31pVRfKvYVlH9W7CvEvYHL3RxYGh1M9R6q94i5UwQFcf+bWZeV7zHjvBnnzS5P7R5q95hl3gzzVO6hcg+Ve6jcQ+UeKvdQuMed8hTuoW4PdXuo20PdHvW1M9xBmzX0GJZhVgT1dLw1+/3hr1HSXmlV5du194dN0eFe7ax8a3mkHncUTgij1vFR6/ioM0rW8BE7qsLEt4wj1uER6/CodXh04lvGkcq3jO363n980zhq7R219o6+5ZvGUevuqF3RmHV3xM5ozDo4ah0ctfaNRlPsNHaZyQN2FsXKN7gnhSF3Lf9GwuMcfPx/E3cm8FEUaf+v7qrpnunMZBDCEdSgcuuiElFeQVbdVXFFRbwWURFXdEUQr4CIHCIoIBoOJaBBBRV0DS+6ruASlKCgKx6NEIVRGY4EMgQSQiOEI5h6v92JLB6s666f/z/5fOmZ7uo6nqp6nt8zJJ3gU9swWsSTGfS5Q/D5YGnwecWZ3H2NuBD/lyUUdZQGdZyma/zPXRkt80f5EspuxgoZjOhMvS+wx1Je7RSNeeX94JPGnbIPyrev3syIdzLinUd8MrjzKJ8M7jwygxcn0JL/aXAldt2CXbf84BPhbbRSiU0raaGSFiqP+OS2klYqsWklNt2CTSt/8OltJTatPPzpbZIym3hfgic84hNZYTDqPaKVjAUzPhcN9w0a7hs03Df0aRF9WoSl9qHjqtBxVZTeHXzWdy7Xzw9+y28hll+IHz4BP+z/PHUKLVaFFquiX4vQXFVorio0VxWaqwqNVYXGqqI/i9BXVWirb+jTInROFTqnCp1ThcapEja9eYOW9wSfMPozeD4tX6PfpbV3RUuubsZuG+jjevq4npL+J+rbsV859ivHfuXYbxP22+d/ToUNN2DDfdhwHzYsx4bl2HADNtyHDTfQ1/XYcAM2LMeG5diwHBtuwIYbsGE5Niynz+ux4T76ux4blmPDcmxYLppgtY1YbSNW24ilklgqSb/X0+8EltqIRZJYJIk1klgjiTWSWCOJNZJYI4klklhiI1ZIYoUkVkhihaRozji3McZtjHFbYI3TqLkjETkbzoD/Yb+8jp/6K7zJ64WwRG9D7+5mLC5jcRmLi77dzThcxuEyjm2MYRtjcBmDyxjc4Hc4/Z82zhQzRX88wa1wG9ynXxHD9RTxIIyAkTAKSvVcsQW2wm7KHNCTxUGogUPwrZ5stNPFRns4GU6B30AHOBVOg9OhI2TDGdAJzoSzoDP8D5wNXaArnAPd4LdwLpwH58Pv4PdwAVwIF0F3uBj+AJdAD7gULoPLoScMEP7fu15pvKtXGO/BclgB78M/4ENYCR/Bx3qFel5PUbNhDnzKexdWAWNVtaD15FADPS/UUM8NZejiUGNoAk2hGWTCJj0lVEGZStilp1jt4SwYpOdZd8JguAuG6FesoYDdrcm62PpMr7CqdbHdRq+w20I7aA/ZcAacA330XPt66Ksn2zPgJdjE+81QAsyZXa5fsbdDFdf28L5aTw6bujgsgfgeDoEF6Ncw+jVM/A4Tv8NpEIUYpEMciOlhYnqYmB5uBGfrFeEucBOvb+P4EMeXOb4Ce3VxhLoijfQKcaNoyIprBBnQGJpAU2gL7aA9nAynQA+4FC6Dy6EnXAG94Eq4Cq6F66C/ns/Knc/Knc/KfUzkkCMMgaFwPwyD4XoBq3kBq3kBq3kBq3mBeky7ahI8DuwKlQuTYQpMhWnwJDwF7BiVB89z32yYoxcw6/ND67QbYneFkrARNnG+jGMKKrheCbs49612LQvQ1VYEHGgGmdAa2gB2sLADq2OB1YnjWRy7cuwON0JfuAn6wSA9n5Uzn5Uzn5Uzn5XzGCvnMYvxWoyXFbQgfJdvGzEVTTUNnoSnYDrkAXpL+HrrFfgLvAofwcfwCXwKLqyCz2A1rIFi+By+gASU6oX4hIX4hIX4hGJBziP2AHMvWLuC3Ac/UYSfKMJPFOEnivATRWqbLlblsB12QAWQM6mdgA5V6FCFvlTUqahTUafy76sFrYvYbwttfIHN3rfZ6zZ73Waf2+xz+2q4BvpQ5nroq4vsgbzPgSFwPwyDEfAojAf2m42NbGxkYyMbG7GfiuwXOL7E8TWOSwA72NjBxg42dmCvLWSvLWSvLWSvLWSvFbPXim3GZDMm9lwRe26hjT3Yd0XGqf7fcBchsMCGMETAgTTw/8RIDPxnTncRHURX6K/zWeP5rPF81ng+a3w2a3w2a3w2a3w2a3y2eEA0ZJ2PY52PY52PY52PY52P+wXPksoWhVCq85jRPGY0jxktYEaXMqNLmdGlzOhSZnSp2C+OYVZzmdVcZjWXWc1lVnP/X/1evHm6yDQ7ig5mJ47nwsU63/yDzjN7QC/RzBygXzXv0A+bA2GQfhjNNlheryeg2wbLmzjmkMkMIU5/JuJytciQxfAFUXatyJKlukhu4f1W0U6WBU91aCm3c9wh4ipHZKkhMBTuh2HwAAyHB2EEjIRRMDp4jtY4/MU4/MW4X/ocLVZ7Lqs9l9Wei6/JD34nv6HOw8eMC+0QDfEv+fiXfPzLuFCNyLIksLashtAIWkJ7Pc46mWNHOEN0wKeMszrzepDOx3/k4z/y8R/5+I98/Ec+/mM2/mO2xVqyhgNr6fDv+hfrkh/93r7/u/iX66XstDx2Wh47Lffwc7i+ewaX/+ytGZyve/5WNrspN3gG1ybKb4YSYM2xcwrYOQXsnKXsnKV2pTjG3glVlN/DddYfOyjXf07Xr/Y7+kc+6+uI37X3f4/e6a3zHMbljNQPO6OBfeOwbxz2jcO+cdg3DvvGeQJyYTJMAcbrTIMn4SmYDnkwA2bC0/AM5MMseBaeA+zjzIY58AK8CC+JzLQHRbO0ETASRsFoeAjGwMMwFsbBI/AojIcJMBEeg0nwODwBuTAZpsA0eBKegumQBzNgJjwtmkVPEZnpEdEs3YE00Qy1uIpdUBo8xWRV8OSTLPN+vFkcbxbHm8XxZvHgLyZEwP87p2kQhRikQ0PUbSPIgMbQBJpCW0BBowCSKIAkCiCJ52uJ52uJEkihBFIogRRKIIUSSKEEUiiBFEoghRJIoQRSKIEUXjIHL5mDl8wRt5NpDYA7YCAMgjthMNzl/6w63AP3wn36gZ/0qMN1d7xpd7xpd7xpd7xpd7ypgzd18KYO3tTBmzp4Uwdv6uBNHbypgzd1iLtlxN0y4m4ZcbeMuFtG3C0j7pYRd8uIu2XE3TLibhmetyWetyXx1yP+esRfj/jrEX894q9H/PWIvx7x1yP+esRfj/jrEX89vPVUvPVUvPVUkdIVYhuUw3bYARVQCTuhCnaBB7v1G3j2xXj2xXj2xXj2xXj2xXj1sXj1sXj1sXj1sXj1sWj6BJo+gaZPoOkTaPoEmj6Bpk+g6RNo+gSaPoGmT6DpE2j6BJo+gaZPoOkTaPoEmj6Bpk+g6RNo+gSaPoGmT6DpE2j6BJo+gaZPoOkTaPoEmj6Bpk+g6RNo+gSaPoGmT6DpE2j6BJo+gaZPoOkTxhUi0+gFV8JVcDU8o10ikUskcolELpHIJRK5RCKXSOQSiVwikUskcolELpHIJRK5RCKXSOQSiVwikUskcolELpHIJRK5RCKXSOQSiVwikUsuUUguUUQuUUQuUUQuUUQuUUQuUUguUUguUUguUUguUWh8IhzjU3BhlXCIYnGiWDpRLG6S7xDJ4iY5DdFsMdGsP9GsfxDNrtcVZn8YoGccGdXMO4Onu3Qnst1BZOtOZPOfkvSavE+/LJcQxZaKmHxXj5er9OtEuThRziHKpYhyjlynS4h0BfXPLsoKnnO5nfM7RIgoFyfKxYlycaJcnCgXJ8rFiXJxolycKBcnysWJcnGiXBwlnUJJp1DSKZR0CiWdQkmnUNIplHQKJZ1CSadQ0imUdAolnVIztKdmwtPwDOTDLHgWnoPndXciZ3ciZ3fyrkLyrkLyrkKiqEMUdYiiDlHUIYo6RFGHKOoQRR2iqEMUdYiiDlHUQWd66EwPnemhMz10pofO9NCZHjrTQ2d66EwPnemhMz10pqf26gpVDftgPxyAg1ADh4A9QWQeS2QeS2TOITK7ROap5H8J8r8E+V+C/C9B/pcg/0uQJSTJEpJkCSmyhCQRvHtoi/bIFJJkCkkieQ6RPCdEn0L0iYjenYgeJ2tIhmp5r7VnCTDABCniRPo4GUWSjCJJRpEko0gS+eNE/jiZRZLMImkdR9njoSXnWvO+DeBryTKSKIPuKIO4dTrXO3I8Q7Qk60iiELqjEOJkHkkyjySZR5LMI0nmkSTzSKIcclAOOSiHHJRDjoUftfCjFn7Uug9yYIh+ADXxwGE1gQ8ln02gJFyUhGs9JxzrNZFpvQ5v8votju9z/EwXojJci7kk701Y/hM5j9cuisNFcbgoDpdcuJBcuJBcuIhcuAgF4pIPF5EPF9pdhUNOXEhe4JEXeOQFHnmBR15QhkpZTF7gkRd4qJWpqJWp9g26wr4R+uqx5AeePYjX7Cl7MNwFd8M91HkvMC5yhzJyB4/cwSN38FA4DgrHIYfwyCE8+zHKTwqebOihehzyCY98wiOf8MgnPFTQWFSQgwpqSV7hoYTGooQccguP3MIjt/DILTxyC4/cwkMhTUUhTUUhTUUhTbW3UPdWKAN8vY2vRzW9gWp6A9W0GNW0GLU0FrU0FbW0GLU0FrXkkOsnyPUT5PoJcv0EuX6CXD9Brp8g10+Q6yfI9RPk+gly/QS5foJcP0GunyDXT5DrJ8j1E6guF9XlorpcVJeL6nJRXS6qy0V1uaguF9XlorpcVJeL6nJRXS6qy0V1uaguF9XlhrPp0xlwti4Md4GbqPsW3veHW+E2zv2Z4+0wAO6Au3QKheai0FwUmht+iHsmc/5lyr6ii8J/4fWrsFcnIkJkouDcCGOLNNKFkcbCca7SxQ55oXMt9Nb9UXb9nRt4PUxXOA/Ag/Cd0hvD60dgvIij+OIovjiKL47ii6P44ii+OIovjuKLo/jiKL44ii+O4ouj+OIovjiKL47ii6P44ii+OIovjuKLo/jiKL44ii+O4ouj+OIovjiKL47ii6P44v8fFV/8e4qvscjVFxl9RR+jH9wshhl/Ejcbt4grjP6iv3mx+J05QJwjr9HXyt66lyzUhXKp7i9LdDHaMENuCZ7xOkdu064sJ5faTr61Q1eLFiK3dpso0FvECr2F2rvVP5H2Cmo/n9rPr3+SbLX/rGhayaQVh1a60Up3Wpki39YfyXdgqXbkMo7v6lL5HrUv18/T+hxarpFbg9Z70vosWndofSGtF4uwdCnxGX0ik5dr6HuxXik/59xaIuI6SkTp28f07WNK9iN2upSeQ+kJlG5M6QJKX0scLeKOUdwxVpzoP1+S3s4mmv+G6D3AvIxIPkA/bg72f7ZTnGgu10PMf+g55gbR1dxLPpqBfj5NL5JvE32XitMZwYe0VEg+6sg1QS7qEqXj1F7DiDYRqSfUR2qnPid1GJknyxlV8KRBXWX8USg9T4TAAhvCEAHH/+1siEIM0iFOZt8AumhXdIWxeqIYB4/AozAeJsBEeAwmweOQq5eJxfpNUajfNEz0jwQFIbDAhjBEwIE0iEEDIE4aDaER4EsMfImBLzHwJQa+xMCXGPgOA99h4DsMfIeB7zDwHQa+w8B3GG2gLVyhi41ecCWwtw32tjESRsFoeAjGwMMwFsbBI/AojIcJMEWvNKbCNHgSnoLpkAcz9ErzdD3R7ATnQi9mb6J2zceYmaX6SmalgnVWzRp7nZmoqHvmI++ra9+T+3SG3F+blAdqi+XB2ldlTW1CHqpdLL/VabKW87q2QoVq31OWzlB2bVKFa4tVpPZV5dQmVFrtYhXVaSrG+XTK5eh5aggMhfthGDwAw+FBGAEjYRSMBrStQtsqtK1C2yq0rULbKrStQtsqtK1C2yq0rULbKrStQtsqtK1C2yq0rULbKrStWgh/18VqMRTCEngb3oGlUATL4F14D5bDClijJ6pi+By+gLWwDhLwJXwFX8N6SOqJoRo9z5LA+rVCusBqyLERtISToSOcgS7ozPFxXWzlwUzeM05rLq8Zj8V4LMZjMR7rNc69Dm/A3+AtWMz5QlgCbwN9t+i79RGvP4ZPeP0puLAK1sI6vdL6imsp2AEe7IZvYA/shX262E6HODSAY6CZXmlnQnM4Fo6DTuiUznCPnmjfCw/BGJgKz8Mc/aZdwHGfnhhuq4vDpxDjTuV4OsfLoSevr9Mrw7dwvT/cCqzH8EzOPw3PQD4UQI1eGRG6OHIMR/ZXhH0VIUZHiM/OLXAHDILBcDfkAPvdYb877HeH/e6w3x32u/ME5MJkmAL015kGT8JTMB3yYAbMhKfhGciHWfAsPAeM0ZkNc+AFeBFe0hPTLtFuWg+4FC4DxprWE66AXvCgnpM2AkbCKBgND8EYeBjGwjh4BB6F8TABJsJjMAkehycgFybDFJgGT8JTMB3yYAbMhKf1nOgpemJ6RM9JdyBNzxEK7/86nj8lvyCWrSOOTRfD8Z8PwggYCaPgAL70INTAIfgWX9VOe+TPHvmzR/7skT975M8e+bNH/uyRP3vkzx75s0f+7JE/e+TPHvmzR/7skT975M8e+bNH/uyRP3vkzx75s0f+7JE/e+TPHvmzR/7skT975M8e+bNH/uyRP3vkzx75s0f+7JE/e+TPHvmzR/7s+c8DMz7QSXLWCnLWCnLWCnLWCnLWCvLQueShc8k7k+SdSfLOpPmSLiGizSOSbTOrdaW5T1cGv9n0LnnnKqLRZzpJBJtHDldADldADldADldBDldBDufnTy75k0v+5JIzeeRMHjmTR87kkTN55EweOVIBeVABeUoBOUkBOUQBOYRHjuA/QdQjD6ggD6iwT9ZJ+5TgaaD+k0B9Le+is120tYsWdtHALvrXQ/966F8P/euhfz30r4f+9dC/HvrXQ/966F8P/euhfz30r4f+9dC/HvrXQ/966NUK9GoFetVDo/pP6EyiQz00aAW600NveujNikiGTqIx56Ix56Ipk2jKZHSkLomOgtG6JJahK2ONoQm0gBNgDOdfDH66aYueR1xHY8pCcYZcIm6RRaKVXCaaY99P5HuisVwu2kpX9MDWPYK8fo04n9w+Lj8X2di9wv8UG51TwtlS0QG90CP4DNv/fYZyVEvdZ9nZtPSuXkz5xUGbr3NtlJC0145zxX5JkWZcIRyjF1wJV8HVMEBkk705ZG9+5uaQpTkR/6+uKvqTxe44J3gmMvGQPtSdySJapjjbjmhZQLQsDvQg2Tgtl6KEysX5wWeKftls+uD/PYQyelz3/OTgqdK+JvL/3yR4/lxvvVrmYJt3WUPdRJx7e+s1vFtP6XfQgsv0Xt6V8G4Q9y3TB3i3RrQVitpDYIENYYiAA2kQhRik0+I14hjZR/9D9oVBWHGJXktNG6npM5UjstUQGAr3wzB4AIbDgzACRsIoGC2yyeWzydmzydmzydGzydGzycmzyb+zyb2zybfpS9DXQjTdEmz1jt4si9hFy/SXtLgEdbuTseeIU1gTx3DV89cCY88QDY3PxPHGatG6/ufSbpV9KFX3pOZT/Cc1y0HB73R9LIeib/NEezkDCnU5M30SSuYNdbY4WXURrbHW9SKdO9Jp5zRmM4cZeEfvpKWPg5ZitLCDFlx5A+3fiALtx/Fmjjm08plej0auQB8fCtbPWhHiLkdY/l9joXQmJTMpmUlJjxJ7RRNRihdFQ4mtdU/vC1ocyhE/wayH8LgJ6tuD193LHZ5fp6+IQw11NTl8NTl8NTlyNTlyNTlyNTlyNblvNW1ew1h7U0sOM+dyl1+b/4lp0++1eQP194M7hRG0vQrLf8b51bS3BjsXs3K+QJmvFWn/Vrtp9e2WUFucUdRQYwk1VlCjR41W/advoSB+pFPak72DfiTpR1LeG8xxS3psS//JzXV9qebONPpSw91+huKJU0Wp6Cy2wFY4INqIg1ADh+Bb0Yaa+wXZ0g3ssxvFNbIfx5s53kkmcy81D9XL5QhmMo+VPoMdi+rBRq2CuVmj3wha+1yvY89lkOUcYo1ks0ayFXWrWtCiTaih6Gz3geuhr2hjz4CXYBPvN0MJ0E+7inN7OFbTtwg9q6ZHHehNB8aaUT87RFd2gD/H61gz/korov9FWCZF6Qysk+KODO7IpnSEflZimW/oq0df9/t2De5yg/XJHLGWW7J3q1nPLeUQPGGJaFqn11mvKWbH/z2tcr08+Es+/pwlKeVwZi/9+O4JcfU/HSPvY43cz/7fxnoox/5W/TPtU9yDb2MEZVCukyJT9Kcnt8JtcF/wFwyq6Y9LX1xKZwSlS2kxyOK4Vo5HDD53JS52E1mhBjoVqoBKnbIGwZ0wGO6CITCUetPr/y6C/yTOJDUn5X2MaAgjLWHeSvV2RnqgbqR6H72uoZWVQe7dlP559M+jf97hXdKHmvrCffRtCPNSwp2l9N3Po+uyTX90m/y/gUT/PPrn0T+P/nn0z6N/nuX/n0oHQeYuboXbYDjvH4QRMBJGUXPdX01qj49Kr38Ove9xzsdHzcDKC7HyCtZlIevyHNblRfJV1msJPStlbEFviFMp5mybTrImO7MmO6tuOqGeFx3UbJgjOoQaiItCmzhWcKyEXaKD1d7/v08YJC6y7oTBcBf4/QvXz5G/ZkL1ayYUzFVZsCK84NOHAvo9r75UZn2pTPrtUTI76Js//5YcVPuy3K+ryPWSytZV5HJJ1a72Q/o8qHYTZ6s5U63a6d9Q66DadbKamarh7kPU9K0uUSF9QDm6RqFHKFlCyY7BvQu4muBMgtr2Bve68iB+wr/3W1aD5p6IsIN7o+Rg6Rzb6SzRkJIf0koNWalHzyqk/1PhNbR6SB/kztXcWU2rNWSjHj2uUKgiajlADw5S02pqor+1m5mpQeSxdbXspZYaaqn1+xy0XXf3Xu6u4e7aoO91fQiJJtw5iD6UyH3YbD/HA9gPlVw/8oT8lj1dq7dS0wH6UqIskUltJdRWrSJE+TqLMH4RUTG9lZoP0Kcn/KhZW0KNvg1SspaYYwfjT6kYr9tpEZR4LZiRg0GpulmJBKX8mVmDdX8wX+iJ+nni7p+Zn6BsMC+U/Zn5EA3+23kQ0V9qf1bxr2x31vhR7B1c+Uk7i3SVIcKqMbU2E45qDsdyz3HcfzyvUauqBddO4nUraM21Nlxr66tK1YQ6juXqCRxb+zZQGbwjZ1BNKdM8uOoFdWVxvgWvT+R1q6C059cjrKB0s6DVvUGJk4JW9oqG9CvE1QrVhDNNoZnIon9xSlZQZxb9o15owfsTuH4inMT5VpRpzbk2vG5LG+nUkqKv/ghDKpPWmwtZX4t/d4r++yMMqZZca8W1urtDogF9cLi7MhhpM+ptTqljsd5xnK9r36GGysACJ3G9Fedac70N5/22GQX1N+ZqE71LNfXHyooL+sBcHke7x3MuizItOHcCZU70bUCZoC+UaUOZtng6f57igV2biYz6eaqhHxn0I51+xAPbnsT7unmqoQ8Z9CHdn5XAeqH6u/Z8r/f+uOvu2HO41/H/dE2waz/n1Q/WBbu9hYj90rXBXS3ZpUdZH1w1RaNfa41QW2PO/IfrhLuj4pj/dq1QSxN/RL/OemEmXgrm8T9aM8GIYr903dDmftRsde1qfGEHPI7Cq3WUB2uX4tWOlYdql+N9zpa1tTV4tQYqVLsa39gBb6Twah1VpHYpXu1YlVa7HM90torV1uDV2IO1X2KR5lgkhkViqlnth1iksWpeW0avWmEVhVVMlUW5FpQ7gTInwkmUa0m5VpRrTbk2lGvLqomQqcXJsS6S/l8RWh6o+gxUbhaqItv/3B61lxn8JaNCo6/oavQTFxk3i0nGnzjewl3+3x26Vr8v/4ga6q1nBX8dr/2/KPV+UOq7v7g06/C71w+/M40YGXAHIUQXca44mZz7fHG66CGuEh3FteKPnL0O3XaOuF08Li4RueJVcZcoFEt5t4zvqeIjsVZMEwlyjudFyoiL/zWONY4Va40so4NYZ1xqXMbZnsbVotzoY9wgqoybjJvEbuNmo7/4xhhkDBb7jCHGTHHQeIbvLGMW3y2M5/g+wfiL8apxorHMWGW0NE83s40zzE5mZ+Mss4vZxehi/tY81+hq/t68wOhmXmReZJxrXmz2MM4zLzMvMy4we5lXGRea15q9jYvN683rjR7mTeZNxqVmf/NW4zLzz+afjZ7mAHOwcYV5rznUuNYcZo43rjcnmk8YA83JZp5xtznTfNoYZr5k/tUYbv7NfN+YYP7DXGvkmwmz1Cgwt5k7jLfMKnOXscTcbe4z3jEPmDXGclNLYXwgTSmND6UtY8ZHMi4bGqtlhswwvpBNZHNjrTxRnmR8LVvJ1kZStpXtjY3yN7KDUSJPk6cZW2RHmW1slZ3kWUZKdpFdje2ym/ytUSHPk+cZO+Xv5O+MKnmBvMDYJS+TPQ1PXi17G3tkH3mLcUAOknfS9L3yfjMkR8gRZpocJUeZUZknZ5gxuUAuMOPyTfmm2UC+Jd8yj5GL5XKzoXTlOvN4WSJ3mG1ltdRmRxVS6WZXlaHamReqbqqb2UflqPHm9eoxtdC8S/1dLTXz1adqlfmCWqO2mnPVNqXNxSEn5JirQ9FQ1FwTahBqaBaHikNfmmtD60ObzGSoNFRqloTKQmVmaWhbqNzcEtoR2mWWhXaHdpsVob2hfWZl6EDogLkrVBOqMb3Qt1bI3G3ZVrpZYzWwGkhpNbQaS2U1s7Jk2DrROkPGrTOtM+VJVmeru2xp9bSukZ2sG62HZVdrnPWovNmaaE2S/a3J1mT5Z2uqNU3ebk23pss7rBnWLDnQmm3NlvdYL1ovynutudZceZ9VYP1N5liLrLflSKvIek+Osz6wPpATrJXWZ3KiVWx9Iada66yEfMr6yvpK5lkbrI1yhpWytsunLc86JJ+1hW3Kv9i2fYKcb7exO8kP7C52N/mFfZ59nvzS/r3dXX5lX2JfLjfavexecot9tX213Gpfa/9Rltl97JvkNvsWu7/caQ+wB8hd9kB7mPTs4fYoqe2H7DFK2Y/ak5RlT7Znqqj9jP2MamLPsmeppvZz9vOqmf2i/ZJqbhfYS9Rx9nJ7pepgr7Z3q072HpzcteE24TbqT+F24ZPVLeFTw6ep28Kdwp3U7eGzw13UgPA54W5qYPji8CXqzvCl4UvV3eHLwz3VPeGrwteo+8LXha9TQ8O3hP+s7g/fFb5HjQgPDw9Xo8MjwyPVQ+GHwg+rMeHx4YlqXHhS+HE1Pjw5PFlNDE8LT1OPhfPC+WpS+OXwK2pquCBcoJ4MLwgvUE+Fd4e/UdPDe8N71Yzw/vB+NTOCM1NPR1REqfyIHbHVrAhf6tlIPNJAPRdpFGmsZkcyI5nqxcixkePUS5GsSJaa51zl9FEvO/2cfuo1p7/TX73u3O4MUH91BjoD1d+cO53B6k3nbudutcgZ6gxVbznDneHq784IZ7Ra7Ix35qt3nGXOh6rU+cJZryqcDc5Wtcc5kNZcHUprmTYllJU2LW1O6PG0RWlLQ7PSVqXtDs2N2tFmoZXRU6IXhr6O9o7eHqqODozebdnRe6M5Viw6NDrMahAdHh1uNYqOiD5iZUQnRHOtrOiU6BSrdXRa9CmrTTQvOttqH30h+oLVKfpSdL51ZvS16JvWb6NvRZdYF0Tfib5j/SFaFC2yLom+G/3Q6hH9JLrGuir6efRzq090bTRhXR/9KrrR6hvdHN1l9Y9+E91v5UQPRg9Zw6O1MWGNjJkx03oopmKWNSYWicWscbEGsSbWxFizWDNrSqx57Dhraiwr1sp6KtYm1sbKj42OjbZmxcbEHrGejU2IPWG9EJsae9J6JTY9lmcVxJ6OPW39byw/lm8tiD0bm2O9Fnsx9rL1ZrqZnm4tTm+Y3tT6IP3Y9OOtT9L3pR+0Vgkz8jARRaQVNnhbtBUtxK/ypTfojaIDmZXQq3/yeo3O1Qv4rtbDeHeTvlXP1wt5VRJcLdEp/t1cX7b6R3f7V1Pa4/uf1zJ+VKoKxv1sTyfAX494n6D2xn4LR/1y9EG/d/obXvs/I9tdtOF98nAN2w6/KvmJ9lbr9bpcf8x3id6FWv9vv5pS5+yg5lJdoVd+17qu+FHLFYHVKnQS698sjsVi7f2e11+t+bmG9F69U+/W2/TWw6cacXZncO1NZi+uF/Fqy0/eSyldSevVulz4VssSLcV5db3nylq9ltWy0X91lLaf07P8UeohcLn+nR6jx/Nq4+HrO44c5Q/urcHWG2j7Xf0+o/eYqVD9lS9/UPKDn7XBHlG/0vSU4F9PV1F7/So8wjLfld+LxXbr/foLyl0SjLYrlq/vpd6ut/NveX3Z/T+6uwqblflrpH5fVIvmwbH46KM9Sr+T33s38IjXb/97NfB16j9bZMaKRUh/8TOt+jtwe/2bk0Wnf1l2nn7GXyf+GvrlX3qrP0JW1/ofXdn8s/fugrHBq/k/nEHfO/3M3aVQGHikr/658//dL1b13uDf4p+4GP+3atgNm35pu/X3Lqs/LvwP7n02+PcDf/y/8leXn217W9286gP40p2/sPZ/bdXOcE3Qxua6f+u+66/+VHRsz3cLvtt/r4fzgn9X1X3/i7s7/uTdZcG/lXoPvmvP0brKNd+rbddf+/vQv6fOh9fFPLzdCv2R/sdR7z4iquqJ4kQ88mWiJ6//EpwpJk69rRNHvfuIuKWnEQcyxYVknuyg4MzX7IUV//TOR2vbj6CsI//uTmSt9ef1Yv0WMfaofumfvr7+K479+nD+geDqO/rvepleWl+28kd3HxHZsVQ8iEN+VLk0OLOC1gt14VHbPoouqPUVwcf6Ot1LD9TX1Jf9kSfTE7Hrh/pTvfF7fsYUfcVYMnRBvj7Z/60TMV9ExQLxlmgnlpC7Zwe5+1liObl7Z/EluXsPsnRD9Db6Gf3EfWTPV4ocP28WQ/2MWdxv3mHeKR4g902IkebX5gYxyiwxS8XD5MHbxDhzu7lDPOJnw2K8WW3uExPNGrNGTPKzYfG4nw2LXLLhNDFF+s8kmi5vkDeKPNlP3ixmqkVqkXiGPFKL/FDDUEOx0lpoLRQfWe9YS8XH1tfWevGppS0tVvn5k/g/6q4EPIoqW5+q6lrSuZ2FhGwEZAn7DhExYQfRQQYU10EkiwgOMElHEZUOppNRQUVEVEBFRGFQAZFBRUTcUXEZZEABURYB2QQEREC2ev853YQGBCUo773Kd0+dvnXvrdvVt/76z62qP0s4fqKv7CvsK2kVx0/0LcdPtJrjJ1rL8RN9z/ETbeb4ibZw/ET7OH6iQxw/0RHET49ohv2oPUGzOIrSFEdRmo+jKC2GoygtjqMorRJHUVotjqK0BhxFad0dwzG16x3H8Wo3OMqJ0fo68U6CludUdpK1fk6ak64NcKo51bWBTi2ntvYPp53TXvMjcrpZuxUR0kjtdkRID2p3cAyk3cmxiHYXxyLasOhA9Bjtbo4wtMdUnErR5qmZaqb2ntqgdmnvM8fXljDH15Yzx9e+Zo6vfcscX1vNHF9bxxxf+545vradOb62gzm+tos5vraf+bt2gPm79gvzd+1oTFRMtG7EVI5J1q2YAzEH9SiMm69k3GgybnSMm3Fg8uPpSfCbp2gqcv6FP5um0XRyaAZGlSWjysKoWkBR9BbGllfGlhdj6xPkf0pfUjRa/Qp1l+PPh9H2LcXQalqPc2wDRl512ky7cdbswV8N+on2U006gL9a9AsdoQw6inEZL+MyXcalIeNSybhUGJeDKU7/B0anktFZCaNzNSXpazBGEzBG11OyvgEjtYqM1DQZqckyUivLSE2VkZqgu7pLCQZhvCZivOqwWKgyRq0NHz87pRhRGMGJMoLTMIL7UG3jRozjOhjHufDzMJrryGhOx2heTZpnjed70j2bPJvJ8mzx7KRoz4+evVTV87NnH8V69nsOUzXPEYz7DBn31WXcp8u4T5dxny7jPh3jvjMl2l3sLhRtX2JfQh67K84EE2dCN+Rcbl+OnO52d7Ltv9p/JcfugTOkJs6QK1D3SpwnUXKeROM8uZZ89nU4W2JwttxA1e0+9o0Ua/e1+1KGnYPzJ17On3g5fzScP4NQa7DtR5ki+1bk3GbfRro9xL4dexlqD0XLd+Aci8Y5FkCtYrsY+cPt4Sh/N846n5x1Gs66ESgz0r4f+30AZ2AszsCHkTPGHoNaj9iPoMyj9jjkjLfHoycT7AnIwZlJXj4zic/MSaj1jP0M8qfYU9DOVHsqSs6wZyBnpj0LdV+2X8ZxmG2/iiPzmv0G+jnfno9j8qb9Jnr1gf0hevuR/Qna/K+NMWl/ZWM02ivsVWjtG3stXWCvszfgmGy0t2BfW+1tVMP+wd6OI7nD3km17B/tH7HHXfYe9HmvvRclf7Z/xtZ99j7k77f3oycH7F/Q/kH7IFo+ZB9Cy4ftw5RgH7GPYO9H7aOo69ouRTOOUDrjCCxwBBY4AgscgQWOwAJHYIEjsMARWOAIacCREbAjnZGkM5qQh9GENEYTUkCTYtjh3hKKY0whA5iynFT0iuiV5Iv+OnoPxTG+kMH4QinAlw2UoDaqjZSovlffk09tUpsoSW1Wm7F1i9pCyWqr2kpV1Da1A/5OtRPlf1Q/oswutQtlflI/wd+rfqZUtU/tQ5n96gDKHFQHsfWQOkzR6qhyKdmH058SGLlgPT4PrOmzqBLwy0uVfdG+aJRRPh9VAZYlICfRl0SpjGiUBERLg63iS0eZar4LKNFX3VcdLdTw1YRfy1cL5TN8GfCBd8gH3iHnad8ktP+MbzJqPet7Fi1P8U1Fm//yPU+VGQFJEJDiGAEpDij1UhgBx+DPKEfACfCfAvYZgn0mkG8m/Fk0D/YNmi8I+C7894F7Bn0I7DOAfV8BK5fTCvgr8WcL9hmCfYmCfZUF+6IE+5IE+5IF+1IE+1IF+6K1WC2WlNZb6w07WAPSaYXarbBDtCGwD2gPAPuu1K8kXZDRATL2g2Vk9AoyOoKMPkHDBH27zv83ghEwXhCwkn5EP0Ixgn2xhsfwUDxQz4HvNbwUZ/Q2elMV4wbjBqoqqJcuqFfN6Gv0RX6OkYN8RsB0QcBqRr5xE6WVI+BmMoB9e8kG6h2mKMG7VMG7yjwrivOzk92JDME1G4h2OSxjmSFYZgqWJds97Z7IYSwz7Kvsq2Cvtq9BSUaxyoJiUYJiqUCxXJzb+XY+7E32TSh5s30z7AB7ACwjmi2IFhVGtCH2EOTcDkQzBcts+y77LkG0YSjPiGYD0Urgh7CszP4nfEY0WxDNEESLskfZo1DrIXs0chjdbEG36DC6jbXHkiEYZwvGpQq6GfbTwDUjjGuT7cnwn7WfJct+zn4OJRnpDEG61AikMwTpbCDdfPiMbra9wH4P/gf2ElhGNxvotgo+41qi4FplwbUowbUkwbVkwbUUwbVUwbVo+yf7J9RidKss6JYs6JYaRrfDQDFDUCza0RyNjBAeee/03kWON+ANwA73DievtwTo4/WWekuRc6/3XnIEifTosdFPkC6YkqB2AE1i1W4FPBUEiRXsSAB27Id/QP1CMUCNoziTGTXifIbPoBjghU0+wYt4wYsEIEUl+IwUlXzJvmSUYYxI8FX1VUX+BcCISsCIGmiBMSJeMCJWMCJOMCIeGPE02nzG9wxqTfFNQfmpQId4QQed9MbX82xm84Nt7kFEcvXpePz/5cXd467nJP7uE2duysvsc78/4xzl6drmGdk1SJ/IpzXH8jh6kdnBQzxDFpovQi92nziDefp4MLx9aXjd/+x79kct7g3uRFnv+V2l17uLOdr7vfNop21n+4k+z7OWz5XtQdS33l3NR9NdUV7q+K8XnrmWY85qANUolktL3ilz33/q4g33JHKvsdRO8tad/Ou7O0+d78Lo+Y/7ibu/ImPztxd3SXi9ITySd0Vs++lY76UXv/J7ut/++rn0h/TsrFt2J7vjZb3PXYKR8QXSLPcxd2n4dy/vv8wsLsEYWlSh8307RdyFCN03idg6yt0FHNkePqJbuCcRlY+Nhp9/x34O0K/e7TjXBb/k8d7vxbHaicSzRvtPKLXt1Jr/15byOa+tv2+snCsinbHtX5ttPn3pj9zX3IXubMYp+KGZzWXhOcqt5aU2Hce2s2j7G56/DGPfNrkDtBsIwndFZoXax+cPsP6YE/wT5jPdGcT41OLYtwLqLgNKtaca7orQnQB3g7tY1qOPzfCd2xJ5dyt098h9qfzz0+5A9343130Hfp/y3E7uYPcNudKcdNR/DaXwDea772CMn3butIL93iNIE+4990SOeORVa3fkzLi76oytLfpje3c2C9AofP/NHXLSloXuveV++RUMI4LxYiOurGf8TqfZGyMm/xZybGR8bgsfJ1j3dtmPLfeDT75SJ8pTWpFtMQNYg2uWl1sKc4Nfwtt2/9Yx/x19PY6UEXfBjmFjiI8A4zfLvk4YeXK+bT7l+r69oveVKrqEWGnE59Oyn8g7mBG5b/6x/Ylo+ZqzKCz3edyR4XuK+3BGb+I7hO5sd0boTuEJ1/fd4VE2151TgX4tAC94PewvAkbL/Vw+P3kMgGOsD99T2SfIujLMLkIo6juprXcEe14TnH8ndA/E/fSEEkfOvofhmksp4m57GDmXCga9Iz6wUHDzvdAoCN2RDJ0d4S2XuF3k01tufxzJgUhl7kNYvyK5C0/Y2ys46kPcXhXoZ6E7kbEb3/87eDfAK0WEMNGdjmvgGPdKdyxHDMjlmOFld0ronHEHSOXEY/dTw20tw9kO5k/1xA9FWWH2xXf15PkRHh8VeAZERk35ne3QtTjsr6Zw7HM8jqMTuVn1k597+POXSA7J9+TcHXzVP2ONk/j9+VlOuK8pd9bdHWdmYnKUz2+URpHHE+PngPCon88cHwjGVKCfp7//fBZtnNfj405y73FHu0PFX49odJr7RHjLdvdLWe8AEu84ztwqtJdO7qRz7Oc3iL0Wh2diNrrL3c8jniETXo2I5wv3p/LnByq2l9+Yszlj3Q3MvbE+ivQ5+Hn4aiDPG/CzPcL4T/fM1vlbgNq5Lmsap8inO/D5NkQqEjnzEXAPua+7j7hZuIYsBoZPrtgv506QVa1z6mnod/0g/CkcxYZmAigimjr35Sye6zpdC7vkCDIObwVfPeVXxvZVHPX90bHK2S5gVlvRi1A8ug3jdFfENrnKYBx/jjPs01+tft4W9HNG5LMrwKUP/vd682uLe7PbhxGS4xnY0fg82/2P+OGID+PgdfcKdxRx/LWuYmPsfP8OGB2/nN89nt1yDPXdH059fvQsWvlT58DCjHI7rlk/nts8X0XnDvj+xO8s+bI8bXzyU2Jnu9Q4x/q/e8E1/hzm+txH/rienGYPYXx3d57LL/9HXttOu4/V7sHzPWdx9os7T2KGcz0edf+Qzvxpy7m+2YArTQXu1shccvnslzwjfOzc8p7+LBOOXIt6k12BPW6vCGrzr388XgvPBf6+p8eVPKP8/2FJrUglnsOvQK2lkVcWfo8D16l9f85dyD9jAX/d+9tXLPdwBVpeVpEn9IX5bz3h07FjGXWGWjyCU+lyjNHzvHA0Wu5vlTjguzMjkMyHn+d5m8henlM734XTh6dsqh9+lyAx4r2Ds2n5Cxy3L47thT1Jx96FOLa/bNnTCf2J+DTieGvhNC20jlj4nYfmvHbnh57XOMt+TkO9aWFfPJn7nh/+Dsd60Pykfk47+z2V1133628y/katryO/Obdw6t2X0y4VmmnAr7Tpt0udUmtr+HyXe/5yP+jY8xTeM7yBwt8jlTpW5Hx3N/3WDPCv1loVTqG7Gjy7vZPCdzfOUCs0W5p64vnnrnS3yNue9Skda7k3iquPsA4ZTX87+/6dse/viS2P+d1hbq77rDte7g4fP2ducJ+T9aFTn7v4lTcEd7s7/pzZfHkiJHSvaiU4zjJEpyvBr8vfjJE7NjyT38G9Vj5/6t6KUgPdRfhGr7v+8LzmCfe05Dpys9ujAr0ZjFZ7hn3x5L3h8e5r7rvu426Ou1BGRKrc2V56LKJy/8F5VJvvDrm3uYWStw/HfK07Gd/lNXe2+2L4Ds4Jc1hybXjYfbQC/ZzqflQ+m/eR+yzs9DAf2eDOcR9F3q5w0aiIyD+EgBlnv7/zvZyPOzIyqkLPK5wy3s/D3ldX6H7cVoqYgQmPvt9uJx6pEnUVPwO8vhbV5O+PM4v/w09rqgc8Wo+0GWffZpw53YETsW5LKR9dvrfhbtewG7rzvLD8fU479PRLuNy80/Q9hHjjgfdyxXFL3CvdIqR7qaabLUXC+C5vYLd1O7kD3BvhvcUJ/ZvsTnc/kWdvQnurTnUoBmt5txwjfsZvHodT+zQ7lMKf5uM7RdzHCD9d0wJM8wLi/8V37D3ytyPKJB3d4yq3s7sRuPSOW4g2Jrij8b3muw9FHhU69j53WQgfzrKfd2G8hN4RNuEVun93H5IxtFKe+PSFMD8iEpI3z0NPBvxuHnDiHred+k7j76i1O3zuSoQr925+Iks2xZ7h+s41UqkNfn+dPvwN3aHeYd2hMvqLpmuVqZ9oCt0pmkIjRVPoAa23diON0f6u/Z0eEzWhx7XbtQdogjZKG0+zWFOI5rOmEL3JmkK0gDWF6C3tPe0LekdvpjenxXqm3oqWsKYQLdPb6+3pS9YUoq/0v+iX0wr9Vv02WqXfqd9F3+pj9EdpjT5Vn0rr9ef1WbRBn6u/Tj/ob+hv0A59gf427dQX6h/Sbv0T/RP6Sf+Pvpj26kv0/9I+fZm+jA7oy/Xl9IuhDB8dNOKMSnSYdYHIFV0gEl0g08gwMjRbdIEc0QKKNloZrTSfaAHFiBZQnGgBVRIVoASjt3GDlmj0NXK0JH73QkthrR4tjbV6tCae1z1va71Zq0fLZ30e7WbW59H6m3FmvDbATDRTtb+zSo9WyCo92lBW6dECrNKjFbNKjzacVXq0Elbp0e41fzYPafexMo/2ECvzaONYmUebxMo82jOszKNNYWUebTor82hvsTKP9jYr82hfsDKPtpyVebTDrMyjuazMo+uszKMbrMyjm6zMo1vWZGuKrliTR49jTR49njV59DTW5NFrsCaPXps1efQ61jJrpd6E1Xj0TFbj0S+0Nls/6BexGo/ehtV49MtYjUe/nNV49JtZjUcfwm9j6Hc6uqPrdzmWY+vDnGgnWi92Yp04fbiT6CTqJU6Kk6oHnapOVb3MqeHU1P/J+jn6vayfo9/H+jn6/U5zp7n+IKvo6KNYRUd/iFV09Iedjk5H/RHW0tHHspaO/jhr6ejjWEtHn8BaOvpTTn9ngD6RtXT0Sc4QZ4j+LCvq6M+xoo4+hRV19KnO/c79+vPOKGeU/oLzsDNGf5EVdfQZrKijz2RFHX0OK+ror7KWjv4aa+nor7OWjj6PtXT0N1hLR3+TtXT0Baylo7/FWjr626ylo78blRqVrn/AKjr6x6yioy9iFR19Cavi6P9lVRx9P6viGMSqOIbDqjhGXPTV0TcZLfhNDqMTq+IY3ZStYo2rWA/H6KNuULcYd7AejnEv6+EYD7IejjGa9XCMR1gPxxjLejjGRNbDMaawHo4xlfVwjOdZD8eYo6aqGcYrrIdjvMl6OMZ7rIdjfMR6OMbHrIdjLGI9HGMJ6+EYK1gPx1jJejjGN+o7td74jtVsjA2sZmNsZDUbYyur2Rg/spqNsYfVbIy9MXqMY/wco2JijMMxlWISDZcVbDx6zP6Y/R4zlmI1j0W69h4QKgZIFEtxpOHaGk8Grq7JyE2hKkDedKqN/Dr4s6kuNSSHGgHRolAjG9e+NtQW19R2QDcl6KYE3XxAt2tR6zr8xQLjbkTbfekm1OgXxrtbsZ/b8NeWhtCdlEB34S+RhtHdVJlKgIZJQENFyZpPi6EUeTssVYsDPqYBH+sip55Wjxpr9bUGyG+oNYTfCLiZLLjZBLjZE/YKoGcHUWRL1m4EhjYVDG0qGNoMGFqM/OHaCGqujdRGos37gaqpQNWHqYU2RnucWmrjgLBNBGGbCMI2EYRtDIR9Ef504Gxj4OyH1EX7SPuILtI+1j6j1trnQN6LBXl1IG8m7IXAX0vwN0bwVxf8jRH8rST4207wt5Hgb6bgbxXg74tUTZ+uT6d0fYb+ElXXZwGRawgi1xBEvgCIvAD2LeByVcHlWoLL6cDl/8AuBjpfAHReAvtfYHRVweiqgtE1gdGKMgwfkLq2IHVdQeo6QOoUqm+kGqnUwEgz0qg9ozZ8oDbVA2rXha1n1EctYDc1ZOxGrSwjCzbbyMbWtkZb2HZGO5QBjsMCx5HD79l1kvfsOsu7dZ3k3brO8j5dR2B6CWV5gp4RpAHZx5DP84hnHF3oGe+ZQPGeJzyTqJXnGc+zVNnznOclSvbM8rxGKUD/16kp67VRc74GUGu+BpCXrwGwcWYctTHjzXhqwlcCaoorwZdkmF+ZX9EF5nJzOfnMFeYK8pgrza/JxBXiW+SsNlcjZ425hmxzrbmWHHOduY4S+MpB0XzlQJkt5haKNbeaWykO148fSDO3mzuwr53mjxRv7jJ3UWW+omBfP5s/U5K5z9xHF5v7zf3o1QHzAHryi/kL/IPmQfiHzEOUZR4xj6Dlo5ZO8ZZheSjLMi2TNFyHbAKMWw5FW1GWl3xWtBVNhqUsRUmWz/LRxVaMFYMyuFZRLK5VCaibaFVG3RQrFeXTrCoUZ6VbVdFyNasa6tawasDWtGqihVpWLZTPsDJQvrZVD+XrW/WpstXAaoD8hlZD8liNrEakrMZWE7Tf1GqKus2sZmitudUcZVpYLVC3pdWSvHxdxL4usi5CfmsrCyWzrWy00MbqQKbV0boEJbtaXcm2LrUuRZ97Wlfie/WyrkH7N1q52HuelY+93GT1RzsDrEGUbQ22CqmN5beGYI+3W0OprXWHBdyw7rKGUaIVsALobbF1N75LiRVEO6VWKVoos8rQwj3WPWj/XutebL3Pug/t49pMqXxtpsa4Nj9Cza2x1lhqxldoSsYVejy2TrAmUIr1hIVz33rKeopaWxOtiTjOk63JsM9az1FTVtZDeVzF0cIMawbsTAsj05plzULdl63Z1MH6t/VvtDzHegVb51pzUfd163Xkz7Pmo+Sb1gKUfMd6F1vfs96nFnztR/4n1ico+an1KfzPrM9Q5nPrC5RZYi1BT5ZZy9CrL62v0M/l1nJKs1ZYK6iltdJaiVrgCii/xlqD1tZaa1F+s7UZ7WyxtqH8D9YPKL/b+hll9ln7cAT2W/vRnwPWYUpmPkHNwCd88GPseGpuV7ITKNVOtJOphZ1ip1NLu6pdnZqAbdSl1nY9uz51sRvYDekiu5HdCDmN7aZ0sd3MboYWmtvNUbKF3QJlWtotsTXTzkR+lp2FvWTb2SjZxm6D/LZ2W+yF3yHVmLVQU2YtsGAtsGAtsGAtsGAtsGAtsGAtsGAtlMKshVKZtcCCtVAasxb4YC3UmlkLJTNrQXmwFvhgLdgK1gIL1kItmLVQS7CW/ig/wBlAF4O7FJLP8TtFKAMGg7pgMMgHg0HJoBNEO6VOKfwypwz5YDPoCdgMyj/sPEzNnTHOGNQCp6Fm4DTjkDPewehyJjhPwX/eeR77esF5gbowy0HOHmcPWvjJ+QllwHWoMXMdSo3iiY8OUVqURsnMeJADxgOLhRqD8eD6GBUXFUctwHsSqHVUYlQiNYuqHFWZLmY9QWoelRaVRmlRVaKqwE+PSkc7YEXUHKzoKorxXu29mizvNd5r4F/rvRb+dd7r4F/v7U2VmDMhZ4R3Kunef3lnwgdzgg/mhDJgTijzS7RGerQenUbtmD9RZuhNWOZPpDN/ggV/gr1B3UDpqo/qQxeoG9WNFKv6qr5UTeWoHKqpclUu1VB5Ko8Mla9uht9f9Uf5AWoAytyibkGZQWoQ/MHqH1RLFagClClUfpS5Vd2KrbepIVQVnOwO5N+p7kQ+mBlssSqGHa7upiqqRAWpuipVZSj5T/VPlLxH3Ys9jlQPImeUGo2Wwd6wl7FqLOyj6jGUGafGo88T1AS084R6Ev5T6imUn6gmwn9aPY02J6lJ2PqMeobqqMlqMtVjzkd1wfmmUgP1L/Uvaq+mqRfhT1fTUWaGmoGtL6uXYWerf1NDNUfNwdZX1KvY+rqaR/XVG2o+ct5UbyIHTBEWTBH2PfU+ZagP1EKU+VB9RLXVx+pjlFykFmEvn6svkLNELUWb4JFof7laDrtCrUSZVeobbP1WfYt2Vqs18NeqtdQc/PI7tLZerac6zDKpKlhmGVXx/dN3D9Xw3evDUQLjHEkNfff7cKx8o3yjqJrvId9DyHnEN5Ya+B71PUrtmYkiB0yUGjITpUrMRElnJgoLJkrCRKkSM1FqCk7USJhoZ2GiunDQEOMMcc3oCGbpo7/hzyec8hLhlJdGcMq/CKdMFE5ZWThlknDKlAjVA1NUDyxRPTBF9cAMK76w6oEpqgemqB54RfXAFNUDU1QPTFE9UKJ6YIrqgRLVA1NUD7qI6kFXUT2IE9WDy0T1oJuoHlwuqgfdRfUgGRw3GozTp/mE3aaC3eKPMoXjtgLH7Qk2ySy2p3aN9jfkM4u9WOuv9acLwV9vhx2qDaMsrRhc9kJw2ZGUDRZ7P/wHtQdRnrnsheCy46ktWOxEagf++irsa9pr1F6bq72DrcxfrxL+2kH4a0fhr53AX5uRR/irR5hrrDBXD5grfiEw179Qgn45+GuC6DKEFGtiRJchRnQZKokuQ4yw278Ku71Iv19/gNqw6jBdIRw3XRhtQ/1l/WWqr88Do60lXLa2cNm6+mf6Z2CuzGJr6Ev1pcj/Csy1hmg9VNG/1leDy67V18Ky7kMDUcGpp2/Uv0fOZn0zLGvhVBU9iJr6Dn0nfFaFyNB363vgszZEHf2Qfhg+K0RU04/qLlUVnYjqhmbo8FktIsMwDRM+a0ZUF82Imka0EY2cWPDmxsKYmwtjbimMuYdRxUhHPvPmxkYt8OYmRh3w5sbCm5saDYwG8BsZiKTAoVtSC3Doi+C3NlpTI+NiMOnGwqSbGW3ApBsb7Y32aJ+ZdGPh0FcKh+4lHPpK4dC9hD13Bm8eB948Hlw5XrhyknDlVOHKrTxzwZUvBldeSNmeDz2fU3thzB0jlCxMUbJQomQRJ0oW3YVDXyocup2oWnQVJt1aeLMtjNkWxuwTrmwLV04yN5obwYM3mZuRw/y4svDjSyP4cZLw4xRzr7kXlhlwZ2HAdgQD7iwMWLcsMGBbuK8t3DdFOG5nYbd2BK9NES7bWVisLSw2SVhsZzDXxth6nLN2FrYabWVamSjZymqFksxZOwtbDXFTW/ioLRz0EuGgl0Zw0L8IB00UDlpZOGiScNAU4Zop1ihrFJjrQ9ZDlClcs7XwyyxrnDUO+cwv04RftrMmWZOokzDLTOs5MMssYZapwiyzrWnWdGoPfjkLOcwpewqbzLZetV5FLeaUmcIpe4JTzkPdN8AsU4VZthJmmW19YC1ECx9aH6L8x9bHKM/MMlWYZSthltnCLDtaS62laIH5ZTvhl5nCL7OFX7YVftlJ+GWatdpaja3MLI9xyu3WLuQws2wlzLK1MMue1lHrKGUJp8wSTpkNTpkMn9lkW2GT7ewadm1qL5yyo3DKq4RTdhAG2U4Y5FXCIDsKg0y1L7IvgmUG2UkYZEe7vd0ebbLeihK9FVP0VpTorSjRWzEjtKO6id6KKXorpt3L7oW9s+qKKaorSlRXuorqSpyornQX1ZVkUV1JFtUVU1RXTFFdMUV1RYnqSlyE6ooS1RVHVFeUqK4ki+qKKaorSlRXzAjVFVNUV5SorpiiuhInqivJorpiiuqKEtWV5AjVFVNUV5SornQX1RVTVFfMCNUVU1RXvKK6okR1xRTVle4RqiumqK4oUV0xRXVFieqKKaorpqiuKFFdMUV1pYuornQV1ZU4UV25TFRXuonqyuWiutJdVFeSRXXFFNWVrqK60k1UV7pHqK6YorqSLKorJmIAsFgw/trUTvh9e6euU5eywfLrUZbT0GlIrZxGTmPKBONvgvxmTrMw7890WjgtqZOw/0ynldMalmOAjk62k412OjgdYLs6l8Je5lyO1ro7f0WZHk4PxAw9EQ9kO9c51yGf44G2To6Tg57kO/koH9Km4gihIyKEgdhLKEIocm5FC7c5t6HW7c7t1MG5w7kDOcOdEvSf44TWEhukipZVpkQIWc5oZzQsxwmdJE7Ich53gA8SJ2RKhJDtPOM8g5wpzhTsnaOFjhItXOW86ExHLY4Zsp2XnJdQ5mVnNizHD+2dvc5etMDxQ2vnkHOI2kr80FPih3YSP2RFOVEOZUr80DrKG+WF70P8kBUVHxWP8hxFdJQoooNEEZ2ikqKSEGMkR6WgZCpiiVYSRaRGVY+qTu0RRVxNsRI5xCJmuJ4SvL0ROSR4+3j7IOcm703UxjvQOxB2sHcwbIG3ANbv9cMO8Q6BZYWdGFHYiRGFnUqisFNJFHZiRGEnRiIQj8QYf42uEl2TLoruFn0ltYnuFz2MrggrgXHUYSDSaEgeiSUaSixRX90sscTf1UAwXY4fakjk0BCRQyF8vyoCgx+qhiKHY4ZaKqACyBmuSsDmOU6oLXFCQ4kT6iNOeAA5DyJaqC/RQl31sHoY5TlOaKgeV+OwdTzihLqIE55Aaxwn1JY4oYZECLUkQmisnlXPwk5RU2A5QmgpEUIP9SIihGaIEGYi/yU1i5pKhNBMIoQWEiG0RITwCnJeVa9RIzVXzUXJN9QbyOc4oYlagDihsXpbvY2tCxEhNJXYoKXEBj3Up+ozbP1cLUY+Rwgt1DK1DCU5NmipvlarkP8NYoMWiA1Wo7U1iBCqSoTQVK1T67BfjhOaS5zQRG1Q4FqiedRAdNTqqW1qO3JY/6i62ql2wWcVpAxRQaouKkgNRAWpuqggVRMdtarqiDoCy4pIDZSrwMREF6kmCDKYmKgjVRNNtaqikVTF5/gc+KyUlCFKSQ1EWa2eL8YXi3xWTcrwJfgSkMPaSXVEO6maL8WXhq2soNRAFJQyREGpjigo1fThD1tZRylDdJSqi45STd9A30DEPxwR1UZEVErpiIgwHnwjfCOoLiKiUcjnKKiFxD89EP88Dn+cbwI1lSiohe9J35PwWY8pQ/SYqogeUwPRY6ojekwZIbU20qrsSQ9irYwHaC1Rbm+kXKT+SIORbkW6s3ytFU3D+u5w3j1IDyCNQRqHNBHpOaQXkGYhvYo0H+ldpI+QPkdairSS9LICSZS7RpJeNgRpGPyNSNuQdiHtQzpMlKcjOUgxoX3nJSKlIVWPWNeJ+Nwo1FZeC6TWSO2QukSsuyFdgXRtuA6v+yDlI92ChH7lDSlf62VBSVrRTKQ58O8rzwulUUhjw/4wpAlhf1I4TQ2n6UizkeYiLUB6P1x2kZSnPO4zr+9DGoU0VvoVKrtYylHeBKRJSFORpiPNRpob3t+X8BcgvY/EZRcjcd6q8PZV4bQOeZw24fvMQ3q7/LtQ3nakPUgHkI4S5XuQvEhxoeOen4SUHl7XPL4uL18vNAZ4LeXjQp/LtzdBykTKQuqA1BWp+/E1/375vZCuj1j3ReoXsR6I5C9f62WbQv3OHxr6bvnF4XbKzi7JuI5M94QS9+OE9nqdlEYijQ6vR57Sjl7GfXsM6cnQb5M/GWlaxHom0hxPfE5WQdeSIblrCg+z9etiHdiN/hjYbf5E2F3+NNh9/uqwh/11SoZwreDePN3fKHgwp0NB95JhOV0LepUE8xx/C7Gty/0Yf7uSIG8tpZzuBdeX3JeX6O9Scl/ID9teBX1LRuWl+buJveIkv7r/Wtg6/j6wjfz5sC38t5SM4lqlVs71Bf1Kxub0LRhYMiGvtb8Atp1/CGwX/7CSCZxfqnL6FfhLJuV18wdhr/DfV1opZ2DB0JKpedf6R4kdK3YCbB//JNh8/1TYW/zTYQv8s2GH+OfCDisYWpqSF/QvKK2W4y8oLpmed5///ZLpOUMLykpm540qKCvNyCkuGFkyN2+sfxHsBP9i2EkFI0sb5E2V/Elsc8oKRpcsyBlZ8FjJ+3nT/V+W29n+VSXvc35ps7AdXfBkyaK8udjKdl25v8C/CfZ9/3bYRf49sIv9B8rtl/6jpa3yVhV5StvkPFYwuWRx3roib8liae3LcM6mojjY7Ww5p7RTzpMF00pW5e3BMWfb7ZjP+aWX5UwumFmyLu9AUVLJOvZLe+QdLUqHP61gTsmmfE9RTbH1yn1vURPYuKJM2KSiLNj0og6wNYu6it8dtl7BnNKrc2YWzCvZnjOn4O2SPflNinqV9j7BZhZdX9o7Z17BwpIDOW8XfFpyND+rqK/YfuV+h6KBJUdzFhYsCXryuxb5y233oqFBT86nBcuD3oGzh+0Uu1fsQdi5AYJdELBg3w8o2EWBSrCLAylBL9e6p8fALwPVRryQs6Tg22BczvKC9cGkgasCGbDrAg3Esr8p0CyYxFtHzMr5tmBLyeyB2wOtSmaH/LBdX7AzmD5wT6CN2E4n+QcCl8EeDfQIpg/yBK6G9QZ6B9O51ohXc7YU7A3WzNlZcDBYb1BcIBc2KdAfNj0wOFiP80fMz9lbSMEmg2oGboWtF7hzxLs5BwutYOagJoG7xd4j9gHYzMAY2KzAONgOgYmwXQPPwXYPvBDM5FojPhrUKzDrvvW5lHtZMGvQ9YFXg1m5VqEKdmA74vNcVVgp2HVQ38B82H6Bd4NdOWfE0lB+2FYqTAl2z00prBbsNWhg4KNy6w98HuzF+SNWhm21wozg9YOGBpaKXVnuFwfWwJYFNsKODGyDHR3YBftYYB/sk4HDI9YMmlysj9iYm1HYINh30LRiJ9hXWusXzplZHHPMcs6IbbkNCpsFBw6ag98OtjjxmM/5I3blNitsxd+rOA39hz9i6aB5xdXhtypsE/QPeru4jthG5f7C4hawnxa3hl1S3A52eXEX2G+Lu8GuL74i6Oe6I/bltinsFBya26nwsmDxoC3F15bbnWL3FvcJFuPY9sARvqzw6mDZoIPF+WJvOeYPpuKCYFnOlsLewZqDreIh5VYVDwvWzO1RmBscmd+rqFhsWbl/fdFI2L5Fo2H7FT0GO7DoSVh/0eTgSK5Vmps/tGhaaf/cqwv7B0fn9i4cHHwsv7hoJmyZ2JFiRxfNCT7GW0v/h73vD4ojudLMaloNo2EwwzAMZhjMMJjBGGMZy1jHsliWMZYxg2UsYy3Gmh5ouquK+kV1dXV1AU3RNE0LcwqG1WJWh7GO5ThClgms4DDmZBnrOJZlCUxgVscSnELWKrDMEbJOxiwnE/heZtOMpBl75o/97y5evK+LrOysrMwv33v5qALOahVl46LVWj+BER9XX6i/blyx2kWtubv6Yv00wbmnji/VLwIO1d8EvFK/Bni1/k5zN/5Wi2zlRK9xySqLfmOoeqL+HuD1+vuA0/VbgHP1j4whqyZ2GFeqFwnelFGLZvWKXcbV6jXZQjCaYJxx1eqVE+H4jpwCeE9OB7wvZ+FysavFW70lH4GSR3Jei9/qF3uMiRokFwBa5BPGhLVD7DOu10SLfS0dNXHySeO6tUscMK7WJMplgCnyaWgHSlq8BLtCZ6094rAxbe0TR4wrNely5QFmyVYYGShv6ak5Ittb+kLH1gFxzJiryZM5gvIBFsga4AnZC3hS9gOWyR2Ap+UuwEq5p2Wgxir3tQxDO5PGYo1dHjAW4XgKcFicgR5y8jDBEegVlEA/R8R542aNLI89ibi8ZaRGkydbxmq88pRx1DomLhlrNX55xljDxy2T1jF5Ho4nxRVyR0sE3znOkm8Bdsh3AbvkDcAe+QFgn7wNc3RB3oV7h+/C/U6Jt5pXrTPiXeNOzYDTdIDDBEecUcYd67y4YdyzLokPMAecMQTjw1gz5kwCDqyI28b9mkln6gFOOTMAZ5zZLVM180Jxy0zNkjMX4hMcG8zXrDiPNXfW3HIWAt51Fu178CXsB1tWajacJc2zNQ+cp5pniSe6VbPtrMBeyVnVvF6zK8y13LWZnNXNe7YoJ928R9bLhi3GKcDawbx9YIt3Ks3dtiSnDpjqNPY5to3nt2XXluEMGHPWAWcnIIyDz2TLdnbjMXH2ApI7teU6+wGPOQeNIexx2ne5uEYDvA9Y/qCJS2wMGMlcSmMnYHpjd8g+B6OwlQvGcFmNvcYZ7khjv3EG25lgPJfXOIhtTuNlQLAkwSSuoHEUrMeJxnHDh5nf4rUVOi8bpbYi56gvylbiHPfF2E45rzXftlU4bzQbtirnbHPAVu1c8MVDnWWoQztXfUk2wXm7Jc6mONeNCzbduelLtRnOh829toBzp3nT1unc82XYuhWzL9vWqxxuHrX1K7G+XNugkuA7ZrusJDfP2kaVNF+hbVzJ9BXZrik5vpJQvGG7oRz1nbLNKvm+ChxRtJTZFpTjvirbslKMZ0Ep9VWHPLttVSkHvK2cAVxXzvpo26Zi8wm2hwrrU2w7iuTTbXuK6jNqzUqjL1B7WPH5OkMx7VsVShBmn8ROoSilNlY57zuIG5ULzb21CcpF8NTADV/vW7PKJV9vbbIy5OuvTVOu+AZrM5WrPqU2h9Q8qkw036jNV677LtceV6bhuFiZa1ZqS5VFwHLlZnNn7RllDfCscqd5sNam3ANklfvNs7WSsgWoKo+aF2obXQjQ57JAf4KuaMDzrjjf6FslrsTm/toLrhTfeO1FVzrEHjACvmu1l1xZ+9y21g65jkA7V1x5zXu1V10Fvhu1E64Tvtna6zjCrJ12nfQt1M65ynzLeF34VmsXXachSodY3Xeb4HrtTVdlKAL3bRJ8SHCH4B6+Sqs5hLVrLmtzd+0dlx3u/Z6Lg77dF6TWw7VbLnn/OJZgAl5frcm1j/BI4ni4NY1gJo57W3PsyKW15pDjowTz7RaXt/maPdrlh3gYouLW4/Y4V0coBm4tJlhKsPytdVdX84I90dUDmIIRR62tZwietae7+kKRaqvNnuUaaF61H3ENA0I5lOS5RkJRaytLUCKo4lXf2kjQF0J7gWusedN+QphoDdpPuiabH9rLhOut5+2nXVPNO/ZK1wyg1TXfvGe3u5YgtoR5ab1A8KKdc634YmrsLrCKdtl1t/WSXXNttA5BCVhFu9e1DT33u3Zbr9g7VFPrVXuXGmVct/eoMa0T9j41vvU6lCe1TtsH1NTWOfuwmgFWnVhv+4ia3bpoH1NzwRovqcdab4YsoX1SLWxds0+pRa137DNqSes9+7x6qvW+fYnEAGtqBfiCkJchdjvko+0rahV4fPC2rVv2W9jb2u+q1eDpwGq1Pqo5qdKtj+wbquBH9geqYkzYt1W99U7IL9ekqwbcy64awLGE2mkEHSa1G/t0tbe52xGl9oe9rSNGHcT+S71szDni1VEoSVLHAVPVa2FP4chQb/gtjmx1Fo5z1QV/tOOYuuyPw3fnT3QUqqv7llZ2FKm3oZ0Sdd0YcpxSN/0pjgr1oT8dRmbHn+WoUvf8RxzVbrM/z0G7D/sL8Lj5T5B2TtYgd6wx4RDcCf4ybMP9p/ejHUB/JUFrOKoRZb+dIIlz/DJBDffB7yXodyjuZOOSo8SdBj3RcTTiMMQOn8kRcGeGjv0dBLuwL/D3YKvr73F0khGG6MLfR3CAxA/bjm53DvgLOPYPE+xx9LqPGtOOfnc+RBQQV/hHHIPu46EowmfC6B8j2FWT7i42FuFsKeBld/m+x9/G6J90jLrPhLy8f8ox7j5r3HRcc9sAoRxKbrjZkJf3zxCcJ7iE/ZR/hWAXwVuOWbcEvhs8eKvNseBWwVODH/ffdSy7G417jlW3z7hXPe0OAjcm3eeN+2TMNwg+IOMw5rjtvmCsOdbdF407jk33JfDpJAp1PHQPGUe5k43XgqlcWeMN/y53unE2mMFVNi60zXLWxuVgNmdvXG0e5bjG26TOOtSRGzch7tUaHwZzOW/jTvAY52/cCxZyHU3mYBHX1XQYWuhpig2WcH1NCcFT3EBTsnGcG25KC1ZwI02ZwSpurCkH/OZk09FgNTfVlN+8yc00HQ/Sod0BN99UbBRzS02lQYGbb0xtX+JWmsqDCner6Qz2qk1ng/p+HH63yUaQBdxokoIG96BJDQa47abGYCe32+QLdvOmpmCwl49qOh/s52OaLgQHQzvQupymi7DnCu10yJ6Cj2+6FLwc2uXxSU1DgKlNV2BHgH39aF2w6WpwlLM0TQTH+Yym68EAn900HeysiyU1c5vmAlf5Y02LwWuhfRY72gR7Xr6waQ32sw+b7hjJfFHTPdhX5jTdN47yJU1b4avzp5oeQR/ILomv8CLYMYX6U+W1AFZ7o4M36tK8cUYOT3sTg7O84E1p7sYjEFzgFW96KFZpH+N1bxa0ZniPGD4+4M0LLvOd3oLgamg/yHd7TwRv873ek8F1HOcEN/l+bxn4NdhZBx8S3OEHvadD++XgHsbWTIwt6RjPmfFVzpFrnYvlor0w/vxlL+yF+VGv3cjB+99zCfy4l9s/TiaYhuOlc+GRhN3ruRyCR3GvzuXz17zyuXxyfJxgMX/Dqxml/KzXC7tX2MOeK+UXvP7QjvVcCM8QhH2ltwNGbNnbFUa8x2zZxXjOxq96e0L7ynMsf9vbZ7D8uncAEMqhZNM7HNpjwtUxHidIdprnyJ7xnEqwkX/oHYGdI+wfz/n4He8Y7BNhF3kuyO95J43jgtk7BXjYOwMxnsU7b6TheTl3nuCFN7e8S+cuCrHeFaNYSPDeMhqFZO9dwyekeTeMw44d9xUjaO9wXwWrteeegBhVA6t4hTa7r7eu0Yfd0/5tOtY919JDJ7gXWzQ62Q17twNc8+/Sae47bSbAewTvA2a6t9qi6Bz3o7YY+qh7ESJ2sqezd2gIWs7XLG3x9HEtui2JLtbi2lLtw9h+YoSrlGqJbRl0uXykLZs+A5hbvaXBDo4+q6W3HaNtWlZbIc1qR9qKaEnLayuhVa3AmMbYdgrbybaK/b0VQbpRO9G8Q/vEsbYqOqidbKumz2tlbTR9QTvdJtAXtco2hb6kWQEvavY2nR7SuDaDYIC+osltnYAa4FXN6xsF9PtGsS1t66YntI62Xvq61tXWT09rPW2D9JzW13aZXtQG2kaxFW0bp29qw23X6DVtxJDoO9pY2w36njbZvErf16bABpZoM22z9JY237YQ8lAY25atK+qNtlXrirbUdjsUudXOaStt6/Qj7VbbJoO0u20P3zyvbTTPMhbtQdsOE61tt0Uxcdpu2x6T6DH5KpgUT1TAzKR7YgKHmSxPfCCWOeJJCiQ83hqT50kNJANmBNKYAk92IJM54ckN5DAnPccCR5kyT2EgnzntKQocZyo9JYFixuo5FShl7J6KQDnDeaoCZxjZUx04C0gHbIzmEQIs4/UoAYnxe/QWO9PhMQIq0+UJBBqZHk9nwLePfZ7uQDDEluotT2/gPDPg6Q9cYIY9g4GLzIjncuASM+YZDQwxk57xwBVmynMtcBXauQHtzHhmAxPMvGchcJ1Z8iwHppkVz2rLMHPLczsw59jzrBtzzF3PJuCG52FgkXng2Wm+DbgHuK2bAzeZXf1wYI016bGBO2yUnhC4x8boyYH7bLyeFthik/TMwCM2Vc8xWDZDP9qO2Gw937jJ5urH23bYY3pxu4Ut1Et9o2yRXg59I1dhS/Qz7dHsKf1se5z1tG5rT7Radda4yFboUnuKtUdX29OtfXpjexagz1hkq/Rg+xHA8+1HrCP6hfY8tlq/aKRZV/RL7QUsrQ+1n2AF/Ur7SVbRr7aXsbo+0X6aGdCvwygBtleGdv2soU+3W9mAPtdO8jbtJFZpl9lO0duuhVYcjjFasvYzFU+ujslQriCUGWjrZrv1xXYv9u/tfrwHb+/Y5yTJDuHcQksP26vfbO8KRWJsv74GOKjfaZH3szckr0KbRa69B6+O9r7Qrp+9rN9rHyC7zm1kQi9RD6j/jRD1ewp+oh5Rf0Bm6o8mCllMh0wW9IzpWVM0etYUa3oePWd60ZSAPmRKMr2MnjelmV5DL5gyTR9DL5q+Z/oeeiniZMSXUeKh4kNfQkmH5ENOlHzo54d+jlJiQNBHYlJj3kCpMadiqlBZzJsxbehbMW/H/Az5YmZjNtGPYu7HbKOb0JuvITN5fzUGfQg9g55Hp9GzqAJVo68iG/oOqkL/Hp1HftSFfokC6J/Qr9Ac+hfqMPofVDT1HPoj9SHqRYqikqhMKgo/v0i9RFVSDiqZYqgAlUUFqQvUSaqX+h71Deq/UL+gvhXxw4gfUqpZMbsot9kw+yiPOWj+DtVoftv8NmWYv2v+W6rF/H3z31F+84h5lDpnHjf/hOo0/8z8M6rL/N/Nf0+9Td7+u2BeMv+S+q75lvk29bfmdfNvqD7zb82/pS6Zf2/+V+o/4qfZqMFDLxx6gfrPh355aI8athyypFPLltctr1Nblo9ZcqjfWz5ryaf+gN9UoP5o+YKlyGS2FFveMFksX7VUmWIsb1lspmSL3SKbUi0ui9f0Ccs5y3nTZy1dlj7TX1q+bxkyleD3AEzllhHLP5q+blmwLJjqLYuWFZNsWbOsmRosty23TY2WX1s2TE34eSlTi+V3li1TwLJt2TMFI1Hkc6a3I+MiXzR9P/KlyNdMfxeZEfkZ02jk5yM501SkM7LbtBn5N5F/E4Gf9emLeC7yB5EjES/g/wcX8VLkjyMnIpIjJyN/HpGCn9eJyIj8p8iViKORq5HrEccifxP5rxFfjMqIuhpxOup3z7wa8auYP8T8wYzf+OJQEDAapeA3gj//AHQXoRO5oBkoQxj4MisMCyPC2JevCJPClDAjzAtLwooY9TVFjBHjxaSvjYupYoaYLeaKx8TC0kdvpHxpoOyacOsNJNwVNoQHwrawK5reSPlKJ7DKDBx/QDj+e0RRf6T+iEzA6FgUAedeIU+EItMPTD9AlOmHph/CuVHTj1CE6aemn6JD5IlQi+kXpl+gKPIu0zOmX5qW0WHyLGg0eQr0OdOvTL9CMeT5zw+Zfmv6bfi/f0VQEdTBfzs8FGFBCeTdp8SIhIgE9OGIxIhElESe2Hw5IjMiE71C3mtKiSiIKECp5C2mVyOOR3wepZF3PNLJMxsfhf5HU3Fk5DAiIRlB/CCkCZlCjnBUyBeOC8VCqVAunAE8K9gEVpBAVaFR8AlBOHdeuCBcFC4JQ8IV4aowIVwXpoU5YVG4KawJdwDvCfeFLTi3JTwSkQhRmQjxlgjRrghR0xMyJUIsJELccyBl4mmxUrQ+JnaRE2VRE71Q9x2ZEecB/WKH2CX2iH0HMiAOiyPiGJFJaG8JyvLEFTi6Jd6Fow3xAbSZJ26Lu5JJ7ID7p57h9q0Gfq/8eTImiSARKBnEjDLQ6+gQygaJRJ8EiUL5IM+gApDDqBDkWVSEvkjeH/wKWJ3Qm4N/hSrJm4NnoT0byAuIBolHTqSgF5EH6egl1AzyYdQKkgT26G30MvouyCvoP4CkoP+EhtBH0A9AXkUjIGnoJyCvof8Kko5+CvJR9N/QNPRvDiST/P/Oj6EV9M8oC/1PkGz0LyCfQL8GyUEP0e+g7zvo/6BPoT2QT1MmKhIdpQ6D7csnz3H/Bdi+WFRAnuMupFKoV9HnqNeo19AXyBuLRWANT6Evkv9zV0x9m7KiL1HVVDX6Cnmmu5S8n/gGxVEcKqNESkRfpVyUik5RTZQPlYPtDKAzYD3Pob+ivkN1om9RXVQX+jZ5P/EsWNIJ9CY1SU2iGmqK+jmyUTPU3yM79Q/UPyCa+kdqHjGEv3VgBTIRF5UVlYVE8vScFPWpqFxUT56Yc0blR+UjJaowqhC5yPsyKnk+zh1ljXoLeaJqompQA8ztOtom3M/Df++GjwNNBE0BTQfN2tcj+5oHWoC+ySfyKXw6n8Uf4fP4Av4Ef5Iv40/zlbyVt/MciAyq8V7ez3fwXXwP38cP8MP8CD/GT/JT/Aw/zy/xK/wt/i6/wT/gt/ldwQQSJcQI8UKSkCpkCNlCrnBMKORnhCKhRDglVAi3hSqhWqAFQVAEXTCEgNApdAu9IP3CoHBZGAUZF64JN4RZYUFYFlZB1oVN4SH+v2iHqg8x4AS/HXMWGGsCfv5b8fsNkA8RlscSlj9PWP4CYXk8YfmLhOUJhOWJhOVJhOUvE5YnE5anEJZ/hLA8lbA8jbD8NcLydMLyjxKWZxCWv05Y/jE0D5JFuP5xwvVswvUcwvVPEq4fIVz/FOH6pwnXPwNcN6E8wu/PEn7/O+oVKgV4j5ldQJj9l4TZheQ9hc8RNh8nbP48YfMJwuYvAJubYA00U82wBvDbCl8ibD5J2FxC/TX117AeMKdLyXsKbxA2lxE2n6Lmgcfl1AK1gL4e9Y2ob6DTUZVRlegbUUwUg984jjViO2CeomHsn0WUchUhrgO0C7QHtA/KJuBzAHQYdAR0DMqum5/nOpUeIf3PK6mTpeZw3Uof16sMCEeeVFzG9SvDQh5ogXoUKzeojAgn/rziOtxlZYwbVSaFk+8o/pkbV6aEMtDTaj53TZkRKv+8kjpW9Th3Q5kX7Mo8N6ssEV1QVgQOVFaLybGmlgpetZxbVm5xq8pdwf+Okp871DPcbWVD6Hof7VHPkjbWlQdEN5Vt7qGyK/SFFB9zOy6TMPCO4p+5PVeUMOyKwp9YebMrRhh5f8X1+MOueD7WlSSMPal8giuVT3ZlCJNPKp/myham3lE+05X7QdR5QZ/nc1zH+KOuwvfUfFcRVudFfQkrf9xV8oG02HWKL3VV/Cl1XtJX+HJX1QdRedCzxp9xVRM966KJ2lwCVueQfgt/yst6tPOKfpdnXQovufSnVR713ONVl/F+6ryqbzgn9Ad8oytA1Ofq5IOu7if0vKv3XXrB1f+EXnQNfmC95LrMD7lG36VXXOP8Vde1d+nTYz3huvFBVJhRbfx11yw/7Vp4T4VzwrzKCkuqROrNuZY/kC66Vt+TO7i9FdBbqsrfdN3+ICrcVRv5Ndf6gd5xbR4oPr8B+kD1keNtNSjsquf5e66HpL9PqWhSL5Dj+66d91MxSr0oxqiXnmhjy7X3hD5SzU+rGK8OiUnqFQGph8VU9Sr5zFAn3qs/f0oFixorRKsJ79I4NVlIVNPepSlq5uMqZqvXw7b9CVu8byvDNk7MVafDNkg8ps49bkcOePL4vIbnJTxGheriwdgWqTcf7xOxJdfBpgAfndMhXjrn9tcwXleLoDf1bcx35xroHX03zGfnPfiE64gl6pp4Sr0jVqj3xCr1vlitbmH/ItLqI1xO7g18hCi4EfYlouK2iLo7WjTccWLAnSh2ulPEbnc6tu34nsVed5bY7z6C7bM46M4TL7sLxFH3CWKXwabjsRDH3Sex7RSvuctwu+IN92lx1l0pLrit4rLbLq66OfG2WxbX3RrxkdgHYZ+Ax3BTzREfur3Yj4k74H/C47znLpPMbj9uA5+TDrs7pFh3F/E9YV/72BwdtIl136eEfQHuF/aNUoK7R0p290lp7oGDecb1Ye7w3EuZ7mEpxz0iHXWPSfnuSVJ2HHx4d0ixv8Z++wkdDPllqVgZI/4YrhP2xfiTKPCH3NtTPhZ/YpVKlVtYsX8M+9WwSuXKA6wHPhL7zH3f+LivfNxHhv1kWKUz4AfBFxLfB/5QOutKxUp4i/1cWkglm3sK81Ji3TOS5J4nx6p7SWp0rxDOgv2QfO5bUtB9l5w7794gnxfcD6SL7m28bqVL7l28nsh9DWkm6YoWJV3VYsi6CK+DfbuIbak0ocVjOyddB9u0v0akaS0J2y38/bANfNfaempdHdiX/bWF28B2U5pTt6RFLRX38eD7UB+vN+mmliGtadnSHS1Xuqcdk+5rhbjf2Cbhe5C2tCLpkRbyDe9ng/b7VY/27XjYLq08Vme/z+Ren7LHB/eD7XBY/9S1/oQ9rbfsf0arh/FchPVddvJxW4ntY9hGPmYPcV3SDq6DbROMQX2cesV5v8GE59i51RCF79P5qCFGQQ3xiqUhCZcTmyXpw0p0QyqJX4B3uK4S15BB4g2IO5TEhmwSU4BNU1Iackmcth8TKOkNx5SshkLs/5UjDUXY1il5DcQWKgUNp7DiNaqcaKhQTjZUKWUN1dgOK6cbaKWyQSAxGdhLxdqgkO/aG/SDmAnHPPsxCmlrvw18TuEaDGe53kH6FY7twrFB+Ts2mGg4htmPPXBbpA25ISAnecrJd8Lfx/WxjcY/Y17gMcD3pjV0kjIcN4Z1P058Qj9ILIj7Fo7pHovrDhTHc2F9Oq4Lx2jvEZsp3pC+b2yGY6/H4y8cc4XjrsdjLNxX/F1cJzwm+2urPlE7RT5TtIr6dK2KcBXHPOF1laVV1x/RaKJ5mlBfoCn1JzS9/qRm1JdpAaKntc76Sq37cb7XW7VeonatH6+vek4brJe1y/WaNlrv1cbfc73B/qDer12r79Bu1Hdps/U92kJ4vdX3acsHxwPaKtFh7TZWsvZGtPX6MW2TfE5qD8NrsH5K26mf0fbq5z3mg/UH66p+yXOY9GfFE4ttVv0tTwL2PWHFMWX9XU9y/YYnjdzzA09m/bYnB9subD/qdz1HsU8J15dNnnw5ynNcjvEUy/GeUsxHOdVzRs7wnJWzPTY518PiuEA+5pFwO3j85EKPKhd5GklsC/Mvl3h88ilPkGiF5zweczx2cpXnglztuSjTnkuy4BnCtltWPFdIfd1zVTY8E3LAcx3HgHKnZzpsm+Vuz1zYL8m9nkW533MT70fky547eE8hj3vuy9c8W/INzyN5Vkd4HOUF3YL3I9h3y6t6HG5Dvq0n4nmW1/UUvK7kTT1dfqhnyTv6EXlPz3Oa9QLnYf0E9u/4nDNWP4nXHKkH/XYm6GXOZP20M02vxH13ZupWZ45ux3PuPKpzznxdxvflPK5rzmLd6yzV/cQm7NtcbCedZ/Qu7CudZ/Uep03vc7L6ALZ3TlUfcTbqY5i7eLzwsdOnTxI+AxecQX3KeV6fweOITIiKCcR0IfT/f4Py/9BvUDbRw3d+D8CUIo6RGJVpZHxMkDnPXGAuMpeYIeYK4FVmgindF5XodWaaKd+XOWaRucmsMXeYexXXmPvMFvOIRaylYp2NZuO+mcAmVtxmUxhbSKAGKJvOZjFsSCpmvxnLHmHzKsbZAvYEe5ItY0+zlayVtbMcK7Ma62X9zJmwQI0OtovtYfuYsyFhB9hhdgTqjZH+4R7hmvgcviJcAef5n7sM3P7yv0ke9A1YG18FeZ7kQeNIHvQFkgd9keRBExCNWPQS4kCSSDb0ZZINfYVkQz9CsqGpJBv6KsmGvkayoekkG/pRkg19nWRDM0k29GMkG5pFsqEfJ9nQbFhz8ygHLYB8imRDc0k29NMkG/oZkg3NQ79Gv0GfRf8LJJ/kRP+C5ET/kuREP0dyosdJTvTzJCf6BSqFSkFFJCf6RZITLSY50S+RnOhJkhP9MsmJlpCc6FdITrSUaqKaURnVQrWgr5GcaDnJiX6d5ES/QbKhFbDSf4y+Sf2E+gmqJDnRb5Gc6LdJTvRNc4f5O8hK/lZetXnC/BNkg3U9g+zme+bfIBrW7zbC86ch7ztcpeNRLh1PJ9GpdAadDZJLH6ML6SK6hD5FV9BVRLrpXrqfHqQvg4zS4/Q1+gY9Sy/Qy/QqkWqapgVaId/PpnWCBh0ArAbpxIJ5Y/o48OYT+7yJI9fHjDHBHL0O7MFcMcP45wJ7MFcshCuRwJQvAodwzvwZYEclcAjz41nCj2iSJ38O7qsOmITZEAtceBv4hHkQBywYAj5hBsSjH4G8SBiQQBjwEsz/NPAW58M/DHP+z8AwPOsvk1lPJjnwV2DmN1AKmeNUKhbm+FUyu2lkXl8jM5pOvUlZ0UfJjL4OMyqhTEqFGc0iWe6PU50wi9lkFj+x/3ckcU77k9SPqQl0BFFReVEF78yHo8L8vKPiaaF9dNBR5ah2dIaEPu+ooi9gcdBPC33RITiUkNCXHLpDp4eg5Cmhrzj6HQZIACTU5lXy2e3oDQs9AXXeJfR1xyC0cNkxui/jIaGnCc4BXnu30IuOG47ZAwnYZ8Jy0HLgaRGn6s47FhzLYRFnHKv7cvtpEeehV+shEZccm45N+jCUPCXiinjL8VC869gB2cMibgiLjj3aTB8Oi/iAjn1aYHSCjkGmwLFMJ4TEvhQScZtOppPFDTr5nX4+1uNdexedFhbHDp0ZFmgx1HYOffMpWaPvwHWOHsg9Oh+Lvevdd03fdyTRxw8E10ugi5+SLdBHdCmRcrqcQaFyxsJEw+eZUOtYmDgmkT77bmFSaBuTTrOELwaThe8YC3OEyWMK7LvMCeYkU/ZOO4+1eNq+9BifJFplKkNCN4aEsWJ+M3bCXYHhGBlzgdEwZxgv5gfjp28yHeRui5kupof0qIe03kertIqZIpnIeAxKUVIMHlUpHo++lIRHmhlghpkRZoyZZKYcVcwMfG8e2l5iVhwKc4u5y2w4AswD6F8/s83ssiY2io1h49kkNpXNYLMd/fYpNpc9xhayRWwJe4qtYKugxwL08hpbTVZZgKVZgVVYnS1yKKzBBqAtvGrJHZGa/WSdwB2xnQ6d7WZ72X5HBTsIbc9AvWpYS+PsZTiqYkfZccBr7A12ll1gl9lVspb1kLC32XV8t+wm+5DdYffqzLBasfTWHa6LrUsgHIcr1SU7xuvS8GqsywTNqTtal193vK64rtRxo67cMVt3BreCV17d2TpbiKn00Tq2TqpT6xrp8jqfQ6kL1p2nbXRy3YW6izDKjXWX6obqrtRdBb4Wwwzk103UXa+bBs6V182BLNKldTcJA3PonNBckXpnMWPwXNWtgd6pu1d3n86p24Izat0jcOoWLpqLo49yiWw/l8Klc1mOZe4Il4e/wRVwJ7iTIGWE4/lMByk9zVVyVrqcs3McJ4NonBc4jCWf83MdXBf02uYwuB6uj07mBjBPuWFuhBvjJrkpboab52DVciuOXu4W8FHC98bd5Ta4B8wJYKhK53DbzBSMzThzAlbcqpQKtuussChlSNmOdSkX+Lzn2JGOgaWIlQqZu1IRrOVl+4xUIiwKi3hdO4qkU3SmVCFVSdVsCZMiRsNoD2JWgjXD9mkHXxZqQQ34aVYSwFJhe0cYHKqJLQyZlyLHpqTYuyQdOG5AeSbUWwZ7lSzhbyxInVI39LFX6pcGpcvSqDROrOCmdA1bQOmGNAtXW5C6pWUiq2DnzCFbx45L5GqYwVKvfUlax9ZMWoeWcc1N6aG0I+05bkidIctFbFesZALphTFNwz2pu8ft8vhPvEXxMXw8WKhhPolPsg8DVy7xqXwGtkmOaj6bVfhcOp8/xhfW+fgiupgv4U/xFXwVfYav5mk483/ZOxcgqYpk73efU+f0MGALOAKDiCADiyMveQoqojxEGXq6e8ZZZAGRweY5COoCAgKyisgqirrAKovcuT5YFgERUXmpiID4RkREVGSRi4LjCxV5NDfzVwcYEWPduPFFfBH3Rkf+O8nKyqrKysqqOn0ch5XcPGRPyZiSiSWTdcWW3F1yf8msAROHPFQyp+TRkvkli0uWlcwqWVmypmRDyZslm0u2DQqV7BDaXbKv5NuSAyXpYWZwo2GZwyoPmF+ybcieASuHVRPtXgN2DJlCCe/kDLhZ38oZsmTQPH0zZ8Cc4+/m9BnWf8COYYN5Oyd4N2dAWt/NKdk8aFfwfs60AWtO+Y7OnmFlJZuH7Ze1dmBQJX1LZ1ClG3yJ06TEa0xmfvHAkTdUldzYMLXuxJs7g2S3uKH1wMo31BhSOXhrJ3hbZ2D/GwqHNQne1KnNuzon3sw59kbO8qE3cppq/H83zP9FN8yBoeG81VBNMJTaFQoPaB7KSu2Qz+7U7t69evdK7ZPPrNQs+G9T3/be0XtH6oB80qm0ygYY+WQOyFRZr/G9xg+oLJ9qA6r1admn5YBa8jl3wLnSjhONRfOljcrcaELcaBzuMi5nXsNdxuMW43PmjXCLyeAWU4GbS0VuLpU480Y5857Ombcyd5Yq3FbOCIUr9688jDHx3mGqfyicmiLfckdJTTNVrkqnJv0WypudmtTNCGX+ClW2lLfQUrdqv5FqCZ17CmpoKW+dfDf5bZS3Sb5bBtQuoA6WUn3sd94XQl8L30Uo75eUd1i+k/+aumcENnoEpPb7n0SDT0HDT6KR/waNE5p0CpoiNO0U9OBJ9NBvo6Qv33OFHv8VWmApWclStyW/kZ4TWv3rlKwq32t/GyU0djYG9HZAWywla9jvhMxPsrbw24V2/pISGmd7/jUlc4RyhS8LaL/QwZ9TXugU5J9Elf4NEl/k1TgFyXjycn5JJ/s6L/e3UfcL5buZUOtfISnr3l6oU6B38W+ky08dO9hQm3H57vrbqHuRfMegKXwXlqNjOv2C74FCw4TveaKt8tT95oDv+6+p+xihiSfZSJ1EQ39J3ScL3S38jZJ3+tvv7rNO3Z9fpdFC409BtwtNPQXd93PqPudE7v5Zvj2WL4/lsUdP5Jfu83+eP47HSfl5PTYvx3y0uJxvl/28T8dzSvnYPLaGj60ttRXEfLLwpLjW+VwptEZog9CbqUn52gfZX7pvs3Idk+4R3Xek2EtSkmO77xP6VuiAkIw/pvtWnh1vTPaqmO5VMi8xqRuTOjHNA8ODnC5+iDW0+TLWxNqNyX6SkvKY7B8xySkxsRVTWz0C/x7zp9TVfTKmuV9ttjvhZ7UVG2ltaFlMcnlsku3XL+bppDk6vp8E86S2dG+MSd6PyTzFHixXP2nnTv8dE9/HJI/HZN3FFgQ6phxVPgWdvC83PAU1SZ3YX8vtscepSzk6eY89tl/+T/bJcamf74VTUif2wHL7XWyLjcuY5P/YzoCXmIuVBTEr8RaTXB47aP+dHwq+JVfnV7LrNr+qXU86rnzJv/mSf/NzgnVxbB0EeVFzaX5ukOcKT6yR/NY2f2n94znw5LV10ro6nl+CtZUf5GKN//zLbR+P1+9r11u+1M/XdqTtfMl/+X1tv8lLMoZ8sZc/NKj3r/LPSXn8lDrH+nyKfHycepajX2vrX+RTnYef0cl5snyuvL1cjiyfE5sFdccHZbk2Ryf72jlOpuw4k9JeUvSSo61cc1ZCYicp9Ti/jLO6SWmD84acO5Ka63YG+ey+IDaDM0FyhpDkBN3/k6VBnptn7SYXWtI1mlwqtFzoRZuHk5LTkq8H+VPyZXJTUHdr6sSZ6e1yeXThCRucpT6Wfq8N+nVyHj4pBx8/wxzLwwsDG7tSk+J3B3WO1d9jczP/ftz6gLF9EcjmlqMFp6DfchZcmzpxpns7dfxcd5y2l6OTz3XHzmj/k7NZ1dTPz1+1U8fPXT/by1YHdWuc8MmxtZU/NfjWdTcjdeLME6yrfImJ/NKAJB7yxef5Mn/5Mn/5LwYkMZD/+s/jPX9TQFvt+sqXec6XecoX/+d/fer1prkx/wchudvEHaGME+stHi3HZwVU05KuvXgdoQbBd6MTazDeXEjyXbx9ufUnY453sv2JX2VzVjxu955jpGfKuJzn4r3smONybosPtLlL80d8mN1TjunH5bwWl3NYXM5h8ck2HuP3C8l5Ki5nnPij9lwQnx/YEf/F5UwSX2bzsc5/XM4Q8TUBbbA+V9/Ftd5mITlLxHfY3B3fHejLGSIuZ4j4AXsGjKdTx3NzwpzYlxJynkhUtveRRC17p0jIHpmQPTIh54ZEO+vHRAd7H9G9O5FnbSSSdp4TPey6SsgdMiH7YUL2v4Talr0uMc7u75RNsmtOee13QuY1IXte4kHb94TEX2KunfOE6i2w40poDpP1llhtc8LxnCs5LLHR7pUJWWcJvTNtt/kuof0ps7Gr/lI+sd/Gs8ZCQvyaDFk/6tsYp6057ZX/exvjf9OzMpNr1uovqs7G0KJQKFJHqIFQI6HmQhcKtS/33Sn4vkooLlQk1Euon9BAoWFCNwuNEZooNFnobqH7hWYJzRF6NKD5QouFlgmtFFojtEHoTaHNQVvbhHYI7S73va/cv78VOiCUDoUyjFBmue/KQtWEall9/c44V6ihUBOhlkLtyn13EOoilCeUFOoR6PcR6i80WGi40EihcUKThKYITRN6UOghoblCjwstEFoi9JzQaqG1QhuF3hbaYseVsV1oZ/C9p9z3Mf0y61O+twX1BpYr3y90kP/Fd6iCLyTrtULVE9/qnwo1hGqX+84Ryi333Uyo9Ylv7XOFi4UuD+p3/feIOStPV1nS9n9mr8ZJFBMqDL5jv7RToadQX+vvCimhoeW+bxQaHVqUmJq4LzEjMTtRmpin5I9OLEwsTSxPvJhYl3g9sSmxNfGxPzSxK/FF4uvED4nDSSeZIZ9oMitZM1kn2SDZKNk8eWGyfbJT8qpkHCpK9uLf/ZIDk8OSN0NjkhOTk5N3J15P3u8PTc5Kzkk+Cs1PLk4uS65MrkluSL6Z3JzcJvV2JHcn9yW/TR5IpgtMQWZB5YJqBbUKzi1omLy5oElBy4J2BR0KuhTkFSQLehT0KehfMLhguNBIrVMwrmBSwZSCaQUPFjxUMLfg8YIFBUug5wpWF6yFNha8DW0p2A7tLNhTUOaPLtgffA4e55Q/WBgKPr58KiUPFFYV+Xb7KaxRWFuoRmGOfHLl06ywdeHFBfsLL1cq7FoYkz0h+5R/cSEU/MWFDP7iQiZ/caESf3Ehyl9cqOzoX1yoyl9cyOIvLlTjLy5U528tZEfrRC8InRVtEe0Uahwtjg4MXRodGh0R6hy9OXpLqFt0fHRCKBG9PXpHqCA6PboidHV0VXR1aGJ0Q3RvaBJ/feHx/497Fg5XDQ/nfZXlofNDoXpbApKVXm9nQHsCKivHK8nqrncw4Hfq/7jd8jl+QJUCkpWeIysoR1Z3jijl5FrdnGaBvspal/v3xcH35QF1PdFmTsz+O6cwdH7Cl0+lRNVEjURt+eQkcvk0S7ROXJy4PNE1EUsU8umZ6JtIJYYmbkyMFun4xO3CTZUaucFqtOtRV2JpYrnM1en8pY0Qf2PD4W9suNHm0eYhE+0c7RLyoldGu4ci/L2NStFro/1kHgZFh4TOjt4YvSlUJzomemvo3Oik6J9CDaIroytDDaMvRF8InRfdF90Xyv1/bD2c/oO5SLCnN1iwInwmfEv4lvAt4C8wMUVvIvzNgs29mfAXwQ+GPx++G7UaCTYJrBVgbbyWot/LNFT0kvrWkzdG+CyTo+j9UXAJOo9o3SPwR1ZhZxLyIbZXQd/aY/km+K7I4b3rFP2ZyC9BUix2PtUeHtnh9aC37RmRrXs+On+gt62wWQzfFn4QPe/I6AZSV/kL3KNIGsN/ioWKlHZFXoLljshHwJ8Ofyk6TWi9F62cTiuXwneEt/qt0U8JNoNvBt/ctANbYwEJ2AJ5G7zUxhtCK+3QUb6FO4ta69C8Gcul8HPh34S/G36l9iHdAf32yFuBtws2BVswXy1MZ7AttfrT7iDw+VDYGepNE2zvTRG8w5PWnZHw1UEX3Oo9JDhZNcNVwIeo1RwMKboT0Cz1/iy41HtYsK5KwruUDx+idDb6vdGfC98SzMLm5+jUM68J1jKvCCbNZm1F+fA74HrkKfO+YEw1wxlgH2o58KsU3Rw0i5GXqH44jYVn4VdRWkRpTfQ7U3c3+JO5QeR5nmoeMMOE97131RsqD/fzNgp+ZiRynPqqEzrkrRJJFNwbSATdy7BTH2xA3aHgLLCu9ztKr1MvKTqH4LeAn4EzTS+do8jZoKPoHwY3I6kP9pa2xtsZRPMO/4jOI3x1i9SqTq3q1KqOzmJKFyPZimQykv/QSAhXUV7QUVQLgpuR1Ic/QjxIfDr90R9H3eZIQvAhbyeokoZgKfJSxrIUfqnl6eFSeriU/iz1JXu4bzGuukRgXfRb0atd4CGL3v0aXZTOxtpsrM3G2myszVYvSQRKH1zadW2LWdTKYnSfY+1zxvWTbHeC3i5wA7gIPEyprDU3m3k8gOY2sAw84G0iNn7QmFGJrKMN4CLwMLhJZxn9z7D5mZVorfBp9KqZ8qFDqiMRtQFcBB5WNJINnLCNPeXDUazt9V5WVEnoUKQn+p9qf+hJfR2Rc5g+NEDSAEkDetiAHjawpfS/gSmTkV5rI9nbrzFMK7OoeyE9HwzW9UeiswFcBB6m3VYa26rvehbx52fgTKzNxGMbdWVJRiolqlcTqxaJQPilFrE8Gz4L/SzmPUslMjsleB7U0YkPSxgva1ZRWt+F/1WygPhpC15JDsz2nhD83M8TnIb8O8UwKKvjCWb577pakWxFszerIAtsiZ3miu40+FJvBj2XWm4r7N9L3Q7ofwrfBHzexjOZ81my6CesgojK/YMaG/489Zt3ttY1Q9R7/ifK+zHl3eeI/C7E83uKEaPj9R80O7S3RNft+O0m7Y+sxxg+bwpm4/OmYDaebwpm4/+mYDbrsSmYzVw0BVX/e/o/Hcu1GPtQcstSMMvmLv98MlVLwdrak/Ah5cMvMbPtI+dpBkPfhd9Krck2R9Hzyazf5jbPaKk7gXU9AZ1SsC54KSt6l8XIM4pyV9cWtbQ3kdObzDBXJbI3qf2ulLa0WYK6n0d+T4TIKnCagu3MB2Qn1bkESX3zCWvwR8EOrJdvfdl5nZdVLiviRzK/rIhwMfxTmuG93ayLkOp7heSBr5Bkk3PWs9YqRCQfhl9gvRhm/6DOpmSkr4jzr1jpX7Fyv9J1GiBrEH6zYW2qHafE+0bwdEWxsIlaNv9ohiljLOO1z27Me0Ew3+Y69scSxtUvIicoZ4IdteYcsXyljl3tS+aprzsgo7gsyIeb6I/iLIv+A+B+ssdcTguaiw5RuiVAzRIF/p/IIa1Ys4odI+eyU39CjvoET8pOHV5rPqatb8ifP6pnKH0GzbPgc8mcTb07hf/CXCX4tRnC3GkWbUW7reAj4AOM903Q8b6XEWV4w9nf1U5LTik5+KoTrbwLvo7+a1h4zWZOWo+D3+tchBuSOXuTz1+Bvx8s9uSE6fTAfhGzVgc7u5CQ+cPbwLHoL9BRhw+amxjjWMFcs0XzCTqPMaK92s/wHCzM1bF7rdRLXgNFd6bGpOQlseZ+pbwZBT9Ke+4mmOVsMtWPQabSuDpDrbnnaA9lN9RRV2VcH5ntwl9gXhV+MZLW9OQb8Fb6sI1xtYMvpG5ns0Swk9Gd+kHlZd9RX21Hs4F7pvBfYu0QOB95Ryy0MZMFvwG7ebLGHUPfzqbFZ9FfaNZrvGHzIDgZ+fdYaIe1TfDXIV/nfUyfNfLv0NOanMpGCc7QTC7yTmL/934L0R9hdE0NVpTzodbqjH8e915l3Y0lAhVf0dO7U8//PXgRmAtmgteA0wXtWTeJZksw6TfSjKd8+J0Ac8FM8BpQdVLoT8PaNCQxJH09zbEZ1M3Q1gVzwUzwGlD126DZB81VFjnLFWOnmJ6XwJcEfC6YCV4DFpFn+oiXLuXsncZmGmvPWptmvkY4doqwU4SdIuwUYacIbxSpNbezarr54DX0fDd2dsOvh19P/+v57+INi3ak79Ir0KuEzXepexGo8rGe3PicKHim3Ok1H3Yky0mWcPKR/1UxvB5+kNeJ1a24AMkWNM9kpLXMYsHxyjuOotsVvhgs0VpuFUXZfbRuVWqtwv4+JMN1JTpF3oXEsPrwPvWY30FH6q9VNH/TWuZHPSF7e5X3b+fU0QYfjsG3DvodqLuV9duau09c77Piq2K8VIyXivFSMTNVjJeUf4X+XIe+C18PP5coiveIXi9fo1Rv7jIK3Qv+al4USa0gbm1kZhKNNiZzia5Mva8xpznIi7GZBp8NUHe6ZyMj0VedmjprEg+NGJ1FGw+N0MmldDqS6fT2j5Jjb3dlPaZj7neKXt1Q+Mhb+tzjyFvebaL/sN7Q3Y1eX/FnW83w5nrl3afAB5DP824UfEQ1w+jL7i9ozqFuN0V/CJov6dMJs16fXbg7sHC1Pg8xlSl9mlqPKUbOQl4NC4fBBej35WY6XufdfUazt/sx/BVgC0VTR++z5lz25Snov8DMfqDoPYpOC+VNTdV07yKrfAk/mNLzKK2h6HfCgr1BLwC70talmgPdR/SJh9tF91n3n5wKpnAvWKvndned3ojl7CQ64Wnqz3ApXh2H5A49IXhl2FkNbgbfAz/Azi7wTXCUOYr8Oj3NKnovwY8Hn+e+/AO346f11Gcu5ey3IuAdRT25CW5GUp9S2Vn8Nvi/BM1KYFv/FsEXsXA3+KVFtSC4GYlaeArNh6l1WCXmMBJOnt5f2B//wol0LTgW3MYJ8x1Okms5xz7CDTqtp0qJJT0h76bFQvAZzbReNjazta43Bn6M5dWO4GYkYsf7k96UIw7jcr1qgt2x8wX97Kbr3TyJhWiAaieKnSj+eZKxPKn+8doqH/mj/1dwtMYGdm6xiFcrYH+Bjt0dyRnvfYt6fhPcAC4CD6MjeczvyFxPQrOLJzcOb6Z/jli7RG+a7jKVm+oW1YLgIvAwGNPRUcoN2l2nEreUunt0VYa3c06+FZwBruE8OZE76Z3cSW/jvDSNswH39HCZngCduViuAf+23prd9l5a1w7yFmrH7NT+G87e5nqLyK+nt9fT2+vp7TTtlblJ787+G9QKcWKsxdi5d7sF4HOcE55mRDO4QU/nJPY69htbpJXGtNKYVhqj/7p61dypbfktvXHgBp5saK0zLSLJxxs/4LED3ieshXZEtUWNzyZ6d5Z4E4k/3CM24AcxoltYU7eg/773OTNiUT1cW+/RxqjE62dW0kPlJ8KfSf/PRFKVaJwF9vCyxNouvQt7l/nTRPKuyr3ZlHZWdFfAf6c6pgp357XobFZ9L5O1cw54DXfhJ7kFf63oZes5zRujtfz2tNIBm6+yP36E5aewNgmM6o3bLKP0MVZTFniGllbgSVFGT25eRzVLe8Wa3yIvkcO7KO98yN28DWvqMOvlEbuKkfhYOKQ2M3qaOVKrCrvAT9pD8bzOzhG9R0u+ymZemoJ6v57D/fofyotmUzCbld4UzGa+moJa9zFf88AO+sCTClPo19I9jny1HryFHJKjN3Hzqd6+zRJF2Qc1ujb6jxHnusbXwh9mFI9Qdwe58RmV+Js0V/hDkL8E9ic/7KDu1eCXkQvAyboDqsSLaERFzkK/GvgYNsmo7jy9a5sr9N5hrgOz2JF/7z1CdO2HF32/B/LruH+t4MZXzFr7p5/N3idyj5usrEG9H73Cmeor1TS3kQdu19N+5CHW4wGdRz+P2fyLSvyOnvqnlt5qJcI1p/Gsz3lEMfKQ7kHuJl197ki9ZQvqKJbBL2N1T1Fe6lrU0saUnsPKsvwt2gfTQluRvVVuZOZi7mXv8zxns6KsoEXspPvZQ/XGNErH4r2pO6xfSHb9hpNAKbeYgdzaftJ7uuHZoztXb+jOnZrh/cHaZ6+MnLCa7HodHnhPeWcX+CalBf7p4HBtUaNI5mKX7siUjgfLyDPPU4unoG51vbNLRnqKnj+lWc6XmDenMReNwX7M2jij+fYV8Chj/4zZqY0Ot3t3OngXmEBexA1us47UXImkHnwr8xb29d6H38If4o1KeONsbuK36y3ejDX7pIfXU6ubnq+8PUTLWvMHcpGOdwV1V1C3G9FSC8/vBafQn+XM3VncH+9hxp9nl5nHXLdHskjvEYbbqFmNfhesPa3ovQu/lNzuw4/nTm0ttAMn6R3ffMRaPkNPrSau/fQ8b7ZmDPr5ENGynLPiBHedyHepJ/33NEplJ1KcrGj+aXReHiPPj1Xe+9zTvf4ZdqtP0BlIJjxInuxHaVVF96+6S3pTtYd+dzzwEb3dqrd+U1Fv/e5N3KC/pFcxRn0O4+qsvfJewwO/R75ER+GuMXJrMH/TX9zMbPcD+iC8/z72t6B/PbN8vT4HkDjXFt9BXg/+4UBHbd6tzwH8kKKZq08DTFLl/ij6MB39Wvo0wPka+33AJPJPsRBX3nsAvr5thadzjVmV7I/+h/hqOchJ2J0PjgPtejyTc+wq/OmaD4XP1V3JXYv3ZvL8syqt5IEd8NhGMsMRstkB/HMXeAUx1oS70nKwdcBfBOaCmeA1lMrdx7uHM/w+NP8MPuPNE/vt4BuD0wLMBTNBtXAFmrW5aU5QiZmApBqSMm64U7ljzgWvAd/mLk9/nCe48d3Ps4X9ejuTtSa1nMfR3E+7t+qJ15Ris1Trmjvgdwd4EZgLZoLak2/0mYDcfPuIJxszxmf1F233v7CZC/YFX9Kbr2mItbsCvAjMBTMpvQYUj5m31LL/ov7qJ/i4WHiZWjkBqpeWYLmrekP8nI/HFO9l7LX1eYKMQiTeR/q0QVpRfjt8Dq3nqMQspG8XK7rfGblfuyPMC7ouvLvJbFp6gNLvwcFIbtWbtbsQHKISrxP6o/HtOeB+RckMi3V3hi8Fd2st74ii2YLNYpW7d2K5DriP/HCXWSrYk9JWeHguOF11MhqoBzLwg3cv983v2D23KB+5gT10IaX34OEJeO8S8A5ibAYWGqjNjCV6IvLv5za6wqyQ0tFBbMs92l0UxGcxdyiNnDuVFzvFzHgxHla+lT6dMKNoZY7akXNjE40E4rYmmEN/HqGt/l4VweaKbgx/jmdOPwaHoD8B/XPhRzH7V6vEz9EI8R5F3gKsQT/vUt75Egt/9nuB3+rcoXOrzr7fidJVSC7G5gIkCXo+Cp+/pHL/Rf80+nwa3tC3L1oclV0g5B59Ff5JfX8AbH70CfjzwCn6NkJQ+neQdwmOjoG3WAOcjtzWXQi/EGsLwI+QfAS/FR2RO0OP6jPP9uAd4EiwOuiCW8HJiuEqiqE0kuZgSNGdAF8KLgXrWj6tz6t3UfcQktlgb2rNhW8JZqHzOXw9sBaYRP4OuB5JCowhyaA/XyJxkKzCcg6SYrAEue1zCf15Fr4IrIl+Z3R2gz8hz4M/AO/DNwI/S2s+rE+7jCgcVUl4L3YuQ78BWB/5LHRsT6z+FnAmkqHpNhqr1v/KO9XBreB/WJ/D97c+hw+BpeDStK7lt6zPVRJ+EDxE6WzsL7Xjgs+GX0KpCzazY4EP27Fg4fRgFCr/1I4r/YZYuBYLKeQX2tGh3zxdRyT90kWMooieF9HDInqimIX8J/i6itJuEZaLaEuxLW1diT/Pwv53YE1asXFCzLjTwPMYVytq3Qt2SMv5JGz73AR8HqwMRhQjNRT9BxXNG2BbHbv/n8gzlHefC2K4DZF5vf4CayMzrb9bfQ8/PZ0j/A/p1szmbuZxN/5XHGtn+cg2XWWMrn16hK4y+JGWP7IRviJ+U5xM6eR0AVgRT6o8jrw5tULwoYCvqGsQSWmAI0CtVYCkQCXhXfj/UIAjwIrMThdQ+d5a6s5F5/MA1VpTPL+fEV1i105an4B1QP5tEC3iGedlGxVHDgk/ioh6SiXeQXSWq8SrwTq68gjvLeDhmenKetpPX6jr9Iie1YnA8N/Ut+FlSMYrimW9PZEB3HzsH8Dbs9CcSWTWw+ZPR/QXgSZp3WvyGIWPN3zL4/majPo00AXrp68EKxKfKqmAH/ZqrRB+cy8LIlZ9eC04C53bwGIkowJr6tuz4K3nZwaoOmvTsqc4UUb6DP6xMZ9L/7/AJ18Hvm0rPHEuqE/RieTwA+CboMPY16gPpYdtQZWQD91O2HkXfB1r5P/wB6oTKiOS66XrCcaRz0L+ikpCe5CfDlZiFv4SrH2drx7YrGMzJLgN/CJ9mJFeCOrvNewg4ZfABchtVNg8mcTyXnoyB3kzjTFD/Jhdqu81OCo+cW3+fEf7436lPjSj4Ecx0gSlNtf9aPOAjldQe3sGOucgr4rOR/AXwC8O8qH0NtwayTegzSGMy2kHFoLsHY71LfkkvB1kVwrPR94RbANizemWlpOSQz5xz0ZzIcg+62wCrwOnIL8PTduHFUimg4fBV4O9SWdnhu2z8uZJ+HHUGgEOtrsbUeETY41An7q74LdQ2gr+qSAGlAcduwvXQfIOkvZgX9rKQL4NXIWc3UF23rel/2T1cJrSsciLgtVahLUiLBSRN4ooVclueLtrnwna88YgrL0G2j3xRnhODuHleKwrmh+xR1SxM667g1Mbfjian4A7yPwDQc48ZgjI3urheZ+TkmvnsYRRrD+aYnV3Vv/YWbPyYFy6IyTJTqvAS9Gpd2QP+0gROIKsrnwXsv1n4DtkjBjyWPpSsCL+qYj/VZ5LDlmFl1YFvO4FTSktDnAEva3IalKdZwPfdgFV3hesSebPx9r6ALVuR3Aov4x8xy8gD/O09uGI7vjN4Jv5e6XuBfC/4wz8BO8O5fFLZTvvqI6L5zmfKe98AP8Cd3b7dkeadzDq8fvpem6dPfiNtYd/teYE5HuVdyz/nddZcxq/vWbr7SDU3Gkn/FRPn1y1NIP0jm/+U3Cj8s7bRt8nWaLofmv0PrhZNUO7FcMDqdVV0VutaHywidGngl2xlsTOPJ6NtMfOYdXxC6mbtO0qOtvATqam4AF3LCinbjcFPxJ5D0V3uPuxypUPbVIMN6J0m6KXhc7t4AL3HkEHC51MmLGofAyINW+GbRH8GJwILnH1aWquovMgfB2vp/C7lA/v1zeKpYdyI3ArqSS0wZWbY2i7orNS5aENqu91oW41a0HlToa7QteUu0yzvVuKXGuVaamXic48sAx5A0WRq4WWit5cenUAbAdOVDtOj6DPoh82imaropsEF9BD1wkr6lOdkAPvOI5Kwqsp5Z4V3slb0/s0hp2pmq+cO3Vcjv6mPEf58HeOvqe3xdFny3c74wUnO5Kfw1VUPzwDfAh0Fd0JWCh17hJc6miE13X17aMO7l2aRVUSPoTObFrsTa258C3BLCdDdD5Hp56j0V7LOUNn1tFfG7sqH14PLtD/h6MTczLBapoBwBvB+8CoopuDhWLlnRKntq4pR2LVuUF5p6rzka595KvQLEKzJnU7h/Uk5mBtd/gfenYKNxBJ/fAXwm8Oy+p2qoT1zUNX+XAjpxk9lLGEDpos3TG1NOyBU53WKnGeE8vdqFsfbBDw2wQjiqHvsTYLbIb9+uF/4kPxj3MoPE7nBclnWJ6JTkQxVKa1Qj9qT5wPQiH+G4cLFP3eivr+vEgWw78K/z38IPi/SER94D8qOA68WNGrqOj+F7gASTZYSdE5F3wc/b7o9FP00+h0BgdRejn8rfC3obkB/AF5W+QrFCMd4AeCDdF5F/4K8EIkr8FPh78X7IFkNv2pDNp2PfjD9KorkvXgNmodgf8YrI/kBnAsEsZrWlF3Kryh9A3wOyTd4K+Bj9DWFMXwj/DWe+9jYRI63ZFvRX4B/Dr4V/ED3nCfBDeCTaj1QWSo/u5g50V5ryJ4tp0d+GywEtjRzo7y5lU7R8q7/cAR4EisjbczRa26dr7gb7QzheYG8AfkbRUjHbDcEPm79K0F+ozF3GM9g8518K71iUqcm+hPLXpuSw+CPfHSavjh6FQB91BrC/p2HmuD1ektc+3hJc/GgO35A6Dt1Yf03MbwN2jeRN+WYz8F2njrTwTSN38wmrTlvgWuQacXeD2SvfBRxYyP1WYGkeyfR90SrKETiSNvSU/Os+sF7+2l1ivoZCHfTd168Fhz98F3gb8DPhPeRtQ47CxgFtKM63JwBTgQvB/Na6m1DJ4I8Ycxdrsed9HunfDtkH+JJt6I3ALvUKsI/mYb27T+d+tn8BzqPgrPfDl4z/8b+AgSmyum2/WChQuY5XVgFfqch04xyJrycuCZF5MPtsHC1fB9wKvQ2QzuoHQIaOW/A8khDmvZ/AO8EvsvgU+As9AhHzpzqfUFMVyGhLlwGIt5CmTNmsvQXAq+By7EWmP479EpBHsjIcf66Pvkosgf0CevGh+eVnzyqtkPskbcr+AZkTcKCfnToOniYYcIdHfCs8q8Z9CZB9qcdhdym2mfB5lH13p1MkhW9P4JPxOsQK8uQpMoclkXLj102R3MH6llI+ET5PghQgbwkshXImcNupeArH1/EX0eChI5hlEYZtbgVceOws4vu4NPpjV2vqhryAyubes5cBNoo8hmGJsJ7X70Z/rGnmLsvkZUuKfBnwmyUnybma8geu8lbisTt9tY49gxrEoPP7tvUEqGN+eDNg8wvx7x7M6gP6Oxfx9IJLhjQLs7fwr/E4jlDLJrBn32nqYWKy5ic9p85MyOT6l5mbrkRvcG7VUodLQdWAN8UnectP66Nw68WNGrqOj+F7gASTZYSdE5F3wc/b7o9FP00+h0BgdRejn8rfC3obkB/AF5W+QrFCMd4AeCDdF5F/4K8EIkr8FPh78X7IFkNv2pDNp2PfjD9KorkvXgNmodgf8YrI/kBnAsEsZrWlF3Kryh9A3wOyTd4K+Bj9DWFMXwj/DWe+9jYRI63ZFvRX4B/Dr4V/ED3nCfBDeCTajbktKzwY7YQd8dAY5EMp7SuuCN1GqBHPvmHvA60KXdm8BaWLDyg2BP6q6GH45OFXAPuAV968/aYHVaxOcevfXsXNAH8wBoe/IhpTaWvoGnD2Y5llOgnff+RAJ98wejSVvuW+AadHqB1yPZCx9VzGA2M4go/zzqlmANnUgcCfKMV5BkUXc38nrw1HX3wXeBvwM+E97O4/3gtUiWwTMv/jBGYSN8FzbvhG+H/Es0GVfkFniHWkXwN6P5d/hz0H8UHm87jN3/G/gIErviWAUmD74YJAK9HHi8Z/LBNtS6Gr4PeBU6m8EdlA4Brfx3ICvOIfLNP8Arsf8S+AQ4Cx2yhzOXWl8ohsuQ4EOHPpunQCLcXIbmUvA9cCHWGsN/j04h2BsJGclH32flRv6APlnI+PC04pOFzH6QSHa/gmdE3igkZBuDposnHeLE3QnPWvCeQWceaDPAXchtXnoeJKpd69XJIDnE+yf8TLACvboITSLEJXpdeuiSS80fqWVn/BPk+CHCGvGSyFciZ6W4l4CsUH8RfR4KEiGGURhm1uBVx47Czi+51CcvGTtf1DWsX9e29Ry4CbRRZPOAzTY2e/+ZvpGBjd0FiAr3NPgzQVaBbzOD1beeJNeZ80HWo2HuPGLVnUFbo6l7H8gsu2NAu099Cv8TiM0MMlsG/fGepharJmKzynzkeN6n1LxMXbJT6C3XDekzMX13JcfL5GmM/vfdXXkilHL1V+9SniNdSekczwvpE6QswVk8SXNU4nyOfJrKja+asgl5+uQEeS9Fb5OiaYJ8PxaGU7pH0b8RPgV2xWaZ1aT1qfrfwruV9ImZMwfJHcHzLn369z1Pz67iSdpB+8QMyaNay3kbiYN+GTiPMVZSdCYy0kKeia3jaVVL+Jbus1pLdUJHVR4+I3hKJhj6lGdizbGTpFYnnly1U0n4DDM7pM/KFuiqoXQO2EMxPfyo/pe58aP6ptDKo/pksoc+wXDeVj7cCL4npZ3gV8FvRXOc8uE0FhpQ+jK1tsBXtdaQ7EyXItG6zcB+yNOqGT6I5K/o51D3MUpbw+dS6sMPgL8TzXa0/gGaX1A6Wvl0Uvvz3+x9B3gWRdf2mZndZ57s7jOEECCGIr0LJIRQBURAmoCAgqEIJIRi6CEg0kS6iLwISAeRJkYEREAEpPcmhN5770Vaku/MeVZfEv1/eV+/77v+67/ea6/cU3dmzr1nzpmd3Wdj1PVLAfp910c6LjJQX3ko3hVoZ5VyDMrZTvWPavQYoHWDRiKKUJ0QinPCk1TTS3GH4vU0og7p+HzqcQnFx1F8PtXMQjiLdocuUjyW6iTQuVG6R7HMHbMu7UP97qRxHqb4fbdHrY0lKd6c6rdJ+UnvvOl82Jeid3FrUpsTqHQgnRug+UeLR/uilDOGrkgctV83ZR6NQddvreN8sx65KKbjqNNltDeks6rrHDx3GpZOS1mGXJGGsBUpend0oS5F2zWP5NUSFaEWzoJFe/jLyAbq32nm8fei34LA0eqRL6D8EGI+M8m4V7dp9qb2Vcp4rLOU6oxJ0ZqfjdpUVLqeMEyPik32s6elY0MJw3V9XiBlLfW7XV8dHeerKF6A0EtYUiP2tYria6mvGVoPqcfBEKznju6Xr4IMemeSGLtJPTak/POEm+kqz6SzEmlspwmrkHaRLpkxlJOi64uTqfppQvbU64j3qM04fy/+60Xz65E7yzQzIykuNepvf6F1JS0yhhNW1TrgidSl5iE9BrNB6hO6FosJE2km6nOz+Uei48iM5upB6hVaHY2jGUr9ElfZ9bVjQ2ls1SgnQV87PpJ4m0/x8imVND8psVQnlkoHkxSDdfvJtyjnMj130y04hNV0Di+sn+wYZYnhm5SzOaWP1l4tC7tK1+I01fcS5k/RXyEw6XnQVD02EZzyFfXVlWZEkn5GQKMFGmGOFP1UKDZVvwngJRkXkdQBWq9YbdLVWM2Asch/vXTvbIVfu3RND+kYSreWPLvmMB/ZmbN+u6HnIEqnObyvSz0LdS8sidqsS6NqSnwG0bklaS4E6Xy8a6MnDhpNS49Q1Ke52VRfL3iiGUBOEukqvEk1tUT1Ug4RnqEei5Am63Y+TPmMztWcd9ecIH5L556kcy+Thms9D9WcsJAUeo5Dpc1SHlBcP4sxiPP1VGch1Z/tR+JkMr2/9AWVjqcWypFEI6ivcu47HmtpZaXbWeJ/34naj6Yxe4nzJnRF5mtkY4ifndAQOQkk+1CScgZqhK2aDWRsNNmx8Xqukc2potvBa/SUxmaS99G4k+rf1EyaMwnD6dqFknVqpesj21oTPNTLUeJ8HNk3Q+s/2jSyZnR9m5K1GapzgN4lg+OES4mrhTQrC5Aejqb6q/xnUS8xNJ6rJG8l1wJXJG51L6tJZ8b4paB2vDofPZRJb6roWVxD9+sZq7/ghBquf2e3CSrpe0Dq5TzN7q6kafmo/UTdL2r4U9LPDGS1gsnXBJNXIs9C+q9ITwyyQi2p/kOyZqNpJEchnOzeKBqzjk9Ej4R6TmyEkK5y3b5oTvyv8Fsn1yrWIC9chixYWfLXuv2pVPM+sfE+tTDYlQLjHr89H+Ofa653078xHMh3UFx7hK3EVSRJmpSyh6z0dpp9PxEP+petjTWat+mdtGXUwjjS8DjKqUQcDtet4VxeTLzpa32ZcDTpVV/KD6R5N5C0oo+Ow6/k0XZTTl+qn+TO6ETyWX6bH66tCumDozmH4yRXS//VJ389219KdvUgzY4QsqIDCeMoJ4X8YxZaRZQnn7KGcsjmmwtIQ8KJyT70ND+BdDg7eQRarUlaz6AHp3UF9RWiuRJJrrYnkfVYRjYQSAq/JU8iO6CxJdVZmzIZ9DP6rjQqbWcaUQv1qM580uH2lFOA6u90sStdl66k7UkkaVeSbhl54Vk0ZsxJeZx6ljShIcnbGWt+7feYdFZ3d1XmX7lpPdxE5w6EnBhfSzKupPGf0pgSpltLfai/hYXYBut0o/29y7QjR7ugXnr2BJaug9iGntbpHKAWmpn63dQozwP9nTSKWxQPo3gYxSM8RylnJuUkUXyYfq/Vk0jxJIonU6lPx2Vp/YU0yonAq6dbOEB1DPo22iGNnkd6DFK3E+yprlFO0F9I07/mS5kh5+svpOl48modTxnkmay/kCZv6SfLMivhI/oS2gXdvj+uv26B8ceUT18/k19TvCrF2+vvpJlb9HfS/DJ6zuv63iAdlxbVfEajLUXttKY6oVRak+QqS/iYpB5Npaso/ojyC1DObkL9W+lwb25qsyL13pGeiSdRnFOdj6nlxcRSEvXIqfcRFF9O55bXbyP7UY8fOTyt872K4uWpBX9+OI2hFcXLUbwdtXCG6meg8RDSeML94/GMo/Gs1182I6nLuFKXopZbU51mVH8ExcsSSjqrMsXpG3TyfYqTvLI+SaF7iQAaCX11rZTHpNKmFDeolxvEyTDKKUWleHVSShCWkoJwFNW5QLifaqZSfhiNeSWNma4dvT0okm9SvAzhO7qX5M16DMl7KH5KY0obwijKuaxrJi/VDLv5PQltwszUTmaKf0hYhs5aSWedo/gWyid+kmdQXz9S/g4dT+HUAl1xdwx3qc5JOiu3/yk6WGy49yqI6A+6x0Fwu+5t34f+ca3jO8MS7YEaNayaC9AupqZCZnDAA9khLwRBcSiN/FaB2tAEWmAbb8GH8BFEQwfoAj1hmFvfBxJyQD7IBCUgElt5DepAU2iJvTaEvjAIYqAjdIUEGE7/v9Z/jgIvWpz8aNFLol+rAFWhLrwL7wGHRtAPPoa28D50g14wArKAqNWgQU2o3bD+m7mgTeOGdXLBRGolK32P+mW06QWwxTBcCbwOb8CbEAWtQKCHbwz9YTDEQhx0h94wks4JgFxQENsMh1ehGtSDovAJ5YdAIPKQG0KhELZbCsriqqA61IT60Axa47iLwdswAIZAO+gEPeAD9OP+EWQEG/JANiiMLURAZfTUtaABNIc26EtegXdgIAyF9miF46GP/k52dHiPaPEOYUvCWMLOhAmE/aNbx8WLoYRjCCcTziZcSLgiunWPtmI94VbC3YRJhEcJT0dHd+oqLhLe12hwwkDCnITFCMvHxHVoZ9QgrEvYMKZzl05GU8KWhDGEHQm7EiYQ9o3t3jraGEQ4inAC4UzCBYRLCddgw62NrYS7CZMIj8Z17tnJOE14kfA64V3CR4QpGk0jrkt0nGkRBhKGEObEwu5mPsIihCUJIwkrElYlrNlFt1OPsDFhFGErwljCOMLuXbrHdDZ7E/YnHNxV548kHEM4gXAq4SzC+YQLe+A1MpcSriRcT7iVcDfhwR4dOseaxwnPEl4mvEl4n/BJj07RXT1AaBEGE+YkLEQY3qNHyTBPRcJqhHUJGxM2J4xBDPfEEcYT9iUcTDiKcBxiKc9UwtmEiYRLCVcRbkSM8Owk3Ed4mPAk4XnCqz16tunhuU34kPCZRskJvYSqR8+uPWQwYShhLsIChMUIw+ORSVmWsBJhNcLahA0I3yHUOzccbU/wvxAKnOfZIPu/FWP0ke3/O5qg9708aBe9/20pg1L+OIOX/4C+F0SBds6m7/n/nRhD6/3nGPTCyOmKcGxVp5jrpzRaL4wZXxhz/AEDXxhz0UgFhew51BI8n6f+EgV6qiwQ8i/GslKMo3/K8y+Feenzzy8e5ocC/0LI0JP+Nf41Jww9+F9jhhfCMFxtxKPXHwezYSlshCQ4D/eZwYJZPhbBqrHGLIbFs8FsHJvNlrKNLImdZ/e5wXPyurwPH8kn8wV8Jd/Oj/Kr/ImwRKgoIsqL2iJKdBR9xEgxWSzAOaj78vp1VtRLl26TLj0qXXr0c2kjXbkHp/lhkOy5tBWRNu3MSnu+epi2/eCotOnMkLb9zMHp0gXS1a+ZLt08XTqdPJmPpk1nKZQu3SBdunfa8WefmbY8x6q06fzF0qWLP5fG+Ze/ZLryQZTmaB+C/BIWbOAPC/klN1DnsqCtKuDm7nXDo2543g1v/1ntIhFuWMkNa7ph47SjKDIyrZRFI9Omi6ekrV+iadp0WLqrEB6eLh2RLr03XXpfuvT1dOmbadOlgp7TMoxEBqdLR6atH1k2XTp9ee106brp0vXSXsVytREVMhPNxkMsm0rWtg0egDN1nH4jw8xIviIIPE4ttdmpqTaqtWo95njYDXYD691mt4Gxu+wucPaAPQChXlOvgaFeV6+j39T6wEV1oa8X50E8M+Zg30Lp8Qgfnlkc01nwbqQ7TIXNcBqesGAcgxdHFey8Bdyp6TRErOU0QtTSBaJNzoV3CyXxnqeiugyCB+KYrlC4WeGdFs+M6WsUblYHgWPqMOJmdRRxKxikoaGQR53Gsa7F0jMUblZnMVyP6XMUbn6u5nm35gW35kW35iW35m/jrUPjrUvjfZPG+1tJPSqpTyUNni9R22mEO2mEu2mEv5XspZJ9VJJEJRwkxwOnmc31r0wCeSCymhlZFU4N5w1kfa1aCx4c03pkCu+y9VwU9LwQ/wrh+YNQqkGYzMAywAAWynLAQPpfyYNZFGsOQ1gc6wTD6f8jj2TdWDx8wkaykfAZm8gmwRh2h92Bsewhewifs6fsKYzTqgHjuYd7YAJ3uANf8Iw8I0zkWXgWmMSz8WwwmefleWEKL8wLw1RekjeAaTye94Q1vBfvBWvR+veBdbwf7w/r+WA+GDbyYXwYbOLj+DjYzL/gX8AWPpsfgq3Ch1rzTESICEgRVUU1SBW1RC3GxTQxjQkj3viSGWa0Gc3CzbZmW1bKbGe2YxFmB7MDK232MHuwSLOn2ZOVMXuZvVhZc79nOCtnNbJas1vWMJuxFCfQqc4/cJo50/l3vhhfR37PN8A3ij9RXHmFV+VWuUUGlVflFYEqv8ovMqqCqqAIUoVVYZFJFVVFRbB6Rb0iMqsSqoTIosJUmMiqIlSECFGRKlK8pMqqsiJUlVflRTZVUVUU2VUlVUnkUFVUFZFTVVVVxcuqmqomcqmaqqbIrVqqliKPilExIq+KVbEin2qv2ov8qpPqJAqoLqqLKKi6qW6ikOqpeorCqpfqJYqoD9QHoqgaoAaIYuoj9ZF4RQ1RQ0RxNVwNFyXUSDVSlFSfqk9FmPpMfSbC1Vg1VpRS49Q4EaEmqAmitJqoJopINVlNFmXUVDVVlFXT1XRRTs1UM0V5NUvNEhXUbDVbVFRz1Vzxqpqv5otKaoFaICqrRJUoqqiFaqF4TS1Wi0VV9b36XryuflA/iGpquVouqqsf1Y+ihvpJ/STeUGvUGlFTrVPrRC21QW0QtdUmtUnUUVvUFlFXbVPbxJtqh9oh6qldapeor/aoPaKB+kX9It5S+9V+0VAdUAdEI3VIHRKN1RF1RLytjqlj4h11Sp0STdQNdUM0VbfVbfGuuqvuiih1X90XzdRD9atojsrbmuwXkOVi7Al7glYslaWi9TA53gfQPDNpnnlonkkeykPBy/PwPBDAC/FCYGktBNtsY7YBx4wxY8BnxpqxoMz2ZnvIYHY3u0OgGW/GQ0YzwUyAIJVL5YJMKo/Kg3M8n8oHmVUBVQCyqEKqEGRVRVQRCFHFVDF4SRVXxSFUlVQl6X+glILsqrQqDTlUGVUGcqpyqhy8rCqoCpBLvapehdyqsqqM1krb37xkf/OpN9QbkF+1UC2ggIpW0VBQtVVtoZBqp9pBYRWn4qCI6qw6Q1HVVXWFYipexcMrKkElQHHVW/WGEqq/6g8l1UA1EMLUYDUYwtUwNQxKqRFqBESoUWoUlFaj1WiIVP9Q/4Ay6nP1OZRV49V4KKe+UF9AeTVJTYIKaoqagvZ6mpoGr6oZagZUUl+qL6Gy+kp9BVXUHDUHXlPz1Dyoqr5WX8Pr6hv1DVRT36pvobpapBZBDbVELYE31FK1FGqqZWoZ1FIr1AqorVaqlVBHrVaroS7ZvzfJ/tVD27kR6qPt3AwN1Fa0nm+p7WhtG6qdaG0bqd1obRurvWhl31b70Mq+o5LQyjZRB9FnNFWH0We8q46iz4hSJ9VJaEb/f6S5uqVuQQt1R92BluqeugfvqQfqAe17+e+vGESQrS2MumWyFqwFZrdlbYEZy43lwD3JnmQQ3kreSmiH/6N9/9G+/27tCyXtK6JXW6yD59h/dOw/OvbfpGPM7Ijr+UCWh0eIGkZTyA7loSrUhoYQhfcLHXH93gdXliNhLEyGWbAAlsBKWA/bYR8chbNwFe7iyh6YhzkBvUEE9AiID/iAwp4BfShMCPiQwl4B/TCMx1h/CuMDBlDYM2AghQkBH1HYK+BjDHtivcEUxgcMobBnwFAKEwKGUdgrYASGCVhvJIXxAZ9Q2DNgFIUJAZ9S2CvgMwx7Yb0xFMYH/IPCngFjKUwI+JzCXgF9gWPpIMSeAcMREwJGI/b6G4yMJ8l7BExwmfnCZWaiy8wkl5nJLjNTXEamuoxMcxmZ4TIy02XkS5eRWS4jX7mMzHEZmesyMs9lZL7LyNcuI9+4jCS6jHzrMrLQZeQ7l5FxKH+PgOnEyGxiZMHfZGSxy8gSl5HvXUaWuoz84DKy3GVkhasrP7rMrHSZ+cllZpXLzGqXmTUuIz+7jKxzGVnvMrLBZWSjy8gml5EtLiNbXUa2uYxsdxnZ4TKyiBhZRpqylhjZ/DcZ2eUysttlZI/LyF6XkV9cRva7jCS5jBxwGTnoMnLIZeSIy8hRl5Fjrq4cd5k54TJz0mXmlMvMaZeZMy4j51xGzruMXHAZuegycsllZCcxso8YOUyacvZvMnLFZeSqy8g1l5HrLiM3XEZuuYzcdhm54zJy12XknsvIA5eRhy4jv7qMPHIZeewy8tRl5JnLSLLLSIqrK6l+ZizwM2MxPzMW9zNjCZeZy8TITWLkPjHyRGuK/h/Aety0m9YUCrN9fIaoK+qLWNFOdBTvix6ip+glPhD9xHAxQowUn4hR4lO8Cz4rzonz4oK4KC6Jy+KKuCquievihrgpbonb4o64K+6J++KBL1L/jz62l+3FDqbr3+aLOqIOcFFP1AMhYkRbMER70QE8orvoDl4RL+IhQCSIBFwJ9Ba9wRZ9RV9wRH/xMfjEFDEFMomVYhcE+0r7StMuQyhYRk7jZSOXkdvIY+Q18hn5jQJGQS0ZjugB7a771yvZ3b2JoroMz/HvXTMR93uNQm6NYnpvSsRhCRjBhv6ObyGjENjPnefvN9jIbGQxshohxktGqJHNyI51/9kvh3yQwQgyMhmm4TGk4TUCDMuwDcfwGcrIYAQaer/LQNkG4CD1Odx41agEjvGa8RooLIuEEDFXzBeJ4juxUWwSm8UWsVVsE9vFDrFT7PozxvVumZgj5mCL84R+3+ob8Q3yvVCgHUXmNmB/Z8W131ufg7W+wdKV4iexSqwWa8TPYq1YJ9aLDX92jan1uWIutj5f6K+FJIpEbP07gdYZR7gLW9dy6NaLQ/CftvonchBnZ13O9HkvqF10ntYGPM/szJfCxzAYhsBQGAbDYQTO609gFP3n6s9gDPwDZ/nnMA7GwwT4AibCJJzzU2AqTIPpMANmwpdoAb6C2TAH5sI8mA9foz34BhLhW1gI38EiWIzW4XtYCj/AMlgOK+BHtBU/wSpYDWvgZ1gL69BybICNsAk2wxbYCtvQjuyAnbALdsMe2Au/oFXZD0lwAA7CITgMR9DGHIPjcAJOwik4DWfQ4pyD83ABLsIluAxX0P5cg+twA27CLbgNd9Aa3YP78AAewq/wCB7DE3gKzyAZUiAV1Zjxt3hD3og35m/zd3gT3pS/y6N4M96ct+At+Xu8FW/N2/BoHsPb8ljejrfnHXhH/j6P4514Z96Fd+Xd+Ex+mB/hR/kxfpyf4Cf5KX6an+Fn+Tl+nl/gF/klfplf4Vf5NX5dWPwGvylsfovf5nf4XX6P3+cP+EP+K3/EH/Mn/Cl/xpN5Ck9FE6R/iyGEIUzhEVJ4RYB4SzQUjURj0Vy0EK1Ea9FJdBODxRAxVAwTn4tJYqpYJBaL78VSsUL8KHaLPWKv+EXsE/tFkjggDopD4rA4Io6KY+K4OCFOilPitDhjVDAq6v8JbiQZB4yDxiHjsHHEOGocM44bJ4yTxinjtHHGOGucM84bF4yLxiXjsnHFuGpcM64bN4ybxi3jtnHHuGvcM+4bD4yHxq/GI+Ox8cR4ajwzko0UI9X0mUHyNVlVvi6ryeqyhnxD1pS1ZG1ZR9aVb8p6sr5sIN+SDWUj2Vi+Ld+RTWRT+a6Mks1kc9lCtpTvyVaytWwjo/Foi0c7PDrIjvJ9GSc7yc6yi+wqu8nusoeMlz1lguwle8sPZB88+sp+sr8cIAfKj+Qg+bEcLIfIoXKYHC5HyJHyEzlKfipHy8/kGPkPOVZ+LsfJ8XKC/EJOlJPkZDlFTpXT5HQ5Q86UX8pZ8is5W34jE+W3cqH8Ti6Si+US+b1cKn+Qy/T/FZc/ypXyJ7lKrpZr5M9yrVwn18sNcqPcJDfLLXKr3Ca3yx1yp9wld8s9cq/8Re6T+2WSPCAPykPysDwij8pj8rg8IU/KU/K0PCPPynPyvLwgL8pL8rK8Iq/Ka/K6vCFvylvytrwj78pH8rF8Ip/KZzJZpshUL3iZnCPnynlyvvxaLpD35H35QD6Uv1q9rQ+sPtaHVl+rn9XfGmANtD6yBlkfW4OtIdZQ+0O7r93P7m8PsAfaH9mD7I/twfZQe5g93B5hj7Q/sUfZn9qj7c/sMfZke4o91Z5mT7dn2DPtL+1Z9lf2bHuOPdeeZ8+3v7YX2N/Y39oL7e/sRfZie4n9vb3U/sH+2V5rr7PX2xvsjfYme7O93d5h77J323vsvfYv9j57v51kH7AP2oftM/Y5+4J9yb5iX7Nv2Xfse/Z9+4H90P7VfmQ/tp/YT+1ndoqd6oDDHO4Ix3BMx+Occ847F5yLziXnsnPFuepcc647N5ybzi3ntnPHuevcc+47D5yHzq/OI+ex88R56jxzkp0UJ9UHPubjPuEzfKbP45M+ry/AZ/lsn+Pz+ZQvgy/Ql9EX5MvkC/Zl9mXxZfWF+F7yhfqy+bL7cvhy+l725fLl9uXx5fXl8+X3FfBN8U31TfNN983wzfR96Zvl+8o32zfHN9c3zzefnj7T3j7tsQ/gMzhaUNo5/1LURv9+QLyJ/v2QiBLN4IhoKd6DY+RNT4iuoiucRI/3EZwSY8VYOCcmiolwnjz7BfJbF8lvXSK/dZn81hWxTCyHq+QhrhvljPIMaAeem5ZpsZJmoBnIwmiPPdxzxnORXZYlZQS7Sfvt96xh1hTOrTnWzzyrtc16xMNp170N7bfPRW9/FwIgBPKgz6+HK6DJ6AHWoHXGLuwhwNU2iiVSTD+jCYQskN3egulD9lbEI/Y2xGP2zt/rHsLYOvDieiIEcuIKoIj/6ZF9ROfbxxB32CcQd9mnEPfYN/SZKrNuUWXRLaqsukVqK5la/e0ZTQCmNikLcYuy05RkoJJAKsmYpiSESl6iklAq4RCAV60kXruyXL9nXoFXAM5r8BogeC1eCwxen9cH0/rc+hw81nJrOUjrtnUb2+PmfP7L/5CPTeth///2r/87Hlb70Bf1m/+TPjNIxshY2V5+iB5Ie87q6DPrkjd7Cz3TaPKTTdFHau/o941tX9Ar9v0Lf/hHbzgJ/eA/PeDz3uX/NW/4u7dDvzgR/ffzXvE1XH3otYd/5aHXHQ1w5fHYXXc8xVXHu7jimE5rjhm44niCWvsOaup7Wi9/8528U1q/6QQ6GZ0gJ5MT7GR2sjhZnRDnJSfUyeZkd3I4OZ2XnVxObiePk9fJ5+R3CjgFnUJOYafIn3rbIX/ub1WAspT9Ql438Y9+V2VQgSrjH7zvFnurvY188M4/9cKH0A8fsY/ZJ+xTv/ljlUVlJZ984//olZP/6JdViHpJhf5b3jmNb3aS/xe8cz3GWWa8lQ1lhSCYNWCNIS89cy/EWrK2UJS1Y+2gFOvAOkAEe591gtKsC+sDZVlfNh6qsclsGrRkP7A90IZ35/HQjyfwfjCQD+AfwXD+MR8Gn/AR/FMYwz/jY2E8PT2fxCdwtPZ0jz9dOCIIZohgEQxzRRZRBOaJYqIErBJhohqsJY+fRB7/AN29HTRmGXvgqpnRzMhCzIfmQ/aS+ch8xELNJ+YTls2DdLHsnhGeT1kOz2eez1kez3jPRFbQM9kzjRX1zPAsYCU8iZ6lrIJnmWczq+bZ6tnL3vYc9BxkLT1HPMfYe54TnlOsDa4NkllbTyquDQbJSFmBrZCvyspsjbewtwhb5y3mLcE2eMO8YWyLN9IbybZ6y3nLsW36+Rnb7q3ircJ2eKt6q7Kd3hreGmyXt5a3Ftvtreuty/Z4G3sbs73eJt4m7BdvlDeK7fO+541m+70dvB3Y4QC87WdHrDZWNDtqtbXas+NWRyuenbYSrAR2Df3sFHYd/ezP7AH62UcsxeZ2My7tFnYf3tqZ4ZzlA3yf+ibzDf73W/BudCE9cWnBYt2cZc/lMCgPHnftUQDXNBFYPgcPjQtxVTCHQp1a7aZWY+oEHvotm6KsKGpNcab/C2JZVhbbfIO9gc6lDqsDBpvIJtJbNluhtRlqZjOzmznMnObLZi4zt5nHzGvmM/ObBcyCZiGzsFnELGoWM18xi5slzJJmmBlulmL7WRI7wA6yQ+wwO8KOsmPsODvBTrJT7DQ7w86yc+w8u8AuskvsMrvCrrJr7LohDEM8FL+KR+KxeCKeimciWaSI1L+TZ6AoBqedBoN+rZCR9n5C8BCQHQ8DmSuIkhYD/V5aCTy8yGp5XCdWxMOCSnjYUA2qgwN18FDQBI8M8C5E4fqwJR5BEINHJmiPRzD0gHjIDB9AH8gKA/B4CWcnh1CWgQVCNpyjoZCD5WQ5ISe9HfMyztcGkAvnaxTkpqe6eWim5mVxLA7y0fsy+VlPlgAFWD/WD+f0CDYCCrNP2CgowsawMVAMZ/BkeAVn8A9QnK1l66AE28y2QBjbyXZCKdpviqCZF0lr6tq069SSdp1a/b4XttHdC3sFmcrBw3gYrhgj9fcheTVeDVeMtXltXDE25A1xxdiENwET1z1twYMrnvdxxTjcGglea5Q1BmxrrjUPAq2vrUQIsg5ahyCLdcQ6DiHWKescrqX72v0hN3qPwZBPewYojJ7hSyiq7TiUQDt+EMLQep+A0mjBT0Ek2vBzUAbt+AUoi/dWl6Ac2vIrUB7t+TWogDb9hv61KI6vAm/+uyzbXVmKoyw508hSjpfDuloiwRvgvYxBEpkkkQfXd1EgSS4vrt66QQDJZZFcPpIriOQKthZai1CiJdYyyEYy5iIZ81iXrCtQwLpm3UK5tKTFSdIwkjSSJC2L/m8O3h/Mw7uMyiR1dZL6DfRLD6EOeqVkvDPREtXiHd2nr3VxfsaQRCW0jKwhzXv4PQdoL5Oz9qzK73mcNWbFMBX8ez2cAX/CRUVeEbnQjBh0jU3ixUO8SOLFS7wE4Lq3BVjEjk1X3SGOfNa71rug8M68P2TAu6+xeO3HWVMgO96DLYN81grrZ4jEO7FbUMm6Yz2CtriGGAadcLUwBvrg6iARBqHv/wHGo68/AtPo2q+ga/8jevAzsJI04CfSgFWkAatJA9aQBvxMGrAWPfstWIfe/Q6sRw+fDBvQn3tgN65xQuAgrmtyw0lcyxSBi7gqseEmri4ywh308aF4B4CWEO+QugHoO0ioqncZ4C393hY0sj90qsNuPCcHm0RvOYp/XhGgX0Xi3Z7WugbPXZGS/7wi0Fj/EtnN41CFnp4H/16Pg7CmWrOx57XWVtS2x7bWX8yl+2z/eHLTSEq6vXPsJfTfsax4ZmayQ0B2iJEdEmSHDLJDJtkhD9khSXbIS3YogOyQRXbIJjvkkB1SZIcykB0KJDsURHYoE9mhYLJDmckOZSU7pL+YsR4lcHhNsRKZ+KvnMJxZLAhHmYcVYeGsPKvKarOGOLo2rCPryhJw7TKIDWej2TjsdSabyxLZEraCrWEb2Xa2F7k5jjxcZjfZffYEjb+HOzyIh/CcPB8vguxGsiIofSHk4hUKo9D76bAFK0dhS1aewvdYBQpbsYoUtmavUtiGVaIwmlWmMAZnng7bstcojGXVKOzAalAYhx5Vh11YfQonm1l1aCwzQyhcbr6kQ/XUa+vQzOR1dOiZ7fVRuNqrKFzjzUBhsjeQwhRvRgpTvUE6xNVLJgorZ2DUT0dWGC1BBvTzHFPFEKPQ2+u1A9oDlBJ1EGUMQ2zFwhFbs1KIbRiuI1C20ogxLBKxLSuDGMuq6nc/2OuI77PqiHG4XuAoVU3ErqwWYjdWG7E7q4s4mb2JOJXVQ5xiBgNHeTMjLjf1zsdTL14YlBS1GuU0EFd7cb2BMnr020xeiZji9SKmegOAo2y4+vFWhsI4q5qjv41DP9sX9O/vx8FUmA2JsBRWoR/bCUlwHO/8r+Pcdp/noSaFoK7nQ10qySJZRdSmmqweWsgolDsWpViAbE1Ghr6hsAVLpLAl+5bC99hCClux7yhswxZRGM0WU9iaLaEwhn1PYVu2lML/au86o6JI1nZXD0OYGZowJJGcldSDIKAiOakEARFFRTIoSRyiuhIUwYQBCSpRUDEBsi6siIqAIBhBMeeAIBgwISJ+1YUiuu7evfd8e+6fe+owXd3NdFfV+9bzPG9VT3UAvyy1hXWUo7awlvJoW8uvgLbH+RXR9hO/EtoO8Suj7Wd+FWoLa6yKtqYgD9kvH1muAFmuEFmuCFluF7JZMbJZCbLibmS5Pchye5HlSil78IuhFhdHLS6BWlwStbgUavExqMWlUYuPRS0ug1ocYDxCGHqqm4awAkM9HQhRP9Gg1vF2RM/Ua2B6kIu/jEQBCeRrkshHpKh7U1cBY0ZyQZQnUdgL8SQT+Qr6pGbIgDBEKAyIA+ot9BQS4QhfKE6TwtLALDAbzAEewB0EMTwg+8wdHhfGo/Bf8FR8G207rZR2mBgkPhFDxGeIr7mMPEY+o4BRyChi7GIUQ6ytY5xi1DMaGI2M04wmRjPxnsAJGsFD0Alego/gZ3xgDDA+MgYZnxhDjM9MCHvMzcwtzK3MDOY2ZiYzi5nNzGH+xqxiVjN/Zx5l1jCPMWuZx5k3mLeYd5j3mA+Yj5hPmE+Z3cwe5nPmS2Yfi4/FzxJgMVhMFoslyCJYQixNlhZLm6XD0mWRLA5LjzWBpc8yYE1kGbKMWMasSazJrCksE9ZUlinLjGXOsmBZsqxY1gSLECQIQpRgE2JEP/GBGCDGEjIENQephqI+DEV6dKgcpkNOW4SHQNbmwoiOha+AEZ0gevqZQPGbEIrKhNHYqwitglaBifKW8ZZjbN4q3ipMnPc973uo22CsgklSsQrUN3cYj7FxVMQC1Uwq5O5JMGY/glnCaPs6NgNG3DcxB8Tdjoi7nRB3OyPunom42wVxtyvibjfE3bMQd7sj7p6NuNuDOQRZew5LGDK1D2LqFYipEwhxyNTJsJ5Hsbl/x6L/mQX/ETt9tRADtSaGWlMAtaMoasexqB1VUM21Uc0noprPRDV3Qxpl9nDkR2fQBVEvnIZR47oWmNxo///Ri//cH4d9B15BBHkKhjyFhizMi+xJIHsKIXsKI3uKIHuKInuykT3FkD3FkT0lkD0lkT2lkD3HIHtKQ7tJYmO/lJ5JJ0aVnoB680uPpfo88lMM+SlAfoojP6V9+S6LLjTqu1JQlYygwNeejpAD9QLkyXTkyXzIk/mHo1jwCrwDH7+oARFcAh+LK+PjaPZ0X7o/PZAeTF9Kj6LHEIqEMqFKqBPjCE1Cm9AlOIQ+MZEwIiYRU4iphBlhQVgRdsQCwo8IIIKIUCKcWEJEETFEHLGSSCRWE6nEWmIDkU5sITKITCKb2E7sJPKIAqKIKCZ2E3uJfcQB4hBRQVQSR4gq4neihjhO1BH1RCPRRJwhWolzxAXiEtFOXCGuEteJm8Rdopd4SfQRb4h3/3vm8n/PXP4/PXOJY8JQ8wfQ2cRHyPmmf+uZctgTwSLeW6OeAOannpX58lTNXz4jM/IcDbwGboIvGInZh49Mhwj0NebFwRvqbRG4AW4E/8MSHnPCZ+Lu+Bx8Hu4HsSoCot4Kak7rZ4maxxqd4FW+T0Z/TNSs1+hEzZH9NFn+kGyoGbTvktMfEzWbNjrBuvxJgnzwXYJ1/j7N+VmC/PFdgq30fVqA0rd9vx9SIEyL/iRF/Cwxh75PkLW+T2N+SErfpy/1Gy4vusL/xib+ZGwCYHcgf06BXG8HVbYbWgfl6+on1Eooa7FNWCaMfoqwvdghGP8cxU5ip2EE1IZdg+1Hornef/fT6D/6dPpPPn86/jE8OsKCm0wq7sHMqVgAcp0Eih6oOQ4AxsE4GodsT61PmAmyYD4bUOtb5sHICwdHwAuYfwlewXilD6IJgGz5Dubfgw+IMz/C/CAYgvnPOPX+IRznodZLxHlhng+9wYeJw/gbF8SF0C8hYYyNi+LU6nDiuATMS+LUmmPS+FiYl8EVYV4Jh5EbroKrw7wGPg7mx6O3BWnimjCvhWvBvDauDfM6OLVW2A58B8zvxHfCfC6eC/N5NFu0lq89RqNNo7OpFVPpsL50aer9WXQbui1Go9vRvWHehx4M84uoN9FDro6B+Vj6KphfTV8N8yn0k9Ta1/Q6mD/FD5GZH4dRJM6vJrAYAwIhAlDpCYQKlmJAcJ8gjHoF9wvWwfwpwUaYPw2VKiDkoM6gQTX5GUV4EJWFcCGN4d84I8vgmM+XX+Z+0yAAaRCANAgY9QtSgDQIQBoEIA0CkAYBSIMApEEA0iAAaRCANAhAGgQgDQKQBhkuIY6UCEBKBCAlApASAUiJAKREAFIiACkRgJQIQEoEICUCkBIBSIkApEQAUiIAKRGAlAhASgQgJQKQEgFIiQCkRABSIgApEYCUCEBKBCAlApASAUiJAKREAFIiACkRgJQIQEoEICUCkBIBSIkApEQAUiIAKRGAlAhASgQgJQKQEgFIiQCkRABSIgApEYCUCEBKBCAlApASAUiJAKREAFIiACkRgJQIQEoEICUCkBIBSIkApEQAUiIAKRGAlAhASgQgJQKQEgFIiQCkRABSIgApEYCUCEBKBCAlApASAUiJAKREvq4PMrJaiGwu3Iqho5jsNjJJdjOvwPgUu5T3goAPL0iSTYKHfsEB4DBJAV66JkHDpekY6c3L0OQFPCDJEAc8Ba7kTFJr1BGZIrkEGTSdMwVzwnywpVg4BFF/jAv/qOmdqaTiqIvxiD0dajNrLK17PVF05sSq+i7hCLP2XwuSpFzJJJ46MolWWkDDAY6zJ8AiXnsU9cE63O79IVTga6TgSGkBHZYrBhWTNouHl43PcuWwSRFqh5/NmO29NCg4LJAbHsYRJgnqIB+bz8XfLzQ8zI8jR8pQRxhscYdg38jwpeEBXAXL8MiI8EhvbjD8hiIpT52nsaW+nXcLDvXXduV6h0YoOFuak3KSghxDDknq6ekZGBoYzoW7xiRnZJdMrPhHSsYiGdR5Jptm7mTJUSNVhvdk3YK8Q/yXKri5uipYuzpOMiStrLT1LQwstPUNJhpxVEnl4frI/LQ+rv6R0cG+/mQSUBrdvoCO0ZIgRsHjDDwJAKwhumIo6b1useKtXVeLNWpUwzNfPzx3fdXlmXbg+D2XBZcZ9rdvxC36PSZFhSvrFVqZs2G52cpBUc7g8VXPO8u7NTKst5TS+t9MefHQKD0g8+avuJziFcDh48aUOJkJzhzPETE2W7YmPvHOAd13CaemrZ5W3BlRdSWWbw+Z175s2fTs38DWfAvlN09WBuAVTjltXP3pZnxPE0+OK2/Vtrx+uaQ6ZqvaWkEPMq1nUUKT2odDXqpjnob4/5532utxhaT/0wa3ML2NG+eWr7KNVW96W1UU0mR8biVzACg3W2mJ8fU9OuNTNCU1ZHlLQd9Cq6bCrfPlp9Fjk/Pxt9bbbNjsSPeSSm1JW5wGe9GuJCAAW4ROysImlSWgGBcrkAtLl1e93WIZmLxt3EBM7cwOOXfkQbLKPFKkRIKYsn7/dRebCEav2cfoj5Wa5fUGlUKkG/UP8jwO5HTSvsC2wDrFMojLjZikq+sbGaIT+tVOOr7hoboRi4Opo7oRkeF+Ub7cpbojZqSsiIwIfVIH/gvpwcsPuyWdzgcAzwxyGmn3dZ/EU6Z8uUFMTMzPbuAf+RdX5pJsqryqPJQHfrkkjf+H7kijvGS1YA/b5Er8p0o6eVBlH7P51cbeK+uaDgSXlVw09Q151W81v01ovvBNW8fZJ6doz76aqSoY7WByY7L2xnIyS2PoyK10zpyhNl2pGP5gYHyjbZpnd8D8gRfm/tVe8c5Rle3lWjKCiukRemq5nfpR+709+nd6Ci+83CZnR/ZEt5SKjOdu1jRJvtpq7q/0HjwWf+p5tJpQUS219Hg0scXtWN4rvcWuMyx0unwbWN6XXx6zPVhQUl5ryjfhnIaTcbXsUOfgxqOHMz55qcgPjG0iubeX291neJY4WN5UO2B854z7whSRijrr0oOy8wamRc1y709zaeGdnf8whvPcS5W/ta3FfoaOw61iMokXQBDrGgViDV1p/fGJzl2fEYg1jG41JgSxX/4RqNAg1YY7vfzo837+Cq7BgWHwqhSMKeiRHM4wlpFGHI4eCZM+hWVGo3ZJ7j9Svi/naX9y/l+iUeraapV6vvTtCXHig2oLByNTtQbe7MpKzbSp2tXqlaY7aYKO3ObYgeWl8kngSHyr9DFai82zxpz3H3lk+1YzPiuFFfYFmjSqSz3WkH/Lk2Hu2/PwqPj6XvZ2gztGEW7hk3sOWguQ9nXH08kcVmv0mfdLt0nEXFpXk9HEv1qhV26vwaslp+5xselr225tftYRO7Rh4ODCVJPa3+UP+WSdaFxVselQR5lmu9tHgxvnlmx5Ive5Z8ni1pX80dx7wjPtLr/Cmu1m7OIzeDxH8NPync1P5j5c/bZju5D8xt2PVknWdbTky4KmT3Z72FsmZCna6fWfUinCDh93bUkOG+eZ+MIoLOF1TQ+b+ewrGiXAFlk+DDeqFNyM8PIMfjDSU2mj4Kq1w2fVhYXG3Z8DT81ra67ZX1XPziZdqNMiPBCLim1Ja44gyRxmFh4HJ2cXjj6pR+3S2Zp6E0iSo6fpa0Tq+xj4e2vrG/voa+vrTTDSNpowUU/bz8iAE+ANSVA/wPc7CLQL83vsTG9P2idpaKh0JHRvSxS+7c8h8KcIFR6xFKEgdBfox9CLoQNT/utFfWiThtqkEYJA71EQOIuEWmUUBFr/yxt8RcG/uAWXZFEFZ0NVzoOT2A/dmZYEgx5eCfmbs085Nys7Fc2Mvdrb/+lc7ZWTrz6Mde91bQ62pV9paO15MJjjuc1LxEjjJN2afW97XOqxgP03a57hs5SrTJRjzUMP9b/C5mbkrJU5K7Dt4nYZK7K0RKLpqK3nW039dfnpHob1jjJlSi3C564lCZcavDyk1Jyusjtx3V11mUcBsmlTdT7PpjnUhSUX6D37tVLX2X0+b4X4+mZZ36qlrIcd8WpC4zOt9+glT82cOts+RjltqEK4ae1jfvGZjZpzOZ7GizL3FqcuztQIf9VwqLvWWvKsj2PiETdp243ZJaEnw9RP96vLN/cqlDIrXp1nbs94sCg3OLlw4tVQhaHVVz7XV2dNFBgyEavLFis9mXL2RVLd/lkqllJH7FbHplz80JZrOua6WFrnhvwgldSgyaVNCY5qnfyKM3w/7dwq7jDhiPtCp6vTfjfa+FnndoVXseXiM7EXKmoWpyeHrInc113yMf+2dIfxoN+Z0Kn8j5cnVxw8tuvosguZ7sXxHq2itj5tii8GpzRwmO91p/qVGIYvdDatstrkVMBcd/wXj3dNgWu8b+ZlNzSvbw23vX9SJ6O34l05GdqzyH5vV2Z0cy1/w9Dkt4eWGvIedr8w5nLN24yWNTJ9CYuA029jE5dWtnsqmU7ykLqb+jywwX6P7i3VdSYLLvboW22WPbaZFZ009UXDNe1CHnyj3YcXt/ELtCJIAnyQBF4MkwDDWyJIH2G/zI8C1gvBKUNgi1ra1j4tPzBGgga9kTOGlPzuoMCIs0I31BzGTZVvuOkSHg7BE7pucECwrzfXX8E8ihsUHhnMjaPAnTQk9ckJHD2DCaQxBHc9DtqdQFK7/z0F/a/wPb8wpOLuTbst45cv1hlzv/bBw8acmcrOB8/flnJUEXp+ac+lGQe5pILIM74rbtvE7TPGWmw5lD2PVLuBLX66rLYnjU/oPcGT/TLtrHzrBJU1uX1vAmW0Bpd1psp2dzruKqxTdm3ZMGB9QeDigrKL5RY8RR92h2wNvKpxy8a1POXiYw0bHfUDKU6zXFiPaFofF23aRIateT2HzB34pSOr8qli1i/9bezX/FWuoS6/Wm/Kt8Om2QaIqI8L2Jv1qJ03cVrRh1V7RGzFBJLyV/XOih0C22Wd+VdjwqRNb9UdZZuaBm23/DK5WHNOzNkddycnby30xo/IClYMvt9xGJxXmu72+QO9/pQC8yu+74ctsocUGkEcOkmDm1F4/lN1ScG3rBAPD/S/FFKYV+ALJ4gD6ghGJmYPY3PiJjJxQ4IYcSBpoZm7etZjVfbg+PsM121zHhUX+hZ7/+PumSQcd1CicFpBycEZSz3e8LF1/EnnYVKwJyEPFVgWmKeY/n1dPHI6Et6RgnJECG6jCMGOtCGtRhGC0b+jial6WA5f9W/qYdjWwllr6+fRrCbe7vr1YMzN83EzHUCFDneJZyiLvf/88WXp1TqXRYvWh/pUz8ZbHRXYzjm3480ezK4p89guc18WpByoie1bd7FnMnj+4Hg6g968we7BS1fx2077tzzq3LDoSkLdk4w+Xt3VtK7N41WUIj6+G3wUm6Mj+J7vQcQxKcfcjYsZkduqC413Bmo3ziS6feaZSmSvUzB9wCet9+EsZ1o0x0QzktncHWHyeTWDffcUw3vjy6vVks8c161sNNBcsOvEs2MrmBbLLrtGKj4nW2pi/ed5AkmGGNF2Qyz77ZTfAzwqtXU7P6xOOTvT/WluREbIAeMZl9/FndgnFe8z7kXRjnH6vDHSPmdM5ELlk14ym7RqLlhWPv7Qs+LIw+K9XINqx8YlyqJq0cwpLuuXzLWxFDtWWVnuENicb/E5IU4xIU+cDHhqIbpAujlPSfGiZZdmV80bu7Nal6/pJcxQG2+n4jW32/3F7js5uS2TwmsT1bm8Is+jFU/sSKpTd/utYpFJWmG0969hhezdJ/bZvhQN/7RWL+Tw0N2ZzeuVzwTU5squEfXDTbTL5qRXP1J8fKS8xffXWDf6ZXMd5wMZ5SWx+ysLMqOkr29Zw45S0tXbyx9W4Lle9UTBi1Utih3P5JzObH9uf+898A9PY65oDm5+Eta9J+s8Z9xnotFz3jWHsYXXBnTzTHVmSSw+w971iUziiyeT6D5fqYDY1IaogPZjGJCY+o9AsR5JDnfIcX+nQ36LCDiQNoz0SAPjYdKYiHY5JLX7X49YkvA/cgdOcQcOuQP2uf0vByKFZXQOXgvblyTsoH+07zcPxXyLseMXd8113lfNayTNY390ZT1L7rbh4tOi15gvjU7l8JY3G18BYhyL9jTBOL81v2QsVAkpy7Pf2RW0oO3uDtfDDK36suulmofiBcquZs5pWShN7wqIfqrnoiaq27mf3/lCpVXV/GsNOrSo/UGvW0NfT5pXKPHG5ug9I78DYX4GsbsLfIW028229j+8wyd4ZV5cif24TsHjBeyY4xkmLz4+1JwrLO/grlEUH3lPdFKV/YJrvb2Wm5OvLzu8LGXs9akV6+c/TXNaJd1XqDvn0abJ2ocmeDRWTR3Sa6+kmVQcLtti9EtbboLWW0f3zYoGqvXGYX4rXY/uFDo4RnlV65ujtJQN771eXnQ5sT5jzbGTilxVLymN386qaxipZhtPm3hhecWWQzLKe0oDerzlF93XsM/1Sn2gOr9dcfpUl4Yjs01VaC8vxXvqXlF+GDFfaKZNTGU/dv/YATzJ6+ZJ8crasZdnTe80LhTqUrY/JlVttdz6UV19ZPy9yE6VuydschpfnJKZfTN5Q4+DPbln/8a7PZ75ZYO3ywMe1GUlLuvt6J3eaT9uD1tj954VgQlP1vrEeh3WXXV19s55J2I0NF71htZrpGulmxk61d1fbZXWIDCj8XKJpS532/uw/lgFDy32/IXbtk91mrDqRnmq5J08xzeZ5cdsCkKy2+51pK4f4c5eyJ1dP6G/b+T507hkzMgXxHAelhwDc8WiMB/MEjP/nlf/QMqjI55I7Uk4Z5Pl72J0x/vde5o4l5TT9Mm5w+RGDaA6FTgUTE+x/7cGfWC/hb0WdtaRoMSLnOClp4dobsEomnMhnUnHUTRn8fdo7i+uzyUT86nCK/AkZpGJGWTi5pFG0qGRicmk6dfb4UBiwr8Ks/zCfZfCmgWHekfG+UYs1QnihpJmIxfASX05PQVZbAbmjwVi3lgI5oVFoDHlYMwXi4N71I8AvNH4cij8o14WoKMg+7NALLAvpST7nluctE77NW6g0g5mpsh93y05Fpkr2uJYm+r8vXS0pvbXR14KTR46bvqU0TL5hG3prtfBN31PKBmUZM33X7VpxTob51nXWFuWt0lPl3k9xWKdy8XyT4sfTuXTGbfjicnYkstHZGMyjB90+Z2xMomNV37NXrF7Ezd5w5tWNdxm/Km1wjXFpXTWjt6ggSCdbQXjTccv9rD3lRcIDpubnfko+c3J9Nc2mncGJ1+sNXgRpnrocZl678Xbr4myHI2sbAfChNnHn9YhX68n9eBlo/Z5z7xf7Y0ZpxmnTh889Pjw9ZviqTOtPYz0lqhLr6x4o95/R2uSQnD24TlpQWHhe6q49WZ03t1gvMbUJFO2QwDzZKXD2/vpK2XCxVdY74l+bDbef1f9fBeflHpZ34lZKXdvvO7vkyjcrn7/XEnWxefzfc0fevLtXDOVN4b3Em9FlLzYcW/vIy9vnR7Lc/yueROh8fyOv25P1rvCeZnXsI5Cm9o5r7NKBKbbCeckyF/ExjVW7CgxtY6RMzjdVlSUHx+vNGC3TX7/R1vlhLd5/ScWV03PevAsKla6p9swJ05q+ueOSuWgqCdlA4PrnjETuoMnlw2SvTwzNt69GxXqu9nkUq67o9OJhNlKhbEieorxL8wZFaYf954tnl9XmLpj9hJ3RzvrkxZndkR7MhLsFn+Ky6+rDQ1ddMZlKVsw3vkcJ4mnnEziOYADQCZu+28T18+HA79NjRQkNlDg88WJBWgc1uh5F1iKb3tMDkGOPitOKn/7Ig8HQludYMPYK9hzvyh3tYrNEuLTKxPKHpB+o77C4riTbgXjEzQwB9SxImEXo6ZuAmB3UsDcYEejOl0gPO4Nc0FYXKFagsqf9my3uIjwwEjviKA4hR+4mScJYKwMpx6/3Z2Xqlsm2c8gQ2rP8x94UE3ndZ1xW2L6mO3pYiey4xL9XscflD1KLwg8MDCbGaFOpth3HgnszXfmj8stPHhRcOr+hyYBby1vLiiVbj03cW24RbGZJzBdsTpx17VKD6H2jF+uvOp8KWw2+TdiwD9Uk8c9mjdXyfjD5qPBuu9qM2Z9mrH/qKtkae327mWcED6Xoc02oh4peR4s2823TiuazzuscOEDYagle6xChP/K2SLRoLDO2+cjphXzNUWn1u94LlMRHLMvcGHp5ZfG4feXN21bpJR5oVSTERC6g5yW63VswCvzbJ+o9t3X4ittdLrtjSvTt2ovs0p9czBwxfLKszZ0kyWFSbgGlCcq32zEy0nCxeEhEeSaG/9rgfjP59lG+eR8Umq0SzK/zRcCePORM3SOEBo41if19TgGJKk/9w8e6XY75aFmqglnzqzt+VHX5RfubNok9kPIRPmK/NbW95Psp30wm3TSyD1kQ0fc+PoCa4lT68OCxftkfbolPpo77ItdYVrdHpXomvzbtDNv30j7elq9Ksv13BUZNavQL3nHjXVXJjlWiuxs2uxmZNdeerZmyp6IMa/NloH817bBMTusc5Yl2X4cFxp++3jM3uJFXRmGh9+NOfRI4Xn7J4HKskxZZZHsS485AtIbY7kqIb0Vtzowp0udS9WVdw1qcp7UPDXI4S791IVfaU55+Hxin0IMu7+y4ezFVNz+bJRNecfewAVOVYzTi9rHDDXW3Duw5PCKBXPnrvXihukIy+2KaGUoeZ1pCku+I7n9kNOtjqaHed2r5S5JhvYLPY1P2eJjf+Sd8yxogP8DnbVbPw0KZW5kc3RyZWFtDQplbmRvYmoNCjQ2IDAgb2JqDQpbIDIyNiAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMjUwIDMwNiAyNTIgMCA1MDcgNTA3IDUwNyA1MDcgNTA3IDUwNyA1MDcgNTA3IDUwNyA1MDcgMjY4IDAgMCAwIDAgMCAwIDU3OSAwIDAgMCAwIDAgMCAwIDI1MiAwIDAgNDIwIDAgMCAwIDUxNyAwIDU0MyA0NTkgNDg3IDAgMCAwIDAgMCAwIDAgMCAzMDcgMCAwIDAgNDc5IDUyNSA0MjMgNTI1IDQ5OCAzMDUgNDcxIDUyNSAyMzAgMCAwIDIzMCA3OTkgNTI1IDUyNyA1MjUgNTI1IDM0OSAzOTEgMzM1IDUyNSA0NTIgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCA0ODggMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgNDk4IDQ5OF0gDQplbmRvYmoNCjQ3IDAgb2JqDQo8PC9GaWx0ZXIvRmxhdGVEZWNvZGUvTGVuZ3RoIDg5NTcwL0xlbmd0aDEgMTg4NjI0Pj4NCnN0cmVhbQ0KeJzsewdYlFca7jnzT4OZgRlgaAPMwFAdFAWkKMpQLYiCMAoqCoI1sYsao4mJqRjTm6kmm7YxMcOoEVNNYnrdbMpuqtlk000vGw1w3/N/c2zr5sm2m7v34cA773u+U/5zvlP+jzhhnDFmx4eW1VU2jBvTveijyUzzWAJjiTuryisbc7l2BGPPLmXM+nJV+YQK/zOl7zK27yvG9BvGVFZVf/TYdwrTPJzNmPLFmLpJDQs6Rp7J2FuVjF9nHtPgK1eUrJ+YZk0dY9VvTGrIyf3p7XtfZ4z/CU9tbV/UtvSuzrrrGctch/bR7atWuvzX7nuZsaZ9jOkS5i6dt+iHH2rNjHkuZywkfl7biqUsgbnx/P1ob5138ilzTVtTVjLWgnzB3Plz2jp+7Dn3IfQ/A+UF82Gw3G0oQh7tWer8RSvXPHVj9GbGNLCll580Z/nin5u/eZqxwFY4YP/JS9rbss5Kuoaxy8cyljRlUduapcmjUr9B+x60dy1uWzQn4e5lZzC2ewNjltFLl6xY2e9g52A8e0X50uVzlv54qB395fvxuCgmfKvbyxKffCJvVnjJ9yzOyES6/7N1zwl+bRfbcehg76aQzw33IhvCNIwS2ulZH+P7QrceOnhwa8jnak9HJeVHYQkfxFqZjk3A2mmYleWwOYzZLsVzNShVtB5+MUqNui26PHSZRKy8xM7RMCPThOs0Go1W0Wj3M02/l93VT89lrLbB5WJexvr6aQyGGzTpLsZvVJ+7WxcmZorew46Mhr8I790k1uW/l5SP2V1H87+TNNp/vQ+l5cRt9a//++OSSZtypC9t07H9KnezMScc14cs/D/1/IE0kH5tUl5lM/7ZNtp8tkWZzab9yrqtxzzvEGuR+KV2mmUs7Z8d1//NpOxjw39NPeErqflr7Oz/xLPRz5YT2fUdbMvRz/u7sRT9ujU7XD/Yl1hDzTPH9qsks/pf04dmO0v+Z5757ySM8/JfW1e5nqX8N8fy30iaxhPYpgT5V898IA2kgTSQBtKvSZpreeivrcv72SC1TSq7X6NjV/33RnUkaVawqn+57cp/Lh74tUkZzjb9N/r9LRL+Tj4pyJN/43GMBbYDy4F5wFBgjhgf0C7G91uPcSANpIE0kAbSQBpIA2kgDaSBNJAG0kAaSANpIA2kgTSQBtL/N0kJIoG+e8YHIcfVvJaLb5gNYi6mZeJfUCwshQ1hI1gZq2LjWC2rY42shS1gq9hWdjfbyZ5mn7is/f1qrxa0ymZDg3UnoO5k1G1lJx+u+7Fal/d/T8Pof6z/9f4PIQwYTqpqadc8zkf3+1jh+7OD375Lx2iGBMddEsRo9H3cjJTxylWKT1muNCmfKweUL5Qvla+Ur5VvlG+V75TvlaloU8mmsZmsgx/gGh7OrTyeJ/FMXsen8Ra+hHfyVXw9P59v4hfwi/k1fBffy/T8c7X3r4//JiDymuD3BjXslxM/Mr4TLIQ6YvCJx3x00gY5Icg56qeYlUiirjq7v3vCGeogTjBn1X7ief+jlHTCCbq48x+2+MXEv/nX2gWT8m+1/rvkHdMxa2bLjOnTmpt8jQ2T6+smTaydUDN+3Ngx1VWVFeVl3tLRo0pGjiguKiwYnjNkcHZmelqqO8UZG2WzhltMoSFGg16nVTScZVe5q1td/vRWvzbdPXbsYJF3t8HQdpSh1e+CqfrYOn5Xq1rNdWxNL2rOPa6ml2p6D9fkVlcJKxmc7apyu/zPV7pdPXxafRP05kp3s8t/QNW1qtamqxkLMsnJaOGqip1f6fLzVleVv3rV/K6q1kr0120KrXBXzAkdnM26Q02QJih/pntpN88czVWhyawa0a1hRot4rF9Jq2rr8NfVN1VVOpKTm1Ubq1D78usr/Aa1L9cCMWa2ydWdvbfrgh4rm93qMXe4O9pmNPmVNjTqUqq6us712zz+LHelP2vtB7GY8hx/truyyu9xo7OayYcfwP26NKvb1fU9w+DdBz4/1tIWtOjTrN8zIcUUD7sJ5VIzjA0jxPySk8VYNvV42Wxk/BvqmyjvYrMdAebN8TT7Na2iZK8ssftEyQZZcrh5qztZLFVVa/B31fxY/4bZrsHZ8L76m4ZflLv8Snrr7Pb5gtvmdLkrK8lvjU1+byWEty0416ruoTmo39aKSSwQbqhv8ue4l/qj3OVUAQaXWIMFDU1qk2Azf1SFn7W2B1v5c6oqxbhcVV2tlTRA0Ze7vmkPy+vf353vcuzIY/msWYzDH12BRUmv6mrqmOt3tjo6sD/nupocyX5vM9zX7G6a0yxWyW31Z+3H45LVJ6qtMLfjasvKYuaGNKOrSeNQmsVqweCqxoe7vAQFViyXmhUrWl7iauIOJqvhKcEaQh3TDzJKWsVYUaSIphVjHcnNyZR+YUiO4Jh0aX7jUX1ZYTg8JnrOPxwa1RYDynJVzak8aoDHdKoLDjDY24nHqRG+CD4YLYxiOcfKIiUNJxc2DbpRTWIVY11+Vudqcs9xN7uxh7x1TWJuwtfq+tY0uGvqpzWpqx3cJY3H5Ki8iHJ+loximdFUYA9WexxyWdX8GDV/ODv2uOJxstjVZXTXNHSJzt3BDpkLJwiT1qePa9tUFJGPo1mN281d3eZ2WV3VXW09/Rtmd3V7vV1Lq1rnjxB9uMd1dLkbmkoc6lgnN613rBWPimA1vKaxfHA27p7ybjc/r77by89rmNa0x8qY67zGpoCGaypay5u7U1HWtMeFy121aoRVGEXGJTKip8nIGNX6jj1exjaopVrVoObbezhTbUZp46y9R0M2q7RpYNOSzavaRMIixc6Hi3HdVrk6xPKsa57f1dosDheLxlLil/u5ezTza9yju7lGb/aHuueU+03ucmEvFfZSsuuF3YCNwaM5nCPupK5WN+4pbKgm5uC0FRXRpaunv7+xKfl5x4HmZGy1GcC0Jn+IB3e/Lm086o0RaIV5jH9De5sYB/M1ibaGtHHtzdi2skNUGecPQQ8hwR5Qo1ptI7YjGrVjbbCAavsNyPg3NPubPeKhTQua1e1s9bOx7hFYdupTly4elNPcFeHOVc8mjkJo2rmCQjA21tBEFgeyeFgzOclgxsjb3Shqb3XB21rW3oCtTndpqIMsc3AlatPnqAh1BAuZmJaSZrKE+kOGoEP8Cm0aIo6kLs3Q3EyDV3PnBivg2Va/CSNKP8qVwQbwDorGibHg91wMVVR9RHRT38Mmu9fgZhGDVnsyoNhvSRvXhsuf2ptgcRfJxkZxR5iCfewjq0HM3Ay/K2mNPf23u09JPioNznaLl4PYmMyxBxubNXcdb/BP9wzONh5vtajmri6j5cQNyF9Gy2EWRlcV3hqMBUIUV4/mrJ0hsXw8xEYpzpTiDCk2SHG6FKdJsV6KdVKcKsVaKU6RYo0Uq6VYJUWnFCulWCHFMimWSrFEisVSLJLiZClOkmKhFAukmC/FPCnmSjFHig4p2qWYLUWbFK1SzJJiphQtUsyQYroU06RolqJJiqlSTJHCJ0WjFA1STJaiXoo6KSZJMVGKWikmSFEjxXgpxkkxVooxUlRLUSVFpRQVUpRLUSaFV4pSKUZLMUqKEilGSjFCimIpiqQolKJAiuFS5EuRJ0WuFMOkGCpFjhRDpBgsRbYUHikGSZElRaYUGVKkS5EmRaoUbilSpEiWwiWFU4okKRKlSJDCIUW8FHFSxEoRI0W0FHYpoqSIlCJCCpsUVinCpQiTwiKFWQqTFKFShEhhlMIghV4KnRRaKRQpNFJwKVhQ8H4p+qToleJnKQ5JcVCKn6T4mxQ/SvGDFN9L8Z0U30rxjRRfS/GVFF9K8YUUB6T4XIrPpPhUik+k+FiKj6T4UIq/SvGBFO9L8Rcp3pNivxTvSvGOFG9L8ZYUb0rxhhR/luJPUrwuxWtSvCrFK1L8UYqXpfiDFC9J8aIUL0jxvBTPSfGsFM9I8bQUT0nxpBRPSPG4FPukeEyKR6V4RIq9UjwsxUNSPCjFA1LcL8V9UuyRokeK3VLcK8UuKXZKsUOKgBTdUviluEeK7VLcLcVdUmyT4k4pfi/FHVLcLsVtUtwqxS1S/E6Km6W4SYqtUtwoxQ1SXC/FdVJcK8U1UmyR4moprpLiSimukOJyKS6T4lIpLpHiYikukuJCKTZLcYEUm6TokuJ8Kc6T4lwpzpHibClk2MNl2MNl2MNl2MNl2MNl2MNl2MNl2MNl2MNl2MNl2MNl2MNl2MNl2MNl2MNl2MNl2MNl2MOXSyHjHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7jHy7DHi7DHi7DHi6jHS6jHS6jHS6jHS6jHS6jHS6jHS6jHS6jHV6xQwhEzYGk0U7EzIEkO+hMyp0RSBoB2kC504lOCySZQespt47oVKK1RKcEEstAawKJFaDVRKuIOqlsJeVWEC0n47JAYjloKdESosVUZRHRyUQnBRKqQAuJFhDNJ5pHNDeQUAmaQ7kOonai2URtRK1Es4hmUrsWys0gmk40jaiZqIloKtEUIh9RI1ED0WSieqI6oklEE4lqiSYQ1RCNDzjGgcYRjQ04xoPGEFUHHDWgqoBjAqiSqIKonMrKqJ2XqJTajSYaRVRCNUcSjaDmxURFRIVEBUTDqbN8ojzqJZdoGNFQ6iyHaAi1G0yUTeQhGkSURZRJlEFdpxOlUZ+pRG6iFOo6mchF7ZxESUSJRAlEDqL4QPxEUBxRbCB+EiiGKJqMdqIoMkYSRRDZqMxKFE7GMCILkZnKTEShRCFUZiQyEOkDcXUgXSCuHqQlUsiooRwnYirxfqI+tQrvpdzPRIeIDlLZT5T7G9GPRD8QfR+IbQR9F4htAH1LuW+Ivib6isq+pNwXRAeIPqeyz4g+JeMnRB8TfUT0IVX5K+U+oNz7lPsL0XtE+6nsXaJ3yPg20VtEbxK9QVX+TLk/Eb0eiJkKei0QMwX0KtErZPwj0ctEfyB6iaq8SPQCGZ8neo7oWaJnqMrTRE+R8UmiJ4geJ9pH9BjVfJRyjxDtJXqYyh4iepCMDxDdT3Qf0R6iHqq5m3L3Eu0i2km0IxBdCgoEoqeDuon8RPcQbSe6m+guom1EdwaicV/z31MvdxDdTmW3Ed1KdAvR74huJrqJaCvRjdTZDdTL9UTXUdm1RNcQbSG6mhpcRbkria4gupzKLqNeLiW6hMouJrqI6EKizUQXUM1NlOsiOp/oPKJzic4J2NtAZwfss0FnEW0M2OeCziQ6I2D3gTYE7LiM+ekBewHoNKL11HwdtTuVaG3A3gE6hZqvIVpNtIqok2gl0Qrqejk1X0a0NGBvBy2hzhZTzUVEJxOdRLSQaAG1m080j0Y2l5rPIeqgmu1Es4naiFqJZhHNpEm30MhmEE2nSU+jrpvpQU1EU2m4U+hBPuqlkaiBaDJRfSDKC6oLRIknTApEie09MRC1EVQbiBoMmkBVaojGB6IQF/BxlBtLNIaM1YGo00BVgahzQZWBqNNBFYGoDaDyQEQ1qIzIS1RKNDoQgfc7H0W5koCtGTSSaETAJrZGMVFRwDYGVBiwNYEKArZpoOFUlk+UF7Blg3Kp5rCATUxsaMAmzmYO0RBqPpiekE3koc4GEWVRZ5lEGUTpRGkBm/BSKpGb+kyhPpOpMxf14iRKonaJRAlEDqJ4oriAtQUUG7DOBMUErLNA0UR2oiiiSKIIamCjBlYyhhOFEVmIzFTTRDVDyRhCZCQyEOmppo5qasmoEGmIOBHz9ofPdgr0hbc7e8M7nD9DHwIOAj/B9jfYfgR+AL4HvoP9W+AblH2N/FfAl8AXwAHYPwc+Q9mnyH8CfAx8BHwYNs/517D5zg+A94G/AO/Bth/8LvAO8Dbyb4HfBN4A/gz8yXKS83XLMOdr4FctJztfsaQ7/wi8DP0Hi8f5EvAi8ALKn4ftOcsi57PQz0A/Df2UZaHzScsC5xOW+c7HLfOc+9D2MfT3KPAI4O3fi8+HgYeAB83LnA+YlzvvN69w3mde6dwD9AC7Yb8X2IWynSjbAVsA6Ab8wD2mU5zbTWudd5vWOe8yrXduM53mvBP4PXAHcDtwG3CrabDzFvDvgJvR5ibwVtNJzhuhb4C+HrgO+lr0dQ362oK+robtKuBK4ArgcuAy4FK0uwT9XRw60XlR6CTnhaHznJtDb3VeEHq782wlzXmWUuTcyIucZ/o2+M7YtsF3um+977Rt632m9dy03rG+Zv2p67etf3O9N0Ifus631nfqtrW+U3yrfWu2rfbdpzmHzdWc7S3xrdrW6dN2RnWu7FS+6+TbOnllJx/ayTWs09rp6lTMK33LfSu2Lfex5XXLNyz3L9eO9C/fv1zDlvPQnv69O5Y7kqrB3nXLLdbqZb4lvqXblvgWz13kW4gBLiia55u/bZ5vblGHb862Dl970WxfW1Grb1ZRi2/mthbfjKJpvunbpvmai5p8U1F/SlGjz7et0ddQVO+bvK3eN6loom8i7LVFNb4J22p844vG+sZtG+sbU1Ttq8LkWYI1wZWgWMUAJiZgJMzBy4c6vI79jq8cWubwO/Y6lIjweGe8Jis8jldMiuNL4k6PuyhOCY99MVbjjc3Krg6PeTHm3ZgvY7SR3pisIdUs2hrtilbsYm7RtY3VKpdWEg8brs61NtqdXh1u5+F2p11T5bRzZttv+8qm2B+2vmjVhIfz8PD+cI03HNXDw5xhGvHRH6Z4w4YVVodbnBaN+Oi3KNFeCyyixwxzXWN1uMlp0vhKTZNMGq+ptKLaaxo8tJop3MU541aQYkTdndzurFYe5OJrRzrG+cWs0VPTY2STa/zGuul+fp4/rUF8euun+fXn+Zlv2vSmbs4vbO7mmopGf5T4B1s1f/bmzSyxvMaf2NAUULZuTSxvrvFvENrrVXW/0AxVmj0zV3Su8HhWzsTHzBUrPeovcrxT5DzCKH5XrERe/HSqeeb5xUTVQLNWIK2UxpW/3Or/9cR/6wH876duJr5oUNavOYt1aDYCZwJnABuA04HTgPXAOuBUYC1wCrAGWA2sAjqBlcAKYBmwFFgCLAYWAScDJwELgQXAfGAeMBeYA3QA7cBsoA1oBWYBM4EWYAYwHZgGNANNwFRgCuADGoEGYDJQD9QBk4CJQC0wAagBxgPjgLHAGKAaqAIqgQqgHCgDvEApMBoYBZQAI4ERQDFQBBQCBcBwIB/IA3KBYcBQIAcYAgwGsgEPMAjIAjKBDCAdSANSATeQAiQDLsAJJAGJQALgAOKBOCAWiAGiATsQBUQCEYANsALhQBhgAcyACQgFQgAjYAD0gA7QlvXjUwE0AAcY6+Cw8T6gF/gZOAQcBH4C/gb8CPwAfA98B3wLfAN8DXwFfAl8Ib4fCnwOfAZ8CnwCfAx8BHwI/BX4AHgf+AvwHrAfeBd4B3gbeAt4E3gD+DPwJ+B14DXgVeAV4I/Ay8AfgJeAF4EXgOeB54BngWeAp4GngCeBJ4DHgX3AY8CjwCPAXuBh4CHgQeAB4H7gPmAP0APsBu4FdgE7gR1AAOgG/MA9wHbgbuAuYBtwJ/B74A7gduA24FbgFuB3wM3ATcBW4EbgBuB64DrgWuAaYAtwNXAVcCVwBXA5cBlwKXAJcDFwEXAhsBm4ANgEdAHnA+cB5wLnAGezjrINHOef4/xznH+O889x/jnOP8f55zj/HOef4/xznH+O889x/jnOP8f55zj/HOef4/zz5QDuAI47gOMO4LgDOO4AjjuA4w7guAM47gCOO4DjDuC4AzjuAI47gOMO4LgDOO4AjjuA4w7g4hvGuAM47gCOO4DjDuC4AzjuAI47gOMO4LgDOO4AjjuA4w7gOP8c55/j/HOcfY6zz3H2Oc4+x9nnOPscZ5/j7HOcfY6z/1vfw//jqfm3HsD/eIqdNZMxww2M9V12zJeo69hCtoJtwM85bDO7jD3M3mSz2UaoLWwru439nvnZI+xp9vp/8pvbfafoFjGzspvpWSRj/Qf7D/TdBvTowo6yXIZcpNZ1xNJv7f/iONsXfZf1W/t69BEsVG1r0bwM67e8t/8g3q/I9xeIvOZc6HC1xdeGG/ru6bv9OB/Us2lsOpuh/t8PbZh/B5vPFsAzJ7GT2SK2WM0tRtk8fM5FbhZq4S5R9ZFaS9hSYDlbyTrZKvwshV4RzImyZWq+k63Gzxp2ClvLTmXr2Prg52rVsg4la9X8GuA0djpW5gx2pqokk2UjO4udjVU7l53Hzv/F3PmHVRfbxC7AOl/ILvqHevMxuYvxcwm7FPvhcnYFu5JdjX1xLbvuOOtVqv0adgO7EXtGlF0By42qEqUPsCfYLrad3cPuVX3ZDq+RR6Rf5qo+XAofrMMMNx41YvLf6sPeOg1zF3PrCs50DexnHtViVdCPouZG1KReaB1EL+uP88TFmAPpIzOi3BXq/I9Yj/bKL1mlP647yjPXqjmhjrf+I30lux4n8CZ8Cq8KdTM0qRtVfbT9hsN1t6r537Fb2K1Yi9tVJZkst0Hfzu7A2b6TbWN34eeIPloRb2d3qyvnZ90swHawnVjJe9lu1qPaf6nsRPYdQXvgsGUPu4/djx3yENuLm+ZR/EjLg7A9HLTuU22Uf5Q9hryoRbkn2JO4oZ5hz7Ln2IvsceReUD+fQu4l9jL7I3udW6D+wD7BZy97SfcBC2Nl+IP7Pvj5OjYTPzrcSiuUl3GLKMzAilktm8imP8AseN1HsxF81y57ZaVxsOEhvMo1zIVgwIg/1iu84VqNZXd8fKl793D9ZsU2rocP3llq2Iwwt7T3nd4XcnrfORBRnHOA57z93jvvWb9+wVack/feK+8NG8ptyTYVUWEagyFK704ZohmekV6Ql5c7WjM8P92dEqZRbfkFhaOVvNwkjRIlLaM1Is+Vl3+epkzq1WtOc5dOydMlxYdHWfQ6TUJsxOCSNGvD9LSSIYkGxaBXdEZDZmF5Ss3JVSlvGGyJ9ujECKMxIjHanmgz9L6pCzv4jS7sUIX25EOXK/qRM0pTlatDjRqtXt+TFBs3aGTyuCnhkVatKdJqizYaImzmzMoZvefYE0QfCXY79dVbC7e4+w9qT9NFsRSWzq7fw1L7P95ptvIJ7p6gSO/p/2qnCcIkRSiEN16oNKv4tKifZvXTm8nTRHG2idemutPTvjObzLEpie5QC4/WmpnZatbc437Y/aJbcZvd5ojEyRE+nY+VlpZGFBfn5LS02GKKbZC2POuBXFsePO5poVch83jSoqP1qsszlGQlTHGnpKcXFHLyc4zBrSRrO43cmuZ0pkWGaJf0frhQCY10JySmhXMjD2gtcRlJrkHxYdpT+bv80VHRjjCtYjCH8JF9T4dYQrS6MEe0NmAKMyqKMdy0ufdU8f+U3cWYsg67K5ut6o7PgEd2WHkt+Ksd4UG2qPzDDrPKH+8wCdbYvCEhka5IFwth8T3c6LVsSOd70/lL6Tw9XR8n/iOzpT4D1K1vZKUHSsVua1m2HBsuR3WD9T11yrnDhqaJ7ZOckj7cll+Ql4x52lWD7TiprNOGWoy9l8VkZcVo5hotRp0OH316HjBiatoQ6IkabrSEasdEOCKMzgztmRlOY4QjKsJhM/YtDLEmREbEWw19w4w2B+vvp3nrt+AvUfH/wRn4dxznTvij/yBvwl6xs7rdpTGTYu6JUVjQKyzoFRb0Cgt6hQW9wu7D36Ch/Xt323ltqHWyuug8x0MzHTa0JU0eFFvwpNh5kzEqOS42JcoYYk+OiUuOMsYbzQadzmA2at+QSq5SDUYVz8buYXYajj04HHtwOPbgcOzB4djFtyxZSPhkew/3BJeB5zwvh3OU34OjIT/XwJchvftisoxRKbFiSPwlsXlqohyRIfDqdjmsQzeF2BKCHtN7sINK2F1ea+vopaM1lqFDY3JyQofExsYHXRcfHGt8cKzxwbHGB8caLzZUUuowszk01iq8Fy4+UDE0FLVCY1ElVHiX9e/1xglXpxbUm2JjLDmxw4bonZn1Tp88ZKUROF55mOgrQcfjjFkPK1vxqJy8PHHqjloNNxcnDWeOu21HlkjceDh0PE8cP9U/eo8xyhkXkxxp1PTlKSZ7YpQ9Kcqk6RvDjVGuuFhXpCHbMd81NDU2hK/W8XNM8c70uEXhjkjzkUWdd+hyQ6hB0RpC9bjWthy23zYo1Ryf6fh5qnJb0qA4U0hkoh33FjyrPAnPJrAstqY7VR90pj7oTH3QmfqgM/VBZ+qFM2NsicKTicKTiVazhU9IdKEsUXwRhNnSenjoDr3e7O7hph32erNwXfCF8IrqrCPnU7wI3Mc6BvtEa8gfIsziraA86V1995rLQiKT48R+GRTP7YNqFyyakLVr5NSW7BuvnTivOlW5rO26xSV9Qw7P+M7MFENM6YxTpk5amB/W+1PmmHZGM9aaMOMCVsku8SZZh9gKjRh1oZhFoTqLQjGrQrEhCns0ebuzvMhmldqEK6BsQdfYgq6xBV1jC7rGJr4gkjDEihvr3qVe7vXGjIIHdiXXxwS3j3pPHSjmOcH5y12ESyt4ZNTLeYjydy6JjklSxH1lSFJiIqOjeX56Rnp60ENakz4qNSk+OcqkXW0fPLpx5ArprKwYHjmsLL5mxcQMd/mMYlf+4MyolWHGvt7KurjSvEvuqGwvd2L7GHHDWc18WP7UUnfvnw87cXuGU6dYiqYsqSibN2lEVJinZOKwvvdTE5WzJyyIMej7JiSPrMMJHdN/QGnXJbNx7KM9rAwvvXC8xsqCLioLuk5ls8qqq8p6NNleT643MopPyPXa8K7LTc01O2JFW4c4mg6rVXygiUMsh+M+zTBxPnc41Btx7464IEcR3xtu4xOYecj9PIMVslCe7jXZXIW80Gsy8wk28a8ToUIV2gpt0SV4cewqc+iyGqJ7eFa3boq4u7AEB2zi3eHxtFgPWMVWFStzeH1EgbzcOK2NVsYkFLwM0Qfzentw7UQ0Y49K0ivtFatvailbMnVkjEkLd4fl1S0bX9RSkZo7ecHi+ZPzRi64pNEztbYkUq/VKHqTwZRT2TKioC4/Prdh4eKFDXn8pOkXtudGu1Ji05yIYgwpme6kwrq8wokjh+WNblw2qf70KYPD45yRJltsZERCZEiCOzFxaHlawcSS3LxRDcuwRuE4669j56ewObtjvXBvrE14bad4z/zqgy+uSFv/3l1i5+sjenjmjsTg2c7Fi+hr1TmPe6z7pIeSj+zhZBnBqS+B19UX6uXy7QQVfOEqZ6mv232RCTbjoRsOb8TZRltCZCSFXOIcz8COK1WeYXnMy/xeV3i5szynXDGFxOSbMd58sX3yxabJt4rtlN/Df/SGsYyMcMbNTJx1NiK4G0eIqVmCbCJWt++IHo3RG2WLeZzlW/M1I/fmc5bP8/OHlA3q4Q5v+EspPCVFm/jpkPGj3jLXalmOjEEO2NRIZGbLgeAZ3+eZ2VIcjEdycchn4s0gYrD09OHDKRZT3ZI3PJ+2S9CiVV8JBtpA0Xm5BYVKqTXBEe8MG3lJ/ZgV9YNHr7xjwbroYROLR7WNG2Y2mkO0Bkf5lLn5bec1pt+yubKj3NlcV7ZkVKzZjHvYPK20Oq16btmEpePTqvPrhjsS3YlGa1x4XGK8OzEy23da476YwaVZ1Q3llfDuFnj3Vd0yNoiNYmfvQpARmlwQ3AoFwa1REPSXyKv+Kujhf/M67J4IVPK4UMMj/O8Rt6lHeNzTown1hjB7aMHwZK1uaA/X3Zs+3lFtnVAM2a2rFSdQXI8xxfIV4TnisxYub0b738U4NopeDUH3GWzR0epL49W89otbPOOqqzMQpdmjEiL0hkhXbJwrwphZM3Zs5uxNUzO32/OneF2jvVUZlesqRjcVxvGPOu8/q9qWPiJrMbaeVoutpytSb0d89P41q8htnbjR31l1ZseoiEHluX1bGqaWtJ+K0zUNHnMpT7Ph7PzuBPVWonhufzCO+3inCCpOEP5+cWzY2/8phcMak9eSE8bD4j5yekMtY52pPVyzM3K88tkwcWZDLGOHZfdwfXcI3Nb7iueA+sFzWshv+w4Hvvqj/m7CnaSnKwmKbiz1ryuXRmeIK6lpymm7cs7wsmVbmj31lcNjQ/SaCEt4RolvxOrTk70tJcVTSj1mEVrcbIuzWeLSEiO8p+7oPPvhtSOt8SmxYZGxERnO5Mzk3dunbmzypHrcxkj1nLbCL9fpFuHvomK2yessHclNjmJxOotF3FUsbvhisTuKxWYpvp//hBg5h7yWE3RWTtBZOcETmxN0Vo7YUKGRydWm4gyHNmyQ+BpJ7Hgcde2OsFrdBHEpqdupVL5rg7tK3U+Hg7OjjyBesYd3lZKeHry7VU8VKtcZbAlR4o+/MVumt18wNTN39iWzJm30GqKcYk+F3FaxvrIUOwg7qix5lLc6I05uoNW1U2o3ds9eef9ZY6oqNCaDRVxpFkNvFfbO7HXeyjPnYC9VDBPeaoG3tuBW87B8tt07KKegtGBJgfJ/2PsS+KaOq9+Ze7VLlq4kS7IkW7ryIsubLO/YBluAwXgDG2IwFBuELRuBbQlZZg2NQ5p8EJIXN0mbhrYJTdvk4/vSZmkAh7Svztd0SVvy8to0Tdo0pUvakNYpodnaFOudmXslyyxp2q/v/X7v97MGzp07d7b/mTNn5pw7loxkNhl5YIHR6Com62Ex4VYxYWMx1W8gC3852VT0pSKmCJh0ksy2SokofBJRxui9ml4FBSch/HO5ir87IZmUMNMS/LwESySZpa+4WzPe2KqNaBmt8o1MKmC9qfaVMCl/USQIGyRT2wODcLlSxMo0X/gYU341ZaicvTffeulxx8pIl3+gpVQjV8tYhpWrq9fv8ocfitYt3nW8f8entpY8yO7bs2RzQzbDMPmutr3rvSabSa61GtKMOo3ammFs2D+1P/bkjSuaxj7bYzx0t7c9WEOsLspB6X7GjR3U6ppBh9HV0i/iCmqN5cX/ytwi3Qu2xcDjZo5MWDpR7aKWsye0m11Uf3ZR+OzkgK2vEOz05/0GDjYeeaqZ6mabe8a3im/nVtGdXnkjcKvomYq3hDlZ8Uxy2yBsC0wCn2SpOz1YFhKrAeWbhLlFIlXI5CZHgT2vktc+q1ArpQbdswpQZWAQKG7gOKKabshZNdKasyxXo2ClOqNFK1WqlRkVXXXb5HqbMZf/2x8UaqLD1ArWxOcabXp5b9+/rS9I02mMdvLtJFWzd7FH2O+hBrQabUHP+02GkmYyK5sVALmZ54y4vbmicSr+PmFBozgf4XruFHnUKF8DUX+azoDb19glOh9bIZcTaeMov6b9aRApqZDb7fKKEgnhsb+SMLmHNNHDc1CspzDPr4Zrns4nZxe1/kyz7nWTaesi9vziVYX8spcXtX7sZX6NaOY30hV25kVhqSiqOEuYa4HdGdmf6SGRO1sE/4oShHAdeGw2C0uHO18G+s9sEXfTCRmtgeW4sppSQRPAhhtXupPLbwNjhA13vpYV79gjRt2NOZnlvROra/rtBsvS6j8sj6z1Vu58cNfIvduKOVcZX1ZanufMrdx8Y3tBsxNzev3sbLDX11xqCX6sbFWpZd2WrvN8QYbyE7vbgg12NpbjzN1QunrvuuIss8HryPEyKsa1ZGN9Q6S7LM+/sdLVsKjCam0vXrLVnde7rGP/dSVKhWv2rc1D/KIWz8ZBZ82qS311jYzCWlLgMS1dnuVrIPJ9L+z6jsNKXo72PdFYiQuNovwaE4JtFAXbKEq8kSzjFoeaqGc10TBqomvUVM2oyTMV8hOXBFiRYOTITpe05q60tlN1S40bXCo6JITFu3a+W4KuPnL9lWt4dbWgdY8rDMIaneFt8TVc3wS31PBNLN3Nky2bDrS7rAl5ZnQdfU25Pd2XjiZSUtfrtpYlg0cCRLPeHP8r7pKWIhNyodtON+asyQnnsGZx72cWeUDvjfRKhdcsSrpZZJr5KWYX2Mqma7lDRJaagE2nVE4/lCRHTZ+wci2UPy/OFInaU1yJru6zMZJlmggjSCFuuJwBxuL6uiLyP8kC9hNyAbAc++oKC2rhvzjyuAFG3oT81M8Upn6mq/uVEj1H5M9KVdxK2l2xr1f3K13RL+uV/Bd7IX0eVrRO9IbfbuCI5BF5cnPEFMvPIDSyFq9MkcKkeJIRMIojYBQ3RlQ6HQ4zRB2OcsF3Q7041IFDhVQFmvl0J7EnOxuudCsK1V7hfnwKvw9ThMOyx9taYasl86ctbW1YWbKopaQ9KdxgARIFlNhN1IqWu7424YEjsk4Pi32YwF9rBpiEGWARNrMm6fPCRDAq0oubvLVjK4jCt7iMcnPxcm9tLDkvZIZMizmLk7ff0bJoY5OPK+lqa87dsLvFOTdDcmovmyFXpoDRpVayrFKt2NO9xla61FPWVGiEqdOe0CAwguXobr9OGEFCRGVy+SiJOuTy0SSmgUNNdnuCTiGaX1AxVLvA89OiWiFKxa8qaS205rYkWE90flKvJDxHIrc/gnIx/T3lkmTiPR1/R7nMYxQwaCvRLWTv/ypwyIjy0b/7MxsLsMeAC/TYnYbdGuxWYLccF7K4gMEOcUvrEBnmEPdoDnGP5hAZ5iBbM0epCqvSif2UTtiVTnaB6cS6Sic8Sz/DqIg35LQOdURgmKzkpLSuNQfsBNGYIvaAyLKEYQAsS3xwytqXaj4lNrzsq3VjX4mGvzxaXTv28Bhca75qb9ixpiXU5LI37lizakcTj18bffKWtmUffyIK11a4Xt9yaFtt5ZZDHa2HArWVfYeIJTl7N/sT4A2xJCeIJemqVolSohKlRJXQPioRvYouQSbBiKTmJPUJCfbkVa3IFm7NNa3IqxmRV5GRaxuRd/Z5mpb6c1OEJd1kN8gL2ju6SrbdSozICmpErsxv2r+8YWONDZ/f/fWbmrnsypzZhoQulJwHmWFZkJ59hQ0FpvZPPDK+4saBxcaC5WWzx9b1LB64nlpLwK3Pidy6xW8HdjnVRWTCFKk0CYOaKrkiYikVogpBbCpEcaoQtWSFKGYVIkMrqKVkymtRLylySjgvsZRsrYuIpcR1SNdcy1Kax7MqveDDTsiLperalpKSTDNnurygdVVLPmFRef8nt3hWrmguJC/O0jP18iuspdknEpzCZwtqc3QJi0mfV18wkmDd7DuCySSY32AyUe3EPET9QP1PRKqwWycKlU6ErksIl06UOh0RLgPywzKPyCKBiJQhG8hcnl9Z1OrWmfgWE9E6VN3j0mcSHsBUZggicg0hkjEPMTKlQmHJyjVZfVV1OZermbyldbVZaa7cLI2Exew2s0OvVCoV6d72mkuPXqlobqpuytexCpVKqbWTFbUrPsM8B4hb0HN+TWlbY9uathvaHmmTprhb3xXdrFQolhJnhPEyNyx1v+JX/E7B50q9rUTERJcrMXCIzrGfwe/SVyIq4jLT+CFdQzb0bqivUfOIhtF4f1Gj+oO+U79VH9Gzgmv158Sv2mp+XZiMSaeq6FLtBelKdanO7YT+UZcq81xF36HVvg0rfGaVhLhMixrXLypsKrfn+zu7u/z5BWsPrM1dVVdgkrMsK1fJlNnVLaWF/gKTx7+2e50/H2tXDMN4W6zpuU6jjZPbebshpzrPXelxZhc1rF9cFWgp1hhMnEZn5vRWTm62mo05vsz8Kg+fXbj4OjIWrvifmBHJV1Ad2vxEAdLnlIg8LxHHokQcixJxQpaIUllChFBjSSuZyVmVlTZjWVUGc/ExuaC2zxKxqxB9FWefERw5kqubh/ONSHPC+GZGFBxf4LWsHPBnfVxnIH7Vg4mN2u+Jp9Cg+31NsyU3M10hVUolH8vK5rRKWV7b2GpGK9iHL8o15KWnBiLUgpxV9W5RqpRSbQbBfTfx6rBfhz3BnX4n7ATU+USC8okE5ZPXKflUSeVzdMuF/3JKmGlOkStOkStwfZ/OTRIhbHEmJqtTlFHYPv/FrzSWtOSrpdYW2JhJ51w7ZH4m9FVSpK7q2pmzMqiKqq6Zc/J8Tm7IMlmy9LKOT9OlX54umNWW0lW+hgMr5OlOmLkGZXJHsKd79eKhI9uY7MTsvPT2mi3L83q6mfFECuFPNuyZDgB/itFvnkQ5cVjNyEbXqSA0z4kdQsSBzSJOk3hNn9v+0qsh+VYpfsFfQ15Jwa5Cj/M57JHibA8kLMnGudnYRaKNLpzrwjxN5XEuj/N1eLcLu4iLQqk3rXLxMGvh7nW/EkTRRfxJ5I6MhIvUr4GCLk+LS21rUQsKkLxcJh9U1Et3DkXCP0z2DwLfe8nRAnqSI/mKM2WJMFpqjOIRjgOYYZnZs5I0m8fh8Fi1ktnnJFKsMDotWTlGpWRWwn7AqIwuu8Whl7P3S5QqjfxvJ8hJAolCq2I3aAxKFgwcBojykk2jYX6n1ChYRqGm32rLnsY/ku4HS8eM7P405FffwP2SY7gJqXkVanzVdrYXl9qIGyB59iHf7Ra32xh/Vy5RW83pNqNWflLBaHMyM1xmTjH7rGRUzalkrFyjOq/Up8mhH+rZbVe2pvKbbpD+UspIJ7jLWiPIoUW5PHHMQo4dMs6SnZGZo2UUJxVpenu62aZm5bdLuwGpRJ6mV54H3KxMxalPk5akWsYguzelJenEGm4LIDN3ocYXd9nOXrulDrXJlmt1ZGulyt+o9GYQcptKopyUjaUBT5Vag+oFlVrOStWcehIxWBV/F78i7YOWCpD2pDTP3sGtBAn4xXNzHqsq1p20Ty87jvMNOTkOk2mQ67HClJNpzzEptEqrx+ksyFAqMwqcTo9ViccT6zt7RmPQSGUaveaDWleRXa22F7lcJVa12loCM6dw9lU8hs4hO1I9rrZkIu6Fs8JrUQGcl6kxJtsdk2kt+iPSNKPVqLeosORmdUauzZprUd/hrPSWWJ+Tq2DbALYxNk7YeU4m43giLU/F38O3s5+iu3X7Yyh9ijlwWuXIAVtDB+N3tvEsUb7lKcDF5vSXw76dYOQ9BKOHJxgvv2d5vpjgK+azS8i15JLHJSQAYBBiWwnRFfdAf0YBsRpZHiMv4qZPkRduShamIHSl6GkCP8UhMFrasNhL/o80l3pXwH9Sxwr8BONlliAd0j6B5OoZCSIv2kXPl0soS167MV6DfrbPAB/8gCJNKcV/yXc43W6HTG8j7zBmp/Ep6R7kBBngvmfVfVcG1ZTOlPmk9A19YumZW4SoJ+CU2mDRxLWwRVHLv/hF4RrXWAzqv6bbYVF16S06mfSZTF5v4cA4sxvJGBxlB5lj0vGEvNndzVwzyNvZVLazCcPkshSzibkJppHBkKGTWVTpLkuGK12JZ/9tXprPzd6S3FD+r0Rstmx+GsdBX3bCWvYNKY8q0Sp075OoFbY3Fh3TsbUVF4034sFGvLwRVzbi3EbcOMUs96drMjM1+6vwjircVoXrqnBRFa6CB6fACOOBicSiE47wvH4aqkE+DYYt019hB8V0aOriPp/UPYXR48aNTVPY9Jh0S+LsEnEV974AGrX3V9Q+M5BXhjQGTOktStkcSS7fDMkvs10SFtw3Kocf3NV1/eYleZzBu2bPg6N57f5irVzCYLlaqXZXd1T03tJdwNqWdqwvC01udH/VUr1pWV7rikabq7Gv0d/XkIW/2H3/vhZP6/CtX+pb9x/3HR1arNQZ1Gk6o9Zg4xRavbZ94sRmnSNDVxs8srVuy7LcNIvTcONXQyW+riDxK68F3p6RuhB5Id+MDz2JqskCrycvCyFCTltUTYkpVYmUykRKZSKFmjf6OTOnhb7shyFqwb5EHl9i65CaQt93+KYYq9+a7qGHOzx0YyLGyXEVzxST4bc5dDkOQEFMa0Ic6Q7VIppnEVk8TVm4YxEtKCaSgovOMMtha/zC18ggzw168jSC+P5vWvS3TdPXCsvIOqsidSzzQaXLEp1eluj0MrHTy4io6VVkw62qWiItuWTduOJSUlhqk4e+XhCW4XlHFODCpVi+RHqSf8KYqtRqvGxyFykcK2Erk28HLdXVRrhL+Lur2TOLdz24c+C+0TpP2+iKxZv9rrL+ewe33dFbTF4ONofb8l/KWrSuajhsr92wODhcmL1iqKlxyxLnzZ+YuAm3X3fTJm/h2r0dSwbXt2U7V3Rtrm7a01NR2jXaWNF3XQuf09q9hdlS2OSzbuvOX7641ln58UsPeNuWLnE5G5a1FAd27IR5ugpk6bsgS0ZUhN7wWy9zseQlXCwlxD7JI9JRglOcJ8RjmE72p+lk8NIzSOwpBhQw4oWtOS8KFy/a0Ly4SYXr60Qjw36KfKOiX6nikQ/5EUtPcCrJe0nVGhWD6C6LHioTBGKaznikQqqSYjv5I3jdOnImSjxqMqM3YGG0yBYKJnqqZ4sO2Yf4aSQp5raE/W7pyKM37n9osMg3/OjEAbg+qrUXLe7wde9YYnYsDa5a1L0E1iTm1k+9+1hgw4n3jt/9Hr0+HDi2u7vG2nnb14c/+YOJutzlfdGbQX19Fabt/VIL8qLX/Lm5DpybhXMzcY4d59pwrhW7M7Dbggso7w08R2YXeb9D2O3DiLAWFYi2ToHI0AJx118gMrRA3OwXkENkWkcGKZShJlStF+cRXOm80ovzKCV9WjxsBayHEsf1WG80TOHGr+WsLeCmsFw4hVjeeOkstTTJ5yx59ZY4mSJMBpz0gvWKhxQTR1P0cplMeAVUkyd6YvV0/3q/TJUmv7RZrlHLZMo0Bdb+lbxlY2VqJS6UaAwZBjATZG/AvkfaRGxJOWczGmx6JfvSp1SSNIdFn8FpZN9kJRIskatlH9yhhAUXuB0Fbn8OZLoB3e1PK6jGRQ5ckIXdDuyfSixDfmwmUmymmsdM2GQGMTxVkQcB1Yq8rj3D3IDUAnPU5P2amvhX9Ytqeb4WhM97qsIs867jaqewJ8EhwS4vFZQJKJCzyUOzlEe9+HLmkK38ZUdUZEndIaeHej4nVeqUl6q0Jp2cVek0H2wI1Royqzor6QEVuRpWHqkio37jzvq+23u95uZbwmeZCoVOLW0lJ5bknMOc7rBY0rBq8517txUVddRlZ3uyFQaHCQxwrSk3J6Nq8/4VDQfueCT6otJAfSFDoBPuBP71YOmTaBOwLJOwbBMuUwBTysjEL6N8KyN8K5tiqvyq1evcq1dngCXkJ5aQG7K4iSXkh1S3n9XaFVzC90FL2nn6slcQWTtw/iRSqMUTHWR+a0XR1IrSriUDZ4Rh0NaT9z/1flJJaT2moiuKsLAC1Ovr9ebqKaz2q1rWFf+Z56Ut5DCaOnkYrXSmlkueRwPVXSroe1HX0xee5PWDoXZOz4vKQkb3ikkPCtm7JQ4ZJVKuNogmWAHubIj9x86lu3rqdAoZq01TVq0LNy0baMouWrev4wCMlVym1ip3LQu15Nsqu6rqAu3lKhhYlpEpjHXdYf+mwx8r4Rs21S8Pd5bg6MY7BmtMWU6tNj3LlJvJ5/HZDd3lNT3+bJgeJqNVJ8/2b6zxtFQ7czw5Up3drLPotUYYZ+91481LQl21akZe1Ul0vw/s6R9L0+nvq3zgr8vzYncJzi/Gufk4143zMrHbjnOogsrLwHkW7DZjtwm707GbwzDEuVKcK8FFdky1lUHQViXmDIiYeU583ye85zt3mrwHzPR6uan43/xZkIMj048jEsERJwdHFhGOeDa4pxg97Gwkgq6SwAKQOGbhV5FzFhJfab7dSwdYUuTiOJVrraqb2tUw6ypmysvJGkCGUPT1kOPDZ+l1bgZe9sHzDwskpyae01VmnINd7I/TDXcmzgxfekPDpUkZmUoOdqvRUexwlTm4O/Wm2S8wsx/DD+GIyz17IeHgwJyMc2QYHVZLGmsg1poU7IS/fSeHOX+pjsy4IMy4T0u1oLGe9qfl1+D8avqCg6Ua65SgsGpErVRD/9iBHKklxwY9wHoPpHrIvPBo15SHy28oZ8uvfoj4DFMBm6vXxc3VNDnRgvzGKfK6g7yzNmbAxCn2a4rr3ubJOTxpcVfGvKnTO0OmTmkR5l4UZ8wzvS8Ik0dgLuHu3GyZ53AkW6CceX8uADaU+IKa/fTKiceGFw9fVw1GDUNMHVVhc2jV8kiXN7/r+vVLetyZGc4sZolCp5KmG2azclp84QfDtfj49gfCdXprhlajtxn0dr3CmmXjm4ZaG7Y0OjW2PEbn4pWgBHM9s5+SMlWBW+PxhF3CyNjv05Mq/TAHHgHOO9FPn0R60F0qvQu36zlOPHw8/1Dy6+I6+T6VxRh1G3FTiVIcKcWJpTixFH2sJp6pcY5MHJnolHIlRtaFUza2L9ENrUlckVPegb8u/snAuZNQxiTVT+GSr9m61MlDonRJpqNQJHqREs6kOT8S/aMUl2hm0qXlEVaqlM16pTpLri3brWdk+I1LdxmNUpVWyVzUmtQyyTOGLLtV+8FzGp2SlaUZ0yStnlwjrCsyQyZwU7REgJs/RMQCJfcPwsrhQ8vQN/zGAi8ulOICCS5gcaEbu1W4iagKnsBuguUkLbGSZO0vw7VlLWWhMraoDJeRI8xKpNXyKIIYwQwQzIEniMTWk3UDitaT/YqBFB+vx9X1K+sH69ncelw/xRT5taV5OM9/kefl1W8XrgMpVjwmX59iFFJzkB7p6xUtwvJUGaZSLLncbV6TeqhNPEqf3DNWsw+m+7oOnIgUdS0tTgdmqRVqz5K1FYGjPcVM1d1bh+/amF++40vRroOb/fn6R7KXbW1curk+07po07K225gz1z18/9Ht9WrOYHDazDatVGfQtX38wc1OX/3gbevWf3b3yoKOkVu/sHLikWFf6ZqBqvptTXklwl+bfkEIuPQfDP8J4fTfC8yHfzpTwqWPEtjdJEhcYvjzXJBuWgj/bJAprxkekHuvEr4tBMWgIqr4+PygxP/i8OaVQRWl4Q9/P6i9c0Gj0xxPDWnea4Rvp31b26f9qRB0n78ycNZ/Kpy4WtBv/b8W7kmGH+p/aMALYSH8fxJWXjXsgfBNw6/+8WCUfGio/QfCDf8vQnpJeolp3X8vmGXmb1h6M7qsZusPrD+2RW377RULYSEshIWwEBbCQlgIC2EhLISFsBAWwkJYCAthISyEhbAQFsJ/J9D3yhghyStAz7Lkmz2eQxI0EN+KJPhY/IdAp+M/QxK2G+mA9iAN0Gj8LZSJJPE3gPbF/4gyMRN/FSgX/y1QW/zXQB3xnwN1UspT6olPAz1I40dpnmPx14FOx59HmVDna8hB63TQOh20Tget00HrdNA6HbROB63TQet00DodtE4HrdNB63TQOhsAyw7UADnPAz0GWBrg6eOoARDp0QZoMQR0IP4e2gAtvgCUi/8EqA1a3wAt/hSok1KeUg9wYAO0SOJHaZ7J+Dmgx0g62x1ngPbMfgA0Gv8W2gRYXgM6AIg2QW2vAHVSylN6MP4i0On479Am4K0K9UF/3gI6EL+I+iD9POqDet5DA5C+FWhf/F2gA8D3Aegt+R56Lk6+Td4WJ99j74iTb5J3UspT2hkn32c/Hiffmr+b0oM0/QiNH6WlbqPxyTj5xvuTND4d/xIaACxeoBvi+4H2xKuARuNbMQOcfBvosfgM0On4q1gHKX8COhl/F+ix+HtApyHOQQ//BPQgUDJSb2IyOu9gB33qpClOmuKkKTxN4WkKT1M8UMNLQLn4j4Ha4j8A6oifBeqklKfUE/8j0M74M0APxn8C9CjNORl/Deg0SsMewHIIaE98L9Bo/FncCTX/DCgHWDqh5hmgDuhnJ9RMKE9pJzICPRi/CPQozXMs/ivcCZJjwZsoHzZRPmyifBinKeM0ZZym7KYpu2nKbppyEOh7+CD05+f4COXbEcq3I5RvRyjqo9CuCt8GPXwRKBf/NVBb/LdAHYDoNughoTylnTT9YPyXQI/S+GT8F0Cnoee3QSudQHvi5UCjwJ9JaHEG6LH4eaDTgOUYtPJ7oBylNkg/Bq28AdRJKU/pQeDwMaifPD0W/w0+BrU9jaeh7K+BkrLTUPaPQB2UOinlKfUgNVDSz2moZwboUZo+CXinYdaogE4jDZ6G3gaA9sR7gEbj/xu4LEF6oAPxA2w3tPsTmCESpAE6EB9iewDLS0A7kRnosfgLQKfjX2N7oOwdbJTIEtDp+Jug30qYbET+moJ8BihlqdbT0juWnmfSshIxzqJc1iDGJSl5pCiDrRbjspR0OdrNrhbjClQIT4S4EvHsM2JcxRxP5lej9exvxbgGFUrqxHga8xlJIo8WDcv+RvQy/ZTLt4txjOTyY2KcQXLFG2KcRQbFW2JckpJHijRKVozLUtLlqF6pE+MKZJKHxbgSccpWMa7Cncn8alSk3CTGNcikvFmMp+F2ZSKPFlWrfgc9wRKlyGchLvBZiAt8FuICn4W4JCWPwGchLktJF/gsxAU+C3GBz0Jc4LMQF/gsxAU+C3GBz0Jc4PMJxKNy5ENlqApiHfRb5qMojMbg/yCKQdpy+u38wnf0ByAlBLFR5IUnS9EwBB6thbQhtB2ejdG7IFyDkHs30AHIuRzKDUOebZAWghwhmi8A/0egrgGadxTuxiBtlD4TyoegBzz8D0C+ENSwD+72QCwGbfH0NwG2QXwY8vK0z+NQeoD+5sAQrSUs1hqDHCNimyQHDxjDtM0g/W0BgqWFYh2ElAD9zvsoRcHTa4CiJO0KOPrhSTGteYSmDNMaA8AjIT3RygjUM0w5FhF7OQopI7RVoU6CM5bSA9JihGJJ/CaCwG2h76SlMHCAp78GMES5EKLf/09+VyFG7wjiWHI8BJ4JrfC076MirjDl7Taac67HqYgI1/bScgLqnXDvpfKQOpr5tLYRWsM+yodxceRT+U1GTMAfpP0n+IVxiVJpIFehRTLWPNQRSaIR+jgk5hmDu/1i7TFAIYzQ7uQoBaiMBCB1ZB6uhDT3Q08CtP1+sX0vldghOlbkyZVzoO4K1OtFyQmJMlYFtdQAvbakx2ibA1QSSSs7k2OQ4M3V5t6QKNeRZG4iucKIj0L+IJWddsjRjzyUpwWQZ4DW10zLhmn9MQgRwFEKYQ8NXjqn5rfnFWsvhfg+KoFDtNcRqGEfpBKODVLERFLn15pIH6S/BBKl8pKobyPFIEjJPjq6Y7SHMSrHY3TeCaV5ioHMgSAdwRBtI0jHcBstm+DWCtQNuJeKZaMpT4T5M0B5Mjcn9oi/oLH9Gu0K9yRvP4zgOOXhQFLGBujzCJWQfSlyFaFIR0XJEuoKUkpmyuW4yXNhRnqgFBkpIg3bki1drVejV9T80Xk0V3tCK/KiXovRfvfP0y9XYk9ok8v7VZ/CAYJEwCJo2cQ6EU1q7AGqs0ap7gpcE6nA58A8ngozPixSAZUQH6eSN05LDtD5T9AEk/WQnMN01nzYCP2r5sXcnCilvSFzQND8XjpWEbT3BF/uK6viO0L90fBYeDDGLw9HI+FoIBYKj3r5pcPD/NrQ0PbYGL82OBaM7g4OeJcHhkPboiE+NMYH+JHwQDA6yo8FRsd4eB4a5AcDI6HhffyeUGw7Pza+LTYc5KPh8dGB0OjQGB+GrLHgCJQcHeD7w9HRYHTMy7fE+MFgIDYeDY7x0WBgmA/FoI3+sWJ+bCQAPegPRCBOioyMD8dCEahydHwkGIWcY8EYrWCMj0TD0G/Sbah9eDi8h98OHedDI5FAf4wPjfIxggN6BkX44dAotBUe5LeFhmjFQkOx4N4YFA7tDHp5EWb+GD8SGN3H948DeKHfse3QfnAPHw0AlmgIYEPBwAg/HiHNQI1DkDIW2g/ZY2EAtJtACvB7AtERoS3C5v7tgSh0LBj1rg0OjQ8HoskRqEs0vR6YA3D4Km9N1Tymx6KBgeBIILqTICC9mRu9IeB1hCT3hwH4aCg45m0f7/cExgr4gSDfHA2HY9tjsUhdaemePXu8I4lyXsheGtsXCQ9FA5Ht+0r7Y4Ph0diYmJXEBwPQ/E6Sb2N4HFiyjx8fC0Lj0CHymA/ACASjI6FYLDjAb9tHu7Wiu30pPI3SGxifgXFhJPZsD/VvTykL19Bo//D4ABQFjg2ExiLD0ADhVSQaggz9kCs4GvPyibbDozCQnlABHxzZRgrNVTWayHzVHtHsRBRhWMZi0VC/IC/J1omYJOqqpx3whKAVEFkyJ6JEsAfCe0aHw4HURqHPAaGnMPAAF3hMIuOxyHgM2L471B8kebYHhyOXAfooY0FHonQgOBgA4fcGxiJ7k3YTimegW9DVPhhywM4bGZE8Hkc68r0b1NpAYPsh9FvBv/QhHwn7jkaDIQ+j+aj509Jo/gsfNb9OR/KzL3zU/BxH8kumPmp+vZ7kl37uo+Y3GiE/XBGxviQ0P7E+KyjNRGnIgWygRwtRA+yomiBsoL8zRn5taCdo172YQTdjHZrEHPo8tqF/xw50EjvRNObRc8D1V8AqPo83oXdxL2ZxGHN4HGcRbwQ+iCvwEdyAj+I2fBvuwZO4H2z6UXwS7wc7/GZMvAMX8T1sK74PbO7/ZDdgsKjx/wRL+hn2Rvx99h78MvtH/Ct2Br/Jvok/YP/EKNgLjIl9i8lmLzKl7J+ZxezbTAv7DrMexqd/PkZm6O9g3AgYBwHjGGCcAIy3A8bPAMYHAeNjgPGbgPH7gPElwPg7wEj8Lxgw6gBjJmAsBIxVgNEPGNsAYw9gDAKiCGA8ABgPA8a7AON9gPHLgPFhwHgGMP4XYDwLGH8MGF8GjOcB41uAcZZ9k1EDxgzAmAcYywFjI2BsB4wbAeMgYBqbj1HysxSMFsCYBxirASNBuBYwhgDjHsB4M2C8CzB+ATB+BTB+HTB+DzD+FDD+BjBehNHCxEMFGJ2A0QsYFwPGNsDYBxh3AMbdgPFmwHg3YDwOGB8GjGcA43cA448A48uA8Rxg/BNgfJ/tYSRsFPDcyOjZe2C8/sgUsTNMLWBsBozdgLEfMO4CjDcAxtsB42cB4wnAeHo+RvknUzBaAaMHMNYBxhbA2AMYdwHGCcB4B2C8DzB+BTA+CRifBYw/AYyvAca3yK9ZA0Y9YHQBRh9g9APG1YCxD5DtAowHAeMRwPgZwPgQYPwaYPwmYDwLGF8GjK8BxhnA+A7bzUjZDYwWMNoAowsw5gPGOsC4HDCuBYwBwBgBjDcAxv8BGD8PGB8GjE8Bxu8DxpfnY1TtSMFoB4xFgLGBfr9zEyDbAHueTegIxO4FjCcA45OA8TuA8aeA8beAkXg1GcBoBIy5gLEKMK4AjOsBYxAw7qajdxCwHcFfhthJwPhtwPgjwPhLuHsTMH6AZxgFvshwbCvIYDdTABjLAWMjYFwJGNsB41bAGAKM+wDjEcB4L2A8ARifBIzPAsaXAeN5wPgX0H/K+RjTxlIwZgFGL2BcDhivA4xBwHgIMN4FGB8FjE8Dxh8BxnOA8SK2YYQd2AAYeQjlgLEJMK4HjEOAcR9gPAoYPw8YnwCM/wUYn4eUXwHGi3iSQfgYo8UnGQeeZooB43LA2AYY1wHGIGAMA8aDgPETgPFWwHg/YDwBGM8Axh8AxlcA4wz7FqtiL7J29s9sMfs2u4R9h3jh2C1k/VHI4R/HeTxN1x86pJBghezCxAT8m7iglmC1jPejxL0CY4VkQvyQnFIxfkGhwArVt771Zfjce69CSuo4fPgwKURu5PRm8vBhWvvWyQk/z01uVUiRQvY+L3xkUiyTX1DsPXx4Ly0BdR4mhWQSLJNGSBsRmq4gWSATzR85/P7ExF6lFCvlfti4z91xiTuFBCkkPv8FP/lABTLZ3snJrRORwxfEVh79HqlOAIZEYKkoZQosU5169gh8aJNCfrF1+JBeyeRCXylYmVzooEIhY7FMck6oBVDIIhPTPu6cXILkEqFDPloNyf2Z7TIpkkkPH+7s5HmGwUrJhJ9e/Km9QRMsSAPr90/IMJaxE2R9nAC9gNkJzCKJ5JyKgbzTfvEzzbIwQsePH6eMpr2l/YWbrccp098XnygUHO9P3kQUCjGbz9fZOfk+xwkjRYdZfLLIT8dHuHlfwXE8T/grtBNJPolQTnDn/iUipsQK9dMTT088AOFuCIchzEnXPyVqVFgmUmVNJsgafaBICht5sHXyAnkgwUoZCFvKHfQ+cYf+D3HnAt5kef/9+0nSnFtK5dACCgFETmIFJoxj1aqcLBUPf4abRkAwiKwcLedIK6IyxRPDwxSZQ6YOHdmcTpdV6CrIQcS2dpRZKARr9lgoI2nGOp7/576Tpi3iNfde73u9va9P8hzv3L/v93cfEkl0kGwXy7bmF7pIujk0aff/jXyTXeWdkgvyTfWAnIsnnPViCde6Pf8x41zynmTGqZRzxFMOK1pSjp2WlFNnmlMuvpNIOXZaUo6dlpRjpyXl5JlkysVfpyB5pjnlHA7hcNhFByH/P4k9xbXy/+cq1ZZGxPzxbIu5UzS3HCySB9qaIS+2Nu/EHE7N4S7h79WcV3OeVmU9xWHVHPZYcXFxTN2S3Fu3rrhYvVrBOjl4EYbDJhy28+mJP1uKZpOxF2KG06o57dz9Xil3lr4nT1nlbf51BeqUxWJZtJ5T6xfZrJrNXlhc3OT3r1CneqSL1rsE07xrEc6UZDbmcNZmWyFl8nNBYZtXpKEq7kRG+p2a5mxRwW9zaDZ3QOxTPS5eVDMS9zY3qThebeJ46XuyIrmbaDkx2CyaLZGhfrktO5s3Ha/oOCnNLc1W9anqCFeKJLM0nqbOeJo6SVOnZnI2jw2022ISJtI8x2/TNBttl4nqN2maiW2W9ZaUo26z5kw52iP5d9Ri0ZzWDfwlXEpkq9pLZGuPWOKcXeZbTste3E+8tmX27Ttu3Lomu705s8hYe6IWUjaes+rKJoushbRNvl5B8lw8a0lbJ28OSduWxF1N6vrjUjrtTTIP5V5TqlVL5XrRcuQC0+T1tuRek9OlOVNLvCVeOufmp3o81eMxSjFF1SsTNp6/TpvmdMR3yd81zhRqkZnoTZdROW3CaU9mcHrCecsKnHJZNZdMqNY5bEvksDpnuXgSq3M5LVms9lulscsiXDKNk3ls495VMtf8zCUr2r7shYns0jRXK03+H2WyjLRQ9fHT3y+TGSVdKcxM6rlHDs00uZpz+fslc5q8s1Uyx9PZpdJZORqPQgWSYmKUSCZ04qzFokbgpuRuIVElhoXMZE6r3RW0pNXZUTkJseO7yazOSb5uYXHybGFCMPtpl1O4nG6RoYqHkuNf7aeqHH+O8rDJn8zkNKuW1pzbiUMXGilvacluzqdqrnYlmSWZm/tu7rth3IZxsis/bH/YvsbusmkuMnrNmjXxDE/uxzN8jXr1wmJakm2XQbpswtUqx9PtVs0eT3Iicds0tyOeblS4pvQ9edY2PFceyh2uzsrffxhxozx74wh17/BcmcictWpuleltDljsrQ6kCHfK8JZcz6Gt9pZkX7Pigpdfsybe6ZvT3e/WNHdrmfx2l2ZPe7+kTHX15mKnVkdzDWpneK7czB3uajmjsl7tNwdDXGpRlUh7f2K6lUMDIwMDhTUnJxZv93BVa/wFUIHVn53qc/v2TU8n592J3HfL3HdrJndyjm2T/HbNJFd/4oLsT0k52k7e2yb7Vfq7bTL9lb/xgJpjcjmy8zck7Dyv9guLicYie0DLPl3AZMJ/O/vuDh165+YWG6S9Oh/vAyZ1Xu7HO0FL/edNluZ+kHz93PhDS3ukhJaY2yXcrjSRxhtlWa72X+33lqxmaJajszL4vFxkNMmHkvPpNi3d4c7MFq0Puk1oVtLqT95mb7V/3p2mudOPdjva7fSogwOr5lbN3T1p377S9R+v3+Xe5XbbNbezqWzXrl1l8QrdDnlAlIldqpQJuR3f+8ivmjRqVknJ0cJuaVbrvkK3XbgdRmbLn8OmORwryqzWVWVlB5ak2rVUp6z1yMld8u/kEXneLmvgb9Yodd7M38jZ6vzskQ4794+aVVZGjNPVeYc3O1O0PWJ1tz7C7Gcd5fV6Y97En1vWsbqMvxUlq6h11YXN2LUr1aSlWkpKhEjKlDjS6s/h1hztjhz9KrusTZEtdCYrUnujZqntWaPcrc6dPCLVlAeSwRGomu+rjja/hFwhFpZKOd3rC10pjNotcQxXdSdeB2XkIla+55khZLmG0o1ithB+iTdbPWd7icOU2iofCDDFrJlSqK/Ez3jkSJFRCxm4HJzY0yxaivV0urz9dHabv9MpcmGxT/6pNEmE2Ryp2zm8sKrZd0MdWFFGiFbsyfa2HLCOsnK0bIXKrDRxmehE0/uIWeJG8srwW4Us6upVMuwViavlgcuyabbKzsQrGtRudbt5wezsZJtmqYYlrlDbM8bKVsQSnyg7xRbTVGGesXTBXNFh9oJ77xcj5t6zaJ6YxBnt1inX9RCZ6v/UJj/PsYpUFlvxPU3Y6Jod1fH4EROLsXa0v5Mwj8/PHyd6T5l8cw+RfduUiT3EmMQ18jP9dNFZ7Zl5hfbJ2lm9MN9lJfYY38UloovoOqNgYYF4TT2+oR7fUY/vqscP1ePO++9dME/sVo8H1GO5ejysHo+qx5PqUZf/yUmckY+aVT12UY+D1ON16vEO9TjngfsfuF9bpR7Xqscn1ONG9fiyetyqHrcnP5n/T4/a93y0oyTvGeW/rGJb/ouj/3/HTPiQ+l8/p6lP/aaof62wRjwttogdYqc4JGrFGc0kHCpSeyJaXch/d2Xmvg50WE1+zqaNiD+vWxt//kWs1T3kW/2WNvuau6ntflqftvvtM9ruX/JC2/3Lz7fd73vB+f5d2u4PzRYOU+v9s63OW4V206i2+5Me49lJTvcV+fLfqnHPGqTKNuWL1abXTF+IzeZfmH8hyi2LLK+KipTPres0s/NW5z3a+85HWM/tdqe7bzBd777T/bJpaerM1DmmP6WuTl1vKk0zpdlNh9Ia0xpNfxWaPyq1sVamvnvRcpByOPVEqxJOlIMXKWfTeiZLX8oISi5ljiqbLiypB9O2pP0ufWOibG5V3pClvbhocbbPT5bH2j+bLNF4yeh2kTKIMrTDC63Ka/GizlxQOuzosDtZDnQ8SjkpSyfLxUrGoE4Znfp2fqxVeVaVnRctBzufay6ZHTK7JEtuoky4aMlX5Y7Ec9viTzzK68pUKU+W+N1fZp7O6p81M+vlrG2yXFh71vaLlXjtWe9l1SbK2ZYiXyXrnHotv+TSSb1GJMukXlOSZWaizKH4e82R/4Oa3jmXD7o8t9ccHgddvrPP7isqVTnbdxqloF8fysB+tf1iUNvvfP/dA16WpV/tgA8HhAeEB1oGpg3sMPCPlPJBYyj5g6Zd9VKiBK/2D+kzpG7o09cMpYwZljls2rDC4TsS5cPhZcPLR/SnDB+xduSR0VZVNozeqUrTmGvGvJUo745uYv+tMafV3umxprGmMW+NHZjzRM6H1w66YSrly5vuG70hfjXPp+NXjR8jrxs/aULPCdkTxkzYNrGPKvkT56hSOHHtxJd4LJz4CeXopGWT/JO+vLmAsjHPy1X5eQfyDkz8hMcjcotSm6fnnZvsV2Xr5H2qfDlZhy8nR/Mtk6Oc1/On5R/Jr71lEeXpKT24buvkaPzMlGWTo1NOTKm/Pf+OsqlTf5Lxk24/6TPbMnva7KrZ55qf7xtI2TEvfV7PgsKCNQUlBbUFekF0vmX+4Pm582fNL5i/bP66+RvnvzX/3fml8w8tKFjw9IJtC84sFAszFo5bOH3hhwsrFw1dNH3RS4vvWLxucXDx2SXWJQOX3LjkrSUnH8x98Fxht8IbC72FCwpfKtxeWLW059IfL313adXSc8vcyzotG77sumUzl21dVrW8//Lc5Xct37T8jeVHlkdX5KxYtuLDldaVOSsXrHxnZdnKplVdVt23ausqffWI1YWrt/vzv2OsevfC8ajtaONf0lLkOOLf3FLiI8h39L0JF/a4tv0knukXHXWaR55Wpe3Y4S9rKXJ08Je3lPi4IMfQ9Dcyyzo/yzh8eMxpRk01Bqtnxtv2+Yyvm9K2pG9MPZgcM7m2fbTXTHlv6rtpm1rGzrhKjM65avyNX9UzbUuzevKoHIvVtYfleXV9QkHqfTf1BCP5Fu44rGo7SOs28nxYlZbZIXzBrJDbah5omQm2yHZ/a/R/41ujvzMx5j+mxns1yqt6uDstl+1NzSMhfmxL+MXYFB9/4uNbwkfGREZA6drM5OjY7ChjXOYEf628o8XjXlP8tf5aapNXneVcflZtrynfzgnGwfJWI+pFxtnW4+q3x9TEyF2msik+ik5qHj/luM4RXtWvZ23jyJTM/GuG5h3oZInPY+qZOavzuY5HyaqM5tmneVbJ6NbJ0jIDxbNSzm3qaou8gnt3dsqQZ+QReZU8ntEt9WBzpmZ2yejGDJgh75fb8aMt82jrmVS2Rc2aiXmz1cyZQQ0XzpPPtpkdDyZmxg7Nref8ufiry9efmN/xaGYu7WmjvlRNaoxTrXpss8bxnijVjGdKr5noPUG6KZXIzO/wgvJ7m/SmVa8ekbWdWJtn2PJ4rX490+/X40W+gnzuNUW6IrfimSaf/frlg3oPjhOf4XoPVrNSqyJnuPjspubH/8Oi5tRW5dtXqJm2VUnMuMny7TvkTPvfFTUXf++SnLG/o1yolCzJefw7iprZv3dRq43vWS5UR61RWpVv66fWLq2KzPu40/9d+XbN/7l136/EdZZrl7Qto60Teo5uSj0sVz2qbFBHrHKlo/Y2TOgp10CJcxRWUMPlqil+VI79cksWtTqaqlZWcg11esxptT5idcTWztEb1OrEn1zFyLJ1sj/vyGS/XMGova2JdU58eyuroFp5RK5o5H15iaJWPIvU2ohr1dmt8jFrO1dvlaspRos+eUfUuqswUfLVkT5y1aX28vOOyHEpcY7Cyi2btZpcocn71qotilqnFaj1HNeqlVpyvTYxf6xJKdIktbhlUVyJ0VYVDy2Ot3TiJ6pu+UprVV2q3rY98duOts6DKyrje8Iqvwdrvtn4UH4TVn4PVn4L1hwUw4T8FuRB9V1TuaWbbzdOCI3HRmHicY95qnGQd+hvGk2i1GjSvOIS7R4xRZsusrQZwqPNFO21++X33IyhXDnWPNf4s9Co57iwcK2ba9tzrZtrnaq+EFfVC4d2l+jG+V6cv53zl3K+F3VdTl0e7n6R9nwpv3ln7JDfczWvoB0rjT/Q3hHm48bPzSdEtjkkBpu/EgPMXxufmcO825W1H6T2WvltX8Mkv8VKa55V32MtFO3EBJEOI0Q/MRJmGp+Je2EWLDS+EouMs2IxLIEHoRCWCrdYZhwSy2EFrIRVUMT9xfAwrIVHYB08Co/B47Ae3hfXiT9CjO3zYIh+mgAN8sVI7RaYArfCbeATk7Uy0Z2IfeY7xCjzncJuvhvminXm1eIy80Oih7lIXGZ5xThk2QyvwiHRz/I5lEMFVMIXUAV/hcNQDUfgb6JfSrrxWcpR41DK34U7RWf7GzhtHLKmiAnWfjwPEf2s1/A81/jM+gDMg5/CYuMr6xJAGyvaWNHGugzQxvq2GGl9B/4AjWKkrb/obhsAd4t+Ni9Mh/mwAJaCHx4CNLJtgKfgFXhVXGd7k+dvoB5OQwOcgUZAQ/sMmAn3wmLR3SHESEcH0V3l7kn1HWS59bX61nFHsjZA1gbItj5k27Vk2xqy7VaybTrZNp5sy5HfFpbfFTbfYTwhvy0svytM3jwnvy1sDhpbzcfJs5Awm0+Sg1+LO1WeneCqIywzm3vFXeKqVvWPo/4l1H8D9Q/j6mnU/Sx1/4G7hlD3Rup+kfo+pL47RBq1nKKWU9SSTi1XUMs8armKWq6ilgHUcoX89i019aUm+W3mwdSwTUW6h623RSZ1/Jk6/kwdfbW7jT9Sz1XUczf1DKWeW6lnrOYzPqWuq7RNxnvc+QH1WahvCS2bRZ2X0LIianvcXGucpXWfmOvorV+LK83hRI9tT639qdVHrcOo9QZq7U2Nfantc+78nJ53M1HeLlyJEebfjCRyZHleFBm6KIaHYS08AuvgUXgMHof18IkRE3thH+yHA/ApHITP4BB8DuVQAVXwN8MQX0INHIVjUAvHjb3iBITgjFEt/kE/PwsRiEIjxBjd/sn5c/AvaIJ/w3naYhi6JkBTo+Jx8zQy7MfGKfNdPHuNU5ZDhm75HMqhAirhC6iCv8JhqIYj8DeoM2KWryEMfwcdvoF6OAWnoQHOwD/gLNAWy3kwjL0pGcZeW44Rs90AE2Ai5Blf2W7j+XaYxvk74S6429BtXpgO93NuPs8LYBHbD0IhLGV/Bc9+nh+CtWw/Avhge5LnDTw/Bc+w/Sw8Bxvh59T/Cse3sP0a22+y/TbbHwAe2fDIhkc2PLJVG4btCOCRDY9seGQ7yj3HoBbwyPa1UW0Lw9+JRYdvjIO2ejjFudPU3QBn4Cz7eGeL8tzIPh7ZZ8BMuBe/TOIJ0UHNXGbxBLl7OzksZ68U9n7D3gT2xpPlpeZPxQChcTQqcsnMajKzmsysJjOrycxqMrOazKwmM6vJzGoys5qrvyLTYmRajEyLkWkxMi1GpsXIIp2MiZIxUTImSsZEeT35bfBq809EivkemE4GzTCOkzXVZE01WVNN1lSTNdVkTTVZU03WVJM11WRNNVlTTdZU42QUJ6M4GcXFalysxrkorlXjWjVuRXEqilPVuFKNG9WoHkP1GKrHUD2G6jFU1VFVR9EoikZRNIqK1agYRcVqVKxGxWrVYw8LG1peS0+2M/f+ibn39+aDzLWfMQsx2yh9w0T4GREeU/quYC+TvW7ou4YavhBTmSc9zJMe5kkP86SHedLDPOlhnvQwT3qYJz3Mkx5e6Rrmyt7Mlb3ps+X02XL6bDl99hh9NkKfjdBnI/TZCH02wnyaQZ8N0WdD9NkQfTZEn8VvMZF5cyj99Bj9tIZ+eox+WmOeLvqYZ8BcUcw82p15tDvzaFfmTg9zp4e508Pc6WHu9DB3epg7PcydHuZOD3Onh7nTw9zpoS+G6Ish+mKIvlhO34vQ58rpc+X0uRBznIc5zsP85mF+8zCveegrIeY2D3Nbb/pKiPnNQ/6Xk//l5H85+V9O/h8j/4+R/xHyP8L8l8H8l0H+h8j5cnI+Qs6HmAM9zH8e5j8P859H5rtxBq3PsD57wngYB8Yxnh9jPF+ME+Nw4lecXU+232A+xEqq3DhvrhDTlXvVXH2Yq6qYMZ8wVrE3nXsPce/nHM3h3ie492PuncC95dz3I2FN9KP/4coKriznyglqfSVz5nVV072cH8v5A5yv5PxIanqUs+9Q03XU9Ak1Zavr/6rWiV+qx6hwau1Ed20azIUH4KdQAPNhASyCx5jp28vfxJC/iCF/D0P+GoZaG20Wnc0fiB+YP8L/WtGLWftWVokZzNxdWCX2MtcxMnxNC8Ic+7v4AfP5AuMj7ujEmrKnnNO5f64Yzww2jZy/U4w336VWX+NFGi3rSsu60rKutKwrLetKy7rSsq60rCst60rLunJnB+6cx50duHOeujOVO1O5M5U7U7kzlTtTuTOVO1O5M5U7U7mzD3dezZ19uPNqdaebO93c6eZON3e6udPNnW7udHOnmzvdiTuHJu4cSiR3iv5s9VcaB9QaoVH+Xof8PQS4BabArXCbcLJ2c7J2c7J2c7J2czrkf6e1yN/fkL++kVhplCqPjolyra9Rq/WD/jAABsKVMAiugmy4GgbDEBgKP4BrYBgMhx/CCBgJo2A0jIGxkAPXwnVwPeTCDXAj3ATjYDxMgIkwCW6GPJgML8CL8BK8DK/AZngVtsAv4TX4FWyF12Eb/BregDfhLfgNbIe34R34LeyAAPwOfs9qrYTnj4zD2k7YBaXwFyjj+MdGhbYb9sAnsBf2GSe1/XAAPmUFMY13K3cZBy1/YSVRBh/DbtgDn8Be2Af7jQrLAfjUqEhpb9SmdICO0Ak6QyZkGbXWJ+F5QAPry8ZJ61bjlPV12Aa/hjfgdxzfxTOrTetf2D5oVFg/5/oqtqNGre1SuAy6Qw/wGKdsPaEX9IbLoY9RYbsC+hqHbf2AXLCRCzZ8tw1mfwjnRhonbaN4nmKcspuMWrsZLJACVrCBHRzgBBe4IRXSoB2kA/HaM+ASIG47cduJ207cduK2E7e9C3SFbkD77bTfTvvttN/ugZ7QC3rD5dCHNg02TtqHwA+NCvsIGMmxHLgRboK7uW46z7M4N5vr7gMfzIHFnFsJq2A1+OFJjv+S61/n+m3GYfuv2X8DznAsYtQ6NCBWxyVGhYM4HB2Nkw75Gz3L1W/QoI6GOhrqaKijoY6GOhp3aKijoY6GMuqXatpDBlwCHaAjdILOkAlZIH/LRv6SjfwdG/krNh7oCb2gN1wOfeAK+ctDvMvuB/1hAAyEK2EQXAXZcDUMhiEwFH4A18AwGA4/hBEwEkbBaBgDYyEHroXr4HrIhRvgRrgJxsF4mAATYZKQ/1sxl5YHk0H+8s4tMAVuhdvgdtp9B/wPTIUfgfxtnlWwGvzwEKyBIiiGh2EtPALrQP6Kj/wNn6fgaXgGnoXnYCPI/yu3/HWfF+EleBlegc3wKmyBX8Jr8CvYCsyA2jb4NbwBb8Jb8BvYDoy1GmOt9lvYAQH4nfwFIcbyj2An7IJS+At8DLthD3wCe+HCUeR24x75m0PMA+0Y+UcxD7Rj9B8lf4HIwohnYcSzMOJZGPEsjHgWRjwLI56FEc/CiGdhxLMw4lkY8SzbeY/yNrwDv4UdEIDfwe/hPeMby/vwR/gAPoQ/QRD+DCXwEeyEXVAK+4XbcgA+Fe6U9sKZ0kG4UjpCJ+gMmZAlXNb1xjfWnxm69Um2N7K9yfjK+jxzEh6o0Wwz54jF+ivO0WYrbbbSZiujtPVt44T1HdjBuQDIUe5drv8Dx97n/B/hA/Y/BNpppZ1q9PuY/U84t5fnfRzbDwfgUzgo3NbPeW3e21l5b2et5NgXRqMaKQ/TNt7PWb/iXt6zWHW2WV1bWV1bTwHvWay8Z7HynsX6DzgLEYgSW6NxwpZmfGNrB+nQHjKNRlsWdIGu0A0uFU7bZdAdekAf4bZdAX2hH1zNscE8DwFmWRuza3zUFW67SbjsZrBAClhB/hNaOzjACS5wQyqkQTtIh/aQAZdAB+G0d4RO0BkyIQu6QFfoBrTTTjvttNNOO+0e6Am9oDdcDlcY39gH8B5tIFwJg9hnpWC/mu3mkXgo29fAMBgOPySOETCJ7ZuB97n2ydyXb5Tab4Ep8COj0X437ZzFdReO0rzftfN+1/4grKQNq2A1+Ln+UV6b/q9G7Y08b6Le5+EFeBFep75t0DyKv8kxPLRHuPdfRqNDGCccmvxSgKE70NPh5Lk9xy8RbjWyM0M5OnMsE7KA8djRTX4uKXt6Yl21kh5aodZoO5PH53F8qfocRVO//JViGmf82HyzsYvVqVN+tsW5b8RAU7YRNg2FYTAWxhmfmcYbe00T4WZW5bcbX7K6OMLq4ohzqrHXOQ0eMcLOdfAoPAaPw3r4GfBezvkkbICn4Gl4Bp6F52Aj/Bw2wfPwArwIL8Ev4GV4BTbDq7AFfgmvGWH3ACMszLQ0aprKe+IFvIceSfsjtD9iGmGEaH/EdD3PjxrHTI/x3uVOcSXj15Vcudd5qxFy3gZ3wI9hhnHMOQfmwjwogEXwiBEhtgixRYgtQmwRYosQW4TYIsQWIbYIsUWILUJsEWKLEFuE2CLEFiG2CLFFiC1CbBFiixBbhNgixBYhtgixRYgtQmwRYou4JhjHXBNhEtwMeTAZ8uEW4xixR/BwmPEFDu0zKR+N3eqTw+7Evo24t5nuNLabZsID8KhRggby1+MOE/s2Yt9G7NuIfRuxlxB7CbGXEHsJsZcQe4mz0NjuXArL4SF42NhOu0poVwntKqFdJbSrhHaV0K4S2lUirsUBHw74aNtxHPDRvkYy6CwZdJZ21tCSKlpSZb79/Fnz1PMRZpdUnLmK2SUVd65KvMcvJbvOkl1naV0VrauidVW0rorWVdG6Kpzx4YwPZ3w448MZH874cMaHMz6c8eGMD2d8OOPDGR/O+HDGhzM+nPHhjA9nfDjjwxkfzvhwxoczPpzx4YwPZ3w448MZH874UKAKBapQoAoFqlCgCgWqUKAKBapwxieuRwUvKnjxYg8qePFjj2mcuJTo84g+L/F56+OJ99P9UaETKgxBhU6oMCTxKfGP8GoPXu3Bqz14tQc18lAjDzXyUCMPNfJQIw81vKjhRQ0vanhRw4saXtTwooYXNbyo4UUNL2p4UcOLGl7U8KKGFzW8qOFFDS9qeFHDixpe1PCihhc1vKjhRQ0vanhRw4saXtTIQ4081MhDjTzUyEONPNTIQ4081PAKG7lwlojdRPwUES8h4gwiXEWED4osNCpFn1K0qUSbSnTIQIMMzj5D/KXEX0r8pcRfSvyVxF9J/JXEX0n8lcRfSTsqaUcl7aikHZW0o5J2VNKOStpRSV/xGa9fMN6dFVeabmGMmwo+xrk5jHH3w1ygblp8NDnWrWTMWG3sdS03wq4VsBJWwWrww0OwBoqgGB6GtcDY6GJsdDE2uhgbXYyNLsZGF2Oji7HRxdjoYmx0MS66GBddjIsuxkUX46KLcdHFuOhiXExzgBNcjHlyZA+rtkfo4yH6eIg+HkI3+T69D2cP0XdD9N0QfTdE3w3Rd0O0PULbI7Q9QtsjtD1C2yO0PULbI7Q9QtsjtD1C2yO0PULbI7Q9QtsjtD1C2yO0PULbI7Q9QtsjtD1C2yO0PULbI7Q9QtsjtD1C2yO0PULbI7RdjllTjb+i9j4U/ig5ZsmIasRgIgpwvpbzjbjRhBtNuNHEtTVca+daFz3FSaSD6ClOoh2U+AyoDIeacKiJKANEGSDKAFEGiDJAlAGiDBBlgCgDRBkgygBRBogyQJQBogwQZYAoA0QZIMoAUQaIMkCUAaIMEGWAKANEGSDKAFEGiDJAlAGiDBBlgCgD4gdEUoQ3u/Fmt8knuuHPbiKYQQ/4Jz0gSiTFRNI58clMZ/nJDJH8XH6ahXe78W433u3Gu914t5uoioiqiKiKiKqIqIqIqoioioiqiKiKiKqIqIqIqoioioiqiKiKiKqIqIqIqoioioiqiKiKiKqIqIqIqoioioiqiKiKiKqIqIqIqoioioiqiKiK6MdTVT8eThSfJv6b0420+hlavUO4iHc/8e4n1v3E1ZGYOnLmOeLZTzz7iWc/8ewnnv3CalqMr0uMf5oeNE6aismLnxn1pufkJ+0cPWcqNqJC4/Gfoh9XRE2FZMRSKDYqTGuF3fQId6836kwb5W9WGv8yPW/8y8X61sX61nUpXAbdoQd4oCfM5Jp7YRbMhvvAB3PgfpgLD8A8+CkUwHxYAAthESyGJfAgFMJSWGb8S8VzjpYeN600viKWE6ZnjVMm3umJaaYFZPtCWMzRQqJcCquNgyY/PARroFh0NK013jY9yXUbjKOmp+BpeAY2Ge8T3/suk7HPZQYLpIAVbGAHBzjBBW5IhTRoB+nQHjLgEugAHaETdIZMyIIu0NWoR8N6NKxHw3o0rEfDejSsR8N61wjjoGskjILRMAbGQg5cC9fB9ZALN8CNcBOMg/EwkzjuhVkwG+4DH8yB+2EuPADz4KdQAPNhASyERbAYlsCDUAhLYZnxvrCQOV+i4ueoeMy00Wggl4qNM+RJo8jHhRguxHDgHA7IDDvGjBNlxolyRRSVY6gcY4aJMsNEmWGizDBRZpgoM0wU9WOoH0P9GOrHUD+G+jHUj6F+DPVjqB9D/Rjqx1A/hvox1I+hfgz1Y6gfQ/0Y6sdQP4b6MdSPoX4M9WOofw71z6H+OdQ/h/rnUP8c6p9D/XPMclFmuSizXJRZLsosF2WWizLLRZnloqgbQ90Y6sZQN4a6MdSNoW4MdWOoG0PdGOrGUDeGujHUjaFuDHVjqBtD3RjqxlA3hrox1I2hbow+t4Tsln1xJZquIruLRRpqH0ftWtQ+JQrQOIjGQTK9jit3o/VxtD5uWsb+SuNr7jpD5utkvk7m62S+jg//xocgPgTxocH0hPExPeALesAX9IAv6AFf0Jf2MTaU4VEFHlXgURCPgngUxKMgHgXxKIhHQTwK4lEQj4J4FMSjIB4F8SiIR0E8CuJREI+CeBTEoyAeBfEoiEdBPAriURCPgngUxKMgHgXxKIhHQTw6jkfH8eg4Hh3Ho+N4dByPjuPRcXqITg/R6SE6PUSnh+j0EJ0eotNDdHqITg/R6SE6PUSnh+j0EJ0eotNDdDwO4nEQj4N4HMTjIB4H8TiIx0E8rsDjCjyuwOMKPK7A4wo8rsDjCjyuwOMKPK7A4wo8rsDjCjyuwOMKPK7A4wo8rsDjCjyuwOMKPK4QPhwM4WAIB/+B3ztx8RTOHca5v+NcPc7V41w9ztXjvxv/d+Cejnu66XGO/QynnzR+g4N1OFiHg3U4WIeD3+BgA3nyJ1yswcUaXNRxUcdFHRd1XNRxUcfFEC6GcDGEiyFcDOFiCBdDuBjCxRAuhnAxhIshXAzhYggXQ7gYwsUQLoZwMYSLIVwM4WIIF0O4GMLFEC7V41I9LtXjUj0u1eNSPS7V41I9LtXjUj0u1eNSPS7V41I9LtXjUj0u6bik45KOSzou6bik45KOSzou1eBSDS7V4FINLtXgUg0u1eBSDS7V4FINLtXgUg0u1eBSDS7V4FINLtXgUg0u1eBSDS7V4FINLtWIbFyK4lJU9ca4C2dxoQEXGnAgigPyfVMD6jagbgPqNqBuA+o2oG4UdaOoG0XdKOpGUTeKulHUjaJuFHWjqBtF3SjqRlE3irpR1I2ibhR1o6gbRd0o6kZRN4q6UdSNom4UdRpQpwF1GlCnAXUaUKcBdRpQp0H0Z2RoYmRoovfrzOdO0+NEsZ4oVOvZ3gibmO+fZ97uyqquG1wKl0F36AEe6AkzueZemAWz4T5gBYnWjWjdiNaNaN2I1o1o3YjWjWjdiNaNaN2I1o1o3YjWjWjdiNaNaN2I1o3iPrSuQ+s6WqzTYp1eEKYXhOkFYXpBWOnf3APQ/VuZzwreJD/Z+O5sr8OPOvyow486/KjDjzr8qMOPOvyow486/KjDjzr8qMOPOvyow486/KjDjzr8qMOPOvyow486/KjDjzr8qENBHQV1FNRRUEdBHQV1FNRRUKc3hOkNYXpDmN4QpjeE6Q1hekOY3hCmN4TpDWF6Q5jeEKY3hOkNYXpDmN4Q/h69IYxDYRwK41AYh8I4FMahMA6FcSiMQ2EcCuNQGIfCOBTGoTAOhXEojENhHArjUBiHwjgUxqGwmuNPq/8KeQ1e6XilM9rojDYhtNfRXmqso7GOxjoa62iso7GOxjoa62iso7GOxjoa62iso7GOxjoa62iso7GOxjoa62iso7GOxjoa62gsY9SJUSdGnRh1YtSJUSdGnRh1YtSJUSdGnRh1YtSJUSdGnRh1l8yFxbAEHgTyjRh1YtRFOmNxpG2fIdMeVz09ypga/U99hLX7EtaovDOlt7npbVZ62zF6Wkd6mlPkJUeUxczGK2EV78uLea3/Je7e4+Mq632Pr8xKZpLJhHIpBRRB5KLCVgRRj6B2q2w2bhVFRVEUdYuyW6lSaIG29KYCKpdyb6GUi5RaQNpKLFDaci22BNMmzbSdTtIaeiFNmqwmadKmF/qc92RXD+6zX6/z1znnj89rzVqzZj3P83t+l+8vr2Tym9DNs7vdPSA2u1XnPp/6MAvvYuG+d6imbt7dzbu7eXc37+7m3d3/j7JNN+/r5n3dvK+b93Xzvm7e1837uv+vqqJStzLAUsv/3rf0RfHBawN2aV90EdvWsW2d/euyf11sW+psinaign3b2LdtMP9Nc363HuEeSmmGa/eFNnZtY9c2dm1j1zZ2bWPXNnatY9c6dq1j1zp2rWPXOnatY9c6dq1j1zp2rWPXOnatY9c6dq1j1zp2rWPXOnatY9c6dq1j1zp2rWPXOnat41NdfKqLT3XxqS4+1cWnuvhUF5/qYvc2dm9j9zZ2b2P3NnZvY/c2dm9j9zZ2b2P3NnZvY/c2dm9j9zZ2b2P3NnZvY/c2dm9j9zZ2b2P3NnZvqy6tcyyuwbW4DuMwPrQN2njPwUgYiI5ILYyGpV6mOF/hl6+GKanlYW5qJ53RH6al9oSGWOaMP6R7PT3Mj88KW//+28rfjA6NvzX4nzNKv1O4LdccVtqx2Z47D6+IgFdDPrWMp7+G5cZc4fhGaE6t1OnmjbbGcS22RVWpdpHaT+PuooR2Y2/oiaPQGmdQiWN0/6eHzfEZYWd8Jj6Kj4Vd8TlhU+4HoTP341Cf+ynkiNzPHa8MzbnRkBNyExwnOk4CDZ37JVTM3K0Qlblp3r/LNbkvN935DDzgGbPDntzjnj8fC8LO3B/xtGu1zhc5WlOuwbVGrMY65wU0e92CVvd1hdbcTuwOrTVDQ1JzJIZBd1ijO6w5yfWRob6Gpq8xr5qbQl/NrWFnzT24D4+GJPq3g1Yt2qcBVl3Hql2s2sWq+1l1C6sWWHUdq+5k1XWsuo41d7FmL2v2smQvS/ayZC8r7mHFflbsZ8V+FuxiwSILrmPBdSxYZMF1LFhgwQILFlmw8F8sWGTBLhbsYsEuFiywYJEFiyzYxYJdLLiO9bpYr4v1+lmvn+W6WKyfxfpZrJ+l+lmqn6W6WKqXpXpZqpelelmql6V6WaqXpXpZqpel1h20VJGluliqn6X6WaqfpXqj96WeCBNSC8MClnqBD+5joTmssj21MVzOz8am2sNDvPubqT5Ke0/4DD/7cxyHZXE63Bbnws94+5p4aDghPj76SXxyGMPz3xd/OHyO1R7l/efxuZnxZ8Kk+LPhkoO/nfXX+Fvh4fjiMDIeEZaWfn/Jqp6Xk15WJV7F8rDBiG/Zj41G3GqEdk/t9sRNnrhDLJ0jlj6tI3zCjr0cGn2qFC9/GYyRbdFxPr3aJ1/3yS3mttXcqj0hPxgPZ4W8T74cXvept3zqGZ84wifeNN5fB+NXVz0Yw8eL0w85Pz1s9KlWs1wWvYdn7Rz85DKe9RpW8Jg3fHolr8pTkWsc14YtvGML79jCM7bwjDd5xpu84k1esZNX7OQVO3nEAI8Y4BEDPOJNnjDAEwZ4whY7t8XO7bRrpcy/LTrEfNJmPtt4Txj3OWtdhBVhL7u2sOfW3HVhl+f3en6v5/fm7nP+YNjlOb1RuU/1mflVPrGp5PeU8BNyyUJreTU0uNqcapRHSjbcGDrYrdFz13nuuuhio05z9xQxtXnQW54LE40+0Sd7WGIvS+z1hM0sEVii72Bc9bFEX6oQ5nliLU9qSHXyniyGhh/Hw+zGUTgaJ4ar45Nwctgef8A+fxAfsnvsHg/3/mcHf3f5DLM5Q+xtZt0+1u0Te5tZuI+FAwsHsbeZFSaydGCJaSwxjSWmib/NrL2Xtfey9l7WDuJvs/jbzOp7WX0va01k+T4Wm5h7Siaah8Xh6twyx7+gHiuxHkVs8N5fHd/0jE3h6poo/LmmIsyrSSODE5yfgpEy1NQwTQxutpt7a+4Nm2qmYwbux6wwL6rmkb28cZOd/qjs87bs87bs87Zd/4RIf1ukvy3S3xbVb0fH2o/SXu5i+2627/aptBzVI0f1yFE91t5n7X3W3mfd3dbdbd3d1tptrd3yS4/80iO39MgtPXJLD//ukVt6zLXPPLvlih65okeu6CnLGnEqD7jX7r9k9++0+3emltrRF/ByWJ5apiq+huXhUV6wL7Xa9TzfKoSxqfVhSaqIZrRgAzaGm1J/ddyEzZ65xXEr2rAtmspbalMdXm9HJ8/rckywI1yd6kaP173YGUbITQ0yd0HmLojgb8pRK1P7vLcfb4elqQOOQRUuQwql/FXO2yq8TstT2TAlrvY6F0YN5rMhjofiMByOoeEc3no+bz2ft56vtt4YvytcG7/be8fi+Ojb8QmO78OJct5JODl8Nz7F+fvxAecfxKle/xM+FD4vR/5QZnnKrk21a1Pt2lTe/mX58tb44+75BP5H+EX8ScezcU6YHH/K8dP4TPieqDg//mevPxuuEhnfPPgbs0+JkGvj70RHx5diRFglv/4hNyI05EbiyrBPlOwTIXeKkH28ZCovmcpLpuamev8X+DV+g9/ilmhY7lbchmnuv8e1ezHd+Qzc5zkznT/o+FAYlXsEj2J2uDH3WLhWNZuce8L5k/gDngrniarzVLjJPHAqD5xKH9yoyk3O/Sn8IrcQz7hvkWuL3bfE66V4wfVlzpe7vsJz61x7A39xrR4r0eBZjViNJvevc28B671XhOzNu6eK2vNyG8MSkXueKjpZ9J4ves/LbXaND+b4YO4t8MPcNrSHl3L8MMcPc53gg7kd6EaPDNCLXV4PhKW5Pdjr9dvgczk+JytMqeF3NfyuJg5La8odK8JYWWKsLDG2ptJ5leyRBR+syYWXampwiNdDcKjrh+FwHOH60FBQ6QsqfaHmKM872j3H4F14N47Fe9x7vPffixOM/z7XZFjZaErN5NAgwqfW3BQNq7HXNfa6xl7X3IxbcKv37grXivypMtV5MtV5MtV5ssBU2eq8mpmeM8u8H/LMRz1/tvPHMAe/D1dHJ8gSV8kSfxyszK8M1vPXZII2ET9NZH9PZC8UtfNF7etqbr+IfVHEbhaVjaKxThQuFYVNou5fRNalImm+iLlVxLwmYtpEyT2ipEkUvMD7H+P9X+H9L/H+0l8qfJzHr4r+Xb563Ez+oGKtTs1XpRbKCc+5tgivqHOvem9ZWCt7rlW5XpKzulSuhWpgl9m2q14LVa+F8tdsM39Nnmo385Vy0TKzLsg3m+SbTWbeJl/nzXyHnJ2Xs/PyyTKzf0oueEoueMos95nl10qaR/VanfuhTPvjsFAFW6iCrVbBForNLrHZpYKtFp+Pi88u8fm4+HxcfD6ugq3O/crnbsDNuCWsldXXyuprxWaXarZaNVstw6+V4deKzcdVs4Vi83Gx9BS/f4qfP8Wn29WTvHqS57ftakqer7bz02X8cja/nM0vZ/PFdr62ia9t4mub+FY732rnV5v41SZ+tUwtyvOpZSrcQj71uAq3WuVYyz9m8492/rGJglzKD17AyxTa8vAcS29RHRr5wudk8xbZvIU/vMGqrazawKoNfOJZmXsjy66QqVtYdgXLruAb2/nGW7Jxk2zcJBs38ZF/4iO7ZdmiLFvkK+v5yVaZtV5mrZdZ6/nMGtl0vSxakDmbZMRGGbGR1bew+hbW3iIDNsqAjTJgowzYKAM2suwWWa9R1muU6RpltIIsVpTFirJYQRarl8XqZbCCDLZeBlsvW62XrYqyU1F2KspORdmpXnaql53qZaf1slJRVioezEr1slFRNirIRk12Z4XM0iKztNilFXZoheyyUXbZKINslC1aZIsWmaFFZmiRGVrsVIOdarBTDbLCRhmgxU412KkGkd9ip1aI/EYR3yjiG0V8o4hvFPGNIr5etNeL9qJoL4r2omivF+1F0d5iFxtEeYsobxHlLaK8RU+8jTou6eqzwv7oY6Ks1Gf9VETNEFEzRNQr9nmKqNljX+fY11r7WitaOuzrZvs6z57Os6fzRMSAKBiwF1PsxRQRMGA/pvD4AV4+g5fP4OUz7MUUXj7Aywd4+QxePoM372Gveew0jzfvYat5bLWZrTbz6j3stZkn72GfWvapZZ9a9tnMm/fw5j1sVMtGtewzj/cO8N4ZPHePNdda46vhVh672wqWOttp7v3hCb65MXqXle10ttXK2q2s3cq6rapeHuiwsnorqze7nWZXb3b1ZrfT7OrNaqcZ7TSjdjNqN6N2s9lpNjvNpt1s2s2m3ixKvWx7dLyR+o203khbjbTVSNvYsNSjNhitz2gNRmswWr/RGozWYLR+ozWwRS9b9Bq1ny16jdxv5K1G3mrkrWzRa/R+o/cbfavRtxq9weil/nCrHmGjfLkzrLLqVUbuM2KLXLZIxl0n45b6g2cHM27aXX0He6iOg3/DdHp8cXTmoOVavdPindbBs1Jvt2/QjhUHP9XrrNPz13p+DzVcoGk7WXivdWZZIkIFTZpGBic4PwWzQrdnbBzcmUZ3N6sipTn2Rad4xmveeY79ej3reXe89bf+frDeRPJLBpXIhuet6kKr+RE79rLjRnbcyI6l/noj+/Waw/Pm8Jo5vGYOr7HlP/bd78ax7+i/T3D/SWLxFMdZ7n/ItVLPXWbNSXSU+fWYU485bTen7Qd/grPD7NvNa4d57TCPHeaxwxx2GLvH2D3G7jHuduNuN+5242033nZj7TBOjzG2Ryd5+mKr/7OVr3hHls2z81NG2jWYVbODvylyw8G9XG/1I0q/0fO37GPFK4y62KiLjbr4v808pUxzgvtKWeYUx1LGmOXe/5oxqgar6E46YI/eOm1fLwpXHvztjlVG/vbgb4yead4b3fmsXavXF6w1/xdZaf47MkipMhRYapa9LtXdt1hrFmvNsp4XPfVmT5tnF+tpt7UsOIsFZ9nJelacJSIKIqJgR+ut70VRUbDGjda40Ro32tV6GmwtDbaW3lr7XzJHwS7X2+X6v2eOEzzjpDDL2l+07o12uX4we7yb1ZtZvXnwpxH9ssie8KpZd7F8sxl3mXHpZzhdrN3M2s1m2WWGXazczMrNrNzMys2s3MzKzSzcbKQuFm5m3WbWbWbdZtZtFlX9su5e1Y/38LD+8GKUUgX3Ukp7opgaWe6sx1lbdIKzRA8zQJ8k9EmiUu5WKXerlLsP/oywg2bppuMHVLwOla5Dpdut0u2m1wdUuw4afYCuSGjyAdVtt+q2W3XbTXcP0N0DKttulW033ZGobB20R6LS7FZpdqsuu6MqtXyPmTygdidqdknXvWXUxA4+agcfHcwqVap9XzxUJvlQ6LSCdnd1xh+Lhsgwep7oDOMUonLP2eI5pZ+5DpRWYMW5wZ8gdJTuZ4mh4uljYcD10k9l3eFzm6IjnZVW32f1fVbfN7jy79AKl4Y171h5n5X3Da66wbERq9GMFlidlfVZWZ+V9UXvNdpK9u1n33Xsu+6dnbmxO42ylW37jbDVCFv/3o0/PfgTv61s28+269i2/x869HXOC4M/BRzs1Nl2ndG3su26d3brUZmV90cnxTVeDQ0PUUsJtZRQS4k5PWNOz7BWP8XUTjGVfrrWxU7bKaPEDuy3A0/agSf1kYfrI0u/HVlSPe1UT7t5PUPdtFM37dRNO3XTTs20UzPt5vMMJdNOxSTm9AxF0U5RtFMU7dREe5Qxmz8aeacRB4y402h7jPaG0d6ITvTum+zWZo7rzXG9O3cd/Bn2/9qhj1F25/Drz7LD7NDGhnvZcO/fd+lp12qdL3JcTGktd3znrq1zXsDfdm+De1rdvyms/4ddHMZqrazWymqtLNXKUq3m/deDP5NqZZFWFmlljVbWaGWNVtZoZY1W1mhliVaWaGWFVlZoZYVWVmiN3mWdG6xxgzVusMYd1pi3xiZrbLLGJkq15HVN1tNEVXZQlR3WsoGyLHlgk7U0WUsTJdlhHU3W0WQdG6xhgzU0WUOTNTQN/hXlifH3oxOjGdFl4b7ox/gJrg4PR+PDHdEEXI+JmITNYUa0BVvR65494fZoL/ZhP94Opf9d3lD2QZyK0/BP+BA+jNPxEZyBM/FRnIWP4eP4BP4HPomzcQ4+hU/jMxiOf8Zn8Tl8HufiX3Ae/hXn4wv4N3wRX8KXcQG+ghHRUWUvhRfLXg7Plr2CV7EMr2F5WFq2Aq+jDm+EpeUPhTvKH8YjqHe+EqtgreUHEMLtFYeG+yoODzMqqOwKKruCyq44CkfjGLSGOyo63dOF7nBH+oP4OK4I96VH4Wf4OcaGh9PXgN3T00JDuiEsTet4MqeEpZn34wPh2cwHcSY+6vxT+E6YkbkEl4bbM9MxG63O38Qm2LNMe3g404Ed3utzvivcXpkKDZUxylGBNCjFSkqxsgpZVCOHGhyCITgUh+FwHIFPhqWVZ+P7Xv/EcYrj7x3nhmcr+0NDlWdVHUEffy86PKyMjoDsFx2JYTgK78cH8EGcitPwRXwJX8YF+Aq+igvxNXwd38S3cVl4gOc+wHMf4LmTojFhVjQW1+BaXIfxYS5vnsub5/Lmubx5bvlvw8rym3ELbsVtmIbbcQfuxF24G/fgXjzkcw/jkTDXrj9QsS6srGjBBvwVra6/5diGTu93odu1t8PKdBoZVCGLo3EMTsYpYIc0O/COuemzHD/ueI7jv+J7uBTfxw9wRXiA5zzAcx7gOQ/wnEk8Z1LaetPWy4PmVv68ZJvojtAQ3Ym7cDfuwb2Yg99jLh7HE6jDG/gL6rESq9CARqxGE/JYgwI2h6flhKflhKflhNejnehDP3ZhN/aE+fLEfHlivjwxX56YX74tNJS3owPb0QndSXmCHehGD3qhYynvQ+lzBxDCfPH2dEYuyIj9jFjPiPWMOM9cEF7PfMPxInzHPZfg0jA/81PnYzAW1+I6XI8bcRPEW4aNMmyUYaMMG4mn+ZnfOc52nO+4GOyQYYcMO2TYQaw9LdaeFmtPi7WnxdrrYu31zHZ0YofP9rnOHuJuftmHo/LosKgCaWRQiSqUvr27GrnSV0ziEJwdDYvOwWVhAh+fwMcn8PGxfHwkHx/Jx0fy8ZF8fGQ0zhPGh1H8fBQ/H8XPR/HzUdEvoyHRr3ADbsRN+DV+g9/iZtyCRdFx0fPYHMbb0fF2dLwdvduOzrWjc+3oXDs6147OjUrfIL0nTLSrE+3qRLs60a5OLLs/rCmbiQfwIB7Cw3gEv8OjmI3HMAe/x1w8jifwJP6ApzAP87EAf8TTqMWfwprUR6IhqTOiYamzHIfj/DAh9YVwdeqLuND5iDA1NTJckfoprghX0GxfjC8JY+i2L8bfdxwT6uKxoTFuiCrixmho3ET1rtGVr42y8eYwN95Ci2yNPhC/5dhW+m4gx+3R4eVjosPKx+IaXIvrMA7jMQHXYyImYTIeCqPki1Hyxajy1dGQ8ibksQZrsQ4FrEcRzWjBBrAnb5/I2yfKNRMqDgtreP14OWZUxfYoK79MkF8myC+jKvZFh6Vj8K304TgCJ+KDYVT6VMcz8NFomJwyKv0Jr68IE+SPCfLHBPljgvwxVv4YK3+MlD9GpvlSejz4Uvq+sCZ9/+Bf0K/JvAfH4Xi8F2fggjBXpI0XaeNF2sTM6GhI5ipMwVTcgemuP+T4SHScaJqYedLrVve/iU3gcyLnbpFzt8iZK3LmZrqiqkyCHe7v8z7/E0ETM7ujIZVDw5rKIzEMR+FoHIN34d04FuZaaa6V5lpprpUn4H04ESfhZPzIsy7DjzHR+SRMDmuqysKa7MXh6ux3MDFckZ0McZMVN1lxkxU3WXGTFTfZW3EbpuF2WG/2TtyFu3EP7sV0zMB9uB8z8QBm4UGwT/ZhPILf4VHMjoZUT8D1mIhJmAy2rWbb6l9AfFeL72rxXS2+q82z2jyrzbPaPKvNs9o8q82z2jyrzbPaPKvNsdocq82x2hyrzbHaHKvNsdocc6dFQw6pQhbVpf8YHK8SKZtlo9Kr0nePHJW6VjbLDf53gTQyqEQVsqhGbvAb7HOyWY4CKFIARQqgSAEUKYAiBVCkAIoUQJECKFIARQqgKPMdIfMdQQl0UAIdlEAHJdBBCXRQAh2UQAcl0EEJdFACHZRAhyx5uSx5uSx5efQfIYlGYCR+iiswCj/Dz3ElRuMqXB1GyKhXyqhXyqhXyqhXyqhXyqbnyqbnyqbnyqbnyqbnyqZZ2TQrm2Zl06xsmpVNs7JpVjbNyqZZ2TSr7raouy3qbou626Lutqi7LepuS1T6ecdcPI4nsCg6RuY9Rv1N1N9E/U3U30T9TdTfRP1N1N9E/U3U30T9TdTfRP1NZOvRsvVo2Xp01KaX3YZ2dGA7OtGFBDvQjR70huky+xyZfY7MPkdmnyOzz5HVx8nq42T1cbL6OFl9HE1foOkLNH2Bpi/Q9AWavkDTF2j6Ak1foOkLNH2Bpi/Q9AWavkDTF2j6Ak1foOkLNH2Bpi/Q9AWavkDTF2j6Ak1foOkLNH2Bpi/Q9AWavkDTF2j6Ak1foOkLNH2Bpi/Q9AWavkDTF2j6QtlXo2FlF+Jr+Dq+gftDXiXKq0R5lSivEuVVorxKlFeJ8ipRXiXKq0R5lSivEuVVorxKlFeJ8ipRXiXKq0R5lSivEuVVorxKlFeJ8ipRXiXK6yVq9RJL9BJL9BJL9BJL9BJL9BK1eolavUStXqJWL1Fb9pcoW1aPlVgVZVWxnCqWU8VyqbNLf6Pq+HnH88Nk1ewC1eyCwWp2SehMXYYRqts7qlpqVOhU2T6tso1U2T6tso3Ui0+Lrw5PxYvDK/EL0SHxy6rfKv18oz69KTpKletQ5eJ4nf7+PytdhUp30uB3THa4vl3lGRPlVLmcKpdT5XKqXE6Vy6lyOVUup8rlVLmcKpdT5XKUdAcl3UFJd1DSHZR0ByXdQUl3UNIdlHQHJd1BSXdQ0h2UdEf59JCUz8B9uB8z8QBm4UE8FM5VOc9VOc/Vd9Xqu2r1XbWqaFYVzaqiWVU0q4pmVdGsKppVRbOqaFYVzaqiWVU0S2cmdGZCZyZ0ZkJnJnRmQmcmdGZCZyZ0ZkJnJnRmQmcm5f2hs3wXdmMAe7AX+7AfYkJlHqcyj1OZL1eZ8yrzaP1fQf9X0P8V9H8F/V9B/1fQJRR1CUVdQocuoaiCn1uxJSQ6haJOoaiSX66SX15hThXmpKKfq6LndA3FigPOQ0jSEcqQQhzlVPqcjqKooyjqKIo6iqLKn1P5czqLos6imD7Wve/Bia6d7PwUyLW6jCJlcC5lkEt/xPt8kDo4QtdRpBDOpRByOo+izqOo8yjqPIo6j6LOo0g5XE45XE45XE45XJ6WR9PyaFoeTV+NMRgbRlATI6iJK6mJK6mIc/WzBUoiT0nk0w8OfiPTsPQC/GnwW5mGpV9zbAi1VEY+bS/1vYX07mgYxZGnOPIUR57iyOuFa/XCtXrhJXrhJRRIXj+8RD9cmzknyuqJa/UFib4g0Rck+oJEX9BCpczRFyT6goRaGU2tjM58N3RmvodLwzj9QZK5wmsxlfkZfo4rMdozr4J16R1a9A6J3iHROyQUTpbCyeohEj1Ekvmt+28e/FbBhOrJ6icS/USin0j0EwkVNI4KylJBx+grEkpoHCWU1VskeotEb5HoLRK9RaK3SCik0RTSaAppNIU0OrPFs7fiLcj1GbmeappONU2nmuZQTXOopXHU0mhqaQ61NI5ayur1C3r9gl6/oNcv6PULev2CXr+g1y/o9Qt6/YJev6DXL+j1C3r9gl6/oNcv6PULev0C1ZWnuvJUV57qylNdeaorT3Xlqa481ZWnuvJUV57qylNdeaorT3Xlqa481ZWnuvKVZ5rTR/HJUFt5Nr7v2T9yfhl+jJ+4drnjf2AERuLnoYNCy1NoeQotXznFZ6a5/nv3zg1LKh/3+gn0h0JVFA2j4PJV1lZ1RKitOjLKZr8eNme/gW/i4nABZXdB9rteXxc6s+MwAX9TelO9vgE3RTmKL0fx5Si+HMWXo/hyFF+O4stRfDmKL0fx5Si+HMWXo/hyFF+O4stRfDmKL0fx5Si+HMWXo/hyFF+O4stRfDmKL0fx5Si+HMWXo/hy/x8VX+4fFN+R0W3hU2WXRl8u+0H09bIfRteV/Xv0L2U/ij5Vdln0rdT50cWpEdE344vC5+KLw2fj58Oc+IXw5XhTeJ02HBrLcPFb4Y54W1get0fvjjv0W9vDruj46LYDr0ZPhtXRsrDa0z9z8NtgP+7pp3n6aZ7+z2Ujwi61datRdHO6sovC2Ub5tFHGxkvC4ngpXjjQGb8UFqpx6+JXwmvxq+E2o//KyAPx1tBm9LONPs3osdEfNPqrUWW8MsyOG8xJJx+vDj+Km8KiOO9Ta0OzqriBTn0y/Nnc/uzOb6udK9093d0T4tUHDrj7EXd/QR1d6BPX+sT9g9/teLrZTlTN36N6fyH1ZZV8RBiR+lkUp56gk18N/55aHmakNkYfS/WryEOjIfHp4bF4SZRTpU+3gj8aabl+NI5X6zXXhD+p0hWefsCK8ir1hIOVOj7Yk8ZW1ha3W1WH69tDV9m3ovKwKKpAGhlUogpZVCOHGhyCIWFxdCjODs3ROfhlWBD9CjfgRtyEX+M3+C1uxi24jQ0Xhcbo+dBYlgrNZTHKUYE0MqhEFbKoRg0OxWE4HEdgKI7EMByFo3EMjsPxeC9OwPtwIk7CyTgF78dXw4ayC/E1fB3fwERMwmRMwVT8Ar/Er3ADbsRN+DVuD+vL7sCduAt34x7ci+lhfeojYUHqLAzHheG51G9CMfXbUOTlF9mVTn62n48tsBOdfOwrfGx/vOvAtni3iBgImXjPgd3x3gPN8b6QjvcfaIvfDsPjA66HcEx5xYFt5enwufJMyJRXHthdXnWguTwb0uXVB9rKc2F4eY3rh7hvTFhUPhbX4Fpch3EYjwm4HhMxCZPxu9Bc/ihm4zHMwe8xF4/jCTyJP+ApzMN8LMAf8TRq8ScsxHNhQ/kiPI/FWIKleAEv4iW8jFfwKpZhdVhQ3oQ81mAt1qGA9SiiGS3YEBZU7AuL0jH4b7oiLE4f7ngETsSpOAMfDc3pTzjeEjak78UM59aZfsxr60lbT9p60taTnu/aAjyNWjyLRa4/j8VYAnNPm3u6zus38Bev67ESq7AW68L6dNF7bdiOHvRiJ/rQj91hQ+YQDMGhOAxHh/WZY/AuvBvH4qzQnPkERocFmaswBVNxBx7CI6Ex86Tj7rCg8v1hQ+Vpobnyw44fcbwAX/H622F95Y+8fxl+jN+4PsP1+3A/ZuJJ7Avrq6KwoeowR/FVJa6q3oVjQ3P2R6GYHYkr8DNciTEQ71nxnhXvWfGeFe9Z8Z69FbdhGm6H+WbvxF24G/fgXkzHDNyH+zETD2AWHoQ1Zh/GI/gdHsXssKD630Kx+ov4Er6MC/AVfBUXYkJ4rvp6TMQkTMYUTMUv8Ev8CjfgRtyEX+M3+C1uxi24FbdhGm7HnbgLd+Me3IvpmIH7wnO508KCQ6rCc4dkUR2ei8rVigUyf0e8JvqwvLw/uicaH2ZGE3A9JmIS9oSi/rmofy7qn4v656L+OdE/J/rnRP+c6J8T/XOif070z4n+OdE/J/rnRP+c6J8T/XOif070z4n+OdE/J/rnRP+c6J8T/XOif070z4n+OdE/J/rnRP+c6J8T/XOif070z4n+OdE/J/rnRP+c6J8T/XOif070z0npW7jK/myey0OnnrVTz9qpZ+3Us3bqQ2foQ2foO5v0nU36zqbU7LBt8Pcj//O3jt5M7Q5vqmYFVWxmvCo6Xr1sVcFu0cPN1MPN1MPN1MN16uE69XCl/qmofyrqn4p6pkTPlOiZEj1TomdK9EyJHmmmPmimPmWmnmSmHmKmHiLRI3TqDRJ9QKc+oDNzaihmThv8Ps5O2r+k5Yt0dpG2LtLCRRq4SP8m9G9C/yb0b0L/JvRvQv8m9G9C/yb0b0L/JvRvQv8m9G9C/yb0b0L/JvRvQq920qud9GpCo3ZWjvXsKV7/vvStaSGhNxN6s7NqqHi6OMygMWfQlE00ZVNuYtiWm4TJYVvN0PBmzZEYhuPxXkx1/dHwZpRSVf6grtNx8fPRJ+PF0ffiF6Oz4peio9n32fgVSurV6P3xyugCtr5AX19BMXxGb394nI/OZPe/Ug7H0TmbXN0cnUovXEAvnBJvi87z3FcO/iz7NCO9HJ50/12DYy7w3kiqYnF0iGuvO1tV+l7K//27dMtGRMP/++/TNZ8zRMenjPol9fAL5vCfV85QLXe7+jnVcrFq2TH4HcXbS/+N0tVjnX1m8GeKR7n3ZHMo/S+Ct6IPuePDzlZFw61wqPeOs9bSt75dHOrjMdHZ5v9K+afptZQrK5y94W61iSbc4WyDsyuiGmd7na2I3h+VR8OjCqSRQSWqkEU1cqjBIUa8KDoy/g6NdymusKbFdOBLdObLobF8TDS8fCyuwbW4DuMwHhNwPSZiEiZHw/Xyw/Xsw/Xsw/Xow/Xow/Xkw/Xfw/Xew/Xbwwf//0UNddtnpA1W8Vb8op0s/TeTl8Mz1O12ax/DJs+b11J3Wa2110SHlzVEJ5Y1Rh9hmUvZ4fPxd9x1SXRJfOngd8xdEl8RXi59K1F8TdgU3xt9PJ4efcI4iZ0+mZKZV/7J6Mzys6OPsNYl0XE+cZxxzrKbY6L3GqmrNP7gSDUH/6/J8vi7Pv099//A8YeOY3hYQ1hPI3fSx3sG/WdtVOlTcZQu/ScUdw9z5zB3VrkzcceOaFi0WRaloaKtdNNVRirt6TWhie7utOtDZNzGwefl7eAan/LMkiKuODzs18Pv18Pv1yPv1yPv1yPv1yPv1/vuN+ZFYVvpL5488VSRkhl82prQFx31D2N+V876AUZZ2xhKfFXoMbsd1pHwuCON3e9Trxm32rgD/8dxq427qfS/WTztcONWeGK/J3Z6Yp8nVnlaz8FV7BdnF7la+r7A71LyP8BV3hkTHeOTVWac9sldPrnfJ2vM5UDJav+Tuu+Ar6rI/j9T7sx9792XhBBCElrooKiA2EAUXKzIomsHKQqKBdSliUixrIqIUlTAFSmCuoqLXRQQdRWVVVFEiii9hB56C2T+35n3EhMSCAms/v73fmbe3Clnzp175jtzZu49DyVz0CvW0KW0Fm4d3AFI9kG4HLhDcIeBDtdBc7nRNBQ3Ay06UCfRGb+34LcHdJ+e4KevmSwGQC5G07mQh/PR4j+ixqbu2fxkXnK1/WwWoc+lQMs5GJeRxhK0ZS6cobpeMl2q28G1h+tIdfUYuClwK3G9Cm41HPjU2Yjbjd+94M3af8wGZwdwzwfA2Sm47wPg7BTcdwbu2yKGj/sN416zxGJKclI3CyX+gxJrUSIDJdaiRAZKnIvcSeB5vZO8n0wO+N6PkmtdqZ/d/xK0Q33tIckd8dsJv32AiqupBhAvGxgTBjKmAxnLAe9muX/Usc9vKXIJxGTjOVyH0I2ub1hreKmiF6Tqfox368H3BtS40Wxz8rYS5daiXBjUfVDmSFlK6dTV7KDb4G6H64Wnfx2eZzvw1RGuDyTT5l4DKVmPls4CTxuhX24Clc0YJ5tTRS/J7PC2wG01O1R3uB5w98DdC9cHri/oJsT/E2gJKC8F5aWiF+6qDzB/NZ7jGkjRWvQgd7fA4Q1oo43mO6eLVwR/OeAvB/zlxO/erikvB5XloMJB5RTwmAQq+0AlF1SspXkfFFbZ/yMCfzngLwf85YC/HPCXA/5ywF8OnUZd6Uq6De52uP7Uih6EGwA3EG4QtUKNiaixATDLQwtfDczy0MpXA7NeQ0u/i5b+BHL6NeT0csjpleINMxL39C1GiDoxbjBuWW42YDZxHjWFjDaVzc0SOYFayYlwk6iVl0RXeivxuwW/W+G2UytVH+5suO50peoBdw/cvXCWPx9c7Y3LDY/LDXfPyrbgRpPlViOmge9X47lS47lSwfc25GzsViA2mgWQjO65X0AX3ArdbyV0va3Q7VbKernrIGvdc7chNhsx2bKeuQBUu+cuF3vRzjkofQjYcNjMk57ZB71wv4yY3cg5DzkvcWU/R+p8xMxHTNiV3SYOor4ctMphsxA6Zq4MkULZXORaCF0yFzkvBC51z12PWnKhpe4GZ1vEAfzmoNZDkMxYyUOoNRfa6W5wvEX6+A2DiwjiY5QO4Q72QOq6Q6/dRwxUskElF1QMKGxwdStiKJ2N0rkobVByQ5yH+radckeAh9UoXROlf0XpveIgeqzl/hDk+DAkLhfzBGMOg5fVoFYT1H4Ftb0yZH52dxXBcw4oCZryJlA+DJ7+bUdRw0FxP/hYJnKJo9R+1L1MRhGuZ6rbHLk/IEcW6rMttRQ5skDTttJS0NiO1j3ieeHpx58TSpfwfFxe91yQt4TngXs8wecAPC1l+wNlTnK74x6P0t4updh2pgSZQiFZAfylUVhmgFollKmMOUMVhKsirRrSaiCtFq5rI60O0upiPJAyFTVUQmomfmvjmQQyBVfQIWRF1J+BGiqhJkurKuKrIb464mshvjbiQQdPwea2NVeK57A1WVrJ4IsjdZ1MRUxFuDSqCv6SkXMdaFYFfxz8cZRaJzORXh2uBuJrIU9txNVBuK79V3JQWQZe7R1ymQ5eM8iLU7Gll4F/e4dc1kRaLaTFSnPcbwpcBcheKnhOA90M3EslPP3KqKuKvS+kV0N6JtJrIL0W4mojvQ7S6+L+cBd4NhVANxWxFeHSzCLwkIvWWS0r41lWwT1XRZ5qyJOJ9OpwNZCnJvLUQp46yFMXI5t9ToFr1zRKAR+2xfaDjxTwEQEfgWvbGriu5VpwP3hIAQ8R+1RIuHvPiLdzjHvbesLdd6xEdpxrTolllQn02m1ovyPkAr39DIqWVjZQqiHpo8kHUmtT+ZMlI6DWAHddRjlB6XpU7kRlBVTOs3d0cuQFT+K/7jmWSWbc2BAtrdw4VK8n9uZuBJJ2BuJUBqq1EQdzs4FqF4tDuZuAPl2BaplAtabSy90IRO0MNKoMVGsjQ7nZQLWLZSR3E5CpK1AtE6jWVKbk7kWLnIYWqY8WqS/TcJ1uGqBFEsBVI7RKHbRKbVkV8dWQLxN5qsPVwHVN5KuFfLWRrw7y1YXUhKC5BdC5LhT2f32+oPKY7aZgplsLs4pzMVeYg9leovtvoRmsIzVjnekSdgs9xW7Fbxdo7teZceJ66CI3mBmYeYxz/1RX/xi55rhc9j+QFrvYvKu38684NPnZ7DPztgvZf7dbjVAitOTTiKgpdNJTqCXOhtSarqFGdD3dgNibMJc7n+6gYXQFPUNv0L00g2bj6jOcI+m/tIhG0RKcE2gZtJOJlAWKr7NKrBL9xKqy02gBu5K1oTWsLbuW1rF27GbazDqxTrSN3cK6Ujbrzu6hXawPG0t72T9xZrBxOCux8Tgrs9fZG6wK+4z9wKrxhrwxO4M34eewxrwpb8rO5hfwC9k5/C+8FTuPX8IvYc34Zbw1O5+34W1YC341v4a15NfzG1kr3p63Z5fyTrwTu4x35bexy3k33o215nfye9iVvCfvy/7G+/En2A38Sf4068aH89GsOx/LX2C9+RT+DuvL3+Nz2D/413wRG8OX8DXsNb6Rb2bv8Wy+nX3Id/J97CN+gOew2dwIYp8LLgT7QmgRZXNEokhm34kUkcJ+FKkig80X1UUNtkjUErXZElFX1GdLRQNxGlsmzhBnsBWikWjMVoom4my2WjQVzdg60VxcwLJEC9GCbRQXiYvYJtFKtGKbRRvRlm0R14obWbZoJ7qw3aK76MFyRU9xPycxQAzgSgwSg7gWo8UY7otpYhoPi/fF+zwipovpPBAfiy94VMwTi3maWC028xpirzC8gfRkAj9bpsh6vIVsLpvz62Rv+QS/Xg6VH/C75EdyNh8tv5c/8JfkT3Idnyg3SMPf98JemH/nBV7Av/eSvGQ+z1vg/cLne795K/kSb423hi/z1nvr+XJvg7eRr/A2e9v5Km+nt5NneXu8fXyDd8A7wDd7OV4O3+IdVh7fqrRK4HtVkkriuSpZVeBGpamqQqjq6kwRVmeps0QVdY66VFRVbdV14gzVQT0izlb/UI+Lm9WT6inRSQ1Xw8WtaqQaJbqo59Xz4jY1Ro0Tt6uJaqLoriaryaKHekW9Iu5RU9V74l71oZol+qlP1X/EYPWV+lo8quaqheIxtVgtEaPUUrVUPKeWqxXieZWlNokxaoc6JF7UpLl4TWudKd7QdXQT8aU+TzcXC3QL3UIs0X/Rl4pf9BX6r2K5vlpfLdboa/W1Yq2+Xl8v1ul2upNYr7vormKLvlPfKbbpu3U/ka3760HisH5IPyy5flw/IaUeqp+SSg/XY6Wv/6n/KZP1OD1Oltfj9QSZoqfoKTJVT9UzZUX9hZ4r6+n5epE8Q/+qd8qz9G59ULbRh7SR1/p1/DryRr+ef4q8yT/dP0Pe7Dfxm8iO/nl+U9nJP99vLm/xW/gtZBf/Mv8K2dW/0r9SdvP/6reVd/jX+NfJu/yb/JtkD7+L303e49/r/1328vv7/WVff6A/UN7vP+Q/Ivv5T/hPygf9p/xhcpA/3B8uH/JH+aPkw/5o/0X5iP+a/y85xJ/qT5VD/Wn+NPmUv9PfJYf5e/w98hl/v79fDg8B+OSIkAxJOSqkQ2H5bCgIVZRjQumhdDk5VClUVU4JZYYy5b/C14TbydfDncOd5TvhruGu8t3wHeE75Xvhu8N3yw/CPcL3yA/D94Xvkx+F+4b7yo/D/cP95YzwgPBgOTP8RPhN+Wn4s/A3cl14Yfg3uS28PLxO7g0fiGTI3EjNyAgvMzIqMsl7JvJhZLY3PvJDZKf3WqCDNO/b4NTgYm9ZcGNwh7c/uDu4T4WCnkFvlRj0Dfqp5KB/0F9VCAYEj6nUYEjwjMoMRgQjVN1gVPCcqheMDiaqU4OXg5fV2cGU4E11TvBW8L5qEUwPZqpLgk+CT1Tr4NPgU3Vl8HnwjWoTfBf8pK4Lfg5+VjcHi4IlqkOwNFihOgergu3q9mBXsF/1DQ4Gh9SAIDdKanCUR7l6JCqjSj0a9aNR9Xg0KZqqhkXTomnq2WhGtLJ6Llo1WkuNidaJ1lHjo4Ojg9WE6MPRx9TE6JDo0+qV6Mjos2pq9PnoaDUt+kL0BfV29MXoi+qd6EvRSerd6OToa2p6Ak9IULMSkhMqqrkJlRKqqB8S9iUcVD8RD2P+ThRcVO4qqkeZdJIOM8OsMeupodmA8K/F5sg1L5q3cGabobi6yrRHmTkIbYinbzCb4K+KX+0tUt6mbjK7cf6epoupZxfccyXy+yDcJ4VilqOGVFvLUQ9oXsj3i8lBOMBIfjNFcb2mMI95d1NMnd+ZlWab+R4UVuNus0ri8TgOH1RHx6mvNVvMHLMufrWzSO2b4ZaZFWaB2W+uoBDa7hSqXiA9t6TKzB48u92g8DvnaH/MWGKpr5hXKIDLf4ZHlN4Kt84sBY3luPQwz6pDFyBUzaV+aeaZRZAfyA709uLrf8O8bMbjdwjcheZ008f0RqhAO+bdPUJbipTONV+ZLEjQV+Zb8IHnYFuvcKn8vN+V0BQEPZUowYWeicdsA+3v82SzoFTEY3bjznei7X81uzDfT0RUEzyF/NrNZveENuflLlJ+i9mIPrYtr8Xtyqj7/a1gnpL4judbWujq74Wuvjk+GjgaufxxSTOL8fx8s7iEmvcV6NuN6NwScr9p/mV7tPnquHkqXH69lQ4rs0VSFh5HadyZedyFPjyyP5tbj6M8ZMS873BruX1upT3M6w5NX0e7Fj3846KQbWY41DxOuSiGws7jl6piSscR1vxUptJvO3+xRY6Tfpx5HPWvj41lJgdytKvUNQTHTK0L9zdXS96Ityp2xtOrFVOmPs5qOOsX4vLV+O8PsfMY5RsVWz7eupCSPUCnPUdjGPi51ewAgq10fcpK9X4X/6xLrmo+M7PNz3ZEP0r5QwXCT1E68P8Gamt7SDxuGcaGmUWxOL9MToHwCIw8iXQ5dUZ4WjxuDVpv/tFH1bz6nUS/gPIhoE/POJLb+HfNWyTM9KOWP1IKPcyeuiH+6Xj6N+ZrtP9/41dF8ftggfBQlE6nNmRnQhfG4z4xH4PCv49a/9ri43PxxCw+mqvNX01X0zaee0KR8o8AxV4x/zY/mp8LRHPqQI/SMISeoeH2mxl6E5I7jaZjdjiTZlNjt6pwNn1Bi+gc+oXWUWvKYoxuZJ1ZZ+oFjf5v1Nvq8tTXavF0P7+L96AHoI8voYH8V76GBvENfAM9wTfxzTTE6uY0lO/l+2gYz+E59IzVzWm41c1pJHTzCD0rqolqNFbcLDrQC6KzuIVelB/KD8lqtYbGe8leMn2nPlAf0PfqEzWb5qlf1W/0ozLK0E9Wp6MFVqejJfoqfTUtszodrYBOdwOttDodrbY6HW2wOh1tsjodbbY6HR2wOh3lQqd7ihG0uZFM6Wf1WBayOh1LtDodS7I6HSunJ+sprLzV6VgFq9OxOtDpdrLToM0Z1tYXvsfa+74fZh39wE9gt/jl/PKsq1/Br8i6+Rl+ZXaXX9XPZD38mn5tdp9/gX8h6wWt7TbWB9rZENYP2tlTrL/Vv9iDVidiA6xOxAZGHoyMYA9bTYeNCZKCNDYzeDN4k30ZrAm2szlW12ALrK7BfrG6BvvN6hpshdU12Eqra7A1VtdgG62uwbZbXYPtsLoG2211DZZj9Qh2yOoR7LDVIzhPCCVEuE6okFCRhxP2Jxzkdk9hsZMY5iSGQ2JGQ6MYQ/+ETL9IUxDzCk5Nr9IbGKWmQp6UkycFeZqFXvcJpCrspCoMqZqL+P/SzxShhTg5pGwRZtW/0G+YXS2j1ehjayBz1SmLdqDH78RZg3bRPqpJ+3HWogN0mGpTLiSynJPIKk4ihZPIwElkAInsTkm8B+QycHKZDLlcRql8OV9O5fkKvooq8tV8NaXxNZDXyk5eKzl5TXPyWsHJa4aT1/LccEPlBab/lAKp5fBxUAXIrkYYD5/SRQhynOLkuBLk+GaqIzpAmutCmjsjfAtkuq6T6SqQ6WXE5HK5jrhcL7NIyQ1yG0VkttxNVeUeuZcS5T55iKrJw5D+2k76qzvpr+Kkv4qT/ipO+qtA+v9CKbqVbkURfbG+mKS+BP3BQ3+4AjGtdWvEXKmvJK3b6Dbk67+in9REP7kKZa9Gbwm53hKxKyAU1TegzySgz7Sn6vpm3YESdUfdkWrrTuhF5VwvKud6EUMvuhuluuv7kOfvuidieulexHVv3Qe19NV9Qfl+9LQIetqDKDVAD0D8QD0Q+Qeh70Vd32N2PQV5hugnUe9Q/RRSh+vhiBmhR6DUSD0SeZ7VoxEzRo8BJ2P1WMSgf1LY9k/QGa/Ho9QEPQHxk/Vk0JmipyDnVD0VMW/qaSj7ln4L7fC2fh8t84H+GHzO0DPQJjP1THD1hZ4Dbr/Sc0FzvoZk6oUaMqkX66Wg9qteQZl6pV6DNlmrN6CujXoT1dCb9Ra05Fa9jWrpbJ2NGrfrneB5t96NnHv0HqTu1XsRv0/vAyf79QHQP6gPgnKOzgHlQ/oQldeH9WHUnqtzUdZoY/9f1feoikUT+EAT+EAT+EAT+EAT+EAT+EAT+EAT+EATYkCTJ+AP8YcQt5hC0mIKMYspFABTBsAfGB5MSRZZSABZFlEQWRxZQtHIL5GdlGRRhoRFGUoHyqyh8sHaYC2lBOuCdRQN1gfrKTXICrKQuiHYQGnBxmAjVQ42BVsR3hZsQ/7sIBt5tgfbkWdXsAvh3cEeygj2BnuRZ1+wH3kOBgeRmhMcokiQGxhKi1rVurzFL/gyKuF7UUXJQDGfKkZD0TBViEaiEeQMolGqDFwrj5iUaCplWHSjVKBbBvxK0crIUzVajVKimdFM0KkerYFwzWhN5K8VrYUwsA/xwD7EvBQdj1omRCei1KToJFCeHJ0Cmq9EX6MKFg1JWDSkJIuGlATEeieOhiNwCoeGHtBwLMIvAgeFw0EFFHwT4Wn0EfyPCdIGNPwM4f8AAwXNAQ4K4OBCIOYi4Ktw6/e+w0HhcLCCw8FUh4Nhh4MVHQ6mORxMdziY4XAwYIkskaKsHWsHvzvrAf9e1hN+b9Yb/lA2lKJAyauJO5QMASW7wrcoGXEoGXIomeAwMYVv4VuonMPBZIeD5flhfpgSHQImCSkkJQP7fITDIkzlRDvRjiqL9u5NNot9VRz2VRMdRUfEd3Jvt1kcrOJwsJq4VXShSvk4mEUCCLibfGDfIQo71MtwqJdqV23RP1vqlui9F+mLSDiM8/WlwDgJjGuNsEU34dBNOXRL0211W8RYdBP6Gn0N/Gv1dchpMU46dEt16BZ26JYBdOtMgb5V3wq/i+6C/Lfp2+B3093gW6TzHdKF40jXW/dGTB8gnXIY5+sH9AMo21/3R/48pBuMcAzjHtGPImyRzndIJxzShfUwPQylntbPIMainu9QL4ij3ig9CvEW+3yHfRkO9YRDPalfAuqJOOpN1BMRnqQnAdFe1i8jv8VB4XAwowAOCoeDPnBwBsIx7JulP0f4C/0jfIt9PrBvKcIW9So41Et1qBd2qFfRoV6aQ710h3oZDvUCvUvvQimLfakO+9Ic9mXEse8QME44jAt85jMSMbQK9ws/QKHwg+EH4Q8MD6RIeDCwKRJ+OPwwYh4LP0Yhh1M8MiryAnGHOCnBVmBNUrAj2EnJDl+SHLKkAFn2Ibw/OECJwJRc9HOLKeWiIiooEWiiKcHhSLLDkRQgSDLCFkHKRytGKyKPxY6UaJVoFcRXi2NHdVCw2JHssCPJYUc5hx3JwI6XQHNCdAJKTY5ORv4pQI1khxqceOPtduX1nPV/OZuuoBuPNs///+MwG8xG6+JXK4vTu+w6j1vrKy3ttXaFy2nen7nrX/PqdP6Pce1zi9U/nS661Kw2WYVXdEquN2+FztxXeg5P7mFaQ/O0v0fVvYuU2ABN++uyr8vk09ly5JXZ4fx4PHTF3WjZ1WYbXP7KXgFNNKVA6aXItYTsukdFhOIrjHna9R90hPO5KVhvQDe5uM3FrS6YTUXX5sxOs8r8gpQiuxBlPfJWyQtf2f4Tl+oC6wXgXeSHtxztKZsVRVc1T9ZR/A5OiaWmmEnu95BbDf/GOrs+ZF5HaG48T55k2R68x/yQF1+qetY6GV39+7VdBTPLCuR42q0H2bXyFS60FtwURKh4+x7v83Wr1qtLzlf6A5JWgK7Zaw7BHbRrXeZwoXzH2pf6P3b8wX3+OA4z7gQKX1UMvdVUDzJY9QSoHvuoRw5bLZ46TC32ADYc9x7iiY8VR9ArxFXBvnec5d81s83b8f2BFDPBzHaxa+zoXnD0LtP8YQmwcaWbP2S5uYlDMzsmmZX4nRrPtc3tt/0Xbg7OrMIr1w7J0ilvbfZLjAVzzXy4cYi9wiww37r4n2OzCLejfVPpOS3C+cZCV24MNe8UiLnLTDY9zJN2ld/0zI9thriPbL8ruutIds+16F7oJvMZ7mXpyeupefJgxzEgWN68cC7F92cL8gBczt8bsXssJVD+/mTxWNYDrRR1vyPtfnOR1N7my0J5Y7/LMLqtsRJShvoWWql38y3XTjaE8W1lvNXgmzvNPPe895EoZgyLUsMiNLehH2yN7y4JIEfertO+WOqJj2+/70MX3q/Mm6XYuZcbt9fi3FZk7rnCzT2L6e3ozScZu4o7jsCzBUXSDx0ZE4//e/HxVJp99FIf5vZSFoi9YzHEPOZ+sx0CvGcdQv8yH8ZCLi1vfub2O/GkPi4Dd++aj4CYH8SvvjRvkH0/aLoNwwE5gWJfAiXyZsHZQN9v4zgR2z9LKELza/OB+TROM8VexeMLoYMxpefWlUMvNb/kX+XpLqtsKE+vjM3EHaLNtfIRe0ck3n92OkTuYK5yV5+S3c27D+5+hEaYsRjr7o9TKfBuC1pgpulfBm5vMQPNy6YHQv9Br37ZdHP48DRGo5fRzp+aceYOjK3Zdg/Q3dkMM81MjNUcHzUyzH+OoJllFkGrjPXcs/JD8XmnORBzxz9jLkR7t+vv+W8FFR6l3Didr/m6me9K995DwTcuTi/8xsofdRTexXVvMG0tmRN3R0Xev/ojjsKarG1VyPCukvDTPZ2TpumW5ig4/0BvsFrWYvweZac7P+emE+fXvGQGmH+YMS78A+R9kn1TJj4OxeaLe8z7cLNPrB5HqWHsTZYTorHGrMdI6MZHPNP1kMP8OXfsqZvtmHNsL24GWOq6yjDnLlD629hTBS8WB7+PX62I9584139Ofy7uMLeb28ws8yFxdzXQ9AVad47NCMx0sx9Xw8zfzXmmJnC0ibnf3HkCdcXmj5knxG8ck2I6bf77hpMKp57Mw0w5CTSs9C6KoTrmt0WevktfbX76fRT+cw9w8yv6nFvzhAxbTTFfU4nNdJH6NdxR3lX9ow/w+0zBnov51Yw/k5+jH+htve3cKfamq+mF2dHP6H2xtE+d/6v52LQ3TyI03PwWiytjXV+fOL+lrHF3wfe8/u8e+XPcnSf+dmVx77qfzCM2O8T8ex1GvZOwYlHSO8rHLHucEmXecmv7m8teU4Ej/aRQOa4Dc6ETnrmakSeDkxLqiCMdZrcnvC5/kp5SSbWswcz2f9xTTt6BWc/uk9YyySfAx8no73/gfkRZpBHzntWxkvEvO/LWRea5fYZ5xyx8Tzzv26Wv948+yvINRBEaR90NOUYZt1pvV4pimnBsRSd/Lzh8LP3Yre2mUw9Spa/XlS/DV14my40dv39Llrcmd7y6XYQuLX2tf+qRWtaCpd95IvtWg92XztfszUznbwU+l7gb8X/twLx/z9G/mSiQb///npfjO44PIcs6qhf7rVSJdbk3CH7/dtDtWORLVrjYQnl57VpVZWqPPvcnHIXn7jHUgPZUAs66nZg/Yb3P7DiJtFZRfEW52C+O6ruvnOwO+g/FpJZE235HtSqvZF7IrfCvisfk1dnM1XUEXwWunvidZh4v9nutIlzZr7Ia2V2asmjtZpx51czI/w4sHrIzgvia5g/5fDQqwu+rpa+vUPkyvClkfnK7Ev/Nv3bvAGG+qY57p+84vt47St3FfptcQpn1btXKjuQOC9zVl+h7MWQIH2t+6UaURLrg+L7XLKZ8Wd5/WGC/t3Rub+za+fFV82OjQ/xeKhd+3wjytcPMd24cVcScdGN8N2llrE87Wbur9JyWcB+xHbYC2rrpbO43r5nxzm5A/js9prV5t5SUv/xjZsyWx6PXY3KL21WO7SgeEbej5F2csh7uHZk4MpudmE/sxPxoiVn6OxKZLYize8bnmuvd9XuQgEWmg5ljr82n5jnzlV0xd2nPFqK9LC++VBy1NT3Mw+aK+JULQQK7ufCrZrLpCTkYh9naDIy8NseH5gPzfnzUtqvzqdTQ7Tn3M91dXOx9xPGYV79kn4e1kpD/FlChtSBzIO9r/lLx+4J5HbraP+NX81zd4xzOz3NtYHdf3za7zecuQ+yr/fgbBnEpPqv0tf5Zx//ka+yitazKQ6zYvvOfdZRlnwpPeisVWHXIt5BwPGNPebLv71zjwpWpCXTPTFd2HWYd69xoUonONAvRQ+25zCw356G/dKPAxMb1uJ6K3hnTqSrGr9+N71Rwyv9i2sW/eYz7cO9WmP4Y5+IrkKal6QTX2txO5U1sDM6zoTEQ7mLTzFxn4l82mG/Mb+5tCdtjN2FMWhXXX0+lem7kPNXlOvbqRvF8TTKT4b+efz3D6nKF3qy4Nh5oT3+jc6mxsxNT26UUvPdw7k8mkrvPjZSzzN3mPTuGmUHmURsC1aGFqo29A3Z3Gfjtbu7F/d/rLnyEujvcfNSN1PPxLLNyY1/ST3dWQfIO17KmV5zGceh4xda9seQ8RcpscW8E2HmCkyYnzV/iWrrk4JjzHVsqkc4H95wWlGDHrl3cjt0jdDnjrAJ1ddbp+jnrdEOcdbqhrB3rQCPYnexOes7ZpXue9WFDaSwbxsbQNGudjmZY63Q001qno1nWOh19wj5nP9CnvCFvRPN4E342/Wit09ECfiG/kH621uloIb+ct6bFvCfvRUt5P/4A/cZH8GdpOZ/Cp9Bq/hqfRmv4h3w6beYf849pK5/FZ9M2/iWfQzv4XD6XdvHv+TzazX/k82kvX8AX0H6+iC+iAyIQUTookkQyHbIW5sg4C3PkLMx5opaoxbSzMOc7q3IRcbY4m0WdVbkEZ1UuyVmVS3b25MqLdqI9SxEdRSeWar+VY2nW6hvLsFbf2OlyupzN2lmrb+xWa+mN3WYtvbHbvSSvHOvmpXjp7E5r743d6/3mrWJ9rb03NsDae2MDrb03Nsjae2MPWXtv7HFvj5fDnrA23tgz1sYbG2NtvLEJ1sYbm2htvLEp1sYbm2ptvLHZ1sYb+9TaeGM/qg7qcbbYWnfjzFp349Jad+Oete7GtbXuxn01UU3mCdauG0+2dt14eWvXjVe2dt14TWvXjddVc9USXt9adOPnWYtuvKnKUpv5+daiG29pLbrxNtaiG7/KWnTjd1mLbvwB+30cH+Rzn/PBvvI1f8iP+BH+iJ/oJ/FH/RQ/hT/mp/np/HG/il+FD/Gr+zX4k9biGn/KWlzjw6zFNT7cb+Q34iOt3TU+ytpd489au2v8eb+F35KPsXbX+AvW7hofZ+2u8Zes3TU+wdpd4y/7t/vd+GRrd42/4vf2e/N/Wetr/HVrfY2/Ya2v8an+k/6TfJo/zB/G3/KH+yP429b6Gn/XWl/j71nra/xja32Nz/Tf82fzWf5n/gL+jb/IX8x/83/xf+XL/WV+Fl/lb/R38S3WKhvfZ62y8f2+CTF+wFpl44esVTZ+2FplEyyUHqoqotYemygfqhGqJ1JCp4ZOF5VCjUONRbXQWaGzRGbonFAzUT3UPHSRqBNqFWolGoQuCV0mTgtdEWotGobahNqKxqEbQjeKs0L3hHqKc8KZ4VrifGvdTbS01t3E5dZam7jCWmsT91lrbeIBa61NPGyttYknI9dGuoip9qs9MdNaaxNfBDpIFN9ZO21iYdA+uENst3baRK610yaltdMmtbXTJsPWTpuMWDttsoK10yYrWzttsoq10yYzrZ02eWowJZgqG1g7bbKJtdMmm1o7bfJCa6dNtrB22mRLa6dNXm7ttMmrrJ02ebW10yavDVYFq2U7a2VN3mytrMkO1sqavNVaWZN3WCtr8m5rZU32SOAJvrwnIUhIkH0SkhNSZD9rWU0+mLAvYZ8clEiJTA4mzlYD9RKg8SVSEjEqh1NQMsZhSWkYuz2M6rURXwenproYBX1qAJQMAQ+bUQA8tP/zcIH7BwyLmAkOMROBmNej1A04ywE3O4BiR+pCLagrMLQlMLQnZg69cF5EvakfVaAHcKZSfxqEmgcDYdOAsAGlsyhLoAz3hXAllgTMPQ2YWxcx9Vg9asjqs1MQfyo7FeEGwOJ0h8WNgMVt4V8FRL7Y2QtNZx2Ay40dLjd2uHwmcHkA4geyJ6gJG8KGgOaTQOpKQOrhdDYbwZ6nc9hooHYjh9qNHGo3cqjdEKj9OsJvALsbArvnYDz4in1FzdjX7Fs6n30HNG/u0JwDzZvAPwuYrhymJzlM5w7TkxympzhM/4vD9DMcpp/rML0yMP11qsbf4G9QFT6V/5uq82lA+RoO5Ws4lM8Eys+C/wmwvqrD+loO66sA67+HPw+InwnE/xH+fOB+VYf7VR3u1wTuB1RbRIH+dRz613PoXxfon0aniHSRTqeKDJFBrexIgDBGAqqPkaAu/HqiPkphPKAGdjxAqaaiKfxmohlSm4vm8C8QFyAPxgb4GBsQY7+1vtR9a32Z+776Uvd99WXum+pLME4MpgvkQ/IJYhgtRlCiHClH03lyjBxL5eULcjw1lRPkJKooX5b/pnQ5TX5AGRhRplNja02Umthxhc634woFdlyBn+QlUUuvnFeOGtnRhRpjdPmZhLfQW0iZ3iJvESV6i73FJL0l3i/kYdT5DTHLvGWIWe4tJ+2t8FaQ7630VlIFb5W3iiJ2TKKoHZOQc4O3gcp5G72NlIyRaTMxb4u3FTVu87KpvLfd204V7ViFGvd4eyjN2+vtpebePm8feNvv7Qc/B7wDCB/0DiKc4+XQBd5h7zAo5ypO5ZVQki5QnvKIYYTThMFC+RRVIRWmRBVRERIqUAGlqaiKUnOVoBKQB6Og/Vd3VR5lU1QFlE1T6cifoSpRsqqsqoByVVWVrAXU6vBrqBqgUFPVRP5aqhby11b1kL++qk8V1SnqFMSfqk4lqRqoBpSgTlOng/4Z6gyUbagagloj1Qh5GqvGKHumOpMCO+KirnPUOYg/VzVFzmaqGSicr1qQp1qqi5HzEnUJaXWpuhQ8t1VX477+pq4D/Q6qM2q/Rd2KWrqo20Gnm7qbWqju6l5qqe5TvVFjH9WXLlL3K6CHekD1p1T1oHoQ3A5Qg3Avg9VDoPOwehgUHlGPgMKj6lGKqH+of6CWx9RjyPO4ehy1YAZAlewMgBpiBjCSmqhRahSdaecBlI55wBikjlVjKUO9oIAD6kX1Ip2vxqlxaO2JaiL8SeplamxtwCI/5gqgMFVNhf+mgpSqaWoayr6l3qaL1TvqHVB+V733/yg7H7Cmzrvv3zlJTg54AEWqiJRaSpFSyqhSyihapMgodZRZa53zMSGEJMBJCCEJIYSTv0RnnbPOWeacddY5Z61zzjnnfJzzcc7Xejle65zzcZY5H+fj4+ucY87X+tj3e/9Cmdt1vdf1vp7r/ua+fuc+f3KSnPvz5Uq+Yu1+cT+2/bH4Y9QPiAcx8qfiIYz8mXgEa38uHmUVIIzjqP9S/CUrBWf8D4w/KZ5E5QPxA4w8Jf4KI4fFYZzP/xTPYMyH4oc4w7Pir3HO58Rz7BnxN+Jv2PPiefE8tgWjYKtL4iXs+SPxI2z1R/GP2Ns18TrG/5f4Xxj/Z/GvGHNHvIOr8Tfxbzi3u+J9No1zDJsNjklDP90wiZUbMg2T2XRDlmEqqzBkG3LZ84ZHDTPYs6CcmazaUGR4ir1sKDY8zV4wlBhKUHnG8Bk2x1BmKMMenjU8i5GzDLMwZrZhNtaWG+AdwUafZc8ZqgxVONYLhhcwvtpQjbVzDHNwLJ4poOHMxGZxZoKCmaBgJiiYCQpmgoKZoGAmKJiJ5XBmYtM5M0HBTOwZzkzog5lYNWcmNo1n1bJSaZ40D1uBnFABOWEMyAkKcmIVnJzY8yAnOAHJJtnYHPBTF8uQXFI3xoCisC0oCnVQFEaGpTD2E5Ei6EelKOogKpwPiArjvyp9lZVLa6W12ApcxWaDqzag8raEd500JH0T/e9K38Wxdkg72MuctFABabFUTlpQkBYUpAUFaUH/U/oze1G6Ld3GUf4i/QX7AXWxMk5d6H8ifcL/760UxuanaFI0bBonMDYdBGaASikSey4F/1hZSmpKKvpySjo0IwXzb8rElImsImVSSiYqk1Mms+qUrJQsNjvlkZRH2JyUKSlTUZ+WMo2Vp+Sk5LBnUqanTEc/NyUXR3k05VGszUvJQwVshz7YDmcCtoOC7aBgOyjYDgq2g4LtoGA7KNgOCraDgu2gYDuWytmOvQi2e41NTF2UuoiJqa+nvo7+4tTF6L+R+gb6S1KXsixOfqisSN3GhNTvpO5CH/yHPvgPY8B/GPO/J2iYMEGYkMNe4hTIKpPZDZwCmcApEAoKhH5J/hJ7VF4mL2Mz5H+R/4VNkpfLy9ljslE2sidkk2xi+XKL3MK0slluQ98qWzHeJtswxi7bMaZT7kRfkR2sQHbKTozpkl0Y45bdWNsje1geyLIXdb/sRx18CQ3KQeiArLJcOSSH2eNyRI5iZEyOYWRcHsQRV8pvorJaXoM9g0FxlHXyOujX5PUYs0F+G+c8JA9hP9+QN6L/TfmbGL9J3oT+t+RvYZ+b5c1Y+478Dpspb5G3sKc4ubIikOs29rT8Hfk7rE7eLn8P/Z3yTox5T34Pa78vfx+6R/4BK5H3ynux9ofyPqz9sXyAFcs/kQ+i8lP5p6iAd6HgXejP5aPsSfnf5GMY8wv5OCuUfyn/EiNPyCdwlFPyr1AZls9gn6Bh7P+cfA76G/k8xlyQ/x1rL8oXsZ/fyZfQ/0j+iJWDkn+PvV2WL7OZnJVZHlg5ynLTYmlxlp82mIarBG5eyUrSvpyGa5W2Om01eyztK2lfQeWttHXs6bSvpX2N1XGeRgU8zUo4T7MsztNM4DwNBU9DwdMsi/M0mwWyqyGerieeFoikk9z8KTFzPk4nPk5nX8SSTmTcQGTcSGScSWS8gMh4CpHxVCLjbCLjaQ/l9+gpv0ei/B495ffoKb8nlfJ79JTfo6f8njTK79FTfo+e8nv0lN+TQfk9esrvyaD8Hj3l97xM+T2vUH7PZMrv+Tzl9zRRfs+rlN/TTPk9OSD1CeDmNE0aMfo09pwmR5MDhuakXglSf5VVEYu/pnld80XUOYu/oLFqrCBsr8YL9WkC4OYgiPx5EPlKNgcs/mX039S8ifGcyJ8Hkb/NasDim9g8UPg+6I80P2K1mv2an2Etp/A3iMJfIgqvIwqfDwovY1qicO1D/K0Ff79E/P0y+PsVonCeMKSjhKFJlDA0iRKGHqGEoUnE6F8gRv+s8GVhFZvLk/3ZojFS51z+tPB94fvsKeEAuPwJIvInichnCh8IH4C/OYs/LpwRzqD+a/D345Ra9KjwW+F3IPKPhI+gPMGohFLdioUrwn+g8kfhj1Ce7ZZHyUYFwv8SbqLP840KhT8Lt9HnKUdFwsfCffR51tFjwgPhE5ZHiUf5Wo1WQJ/nHhVq9Vo9+jz9KJ/Sjwq0E7QTUMkA/ZcS988i7i8n7l+ona7NRZ3Tf6n2CdD/Z7SFoP9Sov8ybbG2GP0SbQn0We1sNhtO4Hn0K7WV7BntZ+EHSskPPKuthh8o1b6ofRH7536glJzA6+QEFpMTeJ2cwGLyAPWg/w0sHdy/mWUS8WcT8U8n4q/U7QfxvwDiP8bm6H6hO8VqifvrHspk0lMmUwZlMk2mTKZmcgKN5ATmUT7TK+QHquAHPmQieQCD/rfwACJ5AAN5gHSifwPRf7b+iv4KKP+q/o+ocO4XifinEvE3EvFnEvFnE/FP04/qR6Gc6euJ6Q3E9JnE9PXE9IIogukNRPMGovlpRO31xOsGIvVMIvVpROf1xOUG4vJs4vJ6sDh8r1gKIheJxTOJxevHKLxcLMf4CrEC4zmL1xOFJ5nbQJxtILZuILZuJLbOJLZeQGw9hdh6KrF1NrH1NKLnaeJqcTWY8iviV0CTnJ6riJirxQ3iBtQ5MT9HxDxP3CxuBkdyVq4Qt4KVq4mVpxMrzxG3izvB8e+BkqcTJb9GfDxH3Cfuw1ackiuIkl8DJR/Atj8BK08nVq4kVp4j/pt4DHv4hfgLjOesXEGUPJ0ouZIoeQ5Rcp14BpRcTZQ8jyi5gih5DlFyDVHyfKLk58Tfib/DWs7HSTJ+Trwh3kKF83El8XEV8fFr4gPxAQiVk3E1kfEckPFU9DkT1xATzzM8bniS1RIZ1xEZv0Fk/BJx8Dzi4DeIg+uIg6cbnjc8D+UEPJ8IuM7wouFF7JMnimVQlpiessQyKEUsg1LE9JQilkopYk2UIqanFDG9YaFhIY7Os8T0lCWWQSlir1CK2GRKEWumFLEcShHLoRQxPaWI6SlFTE8pYhmUIjb5oRSxDEoRS6UUsQxKEcuhFDE9pYhlUIqY/qEUMT2liGVQipieUsQmU4pYDqWI6SlFLINSxHIeShHTU4pYBqWINVOKmJ7yw/QP5YfpKT8sjfLDMig/TE/5Yc0P5YfpKT8sg/LD9JQflkH5YXrKD9NTflgG5YfpKT/sZcoPe4XywyZTftjnKT+sifLDXqX8sGbKD8uh/DA95Ye9QvlhTZQf1vxQfpie8sNyKD9MDw8zmVXBsTzJ5pE/qZVmSjPhDYqkIrD+09LTrFIqkZ6B3yiVSlEvk8rGfEuFNEuazeaTe6mQKqRKKPcwddIL0gvYD/cwtVK99Dlog/QK9rZA+jzGNElN7DnpVTiZOVKztBAO4Q3pDazlfqZGMkpGnI9ZMmOrZBIjdzh1cDgdOBZ3OOlSt+TGfnqkHmzllbzsJalX6kVlQArhWXCfU0XeZjolN1aQw6mW1khroNznzCefUy19XcJdgnxOBTmcOdI70juovCu9i6Nzt1NHbucN6XvSTmzFPc8c6X3pfYz5vrQH+kM4nwnSJekP0P+A55lAnudz5HlqpVFpFHvmnqdK+lj6GM+Oe54J5HleI88zjzxPNbmdCnI7VeR2KlLS4HCq4XAmsRpyOHXkcF4ihzMfDmcKXNDUlGyMnAaHU0neZjr5mVr4mZk4SjH8zAT4mXJoRUoVdA48zATyMBPgYV6FcvcygdzLBHIvn4N7WTTmWLhXWQIfspQcy7LUZai0prayuakdqR1QJVWBOlOdUFeqC+pJ9UB5Ft0kyqKbRFl0j1AW3SOURTeJsugmkfPRkrf5woTpE/LZZyc0TvgCmzvBMiHAFlFSnY7cjg4O52m4CO5hniYP85TcBg/zuNwud4DUuW95nBzL03AsXei75G44B5/sQ4V7lSfkfrkflQE5BJfC/cmT5E+eJn/yFPzJKlTehEt5ilzKTPmr8lcxnvuTp+Wvyxuw9m34k5nwJ9/A3rg/eZL8SdKZPEHOpFT+tvxt6Lvyu1DuTMrJmSyUvwdn8iycyS7U35d3szJyJs+SM5lNzqQczuSHqOyTf8SekffL+zHyJ/JPUOf+5DPyIfiTUvmwfBhrj8GZlJEnKSdPslA+KX+Atafk06hzZzJb/lD+ECO5JymXfytfQP3f4Ulmw5P8Dnu7BGeSR86kTB6RR3Bc7k9mkT/5jPwHGYxH6YAllEdaLF+Xb6DCkwLz5ZvyLfR5XmAh5QXmU15gCeUF5lNe4GOUR5on/7f831CeHVgifyKDAClBsABgDgKkHMHHKJs0j9IEH6Vs0jzKFCykTMESyiYtTktPy0Cd5wsWpk1Om4wKTxksopTBx9Ky03KwlmcNllDWYCFlDRZR1mBBWn5aPtbyxMFCShzMp8TBgrSOtA72ODmxJ+HEIuTE8H5IW5G2Ag5tJdzXk+S+ZpPvWgjf9XX0N6QNsTJyX7PTNqZtRJ8nFxZScuGjlFxYQsmFRZRcWEjJhTqmmX47Nwz4lbWr2EeMmZaimdCsaAqaG80//qhx7cSjihZHW4W2Fm0D2ia0rWg70Haj7UM7iHYE7TjaKbQzaOfRLjEhfJIaM12hJoSH0c6hfx3tFtodtPuMtQhoElo6WhZaDtqM5Dm0FP5fHkuS+2qZNdb4NpVoc2kda6lDa0yeL22zNfkcW5rRFqMtS9bHHoXwRWoa1x60/ehfHq8l2zW0m2P9c2ijY/17yRZhY01Ek9Ey0bLR8pJjIwU0nrWY0ezJ69TiHL/mybHFNI61eNACaGG0xNhzWJ08XqRs7LmuQxtC2zy2ftvY+oqxVo0aXscW/nwOoR0dfy7J57wf7RDaUbQTaKfRzqJdQBtBuzr2eOOhx0/H30a7O/Z4YWy7uw+tf8CYWYeWijYRbQpa7t8f+etnzkcr+n9+FCK1f3+t+HMzl4691v+/LecfG72/VyWPQ++rnOQ4Ou7DrRyt6u+P4/tI7leINKBeg1Y/9v7DOvOCvz+aF6It0U1aPuJoHBg2xbsYqUgqQ1d1ZULXdmVDN3TlQTd1FUC3dhUPDPOtQstMO7rKQublVx3NA+eW33AsHrho2t1VQVo93t/XVTtwka8N2ZffdiwbuGw62NUwcDnZH9O7DvPANdORribSRdDj1D9O/VNdS6FnukzQ811W6KUuZeAa3yrkhNrRf+BwDtw0XelyQ693+aG3utSBm7we8hh1Ds/AqOlOVxx6v2tVKGBMdQQG7rUIXWtJN5BugkotddD0rq3QrK4d0Jyu3dAZXfsG7vGtQuGWwq6D6ibjREdYxZXtOqIy4xRHQhW5hhLGXMdqVW6Z1XUcWtl1SpV5JbQ6WR/TfMc6NdNY5BhSs1vmdp0Z17qu82o2r4fWjWmpY7Oa19LYdYn0CrSZ+ou7rkOXdd2CmrvuQO1d98fV6RJCQy0elxTabCx3bFMLWgKudLWA9lY8Vgm7sj5VXgltM1Y5dqplLQlXDumMT/u8HtpprHHsUStaVrsK1QreD+0x1rhK0K937FerW9a5ZpFWjveHXHOhm1110G2uRuhOVzN0j2sx9Zep1Xzb0H7jAschtda40HFUbWjZ7zKP6yGXOXSo5ajLrjYYlzhOqE3G5Y7TdA5OUs94/4QrgDOxOM6qi1pOu8LjetaVUBcZOxwX1KXtR/rCpAnS1dDjfeugp/qGoGf6NkPP922DXurbqS7lWw0G2q/07RkMG12OEdVk9Dmuqtb26337obf6DpHy/p2+o6qVrx1MGIOOG6rYfr/vhCp2CI4bg6uTaow6bqtKh9R3mvQsNJ366dTP6rsAzekbgc7ouwot7LuhKnyrwXXQu+ivdDxQ3R0lfbehs/ruQiv7UOH1wSHjGqdO9XfMDXCtC6QObjaud6aqakdjYCLXjgT1p0CbA7nQxYF86LJAEdQcKIXaA+Wqyrca3NbhDFQN7jRuNF5W4x2eQI0aN25xTlRXcY0UGLc7p6hrOwKBemg4sEBdyyuDe5L1Md3lzFU3GPc689VNHYnAwnFdHViCzw7qg/vH9ICzSN3asS6wnNQy3h8KdEA3B1zQbQEfdGcgCN0TiEL3B1YOHuo4FFgTMhsPO0vVHR1HA+sHj9Ledo9VTgQ2Qk9z5ZXBE8ZjznJ1X8fZwBbS7Z/2eX3wtPGks0o92HEhsEs9yPuDZztGAnsHLxiHnTXqkY6ruPLQwIHx/o3AYejtwDHo3cBJ6IPAsHqkUxc4B00NXFSP8G0HR4znnPXqceNF5wL1VOfEwOV/0imBa+op42XnQvWM8ZpziXq+Mzdwk3R0vJ8fuKeeN950LlcvdRb1s3Et7RfVS8ZRp0W90nLBtZp0HXSE+lddQ9Abrs3Q265t0LuundAHrj3qFb5V6KhZ59ofOmG85+xQr5uY06XeMqe6DkEnkk4hzXUdVW/xtaHTJtHpU++YRNcJrrxvznedDqWbZGdQvW8ucp0lvfBP/VLXCLTcdRVa5boBrXHdVu/zrUJnTZnOaEgwZTtXhiRzvesudIHrAXRhtw66pDs1JJnynGtC6eblpJbuiaELpgLn+lCWuaN7CmkuaX4oy1TQXYS+q7sU6usuhwa7q3gd40fM0e4aVFZ214eumoqdG0M55jXdC6DruxeGckxlzi3qGa6hG+aN3UtCt00Vzu0Yv6V7OfZQ0W3hispIsj6m1c5doRmmWudenNv27g7oLtK93S5cGV6/az7Q7cPsSX1Tg/NAqNB8uDtIGh3XY90roSe710CHu9dDz3VvhF7s3gK93L099MB8rXtXWIf9HA6VmPK690JrncegTc6TOM+b3Qego1ypMmJa5BwOzTLf6z78j8rrYdjW7mOhwlax+2R4ommp81yoslXuHg5V8n54imlpNyomk/MiPa+kXv6035rZfQ2a3X0Tmtc9Ci3ovgctdjNomVvEc+fb3jVZnZdDc02K81qorrXCLf+TVrszQ3Umt/NmqNHkd46GmltrXeu4urPHtcGdF2o2qc57ocWtTe4C6CLSpe5iqMldFs7lTBLOb7W6K8AnYINwUavirh641up210L97obkDB4u5fNguLxVdTepea1x9yI1j89E4arWVe6lfFZym6CYa8I1rWvdVrWidYNbwfyCz0u4vnWT261e4e/b8ILWrW6/er91h1uF7nbHk++x8EL++oaXtO5zrwoVmhrca6G4DuHlrQfdG/g1cW+CJp/pEfdW6HH3jlAzzThXO8v7Zcw+/M5/o7OqP1NVOmv6s6H1/Xlj9+fb/C43eLdzQX+ButV4oL8Yyu8zDzoX9pfxe05/BRR3koSuc0l/Ne4ey/tr1fP0zh9pPeXeHba0nnHvC3e0nncfDLtaL7mPhH2tV9zHBy62XnefGrjcest9JhzEmPMYc8d9KRxtve++El5pEdzXw2sskvtWeL0l3X1n4KZxgfu+WmvJ6hHCGy05PVJ4i3FJT7raZJnRkxXebizqyQnvMpb2zFDzLIU9haETlpKekvBey6yeWeEDSd6wVPZUhg9b5vbMHRjmRBE+ZqnrqQuftDT2NPJXoaf505nd0tyzmHQZdDHObdiyrMccPmcx99jDFy32Hmf4ssXZ4wlfs3h6AuGblkBPODyaZNoWoScBiktyFFGKJdyzGuxK3GhJ9KyDru4ZAsXx98a9FnMP1LKuZ1uEWYZ6dkZEy+aePRHZso2PNOp69g+MWnb2HIpkJsnNtKnn6MCwZU/PCXzGiVEt+3tOD1xryek5O3DPcqjnAo5u7xnBdTjacxV6oueGWmA53XMbDLaz5y7O52zPA+gFjy68xnTHk4r9j3gmRrItVz1TwsP8CkTyLDc8ucn3dqTActuTj/3c9RSpFZYHntJIcZvOUx4pSxJmW6qnKlLRNtFTE6nmn4tIbdsUTz0oHaweaUhqW65nQZLAI00P6SLSpXQUE6m1Ld+zcOBaW5FnycDNtlLP8oFRTtQRpa3cYxnru0n9/PMVUceuJHg4Eiddxc8qsratytMRWZvsk25oq/G41My2eo8PPAwqjmxqW+AJJhk4svUh3QFS9agFbQs9UegSrpxaI7uT2rbcszJJqpF9bRbPGrWsrcOzHoo6Ki7PxiS1hmv+rpGD/FMfOUJ6PKltPs8WsCiINHKqLejZDvIEl0bOtEU9u9SmtpWevVCX5wCY87TnMNiSvy7nk9q2xnMscsmc7zmJTze/M6e3rfcMY/bM95xDf6PnYuSKKc9zmc8InmuR621bPDdDt9u2e0Yjt9p2ee5F7rTt9bLI/bYDXjEqjN3b6e5tWuqVo1LbYW8m7sZ+b3Y0PXknbDvmzYtmtZ30FkRz2oa766Mz2s55i6OFSQYwd3jLMBfQLNN2kd+3k3N022VvRbSk7Zq3Ojqr7SafbdtGvbWY9XDXilaah70N0cq2e66z0bnm9d6mUI6VeRdFc8bm5e3epaF0q+g1cZbwWtUrVtmr8Dnd61bvWzO9/lCWNdur4rgXvXE+f3lxD7TmedeiXuDdEMpqLfNu+nSmsBZ7t0brrGXeHTg3sEQk01rh3R0e5s8u2mit9u5L3mlDZ6213oPYT4P3CGYBzLnRZmuTc290MZ+nosusi7zHo2brUu+pqN1q8p6JOvl1i3poPwGr1Xs+GrYq3kvwOLiHRxNJ2uEaXp7UT6nG6Yuu5pqsRNeRDvFziG4m3WZ1e6+EBKvfez0kWVVOI5xMwsutce+tZB/zHRRbYS6I7uR33ehO6yrvnSRXRPeMKZ5FeKF1rfc+5gvq0/Paad3gE0IzrJt8EogCXBHdb93qS09SBM5qXKND5u2+rFCJdYcvB7rbNyM542M/0Ogh6z5fYXKWjx61HvSVhGZZj/hmQVFH5bivMjnLR088pKf5PBU9SzpEesF6yjcXczdm8OiI9YyvDjM15vHoVet5X2Oo0XrJ1wy94luMWazJtyy0mK75DdLbY1fmus8cqrTe8tlDddY7Pmeo2Xrf51Gv2ARfIHq309LfkEjt7Ohvijd1uvoXQX39S9W1ncF+k2rtjPZbVbFzZb+SmIgxbqxd0+9PTOlc369i7cb+eCK3c0v/qkR+5/b+tXBDW/o3qKs6d/VvShQZ1/dvVdXOvf07EqWdB/p3J8o7D/fvS1Rhxjyobu081n8ktrLzZP/xRE3ncP+pRH3SHRhP9p9RD3ae6z+fWNB5MbA3sbDzcv+lxJLOa/1X4OOu9V8f5/Cb/bcSyztH+++gf6//fmyvwoJCwqKIQSnRocjB9IRLyQxmJXxKdjAnEVTygjMS0aQD7WgMFsJzJZ0OeQqlIFiSWJl0eUoxKm6lLDgLngtzfWJNx7ZgZWJNZ1FwbmK9UhGsS2xUqoONiY6OEj7SuCbYrPqV2uDixJakz2o/Elz2qZ9NekylgXxlY8dV7viC5vGj7wzaoeSVlKagE44p6XEewGMeURb134pUd8wNerD/pcFAYrtiCobhs3AFErsUazAxxirrFCW4Wt2quIPr1POKPziU2Kuowc2JA0k/qMSD2xKHlVXBnYljnHMSJ5W1wT3w1HDWiWHSc8qG4H7MGnDQmC+giYtcQ+SpE5f5URLXkqpsCh7CM9oKz+VWdgSPqn7ufxM3ld3BE2P9UdJ7nJdWsLErCfe6QhxTnNUKWdkXPL1CTvZJM5WDwbPqBuVI8ALcKzzsimzleHAk6VhX5D2kBR0ngldxxU4Fb0DPcOUeM7wkqcr54O2kr1xRrFwK3lX3KVeCD6Coo3J9QJf0mCvKHtIKTnErqklrk6rcGkiFc4R/XNGg3BmYCJ8IF7miSbk/MEU94xAGcqHSQL563pE+UJRYzl+XFYtIlxrXDJQmbjqyBsrVg46cgSr1lGPGQA1GFg7Uq0ttki8cfUDegeYjunfBs9jSfYmYzpblWx1LNYm+dZFMW45viM8dvs2xibYZXNHfFptiK/TtjOVC94xriW9/LN82y3coVmSrxFZS0tPZ5vqOxkptdb4TsXJbo+90rMrW7Dsbq7Hl8Psn6V3bYt+FyC1+t4zVky4wR30joSzbMt/V2EKb2XcjtsRU4bsdGrHZfXdjy21O34OYhbSD3ydjrjFvBY35bJ5eXSyY9Fm2QG9qLGoL906MrbQleqfE1thW9+bG1tvW9eZDh3qLYhv5PTO2hXS7bXNvaWwXtDwk2Lb1VsX22nb21sT2JucU257e+tgB2/7eBbHDtkO9C2PHbEd7l8RO2k70Lo9U011Usp3utahW29nejtiw7UKvK3bONtLri100Kb3BUJ3tam80NNd2o3elui85Q3GNXTapmA3R710TDSTJrW1i7/rYNdvt3o2xmybWuyU2arvbuz12z/agd1f0ga2kd28s367rPRArtaf2Ho4z+8TeY3HRPqX3ZFy25/YOq2vt+b6heObDe7MX9Z6LZ9tLey/G8+zlvZfjBfaq3mvxYntN7814mb2+dzReYV/Qey9ebV/oZ/Fa+xK/GG+wL/fL8Sa7xZ8J7fBnxzPH1OXPU6/Yff6C+CJ70F8ci9qj/rL4UvtKf0XcZF/jr45b7ev9tXHFvtHfEHfbt/ib4n7++sZV+3aTPx637/Iviq+y5/pxz7fv9Zvia5Ovnf2A3xrfYD/sV8Jr7Mf87vgm+0m/HzrsV+Nb7eew6Q77Rf+qaJapwQ+HZb/s3wC95t8U322/6d8a32cf9e+A3uutih9sZ/7dkUvton+fKrbL/oPxI+2Z/iPx4+3Z/uOq0p7nPxU/1V7gPxM/017sPx8/317mHI5Ut1f4L8Wq2qv9V+KXMPI6Rtb6b8WvJI/S3uC/E7/e3uS/Hx5uX9QnxG+ZRHuReqd9aZ8Uv2Oq7ksPzWg39WXF77db+3IGhXalb8ag1O62Bwcl06I+zM7t/r6SQbBc36zQ4na1r3Iwqz3eN3cwp31VX93gjPa1fY2DhbZZfc2RW1wHS5Kuv31D3+LBWe2b+pYNVnJ6GZzLKWWwjv8VZbAx+Ymjv2CsHvtLxT9+Og6P/a2A/jIw2Ny+tc8cK+Lz++Bi7sEHl/F346A5+dchuj/cbd/hG8L+icTad/fZQ2dthX3O0Nmxv97Q31Xa9zldg3bb7T7PoDPp+tsP9gUGPfy1Di9kApuquaX5M2Oav2ruMEFzT/Mx02k+ETRMFPSCyFKECYLMJggThUksTXhEmMIyhBxhOpsk5AtPsMlCkfAUe0T4lvAtNlXboH2ZZevr9Z9jOXq3vofl6n+u/znLS8fCHkufkf55NiO9OX0Za0o3pg+yL6W/lf4zFk0/kX6D/SD9Zvoddg5n8wWmo//9IJ1lsBQ2iS1iE9hiZmavMgt7ky1jX2FrWJytZR+yBPs1+z07yf6gSWW/0ciaNPaJJkPziEaj4b9xkvj3JjVTNUs1Nk2upl2T0BRrVmrWaxo0Q5pvaV7X/EjzK82XtO9r39f4dB6dV9OrC+uimj7dSt2bmqDuLd1bmrDubd03NBHdO7p3NXHdbt0ezZd1+3U/0azW/Uz3M81a3S90v9S8Rb/HXK87o/tQ87bukm5E8w3dVd1/ajbp/qT7k2aL7q+6v2m+zb9Fp9mmn6yfrPmu/kP9A80OUS8WaM6KM8WZmlHxKbFU81fxebFK8zH/hYfmE/ElsU7QifXi5wVRfFVcJqSLLaJFyBWtoluYIXpFVXhG/LK4RnheXCtuEuaI74jbhUb+ywlhobhb/EB4TTwtnha6xWHxvOAWL4oXhX5xRBwRguIfxevCAP8+lhAR/yKOCgnxjvhAWGlghjThLUOm4RHhHcNUwxPCu4ZCw3PCHsM8gyIcMfQY1gk3DF83fF0rG942bNKmGd4z7NZO5v+vqnaq4ceGA9pcw0HDz7V5/PtA2kLDrw3nteWGC4ar2krDfxr+pp0vFUp7tYukv6Q8rv19+sfpH+v47+UUthIqszz+a+PaPWNNQithhYq54a5ir2t4+VxdmeJUPEqgYUQJK4k6pXmtsl85pBytO6icUE4rZ5ULyohydUHqgnxl9QKfsm5+43y7MqRsVrYpO5U9C/Ln1+FdpcN7/Ba9x//KNJpPNJ8wAe/oiUyLdY/SN1GZ8J7wHtMI7wvvY90e4QdMK/yr8K9MT99EFYVfCb9iEv0SLEX4UDjLUuk7qDJ9+zRN+L3we5ZO3zvNEP4k/AmfDv7N0kytRqsZ/1+D9VqRTaFfjmVrp2insGnabG02y6Fvik7XFmmL2KP0q7A8bbW2ms2g34A9rq3RzmP59KuYAvrOxpM4f1mTSVeOK+s8xoKdxzpPdg53nuu82Hm581rnzc7RznsK6xxVREVWMpVsanlKgVLceVMpUyqUaqVWaVCalEXKUsWkWBVFcSt+RVXiyiplrbJB2aRspbZD2a3sUw4qR5TjyinljHL+4cWxWLmkXFGuK7fGlzvKfYfgkB5a0h1ZjhzHDFQL/2FZ5ijE2BLHLEelcv/TxTHXUedohPKl2WFWbjnsGOt0mB0eR8ARdiQcq7HPQsc6x5Bjs2Mbnr8mRRm7a/DfrE+ia5KNRctysehYIZvJ9KwEi4F9BovEqrCksGosqWwulgmsjs2nb5e/grsO/91lBvsiW8omsuVYMnHfsbDJzI4li/UwD/3iMkC/tQzRN8pjLAf3o7fYdPY2lkfZN7Hksf/D3tdAR1We6+6Z2TOM/IyRpogR0xgRY4gIgdIYaaQ0hjB/RBqRYoRpZs/fnsn8z4AcGpGLnJTSNFCklCJyOZSmKaWUYgoxIFKMNM1NkYOIHJrDRQ5yMI0s5EYOF+l532fvCUOIha5z7lp3rXZ963n2x7ff/e7v533f7/02IfxE2Cp8Sfg5lfuF7VRyhT1UHhBepzJa2EvlQeG3wkHqXzuVPPxv2A8Lx4X3hXzhj1QKhA+oPCJ8SGWccFH4hPp+WfgPYYJwjcpEjVYzSJikGUyxrxg/P/44xb4MYQp+frxEk625X3hC84DmAeHr+PeepRQNK/AvOucKZZrnNA5huqZaUy1Y8LPkVvzrTpsmoAkIdk1IExJmahKapFCh+bZmqTCLYudyYQ5Fz+8I39R8V7NSeFbToGkQnsO/7pxHkXS3MF/TomkRnJr9mjcFSdOmeVtwa36n+Z3g1fxe0yH4YL9+igJ5QsCYb8wXQvjpvLBxgrFQiOAn8mLGYmOxEDeWGEuEBP4lURI/f7fA6DB+S3je6DQ6hX+gtT0r9ML2J/NvlpB3EVoI+wlthA4VR1QcJ3QJz8gt8n65Te6Qj8jH5S75jHxeviD3El/1a/1GKiZ/pj/Ln+Mf4y/wF/qL/CX+Ur/ZX+Gf7a/yV/u9/qA/7l/kX+Jf7l/pX+1f59/o30Klyb/D3+xv9R/wH/J3+o/6T/hP+c/6u/0X/Zf91wJ1ATEwOJARGBEYFcgN5AXGBSYFigNTqZQFrIFZgTlU5gWkgBwIB5KBxYGlVOoDawLr+X8Q1VfrfbQJPmeah9+v8OR/m33bqNwJK8+Ald8FK/8CrDwTVv5FWPkIWPlIWHkWrPxeWPkoWHk2rPxLsPIcWHkurPwBWPloWPmDsPIxsPKHYOUPCx1U8mHrY2HrBbD1cbD1R2Hr42HrE2DrE2HrXyZb1wqTYd9fgX0/prlPk012z5Y9BZb9VVh2Cf59xBOw5qmw5q/BmqfBmr9O1vxt8oEXNC+QD/C/kpgOay6HNZs1P9D8gPyBbdqKfx9hgzXbYc0Vmg6y41maTk2n8A3j08anhUrjXONc4Wmjz+jjf6+dsSRjBa3TUJr7IYImMo/srpBQRCghlKptZkIFYTahitvEu+RJkcn+I38ZkDkePSoXR6bIUyPT/F03gtvkski5/wzhfPQEQ7ZG7P4LfxksI8+KVMpzInP9vdfBf5bnRRz+qxFHQBs9JUsRd8D4lwEZU/SsLEcCgcxIQA5HokAysjCQRciJBlEfE+0OFEQvyosjtfLSyLJA4XXgz0XRy3JdZEWg5BYojV4LmGOiXB9pANZE1srrIxsCFQq4zmMLzL4OjHVTZHOgKrKZr8DWSGOg+tZgOXlbZLu8M7Ir4L0R8u5IS0pvOuR9kf2B4HXIByNtt4PwvOR6uT3SIR+OHBkQxyLHGWEpuYkhn4x03RZOR87I5yLnb0JP5AIjLMfq5UuR3ttBOJzcKl+JXGX4hagWMESNjHAyuY2voWCiye+IVvuHRk3+4dHM/ggvTu70j4xm3Qrhpcnd0JEdzQFGR8f486MFN2B8tPAmTI4W3YAp0ZLbxrRoqb88ar4J9miFvzI6+ybMjVbdAB73bSAQjw32u6NefyAaHBB0L7AolhFYEhsBuWg0fltYGF3kr40uuQmsbzlhZWyUf1l0+e0gsDqW618RXdmHhujqPvD9dYSNsTzUt8TGBZpik/xro+vQ334I7IgVo74huvFWCDTHpgZaY2U36Ngc3XIDGqNNN4GfPRCz+rdHdwQOxWbh2hmbM1B/Phe7os3+lmjrTdgfPeBvix66CR3RznQEjsbmpWJ7eixOxcq+GHciJvXFoFMxOT2O9NlJ+rqm1iU1R2dj4b657Y4l0/uEWFJHMYV8P1yvxIDwGsV/4Vfro1nYN8jew5sIW5P7UvYc3kZXeg/fD1yMLQ5cji0NXIvV1Yixet5fagbH1nA7j60mI7a+ZkRsE8fXmlGxrRwna3Jj22ryYjt5D6gZF9vNsR1jJnuvmRTbl4rPNcWxgzVTY+087pqy2GGeixpr7BjHTtYJzIqdrJkTO10zL3auRor11MixSzXh2JWaZFzg+cUexHNJc1izmPZJdT+rWUr7jzrPNXWkpz5uYB24tyY+tGZ9fDjvO317bdoa9elkqHtKai/gPvHeWLMpPhJ92xrPTq0z5Dn209pjX6Y9D2PbFh/NbTU7aQ8vVsD7Nc/vDbAq+zLvV9iP6T2pvZivANkPxtZvj8W7CDW7I7UM3mNT+2oKNfsiDYy+PZL3THVvTN8rb9gj1X0yhZqDtA/SGmPvo/2wpj3SwoDd8j63T0FfzCLUHI7n43osPr7mZHwy2il+1JyOT6k5F59W0xMvr7kUt6OdfZj3EvZb8iP2p5or8cqgEJ/LsShoiDvgFyk/UOMibIv0cJwLDqXYpPoI1oviFj+fioE3+VY/v+qLL6n+kw6Om8HhcTeveXBkPND3PMuTvwWz49Hg6PhC7ncwP14bHB9fhhjO46ExBCfHVwSnxBvw3K3ij9qv4DQ1jqd8fHmajNpnjLVfPO4bD8fhFD7vXZ8TT4Pl6tUe3cFj6kP/OJkeKzk+pmJkekwkWehhGb5HcxCsjFnDO5MHw7uT7QzObXi9kdfsSx5GG8Ws4JGEKXwweSyVv4TbkyeDy+L7Ecco7wgfTp5GTkExLbg9fj5YG29J5QThY8lziGm8/3PewLHuZLKH9+jw6eSl8LnkleD++NVwzwIhfGmBIXxlwdCIsGB4xLBgZGTogmzkZGq8xLOcm6l5E3KeVI7CulQdfC8yfMFojpfcr77cLpWHXboeg4FUDqPmHqyL87HIyAX5nO9EsheMTz0PeRoP/kzzBT+hsUVGL5iMNs4bU1DzxBvQPxdUc78boM5r/7yuD5yLpdA/r0vlaAPkZpF8BbfMzTj3Ss+/OOdK5V1pORb3Fc+yjDonN/kW+V9wbnztTX7liG9I5VhBd3xzMBBv5FiUkgtG49vZroML47tgT6k4wDLsc2R/uK6ItwUb4h2or40fCW6IH2ek+1twc7yLY0SwMX4G9rkrfuGmPIYQbIn3AmSPDPghx622hBbXjoQx5YPsE8HjicxgVyKrz/84Bp1J5CDWnE+MCV5IFAR7E4W896TA4+UzFvyPxhy8migKaRMl0E3xI2RMlGKcqnzIlDCHMhMVoazE7FBOoopjUWhMojpUkPCGChPBUFEizvsf9kCOT5QThEoSi0KliSUcj0PmxHKcWWgvDFUkVoZmJ1aHqhLreL5C1YmNIW9iC58TQvHEDp6n0KJEM8uHliRaQ8sTB0IrE4c4B+T4n4rNodWJztC6xFGA9PE+w7Yd2pg4wfMe2pI4FWpKnGU7C+1IdCOG0TqGmhMXca81cRk6DiSucSwPHUqKoc7k4NDRZEboRHJE6FRyVOhsMjfUncwLXUyO4/kNXU5OQhzj8V9LFvM1LCansj2EByfLwhlJa3hEclZ4VHJOn/1QDs75Rzg3OS+cl5TC45Iy2tWYG56UDIeLk0msH/lJeGpycbgsuTRsTdb12WrqHJDao6genpWsZ5nwnOQabhO0gsa03NQgCH//G5S/ob9B6RYuXv97AKlXCLiyXDmuMa4CV6GryFVSKbpKXWZXBfFsV5XUqxRXDsNV7fJKV5XiCrrirkWuJa7lrpWu1a51ro2uLa4m147Kelezq7Vyn+uA65Cr02VSy2rgqOuEK1Mtp1xnXd2ui67Lrmtu0T3YneEe4R7lznXnuce5J7mL3VPdZS5tqpCE1T3LPcc9z2VUiltyy+4wySXRQ+4RS/I9fh+9gb/zD2si257x3/Id1Ea+MZPKXfgOOhzfQb+A76BfxHfQEYJXkIW7hQCVLHwNvRdfQ+/D19Av4WtoDr6G3o+voQ/ga+hofA19EF9DH8LX0Dx8DX0YX0Pz8TV0LL6GFpDPdQjjhE4qE/A1tBBfQyfia+iX8TV0svCh8O/CV4SPqBTjm+jj+Cb6VXwTfQLfRKfim+jX8E3065psTbZQim+iT+KbaBm+iU7HN9FyfBOdgW+iZnwTteCbqFXzbc0Lgl3zouZF4Sl8E52Fb6LfwDfRp/E1dDZ5+m+EZzR7NHuEufgm+iy+iT6Hb6LzxRXidwUHftNgtbhb3CNI5Ndtgls8J/674CX/7aW51AgLhdrrtuqkETuPOU86TzvPOXuoXHJeoYk3SEOl4dJIKRvFLQWkqLRQqqWyTFohNUhrpQ3SZqlR2o4yWsqXxkuTpSko08Dlkp24UporObiw3WjHkt08otrNcLyfLUZLa/QQWQ/bikjzX0jWw7ZigK0MIkt5kmyIv5nfQdYxl2yI7WMI7GMovpMPo3H5yZLYGjLIFlaRPbEdDCcr2Er2xBaQKfyKyhdhASNgAXfT+h8ku+Xv4ffQmr9PFsarfi9WfRS+gd9HK39eyMYa52gyaI3vx+rmYl0fwIqO1szXOIQHsaIP0YqGhTxNklY0H1+5x2pW0ioWYBUfwSqOwzftRzW/0ewWxgsa42TjlLT1yBfvcub3L9IiaYlzvHNyqkhjnFPUMq1/kZY7y512pUgrnZXOSmk1tfQr0jppo3MuFQcVNxdpC64BZzRVpCbnwpuLtAMaFjpr1bJMKVKzc4VzhdRK3HBzkQ441zo39JXNLKuWRrVs71982327nLucLanivuDcr5a2/sXX4uxIvcu333mEymZq6Vdck5y9zuNU+H1dXLx5komuZ/AEiqvnZu3ONm8ZNLSlZtZ5Xim+NucF5wVfI3HvzcXXQeO72lfskravGJUywEwdkjolk5TZV45KWSgnrs9EqkinpBxpTKpgxc9KBf1KN+GiVIhSROWy2n7NJRKX9I3I7qx1DZZKby6uDMnsGiFVSLO5uEZJVUpx5UpBaqmWql15UnWanr7iGuc8L3n7SlCKp4oy+84uWhGyb1cxbLfcNdVVxjbmsvJMuGaxfbjmUG0eRlvgklwyeiRjrIomtpQjWKUO33FfF6zhDGb/PGa62xUm3xlP8zfZOcWVdDa6FtMsm1xLqX91rnqyZYdrDdn7Qtd6SevaRLbcUF3n2ioV0XvryU6Wkew2107XbudV1z7XQVc79Zjtv8F1GKN00Iodci5zHSMJu+uk6zTpYq/FiCCp+Aqv7jJnpesc9b+HxnyJ2leQ3GTyuhWuK1Qb75rnFpxT3Ab3UPdw90h3tns0fLlSKe5893j2V/dk9xQq09zl5K0BxWPddncl3kZvcs91LnM72CfdpJkkA+6oe6G71r3Muda9QvU/9sBGd4M7QLZmgr1l0d21klkqcm+Qstyb3Y3u7VKVexetL62Wq97d4t7vbqOZK5BKqU9rpU53h/sISR+n0iUVultggTxKrBXLUSGL4VlynyGcl0rJhxvcvdQed1/1aN1dHqOH3u3J9GR5cjxjPAU017KnkO3dU+Qp8ZR6zJ4KtnGaWay5Z7Yrj6ytyFPlDniqqXg9QamEC92Lewo9i2gEZmk23VkiVXmWs50SV3tWelZ71nk2ukd7tjjPe5okr2cH2WOQx+Zp9rTSO6vJQuM8Pt8F5y5fr1eiyLDfd5XWp4vGU0r20iBrZSNFgUbZRJGizb3W0y1nOkc6W6rbPRVylpzDfk02Q7Mlj5EL5EJ3o1wkl5CFcuTopWjGs9Poa/G1KBLOBu9huZR0cbyDBUNSiTJkwaTriGx2rpUrnNvl2c42SUtyLdSfC3IV1XZ5quRq535XsafQWyx75aAcRxRUI5m8yIfI6inyHfEdkZfIyynOnVFinbxSXo230Zvkdc7z8kaOZsQX5I3yFrlJ3uEdIVNE91QpkQuxy+g7L7fKK6Uq+QD3xHOA1oltp8pzyNPJ9qMUVz31u81zlGOS5wSt8SmpglbnLNlVAcWDAk83zfUWz0WpxHPZc81p94peijvOM94M74jq9up27yhawS1kNxecC7253jzvOO8kb7F3qlTt7uJ5d+6SirxlXqvzgneWd477jHceec8KCjCyFKT3d9H+eNY7lTzYRDGrmu6EvUnvYinLu9Rb5633rnHWSkbveu8m71bnEe82707vbsnk3UdaTd6D3nbncdLc5T1MfTJRX455T3pPe895e7yXqI8dpNvovECSV3yCz+Bc4RtK0WY4+ZKd7GYkPVNAtlLkyyb77faNdm735nm6Pd2ues8pZ5f7iC/fN943muZB65vsm+Kb5u7wlfvsvkrfXJ/D5/aVS2a6Bty9vqhvIUnXeus9nb5lvhVS3NfgW+vb4Nvsrfc1uiRkU4/8/YT5N3TC9Aph/FTDCP7fZByNguZbWiHTsYVKE5UdVJqptDpa51JxHHAcmH98/nHHISqdjk60HaVyggq3naJylgo9N6dnTo+jm8pFB59htSa7aSa9IwMnGgEnGi3OMjrkvCLOMnqcYgzIeQfhFGPEKeYOnFyG4OQyFDmvCTnvnch5M3BmuQunlS8ImgwpI4gx4ecOHZMEjcNK12K6zhLvKt/qKLsdmM103UbY+TnYrcBcpaB8323iIKF9ABxWYI7T9djtwbyEridVnFZxTsGMLuVqXkfYSPUewqWbYW6i65Vbw9xMaCW9ggoDYeiNwNj6Ycbwfhj5VyCbMHoA5A+glzG+HybfHuw07zOmEKZ9DsoV2I8pmGG/TVQS5g4AhwI7rdsM9+3BTms7I6AiqmKhAvs55Wo7RdcjhFrCspthJxuYseLWsF9SdTSoWEvY0A+bB0BjP2z/K7CL0DIA9hPaBkBHPxy5PZjP0vW4A/4xIOieuZtwUZU7c5s4T7gwAI6rOq/Rtff2YBHpevU6zNrr6JPJUK8jCKPonvH6u9JhyVXfb7o1LHmEcTc+b87sh6wBwM9OomsOXYvV69SB+/N5MI8hFAyAQkLRACi5EZaytPidHm9T8VKNYxaroy++WGY5bowfKTtJX1d1vvvmaE7a3M67sU99MSU9BqR8WPUt3jNSNj9zZD+b7lXuWySCTAgrMYL3F8tipZ3HZFlKqFPiq4PXi+KkZQ1hvbIHWDap8f2KYu8WmpNUfLbQnmbZqYzXsludB9LJ8ZJ1AqyX1tNCcdFCc2ehPlhY7zl1ftX55GexT6b2sNNp80x6rIKig+9Zab+wDlX71X+d+q1R356SWqc6ZW+0Dlf6Zh2Z9vwVZSz4805176M/W7PVtm1p2D0A+u/LhwfAsbT9NW2P7UNPGvrtr3375X9ln8x23LgX5juu74Fp+11fzCJYp6lX2resdtXHKH5YaU+y0h5kpf3H6lbbyYd5/4Dflin+ZKV9xhpVYpF1oeoXqh+k4iLbFuvhOIf4lPKROiVu8fN9MbC/b/Xzq1R86fOtOrX/y9Q1X3H9eciTv1lpb7KuVfptpT3JyntQlxqTeAy0B1m3q8/dKgb1j+MDyaT6PEA87rtnvI7PjXW3iqc5N+KmOJkeKwvTYmRaPIRsjipTpMwBx+iZZD8z8xVwbsPrzTnNzPFqG9mKrZTqHMfU/GUm5UbWXjWO0ZrOZNtapsQzG889z5eaE8wsV2MZ7/9r1TjH9kd79EzSN5P02ai/M8luZpK+mWRnM1kn2djMWjV+puLldjU3S+VN0etxFLpUHejjMiVeol/943C/GNyXw6TiMI+TdfE9sqmZDWnPr1DHM1mZL+RcNLaZa9W2KWkoHwD9c0HHAFDntX9e14faNPTP61I52n8lN9vluDH/2u+4nnel51gO9dmWtDnp71vkf9YOx01+ZT3i6MuxrOzXXUos6otXZxS7tp5X7SnVzjK9qv3xleKKTfU7G/mYzaQg3d9smUqMsGUp9mkbM0AeQ7AVqChUgDjI+ovUa8l1H2SfsNFeZ6tI8z+Ss81W/M1Ge7StmuBV9p4UEI+alHniMduChLiqm8ZhW6SOU5W30ZnOtpywkrDagVhkW0egM5xtC6FJ2f8YiJOUE9h2EJqVeGxrVeyU90LbAcIhQqc6X0cJJ5Rzgu2sMk+2bkXeRnuH7TLhmpIDcvxPxWY77QH2wQpYH/YZsm17hjLvdspB7aMUO7PnKvPI62jPU++NU3VMUmK5nXJEO+WHdo49lI/ZKQ+zU15lp3zKLinza5fVOEbjt4fVa1KxBzvlQnbKgey0R9jrr9sPx27OB+yUC9kpF7JvUtvVmGunfMC+TdHPfmKnObJTDmDfl2arqXNAao+iuv2gImNvV9r4pzGGHRj21t9/GuNv6VuZmC8e5L9R1bYLvxSEQTmEMYQCQiGhiFCSdi0lmAkVhNmEKkI1wUsIEuKERYQlhOWElYTVhHWEjYQthCYVOwjNhFbCAcIhQifhKOEE4RThrPrO7s+5XiRcVsHy1wTBKCrtxsGEDLVv3eqVxmAcQRhFyFXa+655hHFKX42Tro/ZWEyYSigjWBU9xlnK+4xzCPMIktouE8KEpKLXuJiwlFBHqCesIawnbCJsJWxTrzvTrin53YR96nWT+ty+tPsHCe2Ew4RjhJOE09evPD/Gc4Sev+KamotLyjz+tcAapKNCAevHep1SZc/1wxXlv51PXVPPp/TeYSAMVdeb2u8Yfv16x0hCtvBLS7nFbqm0zLU4LG4gYIlaFlpqLcssKywNlrWWDZbNlkbLdssuS4tlv6XN0mE5QuW4pctyxnLecsHSa7lq1VqNVpM105oF5FjH4M8FVAqtRYQSa6nVbK2wzrY0WKssjdZqq9caBOLWRdYl1uXWldbV1nXWjdYt1ibrDvpzs7XVesB6yNppPWo9YT1lPWvttl60XrZes4m2wbYM2wjbKFuuLc82zjbJVmybaiuzWfk+tc+yzbHNs0k22Ra2JW2LbUuBOlu9bc2AWG/bZNtqCdi2qWUnlYHqu6nssx20tVP9sFqO2U4Cp6mco9Jju2S7YhfsBmCofTjtCfcM+BsXBPU3LhjxGxcG4zcuDMVvXDDhNy5k4DcuDMdvXMjEb1wYgd+4cDd+18I9phzTBOFe00RTqfCIyWnyCk+YAqaI8KQpbnpesJhqTS8IT5mWmV4SvmFaZXpdeNq017RPWGI6ZPpIWIrfvrD1/+OeaTTDNWH8vEoL/2/yuYUqKLLklqgoVWFOqzPIa3Jnq3WWq1Lr1Sq8Kijq5lLUzaWom0tRN3e5KrtSlee21Wl/XqdeN6rYkvbOJvXPO4Sx5nYqh83HzCfNp6mcA58291C5ZL5iESwGy1ClmNstwy0jLdmW0dSaT+3ZlvGWyebTlimWaeST8ErzJfJLu8VBa3UnftOGgN+xocXv2NCZCk2Fgmh60lQm6E0zTDZhEH7fxlDTfFM1rYPP5BfuM0VNMSHHtMj0bSHXtNT0P4QxplZTq5BnesP0hvCwqdvULeT/P9auufas+HXiuWQdmmtDUB+M+gTUJ6A+USwnnqSPo70a7T9EfSVxof5XqJejrjw7AfUKPPso8Ti0TxKD0MPPFkJ/lTiRWf8s/+yTfhHVM8VpzPoE8U7IvMrv/Qz1z/aiD0vR7kd9IuoTUZ+k9FblReAIZEjnZ/9bHEt8Sh3RWNx9Fr3CSMXHMC4feu7luu446kbcFfDUz9BSg2ctaLkT9Sfw7AJouxM9eQKsh8xkyLiJx6M+HvVCsRjtMuqToQHt4Im4W4i7XxEfZ9b70ZNiSHJ9ou4iZJR5WAltrdDGa/Go2Ih2hYvAsyAjQWczdNJsaJ/iN2of0TuIX9KTd2uTqD8BPq6PEteyjEYLfhny6KdWYNa5Ifmy3km8FTrv4hbNe1zXfIK7qyD/JOS/j3omtH0CPgX5K+LvqV0rvkU8SzzKb+G65mO0uMX3iKewjNDLrDGD/wO8l1mng+QM6Hma5TUfQEMj6r/A3emQ/zPk81E/Cz4Afg3yH4khkrTqf0v1y2y3WoP+Dapf43ZNtb6d+LRIlqDNYhnhI/2LxP+HWXNWbSHWFUJPFngUnnWBV4HvFv+Mu9+i+h+YtSdRbwUfBr8sVvEaGT4CN4ObwHXgHuZBI+ldk5QVhORLBv4dKtWoPwEepnITuA7Mz94NyYO4uwMtx9FSi5ZNyrpznbgZ3ASuA/eAWX4GJBfjKUFh/Y/YKlB/GT3finoLeKva0gSuA/eAS2ks+/V1sCIvM97+HvgTPLtK5WZwE7gOzBpWYTa+zzK6deDvo8+fgE9Bzynus+YjfQfxJfBH+lfAYfB8MCxB300a7sZ6XYbkKfB5lV+EDRxg20DLNWi4Bg3XoOEarOI07p5Gy2m1pYVYh7Hcrz8Im+kAh8Hzwe8wwxJOKTbGdbI01vYO6h9RTs99oBZtsco0Fu3bbKXaUWgZhZZR8O5RrJn4LXALLHMbjXGRYp/Q3ABepT7LfhGDzd/N/xM3vesVcBg8H/wWuBvMOk/i2ZOYjcPQdhj1l1F/VWWevXb086lBrG2Ywoqlob5VYf3rWNkw1pHvfoL6R4av8gwrzL0S0EJnWuYstB/Gyh5Gy074yBhwDqLQBMS3lwx5xC+g/UPEokuor+YdRPNviGnDlHjIkprBeg/xFxDNloHvxmxsh0wBfOFd1J8CN6oxkPYXDfRrBzEb3uHVN3yXZ0OPWCo6eE4Mu7luKOC67hxsuxF2Ugjr7cBTu/U7+VlxO3rFd2Ulnhs4co5lJt88Cp86Cj9i73gQ9VW4+2/qGGPojxvP/hzyP8c8I8Loz/H8MFOsZlbW6xED7Y/aJOSHoX4Q8rVq9GhCHKjj3QE+6Eb7y+C7wA/iLe+B/zyonFdz0Da8l+8+yatMnsv1TJVZ55fVmLyR6iNhk++gJQd8wnAvry/i7auw52cQt3dxFNUfgU0eZkl9HmzPyC20dmzDmRzPNR2KF9NZmXYErMsRnmGKAy2wsRZ4pcJvwV9awG9hB+FYncXP0ny+gadehAe9CDvktyS4V7oZfFc3Q4kqIuUqmvvg49Pw1G7Dp4gPLF/EvSVL5paz7Olk4e/yzoKeF6rx50VI8lu2gFeBDxge4rrhe/DcmbzLwHNP4m6ryoqHcr3SMBZ3u9HSjf7zDE82vMOxDr19hXdDzf/CnpiF3n6G9l9hzu9DPQdjOc2ZkrZCZP2doon4HGeP2nuYab1eRFThVVuPMW5kX9NNwD74MLMuR6QW7e+g+ceQ/ASa/xX1f0V9OvR38MwTs2Yz+hxkFnagfh78jH6wwHkF638cK5UPDZ3K/st5FOUJ30L0YwtfgezlvChjFGxvD+DuevT8HbxrL7Rl8UjFf+bZ0GNOxE+xvkne33UjWJvuXa6Lj6NehvH2YBSfIlZ8Ck/MQj8R7bWt3EPdJIz9DrW33JNc1AtEyl01b2PUvxEpG9RMRd8O4VlYu7ZYDLCP46lKzoG1lbo/Ea8RnyTNJVjHXaLE9qn9MdWPQtuHKrO2V6Hny9BZKIrEHzCT1d0ncFZGM6AbhHn4KZ6KghtgA+dEnr3t0JAH/iH02FFPYOyvYJ6nYYwynvoQfBLs4xmjLItHsZSzVqrfwVaBPagG2qrRz0roMejXcgRQrZFH9zr6c8Uwmln/Cfhd8F6054LNHBOUnJMltePBxfr3sI9wvUzJQqHnHfDb0PM29LwNPf8CeTfk3dyiDaNlClrsStbKdaGXe0L8Lngv2nNRZ/lhSmaLt+xVGHnUDOiZwc9qn0b9aaXOeoj3oj0XfB9aRsF+kG9A5wfQdgncCP4FeJvIO+B06JwOndOhczp0TofO6Zil6axZl8+SunzMwAFoOID6a6i/xqOgWd2I/jP/Whkv16lvG6FnI576BBq4pQj9/FTldngW92GW/lF4K6/OiyJnm/vV0wG/5S3xGHwWpwOWFJRM/gxy+3twCigH/w7a7oH+XvAx8DY8Owdchmd3o/1DcIdIVmrI5XEZmphFmWXETv0e8nS8yxDV8z5VhbkKYwb+A/ImnlVDE/x6Anr7DuzkA3CDek55D6vTBpt8D6v2HmYG9sleRjMwhldKfzfxBpyJtJDMhuQ7qC/D26co9oa1+Bm36HRYKR3aZ0D+A/Cn4EZwGzL5RsNZvIVb/szrQuvL9bMqY61R361YDreQJZixgmasOJ2jhWW6f6ZzpV0/hNlA59bP/sCe+Nkf9LTKuh8jU2rnOREf431HdHFd9yvwD9DeyPmY+CqiIuQpN+a86Et41oK8yA/JN/m8Kb7NUVqH86PuaT4vixm4+2s89RPmQfeifQQ0XAVvg7wDdlLLa6F7jedW14X6dPBEZjGH10jMhW3UQf4NWNT7zPotkJkIq8hiSd13sLJ/Ql3G3YdxdySspRQalLPqNnA53vUEsoJXsQOW8YzpPsAOUofYeBC7RhvnJ7pNyEjrsQdtRn64GC0vIavpgZ594KPgd8HvQ88ZcCd4Afam97HP7mbWv4l6LXgPomsv9qB/5PxNHIss7n213gxuAteBe/gun7z05zH/MyA5FPyY4ZvEyokMJ0TdHpWbwHVg1vArSC7EU69xCzG3VHCLfh6sogq57gKwBRxGZhhF/lmGMykyWHEM7Od1vAuSujqOpSJaiHkU56D5QZWbwU3gOjBp0z/MZ1LDG7CZt/Uj6Kkh0LYJ7ATjfCpmYuzPo96scjO4CVyHuzyu53muxL1cH3Sf4UfgOawfT4kq8/zgjKDbxvOgewJZ32KVXwGHwfPBsCXO3AyDse7PQbKMY6P+Qf3bVP9Y/ybxj9B+TOUweD74LfCjbG+424aWNrR8h3Nd3S/ZQzXfRi6dDf4qeAFyyxycgx5D7lqArLgeFrUAFlvPeaC2DJp/jfrzOL3uQt/+iPY/sh7Rgv53cYt4r8qvgMPg+WD2r4e4V+KX+Axr+Kli8+wR2jPQNgS8CRnCEvhRJvKHCOx/A+6+r/Ir4DB4PvgtyNB8ivfzW/Rv8ndFYpbZg6f2oJ6JGejFLJ3QN8EXsvmuwjixnuUTq3iOW/R7uSdiM+ofoy7CTkTIL9Z/hFVQmE+vf+DTK80GW0WnuAR9Y4sVUN+Dnu/BXSWKloCH6DOJBV4v/T2Gp6i+mdv198OS/wh+Xo2lHHlaEUtXQWYF5H8Gj/sT/GgIImoRIvB61F/nCEx2RU/p92Nd2qATp1fdamiugbaxqDfz+ZdOuHw3DMlWZuNetnCjgNPWD6EZ30wGKdH+9zjd1MFDz8ODXoN3fBmM07HuF9DwU2gTxJfoqVbo+Q33TcR3KhEnYloL3kNdOAvHuE4aesBH4dc94KPw1h7wUfT211T/Ht64G7N0lXMA3Y8Rnd4Gi+jb63xGFv8JHGfW4cuJrt2wnPc7ePEq1F+D/Kt49nvw9DpuMXg5Ghj8aH8T8qfAT4M3GXqZB83lnQ4yP2HLGXQv6iPAE6HtKuTXoM+DeXcQh/N3KvFRfRbsh+ta7pu+m1dfHA7fWaycN2EP2/SH2E64XfxAPVPzF8smnHEeg19P5z1iUDnW7l2s1ONcNwzWD6O7l7Fn7eETMVkvx4RSvjuoHDvLJvYmilct4LcQl1rAvIea8R1pLNq70N6F9o/Rfgbt76O9Ctr+iLcoJ6/F2BmPgvfwe/WneEQGfI/V7cSJezP2uHUsr/0tn68pys3HDH+KPnNceozP2oZh8PoeePc+ZprJDsSZR9ET5k7cHYK8aAhnPhQPP4MvvIKIwXdrwXVq9OCn3kPceIPP3SSzHu3r0X/EK8MLVG9Gn58U7yX+n8xiDuZ/B0b6L1idJGSeUSW5JRvnoN/xGMW7+Iysw1dlnXJqO45T2yHE5H/APIzCuj+Cc9mPYC0j9RSLDEY89SkyhF/yeVwvi3SyEOsRY4N4NohnV6LeyO/SfgVvrMa6vIpTv4QR/SNOuEfhESJavsencnEs+vks5C/gjeiVfhnqi/lsrguhrsjUQMNk8HOcL1HeyF65R7yb9wX08EPYuXKa/hosYTrG/qiulcY1l/UY4uBFzOIm8ReInOwRX+e6fqF+IXrF81kJGeXvO/Yimun5ri7Gu5heAz0ZmP896OFP+NytO4H6x3xa101AfTqf1nU/x1ju5J7o4UHiM+I91LIR/V+i+5j4BR1Zgnie/5bH8E/ICb/Fp3UaHffnXj6z61ZAZ0xlnsNh4Gf4nK7fA/4mnyN0/5fHbhiBGTDjDH4aTzn+k71zj7up2hr/WHOuvffz6DGTHkJynuSu5JaQQ6Rck2tJUq5JSK6lDpIKqSiVhEoqCd10urgkCUlIQpQkSe6XhyT2887xXet9f/E7n9/p/M775/n06bvGHnPMseYcc8yx9lp7P5vep9tCyItozWU8vzDCt9Ef4rOMHI1MshxnrwtvYb69YY34vaVeVYvSa5XeuZuv9M7dPkx8ivL8cBsj7AybsjpjWMdmumo+ez3NHDTFGedk7mImwHqRzB3KBPbaBO50JuhdlW/1dyKJsryjXozlA/DdxIPUQ5UdbBYRD83w0AwPjbDcz71eRdWEFdFsRDM59Cse0NeUgg9xv9yG++U23IXV4v7uWb1X8png7U1PLL/hjIV5/3kJ3i7RvmFD5PsjorlfvXkuRF8SXsCV3Ucm8SWz6xX6u0I7BZ+18B/Nri68V+89/fiZBT4r4rMiM93PTPdrrMIb1HOyYWIdfECzCA9vRiQ+XZAbE4d6yebESnkd9++b9f7dz6K5PvsKv+S8zdlBW/BwBG/N9Wqlo/KVR/lcWNqzUzjS6++monK/7O+vtXUMLI6mbjjKy/1CHdslaKi34QWsxT54SGlXKhOrleEl8H7tm6jEWQrhswmsDWfgbXQUKzwcgOWI8D2wj1a81HKNQEYL4nmc+747eErfR+VUkqteZ21NlCXCK7FsiNxd5dRy9ZbRQt+ZJNLcD9ZiXlFu1GSVG7IuU5Cz8VAHm9f1+YC9VeMfFmMV3iQ3LtSrmN2ps7NzkAsgD8NmK7yEXiVhNqtZWPsmpuuKJ2agr4blq6zyGJXNPjS1kjXgRM03LIvqavo8eZAaqFyLz9nIpRlzNjG8V/Xe8jijPc4O5ZP6vNckEJv3GfIc/SwbVs17Fbk8HK2fksetr8Hp2A9FjlgETkAf9Z2LPBdvs+F3aL5D3oSN15tWefpE9BL4IBwM68FNcJgyMErJRVMVitL2QH4KvgLPiWX91GAjfY+gmQCvptfjyNm0boMn0HAW0xrNAeTIfx3Ofgx+Q+tvcCHeLDZNYDv0P8ayjmEmmjloGiHn0asC8k64BL4L92DZHPk4chI5DYvA7ekK+s6Q8WAvR1Vjo8gUh8VUEzDr4Aa4Bv23yAvgWmyi6LVK1/ceqkdrobKpB6fBF6JVQK4KBT4FX0nru9PFUfxVE7wBj9D6BZ4nRbNDPi+KPDZpbC6M5oJmG6PaifxlPJf6zCvD9x1K3/tUI8QnGI5l1XQLZjGZkU9mtJMZm3ICmiNwD5oLlRLJxWExuIMzloE5sAr8mXNFGfgE8k+wWLqBZ1vkc1nZUVFOqt7MRb44rXffXyPXRk9WmJQySaYlhyjDD/BwSiOQ7KNyYiVr/UoUmbzn9NNG7B+JcgNvTzCGX7H5jVi10l3p91QR8l85PlrlU4d1xzHTwTENzPE8D9aDw2gdhrdhqvHxVP016KtCiZmj1wXkp2KqZQuivTGOfA6rMA2qfLXq7eO05tLrMkYYZXguMyL+weZoRZjp81E+I3fDZh5RWhdVD41VuJ6IRfs3G7k4kVmC/ZL0lfpUCnkwfgYhT1VadrFtQgYeJ24TaGU1gwvQ79EYBicZc5LoFWNGGUQprfR5Fck6R2IVPAKjPOwcM4e+0/Cj9mvwuY7W1yDxlIPMejecCr/IO9fzFHPMh+Yt5AuQc1i1lsirGfkuWouq7CvGTK+5ktYBcDKt04gA2W6rIEc7vZhGzJRHH+2Iz+BzeO6Oh+543hBHSeWosq1iXy9lt/7MKlBVgpDIX4GfqBKuhr/kVdNIIq+MaiCWY7G8KKqBnOVL9Oy+cAR7Zznyr3mN/Dij68h0qs3XGqvwCuRr0O/Hz6/IVEKTCSvCktGexWY5fC+uTpd5cqUIVmAzL9rRkApgJhKlutish1HdIG8N1wUfVX9PYdn7wauwP4xqRTn4DByEfiByA9iLDLwH/WvxtUDzeWQsawSia0dH7Kkhpkt0TWE1k8S/CJwA18AFkHoevMV65SHPhyfouzZaL2QiGRxA7gFbEKVjyPlpXYjcBLZLH9MRov8Rn+PhHDg73r/RuTTzl5P5x9gR7WAj9EuQa2J/P9647gSfcvY0ucGVMaCS26JYLiRbkINjVOMNyLPRt0eO6iqrn5xFRhWAD1BheH+SLIG3qCK1Y7Tv5k3Rz5jwkJd+hPl6BsvgCepwayrJHNgJyxPU4SzmEl2nsuO6mkNua2Wog6YO0atDVTmGPj9xWBhTa6/FsklM9TCT1jkxc7ju9CaGOYxT61IOravgu/RtyTPGXJ7hF+dJY/HkO94yK/52jX47pSbfyTnFs+Xy+i3HYI3SzOLz30+59+QJVfBTqN/MWcwdGZ+2mIbJs3Sn8wnOapXNx8iHw03cq/KZl74/lw6mjK6LPpGwFcLb9ezhS/oeQ2WzPzyk2ai0h8NXRJ8veUv5Vhn0pFdjZWIWzzSSsFJ4n+5NPMwM/fte2xEPJ7U12ZZerWF1vp9wHGaExXTF7b0aMbtUbVQ2I/QvXExvpe1nt+LNW8oKZVAy6oVmnTLcq/SzUE63j+os8NNQnyqYZZEfWtsrEyPxcBxuhWPh21af51RQmgVW7+5z9L7eHEdTMNGBceq3yLJUI+tUlm+V3l7lFWqfqIOfHHpVtvr9vTJ2kq6+nc7YZuszbXq9DWujKaf2iUX02hGPRFvbo5lmh2q1QV83pn6PKIy9TdcoMba/qxxsYzzWBMpErv7qDbIxRjXBIlr1G8jVgu18Y1a/1dbSjPW8RJ+6mAXmca265mEduXlZ97XK5iHzkOcwo59uG7UPJsDWSnsHNk8Zvutoxnteasd4voV8sX0VP14OjmBJX3M1fR9HPhdvRzRLg+85+wlzru5lo1nR3hRhnAU0/w2f8puk19Q3Z+teNmV1L6t90AK2UspRpbV4aIy3dqao1kyzBp8qHzM/6lUDeTaWzfGQpu9fkHfCjwON8DzGsDu4yFtWCvQJp6+LXnMy0E+ZTwW5ei0wlbWumhF8aq+/LLsn2KbjUQb1TWHVmPf1yhX8pNdcWBxWUnpvnvIj8nhYMNiK5Vbd6cjfBkP1aoLPNcEMz4nBFr0e6UjkZzwc1ZGYkyL6LfTwoDKZjfwDcn6+nX4W8uXo30Dj/YQvJr3PsANsCPcq7S44R5nIQn9SaUL4KJpy2NysTG7EsgJsTmtJ5C7I7bHciQZ9OFaZKoFcltaPYC4azmI/R+6OPAK2RDMS3q0MGK2pS+tnyNsYTxKbCXAWrZ8iv4W8D14Hb0TPjOwp+kbeVsEH4O3wayyrIzMv+ztnvAt5KePZAHejeQlv3ehVE8uV6C9Enos8lZi8jzwEPg/L0+vFlL/6JM+PVkflcC/Mi9ZI5UQWmpPIV0ZrhOaJaKVUtjfDLrAf3jpF60WvVLRqyMQkeSBaNeznwJ20llSmSqD5iLFdiuU42CuKD2e/ihEujmKiGn9NVDmKGHEOp8M6nJFoB4doJZJmAR7IusREuAz7F+A6eC1k1mGUaVMZ5zDsS+OBmCccYyB/TBlyLxP7Hdi8jlwPyyjHGkCnzHhd+2YUYpwWm0Z4eA9moz+fWZcjMiuxf4pW9ki4nl6lOBextROjfUcMN9KX2IZjYVn8vINNZfwTT1OfvvPQs8sSUa725FzRTiwR5R5+vkDG0oyh1x5snoRRhhA92z/KZM57IbGaqwwOoXmOc0V5eBm8Arai71rkanioCn+Gv6F/iHN1RW6DH+aV4OyJGlg+hp9JyETeUB/CGXAwbIdNdMavYJQh82m9A7IutihnvBMS+RSa8AhnHIo+qmnswTDa3ezcxNloCkIqgyUrLN5MVKmoKuYg9vQNB8LX4Ez0UW1EtmvQLEfeytnJK8veMYfpRdYlot0UzWghNvmwn4ImWvdF6FvDYpAxW2pmcjQ+o1GRFeEWyJ4KyY2AkSeH0+te7E8gsxPD++Am9KypJf6JjuipUSFVKyQfDFU97AE/xD6XnBlB/kT1ahakFiXYR/YBNFHl3E/faE1Zd8tKJcklexNkr9nxkOxNrVZmkBUJrl8Jsj1JtFPMPUlriL2lRtla8Do9u4jeg4QvpvXTog6wIdyrtLvgHGUiC/1JpQnho2jKYXOzMrkRywqwOa0lkbsgt8dyJxr04VhlqgRyWVo/grloOIv9HLk78gjYEs1IeLcyYLSmLq2fIW9jPElsJsBZtH6K/BbyPngdvBE9M7Kn6Bt5WwUfgLfDr7Gsjsy87O+c8S7kpYxnA9yN5iW8daNXTSxXor8QeS7yVGLyPvIQ+DwsT9/z6ZuHzZXIT9DaD7kT+hRkLskD8FJax8Fe8Cp6Lea8xRlhNHLmG06HdejLrINDtDIjs4C+rH5iIlyG/QtwHbwWRiOMVjya1zBYGg/MPeHwyTqaMuRAJvY7sHkduR6W0Vo3gPTKoDWjEOO02DTCw3swm9ankMnMcD02pfBMZCzjt+/QWhk/RMbURz8PPdmbiHKgJ96iDI9y9Qv02JgxaPbQ+iRkdQxxsP3hc3iL1vEyeAVsReta5Gr0qgp/hr+hfwifXZHb4IeRJzhLogaWj+FnEjKxMuyscAYcDNthE53xKxit6Xxa74BE0hbljHdCopdCEx7hjEPRR9WA7A2jfUHOJ85GUxCypyzraPFmoj3OfjQHsadvOBC+Bmeij6oKsl2DZjnyVs5OJlgy3BymF3mSiHI+mtFCbPJhPwVNtLKL0LeGxSBjtlSb5Gh8RqNi3cMtkF0QsvoBI08Op9e92J9AZu+E98FN6FlTS/wTHdGzu0MywVAJwx7wQ2zI6jCqJPuRo5ViNS3xT5Ih9iZIztvxkNxLrSb/WesE9TxBriaJYYoZJWkNsbfUB1tLKVvMN6JPRVb71lLRcwz7mNc05r67hz5tsNN5ktCE1mn6t7E2R7+fZifxLMWoxvyC/jHV6xcsRP/aQjUdlYl1yrAS+lz69qN1lzLZH7kHbIy3/ZEl520fP80oJfqMQu8Np6F5MH7iUYm/rdOnKE15fnKC5yHZPBuZjX6G9jVr0fSg9Wlkg4f9cDCcydyzlGYEEWirT0jMMp5aVEeubt/TvmojeTyvODd+fuIpP6hNoip+WtOrIU9IaqsmODec4vWF42cjs3kGMpvnIZ7pJ/L0OVXLvNVae5Hb672tWatycDVyB1obIi9E3oTlfcgZyLVp/YReu9EUjLyh2Z7WO/2LsSlIr8qwC60bItJaDPkErc/ioRT6l9HXQK5AaxL5NuSHozGoHHwTjYHWu1VOt8475jOhDJq3pajnZuRpKtuzuZfPU9q68DCaE8iTsPxemVinDAP0Bs6mNUMZ5CLvh5WxF2wegxXgKFoHM4aJyF2QZ3LGPdgMRV5Ba2/85MP/EjgjHrmOpBea99EsgGMhM7WNaXVoRqTn86+wq+dFaX0SmIPnvvEYVP+trpGtq5Rv6TsXjscbTzzMDjRt1SYsk9bvqtWjtX76Vc+0NPf6AthUUY05GI0Zz9N1DMkL0CxUORiPvnX6Lc1PtQ+X0rpBW/3cdXWy8NwafRF8Ps74z8874cc5ktEeZWybtVeiH3PZif4Fsm6Y9gpqcK6hyCXxUzl9kk8QTmo84Vilfzel3IamODY7kQsq7VWMqjqrtoxz3Y3nHoxwmzIZEttyUYbktdOsUxtTUDX6+zu+QrLLwgI6l2QR7HeqnLgGmyw0HaI8JNrFOUsWkSmoEQseYtbt0/pstjcjnImcL32D5lhan3aeC1tw9mVE42rkLmoZ5NKrMvIxLJfhYTzyOPQbiMYq9GXQHKF1AprNeJuAph6WB5S+4rBeUR4y/ubM5QfGsI1MiDJ5os7a3wVsJUqsOxzBSuVin8ZDJc5Vm9bK5M829DWVvr7rujSJbZQ7yIF1eF4bxT+Oho68IXPZRqwKo88P22PZOz7vSfbFSXLvMJkQWWrcSqjsc/swmaw2neB4NDdgWYxzFcNyNb2WYTMZvk9ri3j/VvVzSTLmeczxC/TF4UeMp2dkyXz7RrNWS59FPLUmo5JxVKeT1URDIxP0xPPT1IFFRG9JfC71U5WVKhxVKnrtp9cSLNNke2Us55GZ2SonS8rZZNp8VlzHPyXa0fEeUW8dWaNS8FZGuDeueEW51uhZVsV7dpJvfTPay+rNV8unGVVVekV1VT2P4inxfulGXnXTa3peKy9fT9btxoY6YKN9NI6+LcznZP58VlPnuDiqjVgOR9+WyE9U+ro0n1qhVSVakZkwg9YcZt2A+W6Fj8GTeG7Iel0JS8KmsY1WuWHxOmple1Jrps+H+eymV8mKk3ySe5JcPUk+n2QtVD5O3EbEV7GiaHTWk5lpnegqRs3Zz+osUKbIohRXGbsLy26Qa5wc1Dz074G/owYepgZqhWnLOGuTpZXJ4bVkNbXIW07HUu3fQN8by8bIzdDPYOQbkGejvya9HvZj9x3W9+R6lvSkvO2sV2vdrazptcyrZHRdS3/C5/WFdLSMfCRzycGydZr3PPQtLiW8z2Lxynr51Bz1LMLvvEmof6cTP2lUSj70+VQvopr0Tfot63QH/SZ8mr8HSedDroJcBbmafk87XV2/S+/1/dDPQr5Fvz+m38z38qfI+5H3qqx/xeP7fqi/coO+un4b0Pt5nd9mOcrv2yxQ6t8RiOjfuaez9a850tn69yDpt5O99VduUvfrr9yofGqhyumRycf1V25SB9V/cocydQB5i/pP7UL+HTmyaQWrYdkZdtPfvdGxndoWjTn5DPbTkaNeuxlzLvpS6AsoU1cyu0rwAPMdRes8mEJ/OZYNONde9CvxWRVNbSITaU7QehP2YznjSqJ0Ag7n7PWxrEhftayMXBm5anIF+uPIFfET6cswkuuRyyPfiJ+NyowUMr/kk5FB601oxuDtA/0NHDxcjocqyFWQq+nfy3v7L5ELw0L0upoxV2XMXVjlqcz0KK2MLfkKmlvgpzCX1vM8L029gfwmPhchj8PmHfgk+nnI65CP6Aj1Vzj8aDUPq/G5vD2Vh0zc9JP0dJVTv+h4TrEW+sm71xzW1lMLNZKRJj0c5kB64aHKqaVY0vcUsz41FXkHPj9B3oC8n1Yy6tQ3aH7Gj34DRyRfMDpjt9iu9/TvLdm39e9+hwzr3XlgX3lb/J1fm9YNcsTfWeTlSSHJkqQUl4ukoFSSy6SWXClN5Qa52ftoJffK/dJVbpc7ZZA8HNvnl5RcIKXkXLlUangv9aWZtJdO/qyt5T4Z6StHL+kng2U0/8Zg1MdJhq8ZpSVbKsvlcoU08NX5RrlFjLSRv8kD0l3ukLtkiIyRwmKbtGzZWJq2vu7aHOnStnWzHJmEl/P4zdC/+NpcxnusInXkKmkk10oHuVWsVJC2MkxGSQ/pLf3lbhlLn0zJkbKiV7q/SkNpIRXlEfRFpICPw4VSTMp5v9WkptSVq6WxXCc3SWc/7oulnQyXB+U26SMD5B4ZF4/gHDlLSsr5Ut57qC715BppIi2lo3SRhFwi18sIeUh6Sl8ZKEP1t0y7Vh3Q1V4PO8EesC8cDId17dx7oH0IjoeT4Qw4F77ftfOA7nYJXAFXw/VwM9zWtWuffnYnzFWGBhaAJeDFsHa33rffFl4Dm8PW3fre2SdsDzvBbrAX7AcHw/t69O/cNRwJx8Gn4QtwFpwHF3nHncMVcDVcDzf37juoT7gN7oR74WF4HKaVibD3nV17J/LBArAILOEb+ydKwQqwMqwB68AGsPGd6qcFbAs7wFthD9gb9r+zf7e+ibvhMDiqn+rHwvHwaTgFTocz4dwBfo0S8+CHcAlcAVfDDQNu79sj8S3cDnfB/TAXnhjQp2u/pMB8MBuWgOVg1QEDKldJ1oENYXPYFnaE3TyrJnvDgfA+OAqOgxM9qyWnwBlwNpwHF8ClntWTq+A6uAluhTvg7gGDugxIHoTH4EllysAM6AYM6jcglQ2LwRxYBl4Mqw70kUzVhHVhQ9gUtoTXQ303bnztyf4Xjtbv8/Ol+P+XFPDDof9vJnzFSPgqmpKM/7VXIa8iOfBV70zm/5O0vs6dxW8u/ztS4Kv3P2bBP03DihjvVV/xtEevD/ou8U/znD/NC/4vFvjTzGGklmPwB+oM/qhz/5TWX6kKS5F/UToPyfjrU8l/6XiRlPqXjqWlzL9wDPyV9J/zn8ck8Ffwf86z/xSr+HcbA/1Vf6LMkHmyVNbLDskNwiA7KBVUDxoGbYNuwcBgVDAxmBHMC5YG64MdQa4JTQnT3Aw1Y81kM8t8aFaazWa3OWHz2WK2gq1tm9oOtpcdasfayXaW34N6rowoZ22LM153OeP1uDNeP/aH1+EZ7Um/zTdJKvjD63zVT3+dNf30/u7Y6f6zO5z+upCc7r9Q9hmvy5xh3/iM1x3PeH3GfAptPv114XJnvG55xuu7Tx9/8RdOb79gwemvS198xutKf3jt91/pyme0j+S18fWhYDTDsi2jY7lo5qHPucK+VpWJtWvj4+b4uCM+HvxH1hWqx8e68bFxfGx7+igqjD19lhVrnP66Uvp0+0vbn/66yhmrULXqGa+rn/F67Rmv153xeu8Zr/ef/rpawT9kmRdqZJ/xusbp9jVqnvH6zPamZ7xufsbrFqevYq2mns5HpmvwlPQIplBtu/j/xO/UiRIkCiTO4VpRUJJZTdyyrMZuqVvslnhNMtgX7PN2B4ODEgSHg8NigqPBUbGuvqsvobvKXeWvm5oPxl5tdb2MKWgKeY3+BZHT8dj8vmcl/7qwvxvpL1NkmWyTE0G2H0OGH1V2VisxWY2zWns2yWrjqbMr4Gtyjr9bqOzveeq4XWJNAT+mXzguc/5OyxTyr/dwXOY2iPGvNnkuc5s9V/i5aoYWk5Jumx/rYt/6A8dlbrs/LvGvf+S47A+WO2LLn2LLnbHlz7Hlf4+3GeNtznivZbz/3dKClutoafnHFreSEa5ihKsZ4X+3rKVlHS3raTGSMv4/v83OMvrN7QKmgI9qIR9Vm3VNViMf9cVusST9mJb4SFnRK35gecLk/y/n+4/0sxrpX54dnC3Dg2LBBTKCf89yVNAh6CgPBr2DPjKaf8NybHBXMFAeCcYGY+XxYFLwrIwPDgWH5IngWHBMngx+D36XiZoa8pRJmqQ8bbJMljxjzjHnyCRT2BSWZ8355nyZbC4yF8lzprwpL1NMZdNSppqBZpAsMkPMEFnsq/9Q+dj8zQyTJWaUGSVLzcPmYfnUTDQTZZl5xjwjy80Ms1FW2Pw+a07a6ra6pG0D21DybBPbJDB2qp0a2HBg+GIQJromugZVE90T3YNqidsStwXVE7cnbg8uSwxIDAhqJAYlBgWXJ4YkhgQ1E18lRwe18rXJ1zk4kO/hs4IgnVUg62pzT9ZNWdPMG/m75e9ljuQfnn+cOeGMy7AZ7kJ3oT3bXeQusgVcaVfanuPKurK2oCvvyttzXUVX0Wa7S9wltpC71F1qC7sqroo9z1V31W0RV8PVsEVdTVfTFnO1XW17vqvj6tjirq6ray9wV7orbQnXwDWwf3ENXUOb4xq7xvZC18l1siX1nxS2F7keroct5Xq6nra06+P62DLuTnenLevucnfZcm6QG2TLuyFuiK3g7nH32IpuuBtuL3b3u/vtJe5B96Ct5Ea70fZSN9aNtZXdo+5RW8U97h63Vd0T7glbzU10E21197R72l7mJrlJtoab7Cbby90UN8XWdNPcNFvLveBesLXddDfdXuFmuBm2jnvFvWL/6ma6mbaum+Vm2Xputpttr3Rz3Vxb373l3rIN3DvuHXuVe9e9axu699x79mr3gfvAXuPmu/m2kVvkFtnG7mP3sW3iPnGf2KbuU/epbeaWu+W2ufvMfWavdZ+7z20L94X7wl7n1rg1tqX70n1pW7mv3Fe2tfvafW3buI1uo23rvnHf2HZui9tir3ffu+/tDW6f22fbu4PuoL3RHXaHbQeX63LtTe6Y+9V29MnbmfolVK4gOBGc8FUsL8jz1SNh/H0A+yzBPkuyz1KmmCkmGaakKSmZppwpJ/lsY1/dzkp0SXSRrES3RDfJn+iR6CEu0TPRU85O9E/0lwKJgYmBck5icGKwFHQ5LkfOdSVdSb/HS7lSUsiVcWWksCvnysl5roKrIEXcxe5iKeoquUpSzFV2lfmd+mpS3F3mLpML3OXucinharla8hd3hbtCctxf3V/lQlfP1fPVSuvvRdTfUq6RaySl3c3uZinjurquUtZ1d92lnLvN3SblXW/XWyq4vq6vVHT9XD+52A10A+USN9gNlkrubne3XOqGuWFS2Y1wI6SKG+VGSVX3sHtYqrkxboxUd+PcOLnMPeYekxpugpsgl7sn3ZNS0z3lnpJa7hn3jNR2z7pn5Qr3nHvO1+upbqr81T3vnpe67kX3otRzL7mX5Er3sntZ6rtX3avSwL3mXpOr3OvudWno5rg5crV7070p17i33dvSyM1z86Sx+7v7uzRx77v3pan70H0ozdxCt1CaU/+upf618LVzqVzna+cyaelW+OrZyq301ba1W+WrbRu32lfbtm6tr7Lt3DpfZa93632VvcFt8NeM9m6Tv2bc6Db7a0YHt9VtlZv4jfiO7oA7IDe7Q+6QdHJH3BG5xR11R3nuFd1fBVKdWlve51YiuDm42au7B90lCN8L3xOTPJU8JTajbkZdX4f/d7LP18D/ZN9/si/OvmJkXwV9txXcntzynxz7T479L+VYkOjl388XCEqa6vaasL0Ul9rSQJpKa+ng7xd6+ffvQ/07y7HyhEyW6TJL3pYPZYmslHWyWbbLbjns39lLkAyyMu8Wmzkgc2DmPRwHZQ7lODjzXo5DMv/mjwO9NIzjwMzhHAdljuA4OPN+jkMyH/DHQd5uFMeBmQ9yHJT5EMfBmQ9zHJI5xh8He7uxHAdmPsJxUOY4joMzH+U4JPNxfxzi7cZzHJg5geOgzCc4Ds58kuOQzPvE+NaRnoMyR3sOznzMc8i/EZGnmPmAzKfjyDwTR2ZSHJln48hMjiPzXByRKXFEpsYReT6OyAtxRF6MIzI9jshLcURejiPyShyRV+OIzIwj8lockdfjiMyOIzInjsjcOCJvxBGZ6Oc/IHMaEZlBRGb9mxF5K47I23FE3okjMi+OyLtxRN6LI/J+nCsfxJH5MI7M/DgyC+LILIwjsyiOyEdxRD6OI7IkjsgncUSWxhH5NI7I8jgiK+KIfBZHZGUckc/jiLxJRP5OpiwmIsv+zYh8EUdkdRyRNXFE1sYR+TKOyFdxRNbHEfk6jsiGOCIb44h8E0dkcxyRLXGufBtH5rs4MlvjyHwfR2ZbHJkf4oj8GEdkRxyRn+KI7Iwj8nMckVVEZB0R2USmbP83I/JLHJHdcUT2xBHZG0dkXxyRA3FEDsYRORRH5HAckSNxRI7GETkWR+TXOCLH44j8Fkfk9zgiJ+OInIojko5zJS+KTD6JIpMviCKTz0SRyWfjyOwiIvuJSC4ROaGZov9Oo46bp2ntpXywzjxvm9vrbA97m+1l77AD7CA7xN5j/2ZH2zF2rH3EjrOP+rvg7fZHu8P+ZHfan+0u+4vdbffYvXaf3W8P2IP2kD1sj9hcezR/Df13lIK1wVp/gmn617m2mW0mxrawLcTabra7hLanvV2Str/tLxl2oB0omXawHezfCdxt75az7H32Psmyw+wDkt8+Z5+Tc+2H9gvJzn9Z/st4ylBM8oUlwr+EOeGFYcnworBUWDosE5bVmfkRHeXpevR+pXj8bKKitvk+0bPrwPb+H4tyscXF+mzK9vYtEmaH+gtg5cJyctYf+kXnzQ4LhYXD88IiYdGwmP72nbf9P+c1UkrODguG54aJMBmmwowwM8wXnhVmhflDF54dFgj1eVfo5zbcD1L7mPCvYV3JCuuH9cX5thpSxL5iZ9rZ9g271H5ql9nldoX9zK60n9tV9ot/FHF9WmZfti97j6/q3zXb1+3rPt5zra+jPnKf+PNtt3v+x/vL3up13/qhnW8X2IV2kf3ILrYf2yX2k3+0xnh/xb7ivc+0M/UbmXa29/6G9dXZj/AL713nod4rSfY/9PoP5kHMtscx035/Mrvop9ng+yX6mnnygIySB+UheVhGyxi/rx+Rcfzroo/LeJngd/mTMlGekqflGZkkz/o9/5xMkakyTZ6XF+RFXwFekhnysrwir8pMec3Xg9dltsyRufKGvClv+erwjsyTd+Xv8p68Lx/4WjFfFshCWSQfyWL52FeOT2SpfCrLZLmskM98HflcVskXslrWyFr50leVr2S9fC0bZKNskm98jdki38p3slW+l23yg684P8oO+Ul2ys+yS37x9WeP7JV9sl8OyEE55KvREcmVo3JMfpXj8puckN/lpJyStOT5NA5MK9PatDFtTTtzvbnBtDc3mg7mJtPR3Gw6mVvMraaz6WK6mm6mu+lhbjM9ze2ml7nD9DZ9TF9zp+ln7jIvmE3mG7PZbDHfmu/MVvO92WZ+MNvNj2aH+cnsND+bXeYXs9vsMXttPrPP7LdnmQPmoDlkDpsjJtccNcfMr+a4+c2cML+bk+aUSZs8X4L02/bWhjZhkzZlM2ymbWVb2za2re1ob7a32s62j73LjrIP2ofsw/ZJ+6ydYt+0b9l37Dz7vv3ArrZr7Fr7pV1nv7Lr7dd2g91oN9lv7Ga7xX5rv7Nb7fd2m/0hvCKso/9ua7g+/DrcEG4MN4XfhJvDLeG34Xfh1vD7cFv4Q7g9/DHcEf4U7gx/DneFv4S7wz3h3nBfuD88EB4MD4WHwyNhbng0PBb+Gh4PfwtPhL+HJ8NTYTrMS+RPFEzVTzVIXZVqmLo6dU2qUapxqkmqaapZqnnq2lSL1HWplqlWqdapNqm2qXap61M3pNqnbkx1SN2U6pi6OdUpdUvq1lTnVJdUV/9fd//fbf6/21O9Unek/ou97wCrGvn6nklubi5JbuhFmjQRpeXSBBtWBBso9oZURWki9kaxV3QtiA1U7A0brh2xYFl7XQt2RcFesMF7MiiLu+5/9///vn3f7/me95mHOZPkkpsz58z5/c5MbhLDxrJxbDybwA5iE9nBbBI7hB3KDmOHsyPYkVBGs2PYsew4NplNYVPZNHY8O4GdyE5iJ7NT2KnsNHY6O4Odyc5i09nZ7Bz2J3YuO4+dzy5gM9iFbCa7iF3MLmGXssvYLDabXc6uYFey69kN7EZ2E7uZ3cLmslvZbex2dge7U373K/szu5vdw+5l97H72QPsQTafPcQWsIfZI+xR9hhbyB5nT7An2VPsL+xp9gx7lj3HnmcvsBfZS+xl9gp7lb3G/speZ2+wN9lbbBF7m73D3mXvsffZB+xD9hH7mC1mn7BP2RK2lH3GPmdfsC/ZV2wZ+4H9yH5iP7Nf2HK2QoVUmM1hV7Gr2TXsWnYd+5p9w75l37HvueHcCG4kN4obzY3hxnLjuGQuhUvl0rjx3ARuIj+KH82P4cfy4/hkPoVP5dP48fxEfhI/mZ/CT+Wn8dP5GfxMfhafzmfyi/jF/BJ+Kb+Mz+Kz+eX8Cn4ln8Ov4lfza/i1/Dp+Pb+R38Rv5rfwufxWfhu/nd/BH+AP8vn8Ib6AP8wf4Y/yJ/iT/C/8af4Mf5Y/x5/nL/AX+Uv8Zf4qf4e/xz/gH/HF/FP+Of+Sf82/4d/y7/j3fBn/gf/If+I/8+V8hYAELFACLSgERlAK94T7wgPhofBIeCwUC0+Ep0KJUCo8E54LL4SXwivhtfBGeCu8E94LZcIH4aPwSfgsfBHKhQo1UmM1pabVCjWjVqpZtUqtpebUvFpQq9WiWluto9ZV66n11QZqQ7WR2lhtoq6hNlWbqc3VFmpLdU21ldpabaO2Vdupa6nt1YvUi9VL1EvVy9RZ6mz1cvUK9Up1jnqVerV6DVl9JnP7ZI59HLWMgghKZs6z6daA75fodoDvV+gedE90je5Dh6DrBE1v0gl0AroFiJeCiug59Bx0j86gM9B9guwPCG49JLj1iODWY4JbxfROOg89IQhRovBR1MeIzMBTDMdwWGJ0GB2sIXPsbso7yof4MSuxHvgZmW9/zU3iFlEUl8MdoIy541wZ5UZm3cPIfPsqQPtXSAuZIBvA/PbAgDIBAfZDdIav4CcgSjxOWhtIS16j0UFGyJw/BttX+EKor/HHob7On6r67BVo5SMV8AkTZAkMoG7l6hF/Td7PX4f6JH8T6l/4IqjP8KXyf4qG8hlFI/mMorF8RnKuL+Ss39ZotGDriMhBfUzkvzuiTY7okCO63x0xIUdqkCOm5AiFtMBqEtjOm5LfltSAaoAoyo/yQzQVQAUgBRVIBSKG+4n7CSm5PC4PsdwL7gWcj2LWUOf+IYz9HmH//8bX/x6ElTH07+LmP4mZemwEG8X2Z0cBAsnI2RIwsy1Bsw6ATDMJTnYDjJTRsRIbI/8mKo7+Czz8IxouBBz8DQGro8v/a2hYhXaAixmA39VRsSmwD5l7VDIPmXcEAfP48JV3fALW0R0Yx1LCOZYB4/gIXtsFPDVE9stv2EnFfo+bgo6gK+gJ+oKBYCgYCcaCiVBDMBXMBHPBQrAUagpWgrVgI9gKdkItwV6oLTgIdYS6P0TbCT/GW1FL5ET+b6Huhj/irqgt6oi6f0DfY3whf5xg8KkfovAVwOFr/HX+Jl/0DY9FI9GYYHLpn6Lylz/ismgi1hBN/yN0/g6bhS//DejcHlPYEFJZU+yADHAQ7oRsyZq7A+6DI5Ej7of7IXccjaORBx6IY5EnjscjkTcejeehFjgTL0F98A58BoVRiVQSGkMNpcagZGoclYImU2nUJDSNmkLNQOnULGoOmkdWzxdS8ymI9iTHX0oLtB5aRhvQBmgVbUTXRatpJ9oV7aU1dAt0kCD+RYL4l0j2dlmxXHEGPWF0GV1swrxj3uEaTBlThk2Zj8xHbKaE7sLmyinKGdhCOUv5E7ZRzlNm4NrKTOUS7KhcplyHXZUblNtxA+VO5VHcQlmoPIs7Ky8rL+M+ymvK6zhEeVNZhMOAG3zBkcoK4AaprBfbAO9iG7G+eL+qjqouzlc5qVxxgUqj0uBjKi+VFy5U+ah88HF5/QyfUDVRNcEnVc1UzfAplZ/KD/+iClAF4NOqtqq2+Iyqk6oTPqvqquqKz6l6qHrg86oQVTi+oIpWReOrWpD242tcGBeOf+Uiuf74BjeAS8K3uaHcUPwUcHYRLgGcPYDfAs6W4XKe4ntSLN+bH0mFCsuEu9Q49Qx1JlVQeX8LZKObyIpLbxz1dc/Oanswqo+UX7mHPXAaDzieA0WuNwEryCFS3tr3dWsfbN2EIt9l44gdwWtcsAvAnTf2hnO2wq0AXNrgNkiBM3AGucumEIUypowZY85YMJZMTcaKsWZsGFvGjqnF2DO1GQemDlOXcWScGGfGhXFlJEbDuDHu+AK+iC/hy/gKvoqv4V/xdXwD38S3cBG+je/gu/gevo8f4If4EX6Mi/ET/BSXKGiFgn5Hv6fL6A/0R/oT/Zn+QpfTFf8n+xSgioIiMw0K8msFXTL3YwKFRuZQFNBztUFTJyTfl+YKRQW9Wh94YkMoHGoMhUctUEskoDZQRNQVijbqjnoAP+wDRQ9FQNFH/aEYoMEoCRmiEWgkMkbjoNSA0UkhU6yNdZAZjFFTZIEtsSWyJHfH1ITxGoSsYLz2QNZkVdeGjFRbHINjkB25X6YWHoKHIns8Bo+BMT0FT0F18DQ8HdXF6TgdOcEIzkTOMIJ3IBd8EOcjV3wUH0MafAqfQu5kvsmDjDwvwqlbk1mnPmTWqW/VXNjhr3NhztBTFpSG0gBj9KK85N+GUS2AMbamWgNj7Eh1BMbYleqKGOA9kUgJjGcgMMbJ3FSk4qZz6YjnVnGrkQ63ltuA9LjL3BVkxF3jbiATroi7B1x6ND8WWQN6jEd2MjKgOoAM2chRjuPIFeL4ZaSB6H0TeUIEL0JeEMPvoXoQxx8gb8itHiEfiOXFqD7E86eoAcT0UrCRfP9XA6pXlS4nvuriArpYfqeLD+UDn5U1oqkgyGUURCOGaKQEftcDsUQvFbC3QUiL6MURvdRELz2ilwG3idsCGm3ldiIzoqMV0dGGe8QVI3vuKfcc9JI1dSGaaoimXkRTb8C/HMgPVkOW4Uu0bkm0bgW49A61AVT6ApmJrFEANeDr6qv8K8cIopGrrCPuSMY9qtqDyFwmhfvjJlX7KNwJO8GWQdXnYAT8oC8aUg2hL+QeURAbM6RflKRfWNIvKtIvWsB7eyOO9A5PrC6QPlJz3bnuSITMfCzShuxrDth+LrcImUMOthPZcbu4A8gLMrHnqDH3kitDkcAhJqFYYAvpaCSwgw0oFbB/B5oHWH8NLSG230Vs/zMg+B20m3jAHuIBe4kH7CMesJ94wAHiAQcB2Z+jfED3l+gQIPwXVAB4rkSngeOYoMvAa6zRLeAyddFDYCU8egbsQhe9BIw3hQwAIiFkSIMQkjNI1EyeZUAd5Pu2UDA/SmiJTsP/WOCF5C5H+jeLoDDSrxLxuqBqFpF+swjqhBpX7aNQE7J6blD1OQrR3GJuJXzzQa4QvO0DL/sv7CV5duX1WJMrkb5+OwXfYvqfRFb4T0MShxCJQ5jEIZrEIQWJQwyJQ0oSh1gSh1QkDmmROMSROMSTOCSQOCSSOKRN4pAOiUN6JA7pkzhkQOKQIYlDxiQOyb8rPgQaCJQ/vRt64q/WYSjMYT24ShtcF7vh+rgZbo07wtWF4QE4AQ8F7pKKJ+OZeC58axZehTfgrXgX3o8P4xP4LPTNDeiHx/gZfoM/QvBXUgKlR5lQlpQdVRd61wvXBe0doC+ciewB6CfL3tiHyD64PpEhuAGRfXFDIkNxIyLDcGMiw7EvkREw8mQZiZsSGYVbEBmN/YiMAUSVZTwOJDKTMZalYidjQmQeU0OW4icVL0tGXyXIUrlSpSZyn0okcr9Km8gvKh0iy1W6RFao9GQJ7EWfSF9tTL5nAK4DkUAbcJ6CLSeoewDay9wB4gFoCT4IOmqg7ovdoA7F7lCHYeARoJsn1BHYC+pIXA/qKNxMvvcDN4d6IG4JdQzwBQq08oc6AQdAPQi3hjoRt4U6E7eDejFuD/UixgBRoK8h1HmMPPPxSQWGAU3Bq0FPBdT7VMA3QEelfDeTioW6XKWCukKlhSjQDdiPyhfVgVHVC/A2BnB2NBqPpqO5aDFaiTag7Wgv4NgpdBHdgMy/BMb21/U88CQT8HU78CUJe+GG4E3+uD1EyB6gdxRosQ56KxN6aD2RvfEGIvvgjUSG4E1E9sWbiQzDW4gMx7lEhuKtREbgbURG4u1ERqksZAk6WsoStKxJ5D6VFZH7VdZEflHZEFmusiWyQmUnS9C4FpG+eCmx3zJiuSxiuWxiueXEciuIzVYSm+UQK64illtNLLeGWG6tbA+VAelxQ9LjRqTHjUmPm5Aer0F63JT0uBnpcXPS4xgptBG5q5smsQKRkY615Z9oyE/ybU/uqXdAboDFX2eisBHxNWPiIybyd8tnwTWqWv1lT5JjL8ST+cRXSC2vkGEdiFAIG0JOg0kkokh8kTHNBE3BnXFX3B13w11wf64boE+Pynlhagg1lppMzaMz6bX0VvGz+EUsFysgvi7hlnLLuCwum1vOreBWQqzN5w5xBdxh7gh3lDvGFYrvRUqkRYXIiEqRFVXcB+4j94n7zH3hyrkKHsIeP5ufw//Ez+Xn8fP5BXwGv5Dfyefxu/if+d38Hn4vv4/fz//K3+Bv8bf5u/x9/iH/mH/Cl/DP+Bf8K4EVVIKWwAm8IAhqQRS0BUfBSXAWXARXQRI0gpvgLngInoKXUE/wFnyE+kIDoaHQSGgs+ApNhKZCM6G50EJoKQqiWhRFPVFfNBDLxA/iR9FMNBflNUh7kvUhkukxwBzaAKYNoGIAtZMgoxOoMZDRqcndzyLJ37RJVqZD5l516Vw6F+kpNyu3IH1lnjIPGSrfK98Db4NcBRnLuQrwm1vcA1RHzliAzUwG7K4POfsO1Byy7WuoLWTc11E7gt3tCXYHEuwOItjdgWB3R4LdwQS7OxHs7kywuwvB7q4Eu7vx5YDa3QUdQOowgtRjCFIni4aA1Gmg527U4+9Y9D+z4D9ip28W4khvItKbWqQf9Ug/mpF+tCOaOxPNvYjmHYjmnQhH6VqZ+THkTX/Qbo3ked1myLK6///ei//cHyt9B86gSzwFEU+hiYWVxJ4isac2sacOsacusacesac+sacBsachsacRsacxsacJsWcNYk9TsJsxMvt69TwjVrt6Efjm1xErj3nip4j4KSZ+ShE/pb/+r8BoV/tfE2AlVVHg20gnkYOMAuLJDPFklniyqjKLxS/xO/zpKxvQpYwoM8qWqkMHMOFMJNOPiWYGM0OYYaK1aCvWEmuLdURH0Vl0FTWih+gleov1xYZiY7GJ2ExsIfqLfcQIMUrsL8aK8eIgcYg4TBwhjhNTxAniZHGqOEOcJc4R54rzxQwxU1wsLhWzxOXiSnGVuEZcJ24QN4m54jZxh5gn/izuEfeL+WKBeEQ8Jh4XT4q/iGfEc+IF8ZJ4RbwmXheLxFLxhfhKfCO++9+7yv/3nsv/S/dcUkgHOH8Uoy9+Asz3/Vv3lMNIxAOUN6rdAayS75X5elfNv7xHpuo+GjgH1YjqU5WzV+5pAxHoW85L4TfoPXB0T8obPtEc9gVSHaguVHeqFxUBsSoBot4YeU3rR0Vex6pe4CzfF+8/FnnVq3qR18h+WJr/rvjJK2jflcA/Fnk1rXoBXf6kAB58V0Dn70v3HxXAj+8K9NL3pQ8pv21H/K70gzLgT0rCjwpf/n0B1Pq+1Phdsfm+fNWv8nrJGf53buJP5iYwugX42RCw3h9YdifyHJRvTz+Rn4QyFaWj+ZD9LEdr0CbIf3ajg+goZEDn0VXoP4ms9f67tfd/VAf+J/UP5z8qZ0cEEPPlvAc1lXMBwDojkj3IaxwY14E8mgK0nwft+XgBtDOw/PbupZB5UXgHfi4/ARa/hHzlFXkHxlv8Dtrv8QeCmZ+g/RmXQ7uCkt9AQlEK8DmGUkKbpeSnpvIU5N+UmrzPQ4eCHJvSowygbUgZQdtYfj8H4KoZtM0pa2jbUJC5UXbymz8AY+tAuy5VF9qOlCO0nSgnJL/RxBnaLpT8Jp5F1CJoL6YWQ3sJtQTaS+lW5CmuAYimWzP68nPiGNCXMWVayk82ZFohmvFnQuXndDPR0B4gvxUYsHoYtIfLT4xiJjAToD2ROYjkNxznQ/uQCiKzioIsklLZaw1EWCtGC5ieVqx6LcLqdWrIetXr1fnQPqQ+Au2jwFSxaAk8gwY2WUEyPIjK2pS2Q+VvnIllKBT29Ze5v3EQTDgIJhwEV/sFKSYcBBMOggkHwYSDYPK7D0w4CCYcBBMOggkHwYSDYMJBMOEglVdIESaCCRPBhIlgwkQwYSKYMBFMmAgmTAQTJoIJE8GEiWDCRDBhIpgwEUyYCCZMBBMmggkTwYSJYMJEMGEimDARTJgIJkwEEyaCCRPBhIlgwkQwYSKYMBFMmAgmTAQTJoIJE8GEiWDCRDBhIpgwEUyYCCZMBBMmggkTwYSJYMJEMGEimDARTJgIJkwEEyaCCRPBhIlgwkQwYSKYMBFMmAgmTAQTJoIJE8GEiWDCRDBhIpgwEUyYCCZMBBMmggkTwYSJYMJEMGEimDARTJgIJkwEEyaCCRPBhIlgwkQwYSKYMJFvzwepelqIhfx8VgOyF1nMl1It5ii16k70n/hejVkqK9UiDXaNozDW8JKWknEUacqUQVKoknNUYgVOrUdhRVaw1EFyqrbHfLllsjlZzmmIAlEYGoziIYhGoiT4k5d3GkvW1U6mMGgzlGqdd8ah/LnjGNrKcNPus4s9RmWlmnSSUhWHpFR6XRZNYYrSd4dL3L9S++3xHPGORC54v6SuulrMwHUNI5dJd1Yo9anOwRp9SVfeUOlzXUMH94+O65cUH6fRkUR5J6vPdoyMiI2Pi9BYSubyHk7fsF10eGL84PioJKvm8YkJ8YmhSdHwH9ZSTfk4rW/y2/FO0bGRzsFJobEJVkHNm0qWxmqNl+Qj1dPU8/T28OkBm97VNqWUrf/IlQkSJx/n9emmgc01taValVuWcc2jE/pHJlq1CG5p1TK4fX1vD/cWzu71/Lyc/TSSh6aWZFupkPkPFQqOTBwaHR4ppWKb6h0sv3MqFYIU7OeoVIzRbJ+X4S17tc5UHNp+c3jwmpfrex503J4/bdyANn39g5cuKOho6R0cnrbzxePntLT7ze3+YQOPbpy0NrzIflEjpwVTJvAbP/iWfOCDuLS4/akG2vd3f+TD+s3SU3LJMzbv3LPuwk9IEeVWMGFth1eliTozJhsZDRTWD7nza8Evmn1vHePzaBzolHfLzMbfLW5iWr2891nTz1puyF0eaBxgv9Bu5as111tsr99g9aqAIgdqYFEtLvD8zHn9XJrmhAQEFLkeuxrs9YruN0YZ1KDg1tnkzTey1k5LnrW+Zhu9e7ebpQ7su2nUjRlt7LvcaxeS83wI22i3V8EMozf7Opo+69Rjrzp+ffd17XUPtjlO0TCMVqRiLegRRrKALrUQgY0bmMepey+PabakcZHFPheXR4cWeKSPIy5kYaswkYySDWw9yq519EvgSpt8Gvppm+OWAs9t2lIn+QM1Fe2kNlJAVquslhOb909KSqjv6hqeGOMS+81OLuHxsa4JA6Plva4JifERQ8KTBrtWmVG2IjEiOKULfETqplTBuGQYFmNFW6m15P9tW6ImNvz6BcOGDfvRF0Qm/oszJ0n68vXWUsgu+PWUtOp345GWvSSu76CYvNT1ZjUMXpsY+7476679Uj00adzbhIsumw63relnde7wC5cx/sYJR08sOBax2OxESKtul0I+hQ24sPjUgHr3jlq7fPQfnHH84PsXAZefBuZb1PZ1mhZTtN2qb9sxqbes2Gavu27Xig/OGdDrSYeKmcyiiWVz89Jc8/qe1YTplMZo4bN9TKXV27eqfXX2+YW+2tJh6eGTxm0ed/O02FZe80zmJ/Uh0z3chfoxp99GvWP6G6RmXgl6/SpdVTajeLXZtZB3L3su1Fc9uRHapNZ7zq0sJrdEN9neydEkvvvsi+mmF49ElxzQb+YTXjwyIayzfa2HSV+mmxpmS4fGH9JvNbbv5oqCTPMr26RUJYYoVlwtih0unlI2MiWouIJEscPVe42HKDb2H4kVDpJ95aCvWf14RKRVcHS/ODirHMes3CSNhgSzepK3RuMmQfGoDGa/bUpJ/8j1fT1O/8nxv4xGk6fusitgZ2UmjzD8bN/3c+Jkp49vViyYPN8vb8XJkCmu9d1dLGcP/zh6bc1UvGPkSdO99Am/p0cWvv+ksHg1gauwict+1a/RkdomDxxqvlXMbRpecm+34fRS/UzPW94JneIblGxsqSUF5O+fJS0UTg49/n7wPKNh56btmXtMNcGq1HKN58tBh24noTZTz9+Y/fTy8PIZHzf2ndxo3881N4UtOHBkfG76psubHS90+uT56y+D5jy0rCgZNPDkONXQpNs6HfwvvkSF/m1XsJ4Puqu/jF5c+LDHvQlvL2dq15y56v544/zLJ5ZZ4GNf/Ffrz3FfYO3vVnbIbjnauj/4RFpcnZ4pz73jkl/vKdHnn36LRsnQI6Mrw00tOdxUAXNbFa4aqXS1cHXyctj4M319nlT0O9TrfOGe9XkF+hlSR/mwrgJi0cpWUkuNWuIroUXRLjCoo8ZDcpM3GX1HN3dJ0rg5hntLHmGekaHOHj5hHs4ebu7ezt7uXm7OEd6emqhQNzdPj6jw70Kgf1zEgyDmQuo643r1bHbErjkxhJr35yHwhxEqPmEwiYLgLuDH4MXgwLL/hsiVs1TPWfImITC0WgjsLAFZqRYCW/7lF3yLgv/iK5IkQb5wffl1m5SEfjec6VTIepRGNa93PRRUaBu4vMPwK6VlX37Zd+ngyw9mXUqDC6NbMZcOnyy5+3lhz3khut4OB5mW+rczR0zeG7X++p6nVGfbvEa2w5vGbip7iXrMXTjV/JTWvLOZ5i2ktTlGx3a36vnW0WPaslnd6hW0N99sc0Lnl6upOms9X2yyKZxltyplWlFt8/tRFlMau1R0pdvlx6VluT3dvs01qEtvZa7h9EKL8LzBwr3LI+21685vudotrfH8xl0DhtlOKc/VOTb1gcqwwxHHHpqePgPmr1k5eeB8h/iXhzc92dfS+FRY+5QdnUxbzczIiT0YV/toWe2ahaVWa/ncl6f5zLl3ByyJTsv2uhJrVT7hUkXBrgVeWuWNDPIzDNYenHjqeWr++s52zU12+E8YPvHsh/NLfGtcM5jyaMay/naT+zdYeyy5vf0jlXXb8C+LfzJs576jS9/AK61/9p5Z4XIzN2Rl84HHh5/J3TNwVlrMpMR1T3I+Lbtpetnnc8Tx2MaqB6PTcjfuXbF71Jn5XVaO7HZSr1XYeevnnxse1vDvXRtH5NSL7xvkm9ciPTCLn7Z/bLd3x/pNCr2+NONw4fST8a3uHHSZW5r7bosUWzIgYE3x/KGF+1SHyxu83TS4nnJrlzM1Lu55O/fEJPNXyQNw4E6zlMHbLvS08a3fzaRo8rN+hwNWu96oNa1Rn7MlHi1mW+ydLQxNbfz88FXnbAU10//D85vUGXo5gAALIPC8EgS4UKP+HiT2m/+ewYaQcMppzbGf8tMrpwhcw4gGb9TUkIy/26lV5azgho6VcdPut7jZMT4egie4bnRUdHhoUqRV0yFJ/eMTo5NGyMFdqid5SO4aN093SWaqbhqy6S7Jm/9zFPqv4vuy7Jjcouv+c+qOHuhS486+u/eOLOxgG7Tx9E2T9nbaz86tPtd2Y5JkpfuUvdRpnmHAXLNmczZl9JLsf0UDH4/aVzKF1X4vKjJeTDlV86S73aQlr970M3f6POrRZIsnj9qvyM63DT4x42PLM1pn+2w+u6WZYvmHVTE/9bvicMMveMvEsw8c/Fxqb5gY2LmjcJ92+jQgPV2Km/S6u7Tk49jLC7Y9tl4wtuy8/mtVXnBsx+0t05f5o9atonRr14las+D+BWVK6+Ufxq/WbWWglbpsfGnn4eU40yJINQHpSH6lebds/fYcdu60bLPl8KaaYacWFTVI+yk7lNphoc79/H7RVnzapk2nig9MwSEr/lt8Xw89slrSroo4jESDqBbPf8gu5fBtoa1QgP9NlHSUWl8xwRDLe5CUklEZm1PSpZQZyQbihtS+TbrUXvCglv7nune44Hnd76/MDl8Z+o+7Z6rOiI1G2a2zcja2HdztDavvEikFVYJCgAQ4lNU8q+lE37/Pi6sOJ8I3yqGcAEKnaoDgL/lJLaoBgve/w4llPZpXnvVv8mHoa50FUwt60S28bhZv3zjs+ukRHdrhXJekQT1jBf31p/ePmrXL5aLe8umxYbu6UifbW+kHLbw5ssndrns2d8s0v2OBJ27YM/zVtLMlDfCzu/tncUzhDP+7L4INbwaun3P/0YwBl5LzH859pXSdQBfPrmtnk/Dp3ef7wxe6qN+zdxP2mrRfMnMglzhvV7bP4n7ORzqIT8J6+RplTLPyvcuaun04pWk9VNPIMZEvfJLQqGICp190iAud+eLKLuOn7aeNO+Lp2GfFgad7x/DNRl0MTrR+Jp3YMzyyV09szBmI5381yHjb8OeobtucXR99mDDxVIcuj5ckzI3Z4NP24rsRB9aZjAyr83z5ojoeymGmYccbWcbWTH3BH3Pac6b5tgcfSsbsuLdyTZLnrvZHBtnq2Q/lG3acPqiHX3ODvdu2bWnXr3BZs4rkEdbJSw2lqMfN9PqYFi61sT7bvNixeM8b/1NOF6+6Jbe1r+tvF9LjSZfnq24tXHKifvy+lNpJSt1nQ60PLErNr91pZ+6ARlOyh4Zuj8vWX3VgXasXevFfprrFbC0v6lA43fZ41L4lFpP0IqhGzpu7z9p13/rBji0nwrcP78RcbOoStGHulpzh67dlzR9iem3OJP0hNq5ua1RxWT2n1zqQ9Xz8CevLTy0Dj2c+C7j9HkfGT+HHFEYXPox7snrBaU2dCvFIz15X25llX/3outTXpbPRwOP6K75IqexIKZUJ+wYFYvp5AgX079OAlMn/SCh2k6TKAVnn7wzI3zICDcCGt5vk6VMJGl5kUyPJm//jGUsq9UfsoGTsoAA7YMytf/ExUcfcZePVuHWpOu08dr/a2c16WTOzugOLewSt26X0NlUE7B5XIFjerDfwqN5V/oX3oYXKLYU+l7CBptmFKeoREZPGzu1rF7N5acDi4v59zhctCt7KORVsvrbWcdNIrc1X5nc/0deUKY4a+tito72e66P1qqAz21rk9b562IUesr7/65Oxr+v3yjZ647f7tnfEhrgIz+GrssK1nS80+ans3i1WfanXiJyAOo/U+7P0h+2f2+j5p3uOPXRqtuvisHxk4m29+nkBfa6WljafnXZt1NZRE82uNc6d3vvxlMDxpq+yXbvfT2/gvMm925G8xuVuF7bRjXK3bp7jPfb8kmSnt+27zLb2rFXgExcxLnj3Yu2NNWzHn3yzm544433Ii7MdD0yfO2nvQeukWiEmDjtP1XbwrpXh09rrzOjcOZvMbVevjSoJrTngjkPAkpDJd2v1vmDdpnHHwzu6+trRL86N7Ol6yfZeQm/tDn7DtpWhO3s3UKkh1w8abttndrFzm0c+2drFtgF7TXa1GN3yfn5B4sjbiY/sig74LTzy/JB51+tpM0raBUir188sKum5bPPnm1ui7uYvSBlVerm0zaOAOqv1HVatHtMv+eHUsOEhW13HX+m6uNeBYQ4OL0tjCxxmOc1qUi8w/86EFlMOa7U9cjGnuWvSvPdxZcOtujnp9+47L7NxoPv4X7dMNr61tP2b+Vv2+mXFZJy/fXny9CrsLAXsLP4B/P0Gnj/MS2pU/YMBpRAsORSMhqAw1Bw1/R5X/wDK1TOeROf6lCa9+c8GTPs7T1Yf05yzneIh9agEN3kGNTCrXVabiQH/1qQPjFsYtTBYq5KSEMk9xM2NwFyfajDXUQqS2leDuWZ/D+b+xfmTpJRl8sVbKVIWSClzpZTZVZ3kQkspaZLvt6+jsJH7X6VZEfHhg0Gz6NjQxBHhCYNd+ifFSk2qTkBJHpZuVhaoLYpE/VAoikEhKIFMKkejcDQCtuRfAYSSCeZY+JPfFuBiZfGjRKzfq4k5Gbc7jTB1uXA1qZ/NIn6+7p3wOQubzR9zfoSQnh8Z4uLUuKwg8VxsWvl+38fciQYHWq1d8Tr6evgBG8+cBb0jx6ePmeYX1PmqMGf0edM25q8bNpvW8eyWLwPvNWZd6ix62Mgs5+IOi2Fzfe4WRxxv0Wj4SNvX+mNWpSelzXhz0p7yq3toqs6elWsZYVFp/4/9XeZl1fWtO7BbQHhNrei4Hhnz76e9OTjrtZ/jrc8Nzu7zfB5Xa9ODzbX/a28v3P3Mt36mxvQZvny23J84Oq/JHzaSePThqO656HlbPC25jnEdOrZ23dNNN2+LdgS6RlgYFapL1W/8ov7jno6VQuaMTZGdGXn5y7eXHHZgZVvGqKVh12Qv7JvGfWCz79eH/fUy+aK1rsvLnjpopS4+HBuU1HZYNtlsetv9W59/fBJbOEv94dml0y+8i012fBzNPqfdjq2c7SLbxlJ5kX2JiVs/3DkmzbLvvuNxPo1391L130z/tjBm2g2Gawvd9kZ+nr6U09tDYGaD/AUGzaMbZy+1dy2XMz12adGi+VVVSr88psqv/u2u3PB13o/92du9pz96XVoh9eaV+cxKCe//1zYrZ5Q+W//rT/dr7oZXmdbr/xi8ZfHpu3+/NDd5ou3FuWF+/vsbwpUWVggaKVa9d+TaaP97xZklsQcXdswOLwzz83A94HRydlk0V4NH9t/K+Qf35uZmnQwqFuatCjhr2MSywaCJZQ0TI6NB49SBrriwDwci5kYWNB4BFT7QRMzJbMiDPPECdAWCx23IZ4AsK2qgjNDIYggs2ryfym11CV5UcDpJPWXy04Pd6ff+ihmkIGnhMQwzCFmg1aDB4AvOWEXALAaau0kDZicFhhBgRgNlunSgeCKQlcFQuVCtQQVnzg6pLMhPL0osyKhUQKubWZoYGWxvCzddP9XSs2Dtrk0b7P2Ehc5d9bM/xcRhdf77xLXzZDa96ubKe/hq398KNk+mf3fOnvtt8Gbxt4RZlsuMuSI3zNzEobr7UUC+4y6xc3mzI8V81b0yOHqPcHqXaEyKLY9iY588P+R1ecy2HYFKM+atSm2Mf63Hbe0kyXhN7l+N5gPGGsNTSpenHlZfnFAQy8Mx9WRdVvsX9v0hS9oPMy/idX9VLrSGqytTo77jichey9XLcx+K8mpfXMm2jt+ftXuB3kXfH9OnR9ze3yjp+PzQxSqDjf9kfqk39lW6nf06rad9zlvtD+cep+WlWv/vlft8I8X32dPqXQc1WSY/n+GYv18qmOfD7fXxAg8L0xc2MWkAmycqiDhiM2xiEgUKCYKTZt+AdcSxT7QhpclYAwnkJMmNmDBkBFoOl2E15AcPHJsYmBgZmhoYmERhpMgtyY53orcVK34/ayTVULx/odm7oPdoXSZQWsm4rppeNN/zx5uJL6Un6It/vHR7ytvSx91P3R4ETL2e1fAh9t2FFQv2BVh/PBEh6C7AcOA6U6jn7k0zvG9e9TVn60y1rzrwaiabuEl99P99M7dylMhtD5qd1xBZrcXELhv1Vlult2nXxF880rXLltboHefeo7BKLHQ5jwBf045Y6cclF1amaTt2y/5nuDAzq3zndcbmiozvaj90+hWdejJ+fY+b+nfpCU5u9XrmuRoH3h3iMT/cue7t7icq04wsXBQFdGcf9zq+6o74qg6OxVcLspqcn23JaUvvl2XsWWhcc7I5WNX719KHeTHzzhuZ/vNNn7SwYoPI6w37cuY0asYLaHI3/q1IjrtZ+fHmEwYGABUNdXMNCmVuZHN0cmVhbQ0KZW5kb2JqDQo0OCAwIG9iag0KPDwvVHlwZS9YUmVmL1NpemUgNDgvV1sgMSA0IDJdIC9Sb290IDEgMCBSL0luZm8gOSAwIFIvSURbPEM1NUFFREJFN0Y0OTgzNDM4ODkyRTUxQjRBMkIxQjgyPjxDNTVBRURCRTdGNDk4MzQzODg5MkU1MUI0QTJCMUI4Mj5dIC9GaWx0ZXIvRmxhdGVEZWNvZGUvTGVuZ3RoIDEzNT4+DQpzdHJlYW0NCnicNc9LDoJQDIXhXkAuIAiIgm/dmHHmHoxx4kJcgBNHrg9Kf+2gX5r0DI6ITt873bXIyAO+hnsb8dXwjZF4+BjpSyTQQCV7OMARdvB7OWkgu/0vBwGEEMEEYvCQQAoZTCGHAmZQQgU1zKGBBSyhhQ5WsIYNbLVDkVv3Mhxx57txeYoM+4oMuQ0KZW5kc3RyZWFtDQplbmRvYmoNCnhyZWYNCjAgNDkNCjAwMDAwMDAwMTAgNjU1MzUgZg0KMDAwMDAwMDAxNyAwMDAwMCBuDQowMDAwMDAwMTI1IDAwMDAwIG4NCjAwMDAwMDAxODEgMDAwMDAgbg0KMDAwMDAwMDQyNiAwMDAwMCBuDQowMDAwMDAxNjM4IDAwMDAwIG4NCjAwMDAwMDE4MTEgMDAwMDAgbg0KMDAwMDAwMjA1NSAwMDAwMCBuDQowMDAwMDAyMjIzIDAwMDAwIG4NCjAwMDAwMDI0NjIgMDAwMDAgbg0KMDAwMDAwMDAxMSA2NTUzNSBmDQowMDAwMDAwMDEyIDY1NTM1IGYNCjAwMDAwMDAwMTMgNjU1MzUgZg0KMDAwMDAwMDAxNCA2NTUzNSBmDQowMDAwMDAwMDE1IDY1NTM1IGYNCjAwMDAwMDAwMTYgNjU1MzUgZg0KMDAwMDAwMDAxNyA2NTUzNSBmDQowMDAwMDAwMDE4IDY1NTM1IGYNCjAwMDAwMDAwMTkgNjU1MzUgZg0KMDAwMDAwMDAyMCA2NTUzNSBmDQowMDAwMDAwMDIxIDY1NTM1IGYNCjAwMDAwMDAwMjIgNjU1MzUgZg0KMDAwMDAwMDAyMyA2NTUzNSBmDQowMDAwMDAwMDI0IDY1NTM1IGYNCjAwMDAwMDAwMjUgNjU1MzUgZg0KMDAwMDAwMDAyNiA2NTUzNSBmDQowMDAwMDAwMDI3IDY1NTM1IGYNCjAwMDAwMDAwMjggNjU1MzUgZg0KMDAwMDAwMDAyOSA2NTUzNSBmDQowMDAwMDAwMDMwIDY1NTM1IGYNCjAwMDAwMDAwMzEgNjU1MzUgZg0KMDAwMDAwMDAzMiA2NTUzNSBmDQowMDAwMDAwMDMzIDY1NTM1IGYNCjAwMDAwMDAwMzQgNjU1MzUgZg0KMDAwMDAwMDAzNSA2NTUzNSBmDQowMDAwMDAwMDM2IDY1NTM1IGYNCjAwMDAwMDAwMzcgNjU1MzUgZg0KMDAwMDAwMDAzOCA2NTUzNSBmDQowMDAwMDAwMDM5IDY1NTM1IGYNCjAwMDAwMDAwNDAgNjU1MzUgZg0KMDAwMDAwMDA0MSA2NTUzNSBmDQowMDAwMDAwMDQyIDY1NTM1IGYNCjAwMDAwMDAwNDMgNjU1MzUgZg0KMDAwMDAwMDAwMCA2NTUzNSBmDQowMDAwMDAzMzQwIDAwMDAwIG4NCjAwMDAwMDM4NDMgMDAwMDAgbg0KMDAwMDA4OTQ2NyAwMDAwMCBuDQowMDAwMDg5OTg2IDAwMDAwIG4NCjAwMDAxNzk2NDggMDAwMDAgbg0KdHJhaWxlcg0KPDwvU2l6ZSA0OS9Sb290IDEgMCBSL0luZm8gOSAwIFIvSURbPEM1NUFFREJFN0Y0OTgzNDM4ODkyRTUxQjRBMkIxQjgyPjxDNTVBRURCRTdGNDk4MzQzODg5MkU1MUI0QTJCMUI4Mj5dID4+DQpzdGFydHhyZWYNCjE3OTk4Mw0KJSVFT0YNCnhyZWYNCjAgMA0KdHJhaWxlcg0KPDwvU2l6ZSA0OS9Sb290IDEgMCBSL0luZm8gOSAwIFIvSURbPEM1NUFFREJFN0Y0OTgzNDM4ODkyRTUxQjRBMkIxQjgyPjxDNTVBRURCRTdGNDk4MzQzODg5MkU1MUI0QTJCMUI4Mj5dIC9QcmV2IDE3OTk4My9YUmVmU3RtIDE3OTY0OD4+DQpzdGFydHhyZWYNCjE4MTEyMA0KJSVFT0Y=</value>
                </observationMedia>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
      <!-- [0..1] Section FR-Documents-references : référence au document ANEST-CR-CPA -->
      <component>
        <section>
          <!-- Conformité CI-SIS -->
          <templateId root="1.2.250.1.213.1.1.2.55"/>
          <id root="7EDD4F34-3ED1-4761-A9E0-C4F6F4286246"/>
          <code code="55107-7" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Documents référencés"/>
          <title>Documents référencés</title>
          <text>
            <table>
              <thead>
                <tr>
                  <th align="center">Documents référencés</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <content ID="docReference">
                      <linkHtml href="ANEST-CR-CPA_2021.01_20210415.xml">ANEST-CR-CPA_2021.01_20210415</linkHtml>
                    </content>
                  </td>
                </tr>
              </tbody>
            </table>
          </text>
          <!-- [1..*] Entrée FR-References-externes -->
          <entry>
            <act classCode="ACT" moodCode="EVN">
              <!-- Conformité IHE PCC -->
              <templateId root="1.3.6.1.4.1.19376.1.5.3.1.4.4"/>
              <!-- Conformité CI-SIS -->
              <templateId root="1.2.250.1.213.1.1.3.35"/>
              <id root="C2D9C0A2-68EA-4ADC-9394-3508AA3B74B1"/>
              <code nullFlavor="NA"/>
              <text><reference value="#docReference"/></text>
              <reference typeCode="REFR">
                <!-- Document de référence-->
                <externalDocument classCode="DOC" moodCode="EVN">
                  <!-- Identifiant du document -->
                  <id root="1.2.250.1.213.1.1.9" extension="ANEST_CR_CPA_2021.01_001_1"/>
                  <text>
                    <!-- URL du document -->
                    <reference value="ANEST-CR-CPA_2021.01_20210415.xml"/></text>
                </externalDocument>
              </reference>
            </act>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>