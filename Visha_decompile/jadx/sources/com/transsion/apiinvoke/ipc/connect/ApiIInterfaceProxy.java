package com.transsion.apiinvoke.ipc.connect;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

public class ApiIInterfaceProxy<T extends IInterface> {
    private T hookInterFace;
    Callback mCallback;

    public interface Callback {
        void binderDied();
    }

    public class MyDeathRecipient implements IBinder.DeathRecipient {
        private MyDeathRecipient() {
        }

        @Override
        public void binderDied() {
            ApiIInterfaceProxy.this.remove();
            Callback callback = ApiIInterfaceProxy.this.mCallback;
            if (callback != null) {
                callback.binderDied();
            }
        }
    }

    public ApiIInterfaceProxy(T t) {
        this.hookInterFace = t;
        try {
            t.asBinder().linkToDeath(new MyDeathRecipient(), 0);
        } catch (RemoteException unused) {
        }
    }

    public synchronized T getInterface() {
        return this.hookInterFace;
    }

    public boolean isConnected() {
        T t = this.hookInterFace;
        return t != null && t.asBinder().isBinderAlive();
    }

    public synchronized void remove() {
        this.hookInterFace = null;
    }

    public ApiIInterfaceProxy(T t, Callback callback) {
        this(t);
        this.mCallback = callback;
    }
}
