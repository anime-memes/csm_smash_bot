import Config

config :csm_smash_bot,
  texts: %{
    help: """
    Шакал мёртв, в этом городе новый шериф.

    Полный список команд:
    /info - Информация о ресурсах конфы (ВК, Twitch);
    /discord - Дискорды нашего сообщества;
    /list - Список SW-кодов участников конференции (googledocs);
    /words - Статья о сленговых выражениях SSBU;
    /tutor - Обучающие видео;
    /lan - Статья про LAN-адаптеры;
    /pad - Все о контроллерах для Nintendo Switch;
    /nat - Настройка NAT A для улучшений интернет-соединения;
    /ranking - Лучшие из лучших. Для любителей статистики и прочих сочувствующих;
    /smashgg - Объяснение того, как пользоваться smash.gg;
    /rules - Правила, настройки арены и список легальных стейджей;
    /framedata - Ресурс с фреймдатой, хитбоксами и статой для всех персонажей;
    /next_tournament - Список ближайших турниров;
    /when - Когда же будет любое следующее событие?
    /help - Показ этого сообщения.

    Если что-то не работает, то в этом виноват @creepycake.
    """,
    discord: """
    Главные дискорд сервера сообщества:
    https://discord.gg/Av3WdbG - Smash Vault
    https://discord.gg/xw4vg4u - сервер Crab_moto
    https://discord.gg/7guM95xeda - для игроков в Melee
    https://discord.gg/RGqrXwFXFh - Toxic Smash (джва года жду турнира)
    """,
    info: """
    Помимо этой конфы у нас ещё есть:
    https://vk.com/csmssbu - группа ВК, посвящённая киберспортивным и не очень новостям
    https://www.twitch.tv/crab_moto - канал на Твиче, где стримятся все большие турниры и некоторые турниры поменьше
    https://vk.com/ssbvault - goodnight, sweet prince (но всё ещё можно найти полезные статьи)
    https://www.youtube.com/channel/UCbHkpHluFczAcT3cr3oWARw - канал с записями всех матчей турниров серии CSM
    """,
    list: """
    Перечень активных (и не очень) игроков в конфе и их кодов Switch. Добавьте свой код в перечень, если его там нет. Будет полезно, если вы так же добавите других игроков в друзья. https://docs.google.com/spreadsheets/d/1Vb314lhMZEcR7x_8rDCh-85WPsdznugPG3eAEUSUffU/edit#gid=0
    """,
    words: """
    Не понимаете половину слов, которые тут пишут? Вам могут помочь:
    статья - https://vk.com/@ssbvault-vy-chto-to-pishite-no-ya-nichego-ne-ponimau-ustoyavshayasya
    два видео - https://www.youtube.com/watch?v=G0OnYppngrA и https://www.youtube.com/watch?v=AvhkRjUYBFc
    """,
    tutor: """
    Если вы только начинаете играть, то специально для вас Ravinggus собрал список разнообразных полезных ресурсов для обучения:
    на русском - https://vk.com/topic-179678680_40116386
    на английском - https://vk.com/topic-179678680_40116352
    """,
    lan: """
    Многие считают, что беспроводное соединение ничем не отличается от проводного. Эти многие - ошибаются. Если есть возможность, то обязательно купите лан адаптер.
    https://vk.com/@ssbvault-adapter-lan-i-s-chem-ego-edyat
    """,
    pad: """
    Про контроллеры для консоли Switch, которые подойдут для игры.
    https://vk.com/@ssbvault-geimpady-dlya-super-smash-bros-ultimate-chast-1-originalnye
    https://vk.com/@ssbvault-geimpady-dlya-super-smash-bros-ultimate-chast-2-kontrollery
    Возможно, вам захочется использовать контроллеры от других консолей?
    https://vk.com/@ssbvault-artplayadapter
    """,
    nat: """
    Все про настройку NAT A. Полезная штука.
    https://vk.com/@ssbvault-nat-i-s-chem-ego-edyat-chast-1-organizaciya-nat-a-s-pomoschu
    https://vk.com/@ssbvault-nat-i-s-chem-ego-edyat-chast-2-organizaciya-nat-a-s-pomoschu
    """,
    ranking: """
    Актуальный онлайн ранкинг - https://braacket.com/league/ssbvault/ranking
    Актуальный оффлайн ранкинг - https://braacket.com/league/super-smash-bros-vault-offline/ranking
    """,
    smashgg: """
    smash.gg - это основной сайт для проведения турниров, поэтому надо уметь им пользоваться.
    Статья на русском про регистрацию и отыгрыш - https://vk.com/@ssbvault-kak-polzovatsya-smashgg
    Статья на английском про создание - https://help.smash.gg/en/articles/1465680-getting-started
    Статья на английском про регистрацию и отыгрыш - https://help.smash.gg/en/articles/1465677-how-do-online-tournaments-work-on-smash-gg
    """,
    framedata: """
    Просто самый полезный сайт для смэшеров (фреймдата, хитбоксы, хёртбоксы, стата) - https://ultimateframedata.com/
    """,
    rules: """
    Пастебин с правилами, которые используются на наших турнирах - https://pastebin.com/sD8uGRH5
    """,
    when: """
    Завтра
    """,
    next_tournament: """
    Сезон закончился, приходите в феврале
    """
  },
  tournaments: [
    {"31-07-2021",
     "Thunderjolt Series #1 (серия турниров от Реймона) - https://smash.gg/tournament/thunderjolt-series/event/thunderjolt-series-1/overview"},
    {"07-08-2021",
     "Speed Art Dojo (серия онлайн турниров от Вильвера и Будды) - https://smash.gg/tournament/monado-arts-dojo/details"},
    {"15-08-2021",
     "оффлайн в glhf - https://smash.gg/tournament/csm-smash-vault-tournament-season-2021/event/ultimate-singles-offline-1/overview"},
    {"04-09-2021",
     "Monado Arts Dojo #2 (серия онлайн турниров от Вильвера и Будды) - https://smash.gg/tournament/monado-arts-dojo/event/shield-art-dojo-mad-2/overview"},
    {"12-09-2021",
     "Kurodo Training (серия онлайн турниров от Ардеуса - https://smash.gg/tournament/kurodo-smash/event/kurodo-training-2/overview"},
    {"25-09-2021",
     "CSM Online #1 - https://smash.gg/tournament/csm-smash-vault-tournament-season-2021/event/ultimate-singles-online-1/overview"},
    {"10-10-2021",
     "Thunderjolt Series #2 (серия турниров от Реймона) - https://smash.gg/tournament/thunderjolt-series/event/thunderjolt-series-2/overview"},
    {"16-10-2021",
     "CSM Online #2 - https://smash.gg/tournament/csm-smash-vault-tournament-season-2021/event/ultimate-singles-online-2/overview"},
    {"30-10-2021", "Monado Arts Dojo #3 (серия онлайн турниров от Вильвера и Будды)"},
    {"07-11-2021",
     "Thunderjolt Series #3 (серия турниров от Реймона) - https://smash.gg/tournament/thunderjolt-series/event/thunderjolt-series-3/overview"},
    {"20-11-2021",
     "Kurodo Smash Final Test (серия онлайн турниров от Ардеуса - https://smash.gg/tournament/kurodo-smash/event/final-test/overview"},
    {"21-11-2021",
     "Monado Arts Dojo Random (турнир на рандомах) - https://smash.gg/tournament/monado-arts-dojo/event/jump-art-dojo-mad-random-only/overview"},
    {"11-12-2021",
     "Monado Arts Dojo #4 (серия онлайн турниров от Вильвера и Будды) - https://smash.gg/tournament/monado-arts-dojo/event/smash-art-dojo-mad-4/overview"},
    {"18-12-2021",
     "CSM Online #3 - https://smash.gg/tournament/csm-smash-vault-tournament-season-2021/event/ultimate-singles-online-3/overview"}
  ]

config :csm_smash_bot, :nadia, token: "bot_token"

import_config "#{Mix.env()}.exs"
