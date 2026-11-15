package com.elvishew.xlog.printer.file;

import java.io.File;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class FilePrinter implements g8.c {

    private final String f23410a;

    private final j8.b f23411b;

    private final h8.a f23412c;

    private final i8.a f23413d;

    private t7.c f23414e;

    private k8.b f23415f;

    private volatile Worker f23416g = new Worker();

    private class Worker implements Runnable {
        private BlockingQueue<c> logs;
        private volatile boolean started;

        private Worker() {
            this.logs = new LinkedBlockingQueue();
        }

        void enqueue(c cVar) {
            try {
                this.logs.put(cVar);
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }

        boolean isStarted() {
            boolean z10;
            synchronized (this) {
                z10 = this.started;
            }
            return z10;
        }

        @Override
        public void run() {
            while (true) {
                try {
                    c cVarTake = this.logs.take();
                    if (cVarTake == null) {
                        return;
                    } else {
                        FilePrinter.this.e(cVarTake.f23423a, cVarTake.f23424b, cVarTake.f23425c, cVarTake.f23426d);
                    }
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                    synchronized (this) {
                        this.started = false;
                        return;
                    }
                }
            }
        }

        void start() {
            synchronized (this) {
                try {
                    if (this.started) {
                        return;
                    }
                    new Thread(this).start();
                    this.started = true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static class b {

        String f23417a;

        j8.b f23418b;

        h8.a f23419c;

        i8.a f23420d;

        t7.c f23421e;

        k8.b f23422f;

        public b(String str) {
            this.f23417a = str;
        }

        private void e() {
            if (this.f23418b == null) {
                this.f23418b = d8.a.e();
            }
            if (this.f23419c == null) {
                this.f23419c = d8.a.b();
            }
            if (this.f23420d == null) {
                this.f23420d = d8.a.d();
            }
            if (this.f23421e == null) {
                this.f23421e = d8.a.g();
            }
            if (this.f23422f == null) {
                this.f23422f = d8.a.m();
            }
        }

        public b a(h8.b bVar) {
            if (!(bVar instanceof h8.a)) {
                bVar = new e8.a(bVar);
            }
            h8.a aVar = (h8.a) bVar;
            this.f23419c = aVar;
            e8.b.b(aVar);
            return this;
        }

        public FilePrinter b() {
            e();
            return new FilePrinter(this);
        }

        public b c(i8.a aVar) {
            this.f23420d = aVar;
            return this;
        }

        public b d(j8.b bVar) {
            this.f23418b = bVar;
            return this;
        }

        public b f(t7.c cVar) {
            this.f23421e = cVar;
            return this;
        }
    }

    private static class c {

        long f23423a;

        int f23424b;

        String f23425c;

        String f23426d;

        c(long j10, int i10, String str, String str2) {
            this.f23423a = j10;
            this.f23424b = i10;
            this.f23425c = str;
            this.f23426d = str2;
        }
    }

    FilePrinter(b bVar) {
        this.f23410a = bVar.f23417a;
        this.f23411b = bVar.f23418b;
        this.f23412c = bVar.f23419c;
        this.f23413d = bVar.f23420d;
        this.f23414e = bVar.f23421e;
        this.f23415f = bVar.f23422f;
        c();
    }

    private void c() {
        File file = new File(this.f23410a);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    private void d() {
        File[] fileArrListFiles = new File(this.f23410a).listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (this.f23413d.a(file)) {
                file.delete();
            }
        }
    }

    public void e(long j10, int i10, String str, String str2) {
        String strD = this.f23415f.d();
        boolean zE = this.f23415f.e();
        if (strD == null || !zE || this.f23411b.b()) {
            String strA = this.f23411b.a(i10, System.currentTimeMillis());
            if (strA == null || strA.trim().length() == 0) {
                d8.b.e().c("File name should not be empty, ignore log: " + str2);
                return;
            }
            if (!strA.equals(strD) || !zE) {
                this.f23415f.b();
                d();
                if (!this.f23415f.f(new File(this.f23410a, strA))) {
                    return;
                } else {
                    strD = strA;
                }
            }
        }
        File fileC = this.f23415f.c();
        if (this.f23412c.b(fileC)) {
            this.f23415f.b();
            e8.b.a(fileC, this.f23412c);
            if (!this.f23415f.f(new File(this.f23410a, strD))) {
                return;
            }
        }
        this.f23415f.a(this.f23414e.a(j10, i10, str, str2).toString());
    }

    @Override
    public void a(int i10, String str, String str2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!this.f23416g.isStarted()) {
            this.f23416g.start();
        }
        this.f23416g.enqueue(new c(jCurrentTimeMillis, i10, str, str2));
    }
}
