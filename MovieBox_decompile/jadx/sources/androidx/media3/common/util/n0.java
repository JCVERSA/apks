package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;

final class n0 implements p {

    private static final List f10103b = new ArrayList(50);

    private final Handler f10104a;

    private static final class b implements p.a {

        private Message f10105a;

        private n0 f10106b;

        private b() {
        }

        private void b() {
            this.f10105a = null;
            this.f10106b = null;
            n0.e(this);
        }

        @Override
        public void a() {
            ((Message) androidx.media3.common.util.a.e(this.f10105a)).sendToTarget();
            b();
        }

        public boolean c(Handler handler) {
            boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) androidx.media3.common.util.a.e(this.f10105a));
            b();
            return zSendMessageAtFrontOfQueue;
        }

        public b d(Message message, n0 n0Var) {
            this.f10105a = message;
            this.f10106b = n0Var;
            return this;
        }
    }

    public n0(Handler handler) {
        this.f10104a = handler;
    }

    private static b d() {
        b bVar;
        List list = f10103b;
        synchronized (list) {
            try {
                bVar = list.isEmpty() ? new b() : (b) list.remove(list.size() - 1);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    public static void e(b bVar) {
        List list = f10103b;
        synchronized (list) {
            try {
                if (list.size() < 50) {
                    list.add(bVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean a(int i10) {
        androidx.media3.common.util.a.a(i10 != 0);
        return this.f10104a.hasMessages(i10);
    }

    @Override
    public boolean b(p.a aVar) {
        return ((b) aVar).c(this.f10104a);
    }

    @Override
    public Looper getLooper() {
        return this.f10104a.getLooper();
    }

    @Override
    public p.a obtainMessage(int i10) {
        return d().d(this.f10104a.obtainMessage(i10), this);
    }

    @Override
    public boolean post(Runnable runnable) {
        return this.f10104a.post(runnable);
    }

    @Override
    public void removeCallbacksAndMessages(Object obj) {
        this.f10104a.removeCallbacksAndMessages(obj);
    }

    @Override
    public void removeMessages(int i10) {
        androidx.media3.common.util.a.a(i10 != 0);
        this.f10104a.removeMessages(i10);
    }

    @Override
    public boolean sendEmptyMessage(int i10) {
        return this.f10104a.sendEmptyMessage(i10);
    }

    @Override
    public boolean sendEmptyMessageAtTime(int i10, long j10) {
        return this.f10104a.sendEmptyMessageAtTime(i10, j10);
    }

    @Override
    public p.a obtainMessage(int i10, Object obj) {
        return d().d(this.f10104a.obtainMessage(i10, obj), this);
    }

    @Override
    public p.a obtainMessage(int i10, int i11, int i12) {
        return d().d(this.f10104a.obtainMessage(i10, i11, i12), this);
    }

    @Override
    public p.a obtainMessage(int i10, int i11, int i12, Object obj) {
        return d().d(this.f10104a.obtainMessage(i10, i11, i12, obj), this);
    }
}
