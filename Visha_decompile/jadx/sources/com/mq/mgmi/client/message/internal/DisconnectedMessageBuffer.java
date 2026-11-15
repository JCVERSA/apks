package com.mq.mgmi.client.message.internal;

import defpackage.bud;
import defpackage.es6;
import defpackage.f6d;
import defpackage.g6d;
import defpackage.m2d;
import defpackage.uu4;
import defpackage.vu4;
import defpackage.w7d;
import java.util.ArrayList;

public class DisconnectedMessageBuffer implements Runnable {
    private final String CLASS_NAME;
    private final Object bufLock;
    private ArrayList<m2d> buffer;
    private f6d bufferOpts;
    private vu4 callback;
    private g6d log;
    private uu4 messageDiscardedCallBack;
    private int mycount;

    public DisconnectedMessageBuffer(f6d f6dVar) {
        String name = DisconnectedMessageBuffer.class.getName();
        this.CLASS_NAME = name;
        w7d.a("com.mq.mgmi.client.message.internal.nls.logcat", name);
        this.bufLock = new Object();
        this.mycount = 0;
        this.buffer = new ArrayList<>();
    }

    public void deleteMessage(int i) {
        synchronized (this.bufLock) {
            this.buffer.remove(i);
        }
    }

    public m2d getMessage(int i) {
        m2d m2dVar;
        synchronized (this.bufLock) {
            m2dVar = this.buffer.get(i);
        }
        return m2dVar;
    }

    public int getMessageCount() {
        int size;
        synchronized (this.bufLock) {
            size = this.buffer.size();
        }
        return size;
    }

    public boolean isPersistBuffer() {
        throw null;
    }

    public void putMessage(es6 es6Var, bud budVar) {
        if (budVar != null) {
            es6Var.c(budVar);
            budVar.a.j(es6Var.b());
        }
        new m2d(es6Var, budVar);
        synchronized (this.bufLock) {
            this.buffer.size();
            throw null;
        }
    }

    @Override
    public void run() {
        throw null;
    }

    public void setMessageDiscardedCallBack(uu4 uu4Var) {
    }

    public void setPublishCallback(vu4 vu4Var) {
    }
}
