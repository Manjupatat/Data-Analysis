
# 🧹 Medical Appointment No Shows – Data Cleaning & Preprocessing

## 📌 Objective

The goal of this task was to clean and preprocess the raw **Medical Appointment No Shows** dataset to prepare it for further analysis or modeling. This involved removing inconsistencies, handling missing values, standardizing formats, and ensuring proper data types.

---

## 🛠️ Tools Used

- **Python 3**
- **Pandas Library**

---

## Usage

1. Clone the repository:
    ```bash
    git clone https://github.com/your-repo-url.git
    ```
2. Navigate to the project directory:
    ```bash
    cd Projects/Data\ Analysis/Elevateslabs/Task1
    ```
3. Install dependencies:
    ```bash
    pip install -r requirements.txt
    ```
4. Open the notebook:
    ```bash
    jupyter notebook task1.ipynb
    ```
---

## 📂 Dataset Overview

The dataset contains records of medical appointments in Brazil and whether or not patients showed up. Key fields include:

- `PatientId`, `AppointmentID`
- `ScheduledDay`, `AppointmentDay`
- `Age`, `Gender`, `Neighbourhood`
- `Scholarship`, `Hipertension`, `Diabetes`, `Alcoholism`, `Handcap`
- `SMS_received`
- `No-show` (target)

---

## ✅ Cleaning Steps Performed

| Step | Description |
|------|-------------|
| 1️⃣ | Renamed column headers to lowercase with underscores |
| 2️⃣ | Converted `ScheduledDay` and `AppointmentDay` to datetime format |
| 3️⃣ | Standardized text values (`gender`, `no_show`) to lowercase |
| 4️⃣ | Checked and removed any duplicate rows |
| 5️⃣ | Verified data types (`age` as `int`, dates as `datetime`) |
| 6️⃣ | Checked for missing/null values (none found) |

---

## 🧾 Summary of Changes

- Renamed all columns to lowercase and replaced hyphens with underscores.
- Converted `ScheduledDay` and `AppointmentDay` to proper `datetime` format.
- Standardized `gender` and `no_show` to lowercase text.
- Ensured `age` is stored as integer.
- Verified all data types are appropriate for analysis.
- Removed duplicate rows (if any).
- No missing values found in the dataset.

---

## 💾 Output

- ✅ `cleaned_dataset.csv` – Ready for analysis or modeling

---

## 📈 Next Steps

- Exploratory Data Analysis (EDA)
- Feature Engineering
- Build Classification Models to predict no-shows

---

## 🔗 Source

Dataset from Kaggle: [Medical Appointment No Shows](https://www.kaggle.com/datasets/joniarroba/noshowappointments)

---

