package com.mbridge.msdk.tracker;

import android.util.Log;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class j {

    private volatile ThreadPoolExecutor f37694a;

    class a implements ThreadFactory {
        a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "MBridgeTrackThread");
        }
    }

    private static final class b implements Runnable {

        private final Runnable f37696a;

        public b(Runnable runnable) {
            this.f37696a = runnable;
        }

        @Override
        public void run() {
            if (y.b(this.f37696a)) {
                return;
            }
            try {
                this.f37696a.run();
            } catch (Exception e10) {
                if (com.mbridge.msdk.tracker.a.f37664a) {
                    Log.e("TrackManager", "execute error", e10);
                }
            }
        }
    }

    public void a(Runnable runnable) {
        if (this.f37694a == null) {
            this.f37694a = a();
        }
        if (this.f37694a.isShutdown()) {
            return;
        }
        this.f37694a.execute(new b(runnable));
    }

    private ThreadPoolExecutor a() {
        return new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
    }
}
