package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public final class jt4 {
    public final AtomicInteger a = new AtomicInteger(0);
    public final String b;
    public volatile it4 c;
    public final List d;
    public final sp0 e;
    public final oe1 f;

    public static final class a extends Handler implements sp0 {
        public final String b;
        public final List c;

        public a(String str, List list) {
            super(Looper.getMainLooper());
            this.b = str;
            this.c = list;
        }

        @Override
        public void handleMessage(Message message) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ((sp0) it.next()).onCacheAvailable((File) message.obj, this.b, message.arg1);
            }
        }

        @Override
        public void onCacheAvailable(File file, String str, int i) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.arg1 = i;
            messageObtainMessage.obj = file;
            sendMessage(messageObtainMessage);
        }
    }

    public jt4(String str, oe1 oe1Var) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.d = copyOnWriteArrayList;
        this.b = (String) ae8.d(str);
        this.f = (oe1) ae8.d(oe1Var);
        this.e = new a(str, copyOnWriteArrayList);
    }

    public final synchronized void a() {
        if (this.a.decrementAndGet() <= 0) {
            this.c.m();
            this.c = null;
        }
    }

    public int b() {
        return this.a.get();
    }

    public final it4 c() {
        String str = this.b;
        oe1 oe1Var = this.f;
        it4 it4Var = new it4(new ot4(str, oe1Var.d, oe1Var.e), new fq3(this.f.a(this.b), this.f.c));
        it4Var.t(this.e);
        return it4Var;
    }

    public void d(hh4 hh4Var, Socket socket) {
        f();
        try {
            this.a.incrementAndGet();
            this.c.s(hh4Var, socket);
        } finally {
            a();
        }
    }

    public void e(sp0 sp0Var) {
        this.d.add(sp0Var);
    }

    public final synchronized void f() {
        try {
            this.c = this.c == null ? c() : this.c;
        } catch (Throwable th) {
            throw th;
        }
    }
}
