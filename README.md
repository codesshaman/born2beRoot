Born2beRoot 42 cursus
Status : project delivered
Result : 100%
In this project we will create our first machine in VirtualBox under specific instructions.

Check-list:

 Графический интерфейс запрещен
 Debian настоятельно рекомендуется, если вы новичок в системном администрировании
 AppArmor для Debian должен быть запущен при запуске
 Создать как минимум 2 зашифрованных раздела с помощью LVM
 Служба SSH будет работать только на порту 4242. По соображениям безопасности не должно быть возможности подключиться с использованием SSH от имени пользователя root
 Настроить свою операционную систему с помощью брандмауэра UFW и, таким образом, оставить открытым только порт 4242
 Брандмауэр должен быть активен при запуске виртуальной машины
 Брандмауэр должен быть активен при запуске виртуальной машины
 В дополнение к пользователю root должен присутствовать пользователь с вашим логином в качестве имени пользователя
 Этот пользователь должен принадлежать к группам user42 и sudo
 Внедрить надежную политику паролей
 Срок действия пароля должен истекать каждые 30 дней
 Минимальное количество дней до изменения пароля будет установлено равным 2
 Пользователь должен получить предупреждающее сообщение за 7 дней до истечения срока действия пароля
 Пароль должен состоять не менее чем из 10 символов. Он должен содержать заглавную букву и цифру. Кроме того, он не должен содержать более 3-х идущих подряд одинаковых символов.
 Пароль не должен включать имя пользователя
 Пароль должен содержать не менее 7 символов, которые не являются частью прежнего пароля
 Пароль root должен соответствовать этой политике
 После настройки файлов конфигурации нужно будет изменить все пароли учетных записей, присутствующих на виртуальной машине, включая учетную запись root
 Установить и настроить sudo в соответствии со строгими правилами
 Надежную конфигурация для группы sudo должна соответствовать следующим требованиям:
 Аутентификация с использованием sudo должна быть ограничена 3 попытками в лучае неверного пароля.
 Пользовательское сообщение по вашему выбору должно отображаться, если при спользовании sudo возникает ошибка из-за неправильного пароля.
 Каждое действие, использующее sudo, должно быть заархивировано, как входные, ак и выходные. Файл журнала необходимо сохранить в папке / var / log / sudo /.
 Режим телетайпа должен быть включен по соображениям безопасности.
 Также по соображениям безопасности пути, которые может использовать sudo, должны быть ограничены. Пример: / usr / local / sbin: / usr / local / bin: / usr / sbin: / usr / bin: / sbin: / bin: / snap / bin
 Нужно создать простой скрипт с именем monitoring.sh. Его нужно разрабатывать на bash. При запуске сервера скрипт будет отображать некоторую информацию (указанную ниже) на всех терминалах каждые 10 минут (посмотрите на стену). Баннер не является обязательным. Никаких ошибок не должно быть видно. Ваш скрипт всегда должен отображать следующую информацию:
 Архитектура вашей операционной системы и ее версия ядра.
 Количество физических процессоров.
 Количество виртуальных процессоров.
 Доступная оперативная память на вашем сервере и ее коэффициент использования в процентах.
 Доступная память на вашем сервере и ее коэффициент использования в процентах.
 Коэффициент использования ваших процессоров в процентах.
 Дата и время последней перезагрузки.
 Активен LVM или нет.
 Количество активных подключений.
 Количество пользователей, использующих сервер.
 IPv4-адрес вашего сервера и его MAC-адрес (Media Access Control).
 Количество команд, выполненных с помощью программы sudo.
 Скрипт придется прервать, не изменяя его. Взгляните на cron.
 Ниже приведены две команды, которые можно использовать для проверки некоторых требований объекта:
 head -n 2 /etc/os-release
 /usr/sbin/aa-status
 /usr/sbin/ufw status
 ss -tuneip
Список бонусов:

 Правильно настройте разделы, чтобы получить структуру, аналогичную приведенной ниже:
 Создайте функциональный веб-сайт WordPress со следующими услугами: lighttpd, MariaDB и PHP.
 Настройте службу по вашему выбору, которая, по вашему мнению, будет полезной (за исключением NGINX / Apache2!). Во время защиты вам придется обосновать свой выбор.
Для завершения бонусной части у вас есть возможность настроить дополнительные услуги. В этом случае вы можете открыть больше портов в соответствии с вашими потребностями. Конечно, правила UFW должны быть адаптированы соответствующим образом.