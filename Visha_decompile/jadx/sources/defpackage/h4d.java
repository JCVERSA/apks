package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

public class h4d {
    public long a;
    public boolean b = true;
    public boolean c = false;
    public final sud d = new sud();
    public Handler e = new a(g(), this);

    public static class a extends Handler {
        public WeakReference a;

        public a(Looper looper, h4d h4dVar) {
            super(looper);
            this.a = new WeakReference(h4dVar);
        }

        @Override
        public void handleMessage(Message message) {
            h4d h4dVar;
            super.handleMessage(message);
            WeakReference weakReference = this.a;
            if (weakReference == null || weakReference.get() == null || message.what != 45827 || (h4dVar = (h4d) this.a.get()) == null) {
                return;
            }
            h4dVar.f();
        }
    }

    public interface b {
        void a();
    }

    public h4d(long j) {
        this.a = j;
    }

    public static Looper g() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return mainLooper;
        }
        try {
            Looper.prepareMainLooper();
            return Looper.getMainLooper();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final synchronized void a() {
        this.b = true;
        this.e.removeMessages(45827);
    }

    public void b(b bVar) {
        if (this.c) {
            return;
        }
        synchronized (this.d) {
            this.d.c();
            this.d.b(bVar);
        }
    }

    public final synchronized h4d d() {
        if (this.c) {
            return this;
        }
        if (!this.b) {
            return this;
        }
        this.b = false;
        Handler handler = this.e;
        handler.sendMessage(handler.obtainMessage(45827));
        return this;
    }

    public synchronized void e() {
        this.c = true;
        this.b = true;
        this.e.removeMessages(45827);
        this.d.d();
    }

    public final void f() {
        List listA;
        if (this.c || this.b) {
            return;
        }
        synchronized (this.d) {
            listA = this.d.a();
        }
        if (listA != null && !listA.isEmpty()) {
            Iterator it = listA.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a();
            }
        }
        Handler handler = this.e;
        handler.sendMessageDelayed(handler.obtainMessage(45827), this.a);
    }
}
