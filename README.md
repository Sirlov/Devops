Клонирование репозитория и переход в директорию Ansible

git clone https://github.com/Sirlov/Devops.git

cd ./Devops/

В директории бота созаем фаил .env:

TOKEN = token - токен бота

RM_HOST = rm_host - удаленный хост, который будем мониторить

RM_PORT = rm_port - порт удаленного хоста, к которому будем подключаться

RM_USER = rm_user - пользователь удаленного хоста

RM_PASSWORD = rm_password - пароль пользователя удаленного хоста

DB_USER = db_user - пользователь базы данных удаленного хоста

DB_PASSWORD = db_password - пароль пользователя базы данных удаленного хоста

DB_HOST = db_host - хост(имя контейнера), в котором будет работать база данных

DB_PORT = db_port - порт, на котором работает база данных

DB_DATABASE = db_database - имя базы данных

DB_REPL_USER = db_repl_user - пользователь реплицируемой базы данных

DB_REPL_PASSWORD = db_repl_password - пароль пользователя реплицируемой базы данных

DB_REPL_HOST = db_repl_host - хост(имя контейнера), в котором будет работать реплицируемая база данных

DB_REPL_PORT = db_repl_port - порт, на котором работает реплицируемая база данных


В директрии проекта создать файл secret.yaml с содержимым:
all:

  hosts:
  
    master:
    
      ansible_host: 
      
      ansible_user: 
      
      ansible_password: 
      
    slave:
    
      ansible_host: 
      
      ansible_user: 
      
      ansible_password: 
      
  vars:
  
    WORKDIR: 
    
    DB_HOST: 
    
    DB_PORT:
    
    DB_PASSWORD: 
    
    DB_DATABASE: 
    
    DB_USER: 
    
    DB_REPL_USER: 
    
    DB_REPL_PASSWORD: 
    
    DB_REPL_HOST: 
    
    DB_REPL_PORT: 
    
    GIT_URL: 
    
    TOKEN:
    
    RM_HOST: 
    
    RM_PORT: 
    
    RM_USER: 
    
    RM_PASSWORD: 



Запуск Ansible-playbook

ansible-playbook -i hosts --extra-vars "@secrets.yml" playbook_tg_bot.yml
