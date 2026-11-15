package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;

final class j0 implements o {

    private static final List f26823b = new ArrayList(50);

    private final Handler f26824a;

    private static final class b implements o.a {

        private Message f26825a;

        private j0 f26826b;

        private b() {
        }

        private void b() {
            this.f26825a = null;
            this.f26826b = null;
            j0.e(this);
        }

        @Override
        public void a() {
            ((Message) com.google.android.exoplayer2.util.a.e(this.f26825a)).sendToTarget();
            b();
        }

        public boolean c(Handler handler) {
            boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) com.google.android.exoplayer2.util.a.e(this.f26825a));
            b();
            return zSendMessageAtFrontOfQueue;
        }

        public b d(Message message, j0 j0Var) {
            this.f26825a = message;
            this.f26826b = j0Var;
            return this;
        }
    }

    public j0(Handler handler) {
        this.f26824a = handler;
    }

    private static b d() {
        b bVar;
        List list = f26823b;
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
        List list = f26823b;
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
        return this.f26824a.hasMessages(i10);
    }

    @Override
    public boolean b(o.a aVar) {
        return ((b) aVar).c(this.f26824a);
    }

    @Override
    public o.a obtainMessage(int i10) {
        return d().d(this.f26824a.obtainMessage(i10), this);
    }

    @Override
    public boolean post(Runnable runnable) {
        return this.f26824a.post(runnable);
    }

    @Override
    public void removeCallbacksAndMessages(Object obj) {
        this.f26824a.removeCallbacksAndMessages(obj);
    }

    @Override
    public void removeMessages(int i10) {
        this.f26824a.removeMessages(i10);
    }

    @Override
    public boolean sendEmptyMessage(int i10) {
        return this.f26824a.sendEmptyMessage(i10);
    }

    @Override
    public boolean sendEmptyMessageAtTime(int i10, long j10) {
        return this.f26824a.sendEmptyMessageAtTime(i10, j10);
    }

    @Override
    public o.a obtainMessage(int i10, Object obj) {
        return d().d(this.f26824a.obtainMessage(i10, obj), this);
    }

    @Override
    public o.a obtainMessage(int i10, int i11, int i12) {
        return d().d(this.f26824a.obtainMessage(i10, i11, i12), this);
    }

    @Override
    public o.a obtainMessage(int i10, int i11, int i12, Object obj) {
        return d().d(this.f26824a.obtainMessage(i10, i11, i12, obj), this);
    }
}
