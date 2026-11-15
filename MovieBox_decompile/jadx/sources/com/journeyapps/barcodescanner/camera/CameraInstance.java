package com.journeyapps.barcodescanner.camera;

import af.q;
import af.s;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.google.zxing.client.android.R$id;

public class CameraInstance {

    private static final String f33103n = "CameraInstance";

    private k f33104a;

    private j f33105b;

    private h f33106c;

    private Handler f33107d;

    private m f33108e;

    private Handler f33111h;

    private boolean f33109f = false;

    private boolean f33110g = true;

    private CameraSettings f33112i = new CameraSettings();

    private Runnable f33113j = new Runnable() {
        @Override
        public void run() {
            try {
                String unused = CameraInstance.f33103n;
                CameraInstance.this.f33106c.m();
            } catch (Exception e10) {
                CameraInstance.this.w(e10);
                Log.e(CameraInstance.f33103n, "Failed to open camera", e10);
            }
        }
    };

    private Runnable f33114k = new Runnable() {
        @Override
        public void run() {
            try {
                String unused = CameraInstance.f33103n;
                CameraInstance.this.f33106c.f();
                if (CameraInstance.this.f33107d != null) {
                    CameraInstance.this.f33107d.obtainMessage(R$id.zxing_prewiew_size_ready, CameraInstance.this.q()).sendToTarget();
                }
            } catch (Exception e10) {
                CameraInstance.this.w(e10);
                Log.e(CameraInstance.f33103n, "Failed to configure camera", e10);
            }
        }
    };

    private Runnable f33115l = new Runnable() {
        @Override
        public void run() {
            try {
                String unused = CameraInstance.f33103n;
                CameraInstance.this.f33106c.t(CameraInstance.this.f33105b);
                CameraInstance.this.f33106c.v();
            } catch (Exception e10) {
                CameraInstance.this.w(e10);
                Log.e(CameraInstance.f33103n, "Failed to start preview", e10);
            }
        }
    };

    private Runnable f33116m = new Runnable() {
        @Override
        public void run() {
            try {
                String unused = CameraInstance.f33103n;
                CameraInstance.this.f33106c.w();
                CameraInstance.this.f33106c.e();
            } catch (Exception e10) {
                Log.e(CameraInstance.f33103n, "Failed to close camera", e10);
            }
            CameraInstance.this.f33110g = true;
            CameraInstance.this.f33107d.sendEmptyMessage(R$id.zxing_camera_closed);
            CameraInstance.this.f33104a.b();
        }
    };

    public CameraInstance(Context context) {
        s.a();
        this.f33104a = k.d();
        h hVar = new h(context);
        this.f33106c = hVar;
        hVar.p(this.f33112i);
        this.f33111h = new Handler();
    }

    private void F() {
        if (!this.f33109f) {
            throw new IllegalStateException("CameraInstance is not open");
        }
    }

    public q q() {
        return this.f33106c.i();
    }

    public void s(i iVar) {
        this.f33106c.d(iVar);
    }

    public void t(p pVar) {
        this.f33106c.n(pVar);
    }

    public void u(final p pVar) {
        if (this.f33109f) {
            this.f33104a.c(new Runnable() {
                @Override
                public final void run() {
                    this.f33145a.t(pVar);
                }
            });
        }
    }

    public void v(boolean z10) {
        this.f33106c.u(z10);
    }

    public void w(Exception exc) {
        Handler handler = this.f33107d;
        if (handler != null) {
            handler.obtainMessage(R$id.zxing_camera_error, exc).sendToTarget();
        }
    }

    public void A(m mVar) {
        this.f33108e = mVar;
        this.f33106c.r(mVar);
    }

    public void B(Handler handler) {
        this.f33107d = handler;
    }

    public void C(j jVar) {
        this.f33105b = jVar;
    }

    public void D(final boolean z10) {
        s.a();
        if (this.f33109f) {
            this.f33104a.c(new Runnable() {
                @Override
                public final void run() {
                    this.f33142a.v(z10);
                }
            });
        }
    }

    public void E() {
        s.a();
        F();
        this.f33104a.c(this.f33115l);
    }

    public void m(final i iVar) {
        s.a();
        if (this.f33109f) {
            this.f33104a.c(new Runnable(iVar) {
                @Override
                public final void run() {
                    this.f33144a.s(null);
                }
            });
        }
    }

    public void n() {
        s.a();
        if (this.f33109f) {
            this.f33104a.c(this.f33116m);
        } else {
            this.f33110g = true;
        }
        this.f33109f = false;
    }

    public void o() {
        s.a();
        F();
        this.f33104a.c(this.f33114k);
    }

    public m p() {
        return this.f33108e;
    }

    public boolean r() {
        return this.f33110g;
    }

    public void x() {
        s.a();
        this.f33109f = true;
        this.f33110g = false;
        this.f33104a.e(this.f33113j);
    }

    public void y(final p pVar) {
        this.f33111h.post(new Runnable() {
            @Override
            public final void run() {
                this.f33140a.u(pVar);
            }
        });
    }

    public void z(CameraSettings cameraSettings) {
        if (this.f33109f) {
            return;
        }
        this.f33112i = cameraSettings;
        this.f33106c.p(cameraSettings);
    }
}
