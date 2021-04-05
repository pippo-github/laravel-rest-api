# Project description

User Project Post -
------------------------

**Purpose of the application:** The project gives the possibility to insert data in a MySQL db and to show them through the JSON standard: API, application suitable for creating data in REST API / JSON format.

**description:** The aim of the project is to show how simple it is to process data from a database and use it as JSON in order to build a REST API, useful for creating web page content dynamically.

JsonResource, which is used to return and customize db data in JSON format.


*The records are of the dummy type, created through the Seed and Factory classes made available by Laravel.*


**Other features of the project:**

* REST API application based on data from MySQL db
* Allows the customization of the contents that will be shown in JSON format
* Show how to use Forms:: in OOP way, from package: laravelcollective/html
* Uses Bootstrap for styling CSS classes
* Show how to use a shared Balde layout
* Show how to use static asset assets like .css and .js files
* Show how to implement flash sessions and $errors
* Show how to use CRUD functions on db
* Shows how to enhance tables by massive data insertion: Bulk insert/create
* Shows how to check the user data entered in the forms, through Validator ($request)
* shows how to customize messages and form validation rules
* Shows how to call application controller for Laravel versions> 7 via Fully-Qualified Class Names



*What you need to create to make the application work:*<br/><br/>

Create a db called: "laravel-rest-api"<br/>
create a table to populate: "rest_api_table"<br/>
You can use the db dump file: "DB-laravel-rest-api.sql"<br/>
<br/>
<br/>
<br/>
**Commands that could be used to run the application:**

<br/>
Sets the APP_KEY value in your .env: <br/> <br/>

$ php artisan key: generate <br/> <br/>
<br/>

Laravel dependencies: <br/> <br/>

$ composer dump-autoload <br/>
$ composer install <br/>

<br/>

Creation of the resouce class for conversion and manipulation of data in JSON format: <br/> <br/>

$ php artisan make: resource resource_name <br/> <br/>
<br/>

Laravel auth and ui and bootstrap (for laravel 8) <br/> <br/>

$ composer require laravel / ui <br/>
$ php artisan ui bootstrap <br/>
<br/> <br/>

NPM dependencies / compile resource <br/> <br/>

$ npm install <br/>
$ npm run dev <br/>

<br/> <br/>
Install laravelcollective for FORM:: OOP <br/> <br/>

$ composer require laravelcollective/html <br/>




<br />
<br />
<br />
<br />



# Descrizione Progetto

Progetto User post -- 
------------------------

**Scopo dell'applicazione:** Il progetto da' la possibilita' d'inserire dei dati in un db MySQL e di mostrarli attraverso lo standard JSON:API, applicazione atta alla creazione di dati in formato REST API/JSON.

**descrizione:** Lo scopo del Il progetto e' quello di mostrare come sia semplice trattare dei dati provenienti da un db e di utilizzarli come JSON al fine di costruire una REST API, utili per creare contenuti di pagine web in maniera dinamica.

Il ruolo principale all'interno dell'applicazione e' svolto dalla classe JsonResource, la quale viene utilizzata per restituire e personalizzare  i dati del db in formato JSON.


*I records sono di tipo dummy, creati attraverso le classi Seed e Factory messe a disposizione da Laravel.*


**Altre caratteristiche del progetto:**

	* Applicazione REST API basata su dati provenienti da db MySQL
	* Permette la personalizzazione dei contenuti che saranno mostrati in formato JSON
	* Mostra come utilizzare i Form:: in maniera OOP, del package: laravelcollective/html
	* Utilizza Bootstrap per la stilizzazione delle classi CSS
	* Mostra come utilizzare un layout Balde condiviso
	* Mostra come utilizzare gli assets delle risorse statiche come .css e .js files
	* Mostra come implementare le session flash e gli $errors
	* Mostra come utilizzare le funzioni di CRUD su db
	* Mostra come valorizzare le tabelle tramite inserimento massivo dei dati: Bulk insert/create
	* Mostra come effettuare il controllo dei dati utente inseriti nei form, tramite Validator($request)	
	* Mostra come personalizzare i messaggi e regole di validazione dei form
	* Mostra come chiamare il controller dell'applicazione per versioni di Laravel > 7 tramite le Fully-Qualified Class Name



*Cosa occorre craeare per far funzionare l'applicazione:*<br/><br/>

Creare un db chiamato: "laravel-rest-api"<br/>
creare una tabella da popolare: "rest_api_table"<br/>
Puoi usare il dump file del db: "DB-laravel-rest-api.sql"<br/> 
<br/>
<br/>
<br/>
**Comandi che poterbbero servire per eseguire l'applicazione:**

<br/>
Sets the APP_KEY value in your .env:<br/><br/>

$ php artisan key:generate <br/><br/>
<br/>

Laravel dependencies:<br/><br/>

$ composer dump-autoload<br/>
$ composer install<br/>

<br/>

Creazione della classe di resouce per conversione e manipolazione dei dati in formato JSON:<br/><br/>

$ php artisan make:resource nome_resource <br/><br/>
<br/>

Laravel auth and ui and bootstrap (for laravel 8)<br/><br/>

$ composer require laravel/ui<br/>
$ php artisan ui bootstrap<br/>
<br/><br/>

NPM dependencies / compile resource<br/><br/>

$ npm install<br/>
$ npm run dev<br/>

<br/><br/>
Install laravelcollective for FORM:: OOP <br/><br/>

$ composer require laravelcollective/html<br/>
