# ABAP - Smart Forms Project

## Description
This ABAP program enables users to generate invoice outputs using SAP Smart Forms. It retrieves airline carrier data from the SCARR table based on currency codes entered through a selection screen, and then calls the Smart Form to display the results.

## Features Covered

This project incorporates the following key Smart Forms and ABAP concepts:

### Key Topics Overview
- Smart Forms Basics: Windows, Texts, Templates  
- Table and Program Line Integration  
- Using SmartStyles for Text Formatting  
- Logo and Barcode Integration  
- Conditional Logic and Loops in Smart Forms  
- Include Texts and Dynamic Text Handling  
- Creating and Using a Driver Program  
- Passing Parameters to Smart Forms  

### Project Implementation Highlights
- Modular invoice output designed using **SAP Smart Forms**, combining templates, tables, conditional logic, loops, and dynamic texts  
- Custom Smart Form (`ZDC_SF_002`) developed with integrated **logo** and **barcode** support  
- Customized **Smart Style** applied for consistent and professional text formatting  
- Driver program dynamically resolving form name with `SSF_FUNCTION_MODULE_NAME`  
- Output parameters managed via `SSFCTRLOP` and `SSFCOMPOP` for print preview and output device control (default device: `LP01`)  
- Interactive **selection screen** implemented using **`SELECT-OPTIONS`**, comments, and **RADIOBUTTON GROUP** to capture user inputs  
- Data filtering performed on the SAP standard table `SCARR` based on user-defined **currency codes** and **status**  
- Parameter passing and internal table usage enable dynamic, data-driven Smart Form generation


## Screenshots
🖥️ **1. Selection Screen:**
This screen allows the user to filter airline carrier data based on currency and active/passive status before generating the invoice output.

![Image](https://github.com/user-attachments/assets/4aa818cb-a7e0-411b-8212-5b40f202f3d6)

🧾 **2. Output Preview:**
This is the Smart Form output generated after user input, showing a formatted list of airline carriers with relevant invoice data.

![Image](https://github.com/user-attachments/assets/b9e9de3d-efbe-4c26-92b0-f97f10c82a59)

