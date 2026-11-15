package com.lzy.okserver.task;

import defpackage.nf8;

public class PriorityRunnable extends nf8 implements Runnable {
    public PriorityRunnable(int i, Runnable runnable) {
        super(i, runnable);
    }

    @Override
    public void run() {
        ((Runnable) this.obj).run();
    }
}
