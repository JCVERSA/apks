package com.danikula.videocache;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

final class g {

    private final AtomicInteger f23378a = new AtomicInteger(0);

    private final String f23379b;

    private volatile e f23380c;

    private final List f23381d;

    private final b f23382e;

    private final c f23383f;

    private static final class a extends Handler implements b {

        private final String f23384a;

        private final List f23385b;

        public a(String str, List list) {
            super(Looper.getMainLooper());
            this.f23384a = str;
            this.f23385b = list;
        }

        @Override
        public void a(String str, int i10) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.arg1 = i10;
            sendMessage(messageObtainMessage);
        }

        @Override
        public void handleMessage(Message message) {
            Iterator it = this.f23385b.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a(this.f23384a, message.arg1);
            }
        }
    }

    public g(String str, c cVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f23381d = copyOnWriteArrayList;
        this.f23379b = (String) l.c(str);
        this.f23383f = (c) l.c(cVar);
        this.f23382e = new a(str, copyOnWriteArrayList);
    }

    private e c() {
        e eVar = new e(this.f23383f.f23370c);
        this.f23383f.f23370c.B();
        eVar.l(this.f23382e);
        return eVar;
    }

    private synchronized void e() {
        try {
            this.f23380c = this.f23380c == null ? c() : this.f23380c;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void a() {
        try {
            if (this.f23378a.decrementAndGet() <= 0) {
                if (this.f23380c != null) {
                    this.f23380c.e();
                }
                this.f23380c = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public int b() {
        return this.f23378a.get();
    }

    public void d(d dVar, Socket socket) {
        e();
        try {
            this.f23378a.incrementAndGet();
            this.f23380c.f();
            this.f23380c.k(dVar, socket);
        } finally {
            q.f("processRequest， shutdown, threadName = " + Thread.currentThread().getName());
            a();
        }
    }

    public void f() {
        if (this.f23380c != null) {
            this.f23380c.g();
        }
    }
}
