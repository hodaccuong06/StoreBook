

### Prerequisites
To run this Laravel app, you need to have the following software installed on your machine:
- [PHP](https://www.php.net/)
- [Composer](https://getcomposer.org/)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/hodaccuong06/StoreBook.git
   ```
2. Change into the project directory:
    ```bash
    cd ecomarce-website
    ```

3. Install PHP dependencies:
    ```bash
    composer install
    ```
    ```bash
    npm install
    ```
4. Create a copy of the .env.example file and rename it to .env. Update the database and other configurations as needed.
5. Generate an application key:
    ```bash
    php artisan key:generate
    ```
6. Add database in phpAdmin: (Create a table named laravel on phpAdmin)
    ```bash
    Select laravel -> select enter - select file "laravel.sql" then input
    ![image](https://github.com/hodaccuong06/StoreBook/assets/61493128/9b64f455-7228-428d-8493-7ad4f97ac037)

    ```
7. Serve the application:
    ```bash
    php artisan serve
    ```
8. Visit [http://127.0.0.1:8000](http://127.0.0.1:8000) in your browser to view the app.



## If you want to automatically delete bills for orders over three months old, then:
Create a new terminal and enter -> php artisan schedule:work
To check and run the delete command every minute


