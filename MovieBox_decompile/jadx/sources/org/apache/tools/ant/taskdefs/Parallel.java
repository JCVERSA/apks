package org.apache.tools.ant.taskdefs;

import java.util.Vector;
import org.apache.tools.ant.u;
import org.apache.tools.ant.v;

public class Parallel extends u implements v {

    private long f68174k;

    private volatile boolean f68175l;

    private boolean f68176m;

    private boolean f68177n;

    private Vector f68170g = new Vector();

    private final Object f68171h = new Object();

    private int f68172i = 0;

    private int f68173j = 0;

    private int f68178o = 0;

    class AnonymousClass1 extends Thread {
        AnonymousClass1() {
        }

        @Override
        public synchronized void run() {
            try {
                wait(Parallel.this.f68174k);
                synchronized (Parallel.this.f68171h) {
                    Parallel.this.f68175l = false;
                    Parallel.this.f68176m = true;
                    Parallel.this.f68171h.notifyAll();
                }
            } catch (InterruptedException unused) {
            }
        }
    }

    private class TaskRunnable implements Runnable {
        private Throwable exception;
        private boolean finished;
        private u task;

        TaskRunnable(u uVar) {
            this.task = uVar;
        }

        public Throwable getException() {
            return this.exception;
        }

        boolean isFinished() {
            return this.finished;
        }

        @Override
        public void run() {
            try {
                this.task.o();
                synchronized (Parallel.this.f68171h) {
                    this.finished = true;
                    Parallel.this.f68171h.notifyAll();
                }
            } catch (Throwable th2) {
                try {
                    this.exception = th2;
                    if (Parallel.this.f68177n) {
                        Parallel.this.f68175l = false;
                    }
                } finally {
                    synchronized (Parallel.this.f68171h) {
                        this.finished = true;
                        Parallel.this.f68171h.notifyAll();
                    }
                }
            }
        }
    }

    @Override
    public void b(u uVar) {
        this.f68170g.addElement(uVar);
    }
}
