func try_capture():
    var chance = randf()
    if chance < 0.5:
        print("Capturado!")
    else:
        print("Falhou")
