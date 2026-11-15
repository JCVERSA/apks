package com.elvishew.xlog.printer.file;

import defpackage.ubc;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public abstract class FilePrinter {

    public class Worker implements Runnable {
        private BlockingQueue<b> logs;
        private volatile boolean started;
        final FilePrinter this$0;

        private Worker(FilePrinter filePrinter) {
            this.logs = new LinkedBlockingQueue();
        }

        public void enqueue(b bVar) {
            try {
                this.logs.put(bVar);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        public boolean isStarted() {
            boolean z;
            synchronized (this) {
                z = this.started;
            }
            return z;
        }

        @Override
        public void run() {
            try {
                ubc.a(this.logs.take());
            } catch (InterruptedException e) {
                e.printStackTrace();
                synchronized (this) {
                    this.started = false;
                }
            }
        }

        public void start() {
            synchronized (this) {
                try {
                    if (this.started) {
                        return;
                    }
                    new Thread(this).start();
                    this.started = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static class b {
    }
}
