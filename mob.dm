mob
    var/HP = 100
    var/living = TRUE
    icon = 'Sprites/mobs.dmi'
    proc/die()
        del(src)
        world << "[src] dies!"
    proc/CheckDie()
        if(HP <= 0)
            die()


    player
        icon_state = "player"
        Login()
            locate(spawn_place)
        verb/spawn_obj()
            var/I = input("What need to spawn?", "Spawn item",)
            if(I == FALSE)
                return
            new /obj(I)
//Нужно чтобы при использовании верба можно было ввести путь до любогого объекта и верб спавнил объект на турфе под игроком

