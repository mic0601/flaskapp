import socket,datetime


class getLocal:
    def getcurrenttime(self):
        return datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    def gethostname(self):
        return socket.gethostname()


    def getlocaladdress(self):
        return socket.gethostbyname(socket.gethostname())

