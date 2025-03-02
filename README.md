# 🌏 LafeAINet

<div align="center">

<img src="https://img.shields.io/badge/React-19.0-blue?style=flat-square&logo=react" alt="React">
<img src="https://img.shields.io/badge/Together%20AI-Llama%203.3-yellow?style=flat-square" alt="Together AI">
<img src="https://img.shields.io/badge/TiDB-MySQL%20compatible-4479A1?style=flat-square&logo=mysql" alt="TiDB">
<img src="https://img.shields.io/badge/NextAuth-Security-green?style=flat-square&logo=auth0" alt="NextAuth">
<img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github" alt="GitHub">
<img src="https://img.shields.io/badge/VSCode-007ACC?style=flat-square&logo=visual-studio-code" alt="VS Code">
<img src="https://img.shields.io/badge/Sourcetree-0052CC?style=flat-square&logo=sourcetree" alt="Sourcetree">
<img src="https://img.shields.io/badge/DBeaver-4D4D4D?style=flat-square&logo=dbeaver" alt="DBeaver">
<img src="https://img.shields.io/badge/Chrome-4285F4?style=flat-square&logo=google-chrome" alt="Chrome">
<img src="https://img.shields.io/badge/Vercel-000000?style=flat-square&logo=vercel" alt="Vercel">
<img src="https://img.shields.io/badge/Next.js-000000?style=flat-square&logo=next.js" alt="Next.js">
<img src="https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript" alt="TypeScript">
<img src="https://img.shields.io/badge/TailwindCSS-06B6D4?style=flat-square&logo=tailwind-css" alt="TailwindCSS">
<img src="https://img.shields.io/badge/Chart.js-FF6384?style=flat-square&logo=chart.js" alt="Chart.js">
<img src="https://img.shields.io/badge/Leaflet-199900?style=flat-square&logo=leaflet" alt="Leaflet">
<img src="https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square" alt="License">
  <br>
  <strong>🏆 Submission for AI for Connectivity Hackathon II: Building Resilient Networks</strong>
</div>

<p align="center">
  <a href="/app.png" target="_blank">
    <img src="/app.png" alt="Timor-Leste Connectivity" width="600">
  </a>
</p>

<div align="center">
  <h3>AI-Powered Network Connectivity Monitoring Platform for Timor-Leste</h3>
</div>

## 👥 Lafaek AI Team

<div align="center">
      <a href="https://github.com/ajitonelsonn">
        <img src="https://github.com/ajitonelsonn.png" width="100px;" alt=""/>
        <br />
        <sub><b>Ajito Nelson Lucio da Costa</b></sub>
      </a>
    </td>
</div>

## 🌟 About LafeAINet

LafeAINet is a comprehensive network monitoring platform designed specifically for Timor-Leste, a young nation facing significant connectivity challenges. Our solution empowers communities, telecommunications providers, and policymakers with data-driven insights to strengthen digital infrastructure where it's needed most.

The name "LafeAINet" combines "Lafe or Lafaek" (which means "Crocodile" in Tetum, a national language of Timor-Leste) with "AI" and "Net," symbolizing our mission to build trusted AI-powered network analysis for the nation.

### 💡 Why It Matters

In Timor-Leste, reliable connectivity is crucial but frequently inadequate:

- **Geographic Challenges**: Mountainous terrain creates natural connectivity barriers
- **Infrastructure Gaps**: Limited telecommunications infrastructure in rural areas
- **Investment Prioritization**: Need for data-driven decisions on infrastructure improvements
- **Service Accountability**: Limited visibility into provider performance across regions

LafeAINet addresses these challenges by creating a transparent, data-driven view of connectivity throughout the country.

## 🚀 The LafeAINet Ecosystem

LafeAINet consists of three interconnected applications that work together to collect, analyze, and visualize network quality data:

```mermaid
flowchart TD
    subgraph "LafeAINet Ecosystem"
        LafeAINet["LafeAINet\nCentral Repository"]

        subgraph "Data Collection"
            Report["LafeAINet-Report\nUser-facing app"]
        end

        subgraph "Data Processing"
            Analyzer["LafeAINet-Analyzer\nAI Engine"]
        end

        subgraph "Data Visualization"
            Dashboard["LafeAINet-Dashboard\nInsights Platform"]
        end

        Users["Users in Timor-Leste"] --> Report
        Report --"Network Reports"--> Analyzer
        Analyzer --"Processed Insights"--> Dashboard
        Dashboard --"Feedback"--> Users

        LafeAINet --- Report
        LafeAINet --- Analyzer
        LafeAINet --- Dashboard
    end

    classDef main fill:#f9f,stroke:#333,stroke-width:2px
    classDef collect fill:#bbf,stroke:#333,stroke-width:1px
    classDef process fill:#bfb,stroke:#333,stroke-width:1px
    classDef visual fill:#fbf,stroke:#333,stroke-width:1px
    classDef user fill:#fbb,stroke:#333,stroke-width:1px

    class LafeAINet main
    class Report collect
    class Analyzer process
    class Dashboard visual
    class Users user
```

### Component Repositories

- **[LafeAINet-Report](https://github.com/ajitonelsonn/lafeainet-report)**: Mobile-friendly web application for collecting network quality reports from users across Timor-Leste
- **[LafeAINet-Analyzer](https://github.com/ajitonelsonn/lafeainet-analyzer)**: AI-powered backend that processes network data and generates meaningful insights using LLMs
- **[LafeAINet-Dashboard](https://github.com/ajitonelsonn/lafeainet-dashboard)**: Interactive visualization platform for exploring network quality data and trends

## 🌟 Core Features

<table>
  <tr>
    <td width="33%" align="center">
      <h3>📱 User-Friendly Reporting</h3>
      <p>Simple interface for submitting network quality reports from any device</p>
    </td>
    <td width="33%" align="center">
      <h3>🧠 AI-Powered Analysis</h3>
      <p>Llama 3.3 70B processing for sentiment and quality analysis</p>
    </td>
    <td width="33%" align="center">
      <h3>📊 Interactive Visualizations</h3>
      <p>Data-rich dashboard with maps, charts, and provider comparisons</p>
    </td>
  </tr>
  <tr>
    <td width="33%" align="center">
      <h3>🗺️ Geographic Mapping</h3>
      <p>Location-based visualization of network quality across regions</p>
    </td>
    <td width="33%" align="center">
      <h3>🔄 Automated Processing</h3>
      <p>Scheduled analysis of new reports via GitHub Actions</p>
    </td>
    <td width="33%" align="center">
      <h3>🔒 Secure Access Controls</h3>
      <p>Role-based permissions for viewing sensitive data</p>
    </td>
  </tr>
</table>

## 📊 Data Flow Architecture

```mermaid
flowchart LR
    Users([Users]) --> Report[LafeAINet-Report]
    Report --> |Store Reports| Database[(TiDB Database)]

    GH[GitHub Actions] --> |Trigger Analysis| Analyzer[LafeAINet-Analyzer]
    Analyzer <--> |Process Reports| Database

    Analyzer --> |Use LLM| TogetherAI[Together AI\nLlama 3.3 70B]
    TogetherAI --> |Return Analysis| Analyzer

    Database --> |Provide Data| Dashboard[LafeAINet-Dashboard]
    Dashboard --> |View Insights| Stakeholders([Stakeholders])

    subgraph "Data Types"
        RawData[Raw Network Data]
        ProcessedData[AI-Processed Insights]
        VisualData[Visual Analytics]
    end

    Report --> RawData
    Analyzer --> ProcessedData
    Dashboard --> VisualData

    style Users fill:#f9d5e5,stroke:#333,stroke-width:1px
    style Stakeholders fill:#f9d5e5,stroke:#333,stroke-width:1px
    style Report fill:#d5e8ff,stroke:#333,stroke-width:1px
    style Analyzer fill:#d5f9e5,stroke:#333,stroke-width:1px
    style Dashboard fill:#f9e5d5,stroke:#333,stroke-width:1px
    style Database fill:#e5d5f9,stroke:#333,stroke-width:1px
    style TogetherAI fill:#f9f9d5,stroke:#333,stroke-width:1px
    style GH fill:#d5f9f9,stroke:#333,stroke-width:1px
```

## 💾 Database Structure

Our system utilizes a TiDB (MySQL-compatible) database with the following schema:

```mermaid
erDiagram
    USERS {
        bigint id PK
        varchar username
        varchar email
        varchar password_hash
        enum role
        timestamp created_at
        timestamp updated_at
    }

    PROVIDERS {
        bigint id PK
        varchar name
        boolean is_active
        timestamp created_at
    }

    DATA_PACKAGES {
        bigint id PK
        bigint provider_id FK
        varchar name
        text description
        boolean is_active
        timestamp created_at
    }

    NETWORK_REPORTS {
        bigint id PK
        bigint user_id FK
        bigint provider_id FK
        bigint data_package_id FK
        decimal download_speed
        decimal upload_speed
        int latency
        json device_info
        decimal location_lat
        decimal location_lng
        varchar municipality
        text comment
        decimal sentiment_score
        decimal network_quality_score
        timestamp created_at
        timestamp updated_at
    }

    ANALYSIS_RESULTS {
        bigint id PK
        bigint report_id FK
        decimal sentiment_score
        json sentiment_aspects
        decimal quality_score
        json analysis_details
        timestamp created_at
        timestamp updated_at
    }

    POWER_USERS {
        int id PK
        varchar name
        varchar username
        varchar password
        enum role
        varchar institution
        timestamp created_at
        timestamp updated_at
        timestamp last_login
    }

    USERS ||--o{ NETWORK_REPORTS : submits
    PROVIDERS ||--o{ DATA_PACKAGES : offers
    PROVIDERS ||--o{ NETWORK_REPORTS : provides_service_for
    DATA_PACKAGES ||--o{ NETWORK_REPORTS : used_in
    NETWORK_REPORTS ||--|| ANALYSIS_RESULTS : analyzed_in
```

[View full database schema](database.sql)

## 🔧 Technology Stack

<table align="center">
  <tr>
    <td align="center"><strong>Frontend</strong></td>
    <td align="center"><strong>Backend</strong></td>
    <td align="center"><strong>AI & Data</strong></td>
    <td align="center"><strong>Infrastructure</strong></td>
  </tr>
  <tr>
    <td>
      • React 19<br>
      • Next.js 15<br>
      • TailwindCSS<br>
      • Chart.js / Leaflet
    </td>
    <td>
      • Next.js API Routes<br>
      • NextAuth.js<br>
      • MySQL2 client
    </td>
    <td>
      • Llama 3.3 70B<br>
      • Together AI SDK<br>
      • TiDB database
    </td>
    <td>
      • Render<br>
      • GitHub Actions<br>
      • Vercel
    </td>
  </tr>
</table>

## 🌟 Real-World Impact

LafeAINet helps solve critical connectivity challenges in Timor-Leste:

- **Informed Decision Making**: Policymakers can identify priority areas for infrastructure investment
- **Provider Accountability**: Transparent comparison of service provider performance
- **User Empowerment**: Citizens gain visibility into regional network quality
- **Infrastructure Planning**: Telecom companies can target improvements where needed most

## 🛠️ Getting Started with LafeAINet

### Prerequisites

- Node.js 20 or higher
- npm or yarn
- MySQL-compatible database (TiDB recommended)
- Together AI API key

### Installation Guide

1. Clone the complete ecosystem:

```bash
# Clone the main repository
git clone https://github.com/ajitonelsonn/LafeAINet.git
cd LafeAINet

# Clone the component repositories
git clone https://github.com/ajitonelsonn/lafeainet-report.git
git clone https://github.com/ajitonelsonn/lafeainet-analyzer.git
git clone https://github.com/ajitonelsonn/lafeainet-dashboard.git
```

2. Set up the database:

```bash
# Create the database schema using the provided SQL file
mysql -u youruser -p < database.sql
```

3. Configure each component (see individual repositories for detailed instructions)

## 🔒 Privacy & Security

LafeAINet is designed with privacy in mind:

- Anonymous report submission supported
- No personal identifying information required
- Geographic data collected only with permission
- Role-based access controls for sensitive data

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

<div align="center">
  <p>Built with 💙 for improving connectivity in Timor-Leste</p>
  <p>
    <a href="https://lablab.ai/event/ai-for-connectivity-hackathon-building-resilient-networks">AI for Connectivity Hackathon II</a>
    •
    <a href="https://github.com/ajitonelsonn/LafeAINet">View on GitHub</a>
  </p>
</div>
