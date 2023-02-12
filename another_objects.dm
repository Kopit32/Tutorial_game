obj
    object
        name="Just some stuff"
        desc="Stuff"
        icon='Sprites/another_stuff.dmi'

            flashlight
                name="Flashlight"
                var/power = 100
                icon_state="Flashlight"
                var/on = 0
                luminosity = on * 4

                proc/CheckPower()
                    if(power > 0)
                    return TRUE
                proc/PowerLess()
                    if(CheckPower() && on == 1)
                        for(, power != 0 && on == 1, power -= 1)
                            sleep(10)
                Click()
                    if(CheckPower())
                        on = !on
                        PowerLess()
                    else usr << "No power in this flashlight"
                    return

//Должен включаться и выключаться по нажатию на него. Должен расходовать заряд, когда работает. Если заряд сажается - фонарик выключается, и не включается вовсе.