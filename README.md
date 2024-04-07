

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
6. Disconnect from storage
    ```bash
    rm public/storage
    Enter A

    ```
7. Connect to storage
    ```bash
    php artisan storage:link

    ```
8. Add database in phpAdmin: (Create a table named laravel on phpAdmin)
    ```bash
    Select laravel -> select enter - select file "laravel.sql" then input

    ```
9. Serve the application:

    Create a new terminal->npm run dev

    ```bash
    php artisan serve (To run the server)
    ```
10. Visit [http://127.0.0.1:8000](http://127.0.0.1:8000) in your browser to view the app.



## If you want to automatically delete bills for orders over three months old, then:
Create a new terminal and enter -> php artisan schedule:work
To check and run the delete command every minute


