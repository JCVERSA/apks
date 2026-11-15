package com.mq.mgmi.client.message.internal;

import defpackage.by0;
import defpackage.g6d;
import defpackage.ra1;
import defpackage.w7d;
import defpackage.yr6;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class CommsReceiver implements Runnable {
    private static final String CLASS_NAME = "com.mq.mgmi.client.message.internal.CommsReceiver";
    private ClientComms clientComms;
    private by0 clientState;
    private State current_state;
    private yr6 in;
    private final Object lifecycle;
    private g6d log;
    private Thread recThread;
    private Future<?> receiverFuture;
    private State target_state;
    private String threadName;
    private ra1 tokenStore;

    public enum State {
        STOPPED,
        RUNNING,
        STARTING,
        RECEIVING
    }

    public CommsReceiver(ClientComms clientComms, by0 by0Var, ra1 ra1Var, InputStream inputStream) {
        w7d.a("com.mq.mgmi.client.message.internal.nls.logcat", CLASS_NAME);
        State state = State.STOPPED;
        this.current_state = state;
        this.target_state = state;
        this.lifecycle = new Object();
        this.recThread = null;
        this.in = new yr6(by0Var, inputStream);
        clientComms.e().a();
        throw null;
    }

    public boolean isReceiving() {
        boolean z;
        synchronized (this.lifecycle) {
            z = this.current_state == State.RECEIVING;
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
                if (state != state2 && state != State.RECEIVING) {
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

    @Override
    public void run() {
        State state;
        State state2;
        Thread threadCurrentThread = Thread.currentThread();
        this.recThread = threadCurrentThread;
        threadCurrentThread.setName(this.threadName);
        synchronized (this.lifecycle) {
            state = State.RUNNING;
            this.current_state = state;
        }
        try {
            synchronized (this.lifecycle) {
                state2 = this.target_state;
            }
            if (state2 != state || this.in == null) {
                synchronized (this.lifecycle) {
                    this.current_state = State.STOPPED;
                }
                this.recThread = null;
                throw null;
            }
            try {
                throw null;
            } catch (Throwable th) {
                synchronized (this.lifecycle) {
                    this.current_state = State.RUNNING;
                    throw th;
                }
            }
        } catch (Throwable th2) {
            synchronized (this.lifecycle) {
                this.current_state = State.STOPPED;
                throw th2;
            }
        }
    }

    public void start(String str, ExecutorService executorService) {
        this.threadName = str;
        throw null;
    }

    public void stop() {
        synchronized (this.lifecycle) {
            try {
                Future<?> future = this.receiverFuture;
                if (future != null) {
                    future.cancel(true);
                }
                throw null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
