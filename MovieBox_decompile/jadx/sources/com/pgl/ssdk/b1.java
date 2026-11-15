package com.pgl.ssdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

public class b1 extends Handler {

    protected WeakReference<a> f39253a;

    public interface a {
        void a(Message message);
    }

    public b1(Looper looper, a aVar) {
        super(looper);
        if (aVar != null) {
            this.f39253a = new WeakReference<>(aVar);
        }
    }

    @Override
    public void handleMessage(Message message) {
        a aVar;
        WeakReference<a> weakReference = this.f39253a;
        if (weakReference == null || (aVar = weakReference.get()) == null || message == null) {
            return;
        }
        aVar.a(message);
    }
}
