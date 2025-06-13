# ABAP - Smart Forms Project

## Description
This ABAP program enables users to generate invoice outputs using SAP Smart Forms. It retrieves airline carrier data from the SCARR table based on currency codes entered through a selection screen, and then calls the Smart Form to display the results.

## Features
- Smart Forms Basic Features, Windows, and Texts
- Smart Forms Template Structure
- Table and Program Line Integration in Smart Forms
- Using SmartStyles for Text Formatting
- Adding and Managing Logos in Smart Forms
- Conditional Output and Alternatives in Smart Forms
- Looping Through Data Within Smart Forms
- Include Texts and Dynamic Texts Handling
- Barcode Integration in Smart Forms
- Creating and Using a Driver Program for Smart Forms
- Passing Parameters to Smart Forms

## How to Run
1. Import the `.abap` driver program into your SAP system.
2. Execute the program `ZDC_SMARTFORMS_01` from SE38.
3. Use the selection screen to enter currency codes and select active/passive status.
4. The Smart Form invoice output will be displayed as a formatted PDF or print preview.

## Screenshots
🖥️ **1. Selection Screen:**
This screen allows the user to filter airline carrier data based on currency and active/passive status before generating the invoice output.

![Image](https://github.com/user-attachments/assets/5f37ab1e-1885-4f6a-aaa6-e7613a8f26be)

🧾 **2. Output Preview:**
This is the Smart Form output generated after user input, showing a formatted list of airline carriers with relevant invoice data.

![Image](https://github.com/user-attachments/assets/b9e9de3d-efbe-4c26-92b0-f97f10c82a59)

