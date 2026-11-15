package javassist.tools.web;

import defpackage.uic;
import java.net.Socket;

class ServiceThread extends Thread {
    Socket sock;
    uic web;

    public ServiceThread(uic uicVar, Socket socket) {
        this.sock = socket;
    }

    @Override
    public void run() {
        throw null;
    }
}
