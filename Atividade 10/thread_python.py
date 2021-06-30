from threading import Thread
import time

inicio = time.time()
def worker(message):
    for i in range(10):
        print (message,i)
        time.sleep(1)


t = Thread(target=worker,args=("thread sendo executada",))
t.start()
while t.is_alive():
    print ("Aguardando thread")
    time.sleep(10)

t = time.time()
print ("Thread morreu")
print ("Finalizando programa")
fim = time.time()
print("tempo de exec:",fim - inicio)
