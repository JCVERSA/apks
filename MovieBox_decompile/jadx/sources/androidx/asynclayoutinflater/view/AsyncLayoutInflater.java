package androidx.asynclayoutinflater.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.h;
import java.util.concurrent.ArrayBlockingQueue;

public final class AsyncLayoutInflater {

    LayoutInflater f1824a;

    private Handler.Callback f1827d = new a();

    Handler f1825b = new Handler(this.f1827d);

    InflateThread f1826c = InflateThread.getInstance();

    private static class InflateThread extends Thread {
        private static final InflateThread sInstance;
        private ArrayBlockingQueue<c> mQueue = new ArrayBlockingQueue<>(10);
        private h mRequestPool = new h(10);

        static {
            InflateThread inflateThread = new InflateThread();
            sInstance = inflateThread;
            inflateThread.start();
        }

        private InflateThread() {
        }

        public static InflateThread getInstance() {
            return sInstance;
        }

        public void enqueue(c cVar) {
            try {
                this.mQueue.put(cVar);
            } catch (InterruptedException e10) {
                throw new RuntimeException("Failed to enqueue async inflate request", e10);
            }
        }

        public c obtainRequest() {
            c cVar = (c) this.mRequestPool.acquire();
            return cVar == null ? new c() : cVar;
        }

        public void releaseRequest(c cVar) {
            cVar.f1834e = null;
            cVar.f1830a = null;
            cVar.f1831b = null;
            cVar.f1832c = 0;
            cVar.f1833d = null;
            this.mRequestPool.release(cVar);
        }

        @Override
        public void run() {
            while (true) {
                runInner();
            }
        }

        public void runInner() {
            try {
                c cVarTake = this.mQueue.take();
                try {
                    cVarTake.f1833d = cVarTake.f1830a.f1824a.inflate(cVarTake.f1832c, cVarTake.f1831b, false);
                } catch (RuntimeException e10) {
                    Log.w("AsyncLayoutInflater", "Failed to inflate resource in the background! Retrying on the UI thread", e10);
                }
                Message.obtain(cVarTake.f1830a.f1825b, 0, cVarTake).sendToTarget();
            } catch (InterruptedException e11) {
                Log.w("AsyncLayoutInflater", e11);
            }
        }
    }

    class a implements Handler.Callback {
        a() {
        }

        @Override
        public boolean handleMessage(Message message) {
            c cVar = (c) message.obj;
            if (cVar.f1833d == null) {
                cVar.f1833d = AsyncLayoutInflater.this.f1824a.inflate(cVar.f1832c, cVar.f1831b, false);
            }
            cVar.f1834e.a(cVar.f1833d, cVar.f1832c, cVar.f1831b);
            AsyncLayoutInflater.this.f1826c.releaseRequest(cVar);
            return true;
        }
    }

    private static class b extends LayoutInflater {

        private static final String[] f1829a = {"android.widget.", "android.webkit.", "android.app."};

        b(Context context) {
            super(context);
        }

        @Override
        public LayoutInflater cloneInContext(Context context) {
            return new b(context);
        }

        @Override
        protected View onCreateView(String str, AttributeSet attributeSet) {
            for (String str2 : f1829a) {
                try {
                    View viewCreateView = createView(str, str2, attributeSet);
                    if (viewCreateView != null) {
                        return viewCreateView;
                    }
                } catch (ClassNotFoundException unused) {
                }
            }
            return super.onCreateView(str, attributeSet);
        }
    }

    private static class c {

        AsyncLayoutInflater f1830a;

        ViewGroup f1831b;

        int f1832c;

        View f1833d;

        d f1834e;

        c() {
        }
    }

    public interface d {
        void a(View view, int i10, ViewGroup viewGroup);
    }

    public AsyncLayoutInflater(Context context) {
        this.f1824a = new b(context);
    }

    public void a(int i10, ViewGroup viewGroup, d dVar) {
        if (dVar == null) {
            throw new NullPointerException("callback argument may not be null!");
        }
        c cVarObtainRequest = this.f1826c.obtainRequest();
        cVarObtainRequest.f1830a = this;
        cVarObtainRequest.f1832c = i10;
        cVarObtainRequest.f1831b = viewGroup;
        cVarObtainRequest.f1834e = dVar;
        this.f1826c.enqueue(cVarObtainRequest);
    }
}
