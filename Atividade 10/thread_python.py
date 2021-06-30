from threading import Thread
import time

inicio = time.time()
def worker(message):
    for i in range(1000):
        print('\n',message,i,'')
        time.sleep(1)

for i in range (1000):
    t = Thread(target=worker,args=("\nthread sendo executada",))
    t.start()
    
while t.is_alive():
    print ("\nAguardando thread")
    time.sleep(1)

print ("Thread morreu")
print ("Finalizando programa")
fim = time.time()
print("tempo de execução:",fim - inicio)
