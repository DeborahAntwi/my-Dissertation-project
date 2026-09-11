# SIMS Ghana — Student Information Management System

A Student Information Management System (SIMS) designed for public basic educational institutions in Ghana, built as part of a Masters dissertation at the University of Northampton.

## Overview

This system addresses the administrative challenges faced by Ghanaian public basic schools (KG1–JHS3) that still rely on paper-based record-keeping. It provides digital management of student records, attendance, and academic reporting with offline capability.

## Key Features

- **Role-Based Access Control (RBAC):** Three roles — Headteacher, Class Teacher, Administrative Staff — each with different permissions
- **Offline-First Architecture:** Uses SQLite for local data storage — works without internet
- **Student Registration:** Bio-data, enrollment ID, guardian information, grade levels (KG1–JHS3)
- **Attendance Recording:** Daily Present/Absent/Late tracking with duplicate prevention
- **Academic Reports:** Term reports for Mathematics, English, and Science with teacher remarks
- **GES-Aligned CSV Export:** Headteacher-only export formatted for Ghana Education Service reporting
- **Ghana Education Service Branding:** GES logo, Ghana flag colour theme

## Technology Stack

| Component | Technology |
|-----------|-----------|
| Back-end | Python (Django 4.2) |
| Front-end | HTML, CSS, JavaScript, Bootstrap 5 |
| Database | SQLite (offline local storage) |
| Charts | Chart.js 4.4.4 |
| Icons | FontAwesome 6 |
| Deployment | Docker |

## Setup Instructions

### Prerequisites
- Docker Desktop installed and running

### Installation
```bash
# 1. Clone or extract the project
# 2. Navigate to the project folder
cd sims_ghana

# 3. Build and start the application
docker-compose up -d --build

# 4. Create a superuser (Headteacher admin account)
docker-compose exec web python manage.py createsuperuser

# 5. Load synthetic test data (30 students, attendance, reports)
docker-compose exec web python manage.py seed_data

# 6. Open in browser
# http://localhost:8000
```

### Running Tests
```bash
docker-compose exec web python manage.py test
```

### Stopping the Application
```bash
docker-compose down
```

## Project Structure

```
sims_ghana/
├── accounts/          # User authentication and RBAC
├── students/          # Pupil registration and records
├── academics/         # Attendance and term reports
├── templates/         # HTML templates
├── static/            # CSS, JS, images, webfonts
├── sims_project/      # Django settings and URLs
├── Dockerfile         # Docker container definition
├── docker-compose.yml # Docker orchestration
└── manage.py          # Django management script
```

## Sprint History

| Sprint | Deliverables |
|--------|-------------|
| Sprint 1 | User authentication, RBAC, student registration, pupil directory, search |
| Sprint 2 | Attendance recording, academic records, GES report generation, CSV export |
| Sprint 3 | Registration security fix, offline refinement, full integration testing |

## Author

Deborah Antwi — MSc Computing, University of Northampton (2025–2026)

## Licence

This project was developed for academic purposes as part of a Masters dissertation.
