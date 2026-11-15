package com.mq.mgmi.client.message.internal;

import com.mq.mgmi.client.message.n;
import defpackage.bs6;
import defpackage.bud;
import defpackage.by0;
import defpackage.cs6;
import defpackage.ds6;
import defpackage.ekd;
import defpackage.es6;
import defpackage.g6d;
import defpackage.hjd;
import defpackage.led;
import defpackage.tod;
import defpackage.ubc;
import defpackage.w7d;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class CommsCallback implements Runnable {
    private static final String CLASS_NAME = "com.mq.mgmi.client.message.internal.CommsCallback";
    private static final int INBOUND_QUEUE_SIZE = 10;
    private Future<?> callbackFuture;
    private Thread callbackThread;
    private Hashtable<String, led> callbacks;
    private ClientComms clientComms;
    private by0 clientState;
    private final Vector<bud> completeQueue;
    private State current_state;
    private final Object lifecycle;
    private final g6d log;
    private boolean manualAcks;
    private final Vector<es6> messageQueue;
    private hjd mqttCallback;
    private ekd reconnectInternalCallback;
    private final Object spaceAvailable;
    private State target_state;
    private String threadName;
    private final Object workAvailable;

    public enum State {
        STOPPED,
        RUNNING,
        QUIESCING
    }

    public CommsCallback(ClientComms clientComms) {
        w7d.a("com.mq.mgmi.client.message.internal.nls.logcat", CLASS_NAME);
        State state = State.STOPPED;
        this.current_state = state;
        this.target_state = state;
        this.lifecycle = new Object();
        this.workAvailable = new Object();
        this.spaceAvailable = new Object();
        this.manualAcks = false;
        this.messageQueue = new Vector<>(10);
        this.completeQueue = new Vector<>(10);
        this.callbacks = new Hashtable<>();
        clientComms.e().a();
        throw null;
    }

    private void handleActionComplete(bud budVar) {
        synchronized (budVar) {
            budVar.a.c();
            throw null;
        }
    }

    private void handleMessage(ds6 ds6Var) {
        ds6Var.d();
        ds6Var.b();
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void asyncOperationComplete(bud budVar) {
        if (!isRunning()) {
            try {
                handleActionComplete(budVar);
                return;
            } catch (Throwable unused) {
                throw null;
            }
        }
        this.completeQueue.addElement(budVar);
        synchronized (this.workAvailable) {
            try {
                budVar.a.c();
                throw null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void connectionLost(n nVar) {
        try {
            if (this.mqttCallback != null && nVar != null) {
                throw null;
            }
            ekd ekdVar = this.reconnectInternalCallback;
            if (ekdVar == null || nVar == null) {
                return;
            }
            ekdVar.a(nVar);
        } catch (Throwable unused) {
            throw null;
        }
    }

    public boolean deliverMessage(String str, int i, tod todVar) {
        Enumeration<String> enumerationKeys = this.callbacks.keys();
        while (enumerationKeys.hasMoreElements()) {
            ubc.a(this.callbacks.get(enumerationKeys.nextElement()));
        }
        if (this.mqttCallback == null) {
            return false;
        }
        todVar.setId(i);
        this.mqttCallback.a(str, todVar);
        return true;
    }

    public void fireActionEvent(bud budVar) {
        if (budVar == null || budVar.a.a() == null) {
            return;
        }
        if (budVar.a.b() == null) {
            budVar.a.c();
            throw null;
        }
        budVar.a.c();
        throw null;
    }

    public Thread getThread() {
        return this.callbackThread;
    }

    public boolean isQuiesced() {
        return isQuiescing() && this.completeQueue.size() == 0 && this.messageQueue.size() == 0;
    }

    public boolean isQuiescing() {
        boolean z;
        synchronized (this.lifecycle) {
            z = this.current_state == State.QUIESCING;
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0016  */
    public boolean isRunning() {
        boolean z;
        synchronized (this.lifecycle) {
            try {
                State state = this.current_state;
                State state2 = State.RUNNING;
                if (state != state2 && state != State.QUIESCING) {
                    z = false;
                } else if (this.target_state == state2) {
                    z = true;
                } else {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public void messageArrived(ds6 ds6Var) {
        if (this.mqttCallback != null || this.callbacks.size() > 0) {
            synchronized (this.spaceAvailable) {
                try {
                    if (isRunning() && !isQuiescing() && this.messageQueue.size() >= 10) {
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (isQuiescing()) {
                return;
            }
            this.messageQueue.addElement(ds6Var);
            synchronized (this.workAvailable) {
                try {
                    throw null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void messageArrivedComplete(int i, int i2) {
        if (i2 == 1) {
            this.clientComms.f(new bs6(i), new bud(this.clientComms.e().a()));
        } else if (i2 == 2) {
            this.clientComms.d(i);
            cs6 cs6Var = new cs6(i);
            ClientComms clientComms = this.clientComms;
            clientComms.f(cs6Var, new bud(clientComms.e().a()));
        }
    }

    public void quiesce() {
        synchronized (this.lifecycle) {
            try {
                if (this.current_state == State.RUNNING) {
                    this.current_state = State.QUIESCING;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.spaceAvailable) {
            throw null;
        }
    }

    public void removeMessageListener(String str) {
        this.callbacks.remove(str);
    }

    public void removeMessageListeners() {
        this.callbacks.clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:?, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:?, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:?, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:?, code lost:
    
        throw null;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        bud budVarElementAt;
        Thread threadCurrentThread = Thread.currentThread();
        this.callbackThread = threadCurrentThread;
        threadCurrentThread.setName(this.threadName);
        synchronized (this.lifecycle) {
            this.current_state = State.RUNNING;
        }
        if (!isRunning()) {
            synchronized (this.lifecycle) {
                this.current_state = State.STOPPED;
            }
            this.callbackThread = null;
            return;
        }
        try {
            try {
                try {
                    synchronized (this.workAvailable) {
                        try {
                            if (isRunning() && this.messageQueue.isEmpty() && this.completeQueue.isEmpty()) {
                                throw null;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (Throwable unused) {
                    throw null;
                }
            } catch (Throwable unused2) {
                synchronized (this.spaceAvailable) {
                    try {
                        throw null;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (InterruptedException unused3) {
        }
        if (isRunning()) {
            synchronized (this.completeQueue) {
                try {
                    if (this.completeQueue.isEmpty()) {
                        budVarElementAt = null;
                    } else {
                        budVarElementAt = this.completeQueue.elementAt(0);
                        this.completeQueue.removeElementAt(0);
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            if (budVarElementAt != null) {
                handleActionComplete(budVarElementAt);
            }
            synchronized (this.messageQueue) {
                try {
                    if (!this.messageQueue.isEmpty()) {
                        this.messageQueue.removeElementAt(0);
                    }
                } catch (Throwable th4) {
                    throw th4;
                }
            }
        }
        if (isQuiescing()) {
            this.clientState.a();
        }
        synchronized (this.spaceAvailable) {
            try {
                throw null;
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }

    public void setCallback(hjd hjdVar) {
        this.mqttCallback = hjdVar;
    }

    public void setClientState(by0 by0Var) {
    }

    public void setManualAcks(boolean z) {
        this.manualAcks = z;
    }

    public void setMessageListener(String str, led ledVar) {
        this.callbacks.put(str, ledVar);
    }

    public void setReconnectCallback(ekd ekdVar) {
        this.reconnectInternalCallback = ekdVar;
    }

    public void start(String str, ExecutorService executorService) {
        this.threadName = str;
        synchronized (this.lifecycle) {
            try {
                if (this.current_state == State.STOPPED) {
                    this.messageQueue.clear();
                    this.completeQueue.clear();
                    this.target_state = State.RUNNING;
                    if (executorService == null) {
                        new Thread(this).start();
                    } else {
                        this.callbackFuture = executorService.submit(this);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        while (!isRunning()) {
            try {
                Thread.sleep(100L);
            } catch (Exception unused) {
            }
        }
    }

    public void stop() {
        synchronized (this.lifecycle) {
            try {
                Future<?> future = this.callbackFuture;
                if (future != null) {
                    future.cancel(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (isRunning()) {
            throw null;
        }
    }
}
