package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.ArrayList;

final class a42 implements hf0 {

    @GuardedBy("messagePool")
    private static final ArrayList b = new ArrayList(50);
    private final Handler a;

    public static final class a implements hf0.a {

        @Nullable
        private Message a;

        private a() {
        }

        public void b() {
            this.a = null;
            ArrayList arrayList = a42.b;
            synchronized (arrayList) {
                try {
                    if (arrayList.size() < 50) {
                        arrayList.add(this);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public final void a() {
            Message message = this.a;
            message.getClass();
            message.sendToTarget();
            b();
        }
    }

    public a42(Handler handler) {
        this.a = handler;
    }

    private static a d() {
        a aVar;
        ArrayList arrayList = b;
        synchronized (arrayList) {
            try {
                aVar = arrayList.isEmpty() ? new a() : (a) arrayList.remove(arrayList.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    @Override
    public final boolean a(Runnable runnable) {
        return this.a.post(runnable);
    }

    @Override
    public final boolean b() {
        return this.a.hasMessages(0);
    }

    @Override
    public final void c() {
        this.a.removeMessages(2);
    }

    @Override
    public final void a() {
        this.a.removeCallbacksAndMessages(null);
    }

    @Override
    public final hf0.a b(int i) {
        a aVarD = d();
        aVarD.a = this.a.obtainMessage(i);
        return aVarD;
    }

    @Override
    public final boolean a(int i) {
        return this.a.sendEmptyMessage(i);
    }

    @Override
    public final boolean a(long j) {
        return this.a.sendEmptyMessageAtTime(2, j);
    }

    @Override
    public final boolean a(hf0.a aVar) {
        a aVar2 = (a) aVar;
        Handler handler = this.a;
        Message message = aVar2.a;
        message.getClass();
        boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        aVar2.b();
        return zSendMessageAtFrontOfQueue;
    }

    @Override
    public final hf0.a a(int i, @Nullable Object obj) {
        a aVarD = d();
        aVarD.a = this.a.obtainMessage(i, obj);
        return aVarD;
    }

    @Override
    public final hf0.a a(int i, int i2) {
        a aVarD = d();
        aVarD.a = this.a.obtainMessage(1, i, i2);
        return aVarD;
    }
}
