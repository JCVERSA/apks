package af;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.google.zxing.client.android.R$id;
import com.journeyapps.barcodescanner.camera.CameraInstance;

public class j {

    private static final String f310k = "j";

    private CameraInstance f311a;

    private HandlerThread f312b;

    private Handler f313c;

    private g f314d;

    private Handler f315e;

    private Rect f316f;

    private boolean f317g = false;

    private final Object f318h = new Object();

    private final Handler.Callback f319i = new a();

    private final com.journeyapps.barcodescanner.camera.p f320j = new b();

    class a implements Handler.Callback {
        a() {
        }

        @Override
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == R$id.zxing_decode) {
                j.this.g((r) message.obj);
                return true;
            }
            if (i10 != R$id.zxing_preview_failed) {
                return true;
            }
            j.this.h();
            return true;
        }
    }

    class b implements com.journeyapps.barcodescanner.camera.p {
        b() {
        }

        @Override
        public void a(Exception exc) {
            synchronized (j.this.f318h) {
                try {
                    if (j.this.f317g) {
                        j.this.f313c.obtainMessage(R$id.zxing_preview_failed).sendToTarget();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void b(r rVar) {
            synchronized (j.this.f318h) {
                try {
                    if (j.this.f317g) {
                        j.this.f313c.obtainMessage(R$id.zxing_decode, rVar).sendToTarget();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public j(CameraInstance cameraInstance, g gVar, Handler handler) {
        s.a();
        this.f311a = cameraInstance;
        this.f314d = gVar;
        this.f315e = handler;
    }

    public void g(r rVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        rVar.d(this.f316f);
        com.google.zxing.e eVarF = f(rVar);
        com.google.zxing.j jVarC = eVarF != null ? this.f314d.c(eVarF) : null;
        if (jVarC != null) {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Found barcode in ");
            sb2.append(jCurrentTimeMillis2 - jCurrentTimeMillis);
            sb2.append(" ms");
            if (this.f315e != null) {
                Message messageObtain = Message.obtain(this.f315e, R$id.zxing_decode_succeeded, new c(jVarC, rVar));
                messageObtain.setData(new Bundle());
                messageObtain.sendToTarget();
            }
        } else {
            Handler handler = this.f315e;
            if (handler != null) {
                Message.obtain(handler, R$id.zxing_decode_failed).sendToTarget();
            }
        }
        if (this.f315e != null) {
            Message.obtain(this.f315e, R$id.zxing_possible_result_points, c.f(this.f314d.d(), rVar)).sendToTarget();
        }
        h();
    }

    public void h() {
        this.f311a.y(this.f320j);
    }

    protected com.google.zxing.e f(r rVar) {
        if (this.f316f == null) {
            return null;
        }
        return rVar.a();
    }

    public void i(Rect rect) {
        this.f316f = rect;
    }

    public void j(g gVar) {
        this.f314d = gVar;
    }

    public void k() {
        s.a();
        HandlerThread handlerThread = new HandlerThread(f310k);
        this.f312b = handlerThread;
        handlerThread.start();
        this.f313c = new Handler(this.f312b.getLooper(), this.f319i);
        this.f317g = true;
        h();
    }

    public void l() {
        s.a();
        synchronized (this.f318h) {
            this.f317g = false;
            this.f313c.removeCallbacksAndMessages(null);
            this.f312b.quit();
        }
    }
}
