package com.mq.mgmi.client.message.internal;

import com.mq.mgmi.client.message.n;
import defpackage.by0;
import defpackage.es6;
import defpackage.g6d;
import defpackage.ra1;
import defpackage.w7d;
import defpackage.zr6;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class CommsSender implements Runnable {
    private static final String CLASS_NAME = "com.mq.mgmi.client.message.internal.CommsSender";
    private ClientComms clientComms;
    private by0 clientState;
    private State current_state;
    private final Object lifecycle;
    private g6d log;
    private zr6 out;
    private Thread sendThread;
    private Future<?> senderFuture;
    private State target_state;
    private String threadName;
    private ra1 tokenStore;

    public enum State {
        STOPPED,
        RUNNING,
        STARTING
    }

    public CommsSender(ClientComms clientComms, by0 by0Var, ra1 ra1Var, OutputStream outputStream) {
        w7d.a("com.mq.mgmi.client.message.internal.nls.logcat", CLASS_NAME);
        State state = State.STOPPED;
        this.current_state = state;
        this.target_state = state;
        this.lifecycle = new Object();
        this.sendThread = null;
        this.out = new zr6(by0Var, outputStream);
        clientComms.e().a();
        throw null;
    }

    private void handleRunException(es6 es6Var, Exception exc) {
        throw null;
    }

    public boolean isRunning() {
        boolean z;
        synchronized (this.lifecycle) {
            try {
                State state = this.current_state;
                State state2 = State.RUNNING;
                z = state == state2 && this.target_state == state2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override
    public void run() {
        State state;
        Thread threadCurrentThread = Thread.currentThread();
        this.sendThread = threadCurrentThread;
        threadCurrentThread.setName(this.threadName);
        synchronized (this.lifecycle) {
            this.current_state = State.RUNNING;
        }
        try {
            synchronized (this.lifecycle) {
                state = this.target_state;
            }
            es6 es6VarB = null;
            while (state == State.RUNNING && this.out != null) {
                try {
                    try {
                        es6VarB = this.clientState.b();
                        if (es6VarB == null) {
                            throw null;
                        }
                        es6VarB.a();
                        throw null;
                    } catch (n e) {
                        e = e;
                        handleRunException(es6VarB, e);
                        synchronized (this.lifecycle) {
                            State state2 = this.target_state;
                        }
                        state = state2;
                    }
                } catch (Exception e2) {
                    e = e2;
                    handleRunException(es6VarB, e);
                    synchronized (this.lifecycle) {
                        State state3 = this.target_state;
                        state = state3;
                    }
                }
            }
            synchronized (this.lifecycle) {
                this.current_state = State.STOPPED;
                this.sendThread = null;
            }
            throw null;
        } catch (Throwable th) {
            synchronized (this.lifecycle) {
                this.current_state = State.STOPPED;
                this.sendThread = null;
                throw th;
            }
        }
    }

    public void start(String str, ExecutorService executorService) {
        this.threadName = str;
        synchronized (this.lifecycle) {
            try {
                State state = this.current_state;
                State state2 = State.STOPPED;
                if (state == state2 && this.target_state == state2) {
                    this.target_state = State.RUNNING;
                    if (executorService == null) {
                        new Thread(this).start();
                    } else {
                        this.senderFuture = executorService.submit(this);
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
        if (isRunning()) {
            synchronized (this.lifecycle) {
                try {
                    Future<?> future = this.senderFuture;
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
}
