package androidx.core.provider;

import android.os.Handler;
import java.util.concurrent.Callable;

class SelfDestructiveThread$2 implements Runnable {
    final l this$0;
    final Callable val$callable;
    final Handler val$calleeHandler;
    final l.a val$reply;

    SelfDestructiveThread$2(l lVar, Callable callable, Handler handler, l.a aVar) {
        this.val$callable = callable;
        this.val$calleeHandler = handler;
    }

    @Override
    public void run() {
        final Object objCall;
        try {
            objCall = this.val$callable.call();
        } catch (Exception unused) {
            objCall = null;
        }
        this.val$calleeHandler.post(new Runnable() {
            @Override
            public void run() {
                SelfDestructiveThread$2.this.getClass();
                throw null;
            }
        });
    }
}
