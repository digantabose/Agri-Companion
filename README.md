# Agri Companion

Agri Companion is a comprehensive mobile application designed to assist farmers and agricultural enthusiasts in detecting plant diseases and finding appropriate remedies. Built with Flutter, it leverages on-device storage and efficient data processing to provide a seamless user experience.

## Features

*   **Plant Disease Detection:** Browse through a variety of plants and identifying common diseases.
*   **Remedy Suggestions:** Get actionable advice and treatments for identified plant diseases.
*   **Offline First:** Uses Hive for local storage to ensure data is available even without an internet connection.
*   **Efficient Image Loading:** Caches images for fast and bandwidth-friendly performance.

## Tech Stack

*   **Frontend Framework:** [Flutter](https://flutter.dev/)
*   **State Management:** [Flutter Riverpod](https://riverpod.dev/)
*   **Local Database:** [Hive](https://docs.hivedb.dev/)
*   **Routing:** [GoRouter](https://pub.dev/packages/go_router)
*   **Data Processing:** Python scripts for asset management and database population.

## Getting Started

### Prerequisites

*   Flutter SDK (3.2.0 or later)
*   Python 3.x (for data scripts)

### Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/yourusername/agri-companion.git
    cd agri-companion
    ```

2.  Install Flutter dependencies:
    ```bash
    flutter pub get
    ```

3.  (Optional) Populate seed data and download assets:
    ```bash
    # Ensure you are in the project root
    python download_assets.py
    ```

4.  Run the app:
    ```bash
    flutter run
    ```
