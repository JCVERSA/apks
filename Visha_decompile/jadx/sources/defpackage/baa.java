package defpackage;

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;

public final class baa implements xn4 {
    public static final List b = new ArrayList(50);
    public final Handler a;

    public static final class b implements xn4.a {
        public Message a;
        public baa b;

        public b() {
        }

        public final void a() {
            this.a = null;
            this.b = null;
            baa.d(this);
        }

        public boolean b(Handler handler) {
            boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) zi.e(this.a));
            a();
            return zSendMessageAtFrontOfQueue;
        }

        public b c(Message message, baa baaVar) {
            this.a = message;
            this.b = baaVar;
            return this;
        }

        @Override
        public void sendToTarget() {
            ((Message) zi.e(this.a)).sendToTarget();
            a();
        }
    }

    public baa(Handler handler) {
        this.a = handler;
    }

    public static b c() {
        b bVar;
        List list = b;
        synchronized (list) {
            try {
                bVar = list.isEmpty() ? new b() : (b) list.remove(list.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    public static void d(b bVar) {
        List list = b;
        synchronized (list) {
            try {
                if (list.size() < 50) {
                    list.add(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public boolean a(xn4.a aVar) {
        return ((b) aVar).b(this.a);
    }

    @Override
    public boolean hasMessages(int i) {
        return this.a.hasMessages(i);
    }

    @Override
    public xn4.a obtainMessage(int i) {
        return c().c(this.a.obtainMessage(i), this);
    }

    @Override
    public boolean post(Runnable runnable) {
        return this.a.post(runnable);
    }

    @Override
    public void removeCallbacksAndMessages(Object obj) {
        this.a.removeCallbacksAndMessages(obj);
    }

    @Override
    public void removeMessages(int i) {
        this.a.removeMessages(i);
    }

    @Override
    public boolean sendEmptyMessage(int i) {
        return this.a.sendEmptyMessage(i);
    }

    @Override
    public boolean sendEmptyMessageAtTime(int i, long j) {
        return this.a.sendEmptyMessageAtTime(i, j);
    }

    @Override
    public xn4.a obtainMessage(int i, Object obj) {
        return c().c(this.a.obtainMessage(i, obj), this);
    }

    @Override
    public xn4.a obtainMessage(int i, int i2, int i3) {
        return c().c(this.a.obtainMessage(i, i2, i3), this);
    }

    @Override
    public xn4.a obtainMessage(int i, int i2, int i3, Object obj) {
        return c().c(this.a.obtainMessage(i, i2, i3, obj), this);
    }
}
