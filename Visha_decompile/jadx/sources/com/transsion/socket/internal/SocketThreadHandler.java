package com.transsion.socket.internal;

import com.transsion.socket.SocketServer;
import java.net.Socket;

public class SocketThreadHandler extends Thread {
    private Socket mSocket;
    private SocketRunnable mSocketRunnable;
    private boolean mRunning = true;
    private Object LOCK = SocketServer.LOCK;
    private boolean mQuit = false;

    public static abstract class SocketRunnable implements Runnable {
        public void safelyQuit(SocketThreadHandler socketThreadHandler) {
        }
    }

    public SocketThreadHandler(SocketRunnable socketRunnable) {
        this.mSocketRunnable = socketRunnable;
    }

    public SocketThreadHandler bindSocket(Socket socket) {
        this.mSocket = socket;
        return this;
    }

    public boolean isThreadRunning() {
        return this.mRunning;
    }

    @Override
    public final void run() {
        synchronized (this.LOCK) {
            try {
                if (this.mQuit) {
                    return;
                }
                SocketRunnable socketRunnable = this.mSocketRunnable;
                if (socketRunnable != null) {
                    socketRunnable.run();
                }
                synchronized (this.LOCK) {
                    this.mRunning = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void safelyQuit() {
        synchronized (this.LOCK) {
            try {
                if (this.mQuit) {
                    return;
                }
                this.mQuit = true;
                SocketUtils.close(this.mSocket);
                SocketRunnable socketRunnable = this.mSocketRunnable;
                if (socketRunnable != null) {
                    socketRunnable.safelyQuit(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
