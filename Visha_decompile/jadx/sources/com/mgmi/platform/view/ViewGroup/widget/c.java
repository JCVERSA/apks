package com.mgmi.platform.view.ViewGroup.widget;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.mgmi.ads.api.render.CreativeSimpleDraweeView;
import com.mgmi.model.VASTAd;
import com.mgmi.model.i;
import defpackage.dkd;
import defpackage.j4d;
import defpackage.l4d;
import defpackage.m5d;
import defpackage.mpd;
import defpackage.w3d;
import java.util.Iterator;
import java.util.List;

public class c extends b<d> {
    long a;
    float b;
    float c;
    float d;
    boolean e;
    private com.mgmi.ads.api.c.a f;
    private ImageView g;
    private SensorManager h;
    private a p;
    private Sensor q;
    private boolean r;
    private boolean s;

    public class a implements SensorEventListener {
        final c a;

        private void a(String str) {
            c cVar = this.a;
            if (cVar.e) {
                cVar.e = false;
                return;
            }
            if (cVar.p()) {
                this.a.r = true;
                c cVar2 = this.a;
                cVar2.e = true;
                cVar2.s();
                c cVar3 = this.a;
                cVar3.a(str, 3, cVar3.o);
            }
        }

        @Override
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override
        public void onSensorChanged(SensorEvent sensorEvent) {
            c cVar = this.a;
            if (cVar.n == null || !cVar.p() || this.a.r) {
                return;
            }
            try {
                int type = sensorEvent.sensor.getType();
                float[] fArr = sensorEvent.values;
                if (type == 1 && this.a.n.o() == 4) {
                    if (Math.abs(fArr[0]) > 12.0f || Math.abs(fArr[1]) > 12.0f || Math.abs(fArr[2]) > 12.0f) {
                        a("shake");
                    }
                } else if (sensorEvent.sensor.getType() == 11 && this.a.n.o() == 5) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    c cVar2 = this.a;
                    long j = jCurrentTimeMillis - cVar2.a;
                    if (j < 100) {
                        return;
                    }
                    cVar2.a = jCurrentTimeMillis;
                    float[] fArr2 = sensorEvent.values;
                    float f = fArr2[0];
                    float f2 = fArr2[1];
                    float f3 = fArr2[2];
                    float f4 = f - cVar2.b;
                    float f5 = f2 - cVar2.c;
                    float f6 = f3 - cVar2.d;
                    cVar2.b = f;
                    cVar2.c = f2;
                    cVar2.d = f3;
                    double dSqrt = (Math.sqrt(((f4 * f4) + (f5 * f5)) + (f6 * f6)) / j) * 10000.0d;
                    if (f5 >= 0.0f || f4 >= 0.0f || f6 <= 0.0f) {
                        if (Math.abs(dSqrt) >= 25.0d && Math.abs(dSqrt) < 40.0d) {
                            a("motion");
                        }
                    } else if (Math.abs(dSqrt) >= 10.0d) {
                        a("motion");
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private int w() {
        int iMin = Math.min(com.mgmi.f.f.a(this.j), com.mgmi.f.f.b(this.j));
        com.mgmi.ads.api.c.a aVar = this.f;
        return (aVar == null || aVar.a() == null) ? iMin : Math.max(this.f.a().b(), this.f.a().c());
    }

    private int x() {
        int iMin = Math.min(com.mgmi.f.f.a(this.j), com.mgmi.f.f.b(this.j));
        com.mgmi.ads.api.c.a aVar = this.f;
        return (aVar == null || aVar.a() == null) ? iMin : Math.min(this.f.a().b(), this.f.a().c());
    }

    private void y() {
        a aVar;
        SensorManager sensorManager = this.h;
        if (sensorManager == null || (aVar = this.p) == null) {
            return;
        }
        try {
            sensorManager.unregisterListener(aVar, this.q);
            this.q = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public ImageView c() {
        return this.g;
    }

    @Override
    public void d() {
        super.d();
        y();
        o();
        a(true);
    }

    @Override
    public synchronized void h() {
        try {
            if (this.s) {
                this.s = false;
            } else {
                T t = this.m;
                if (t != 0 && ((d) t).a() != null && this.o != null) {
                    i iVarA = ((d) this.m).a();
                    for (i iVar : this.o.getInteractItemInfos()) {
                        if (iVar != null && iVarA.i() == iVar.h() && "interact".equals(iVar.a()) && "file/h5_zip".equals(iVar.l()) && "int_tmpl".equals(iVar.n())) {
                            return;
                        }
                    }
                }
            }
            super.h();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override
    public void j() {
        super.j();
        this.r = true;
        e();
    }

    @Override
    public void k() {
        super.k();
        this.r = false;
        n();
    }

    @Override
    public void o() {
        j4d.b(new Runnable() {
            @Override
            public void run() {
                if (c.this.f != null) {
                    c.this.f.a(false);
                }
                l4d.f(c.this.l, 8);
            }
        });
    }

    private float b(Context context) {
        return (w() * 1.0f) / x();
    }

    @Override
    public void b() {
        FrameLayout.LayoutParams layoutParams;
        super.b();
        T t = this.m;
        if (t == 0 || ((d) t).a() == null || (layoutParams = (FrameLayout.LayoutParams) ((d) this.m).d()) == null) {
            return;
        }
        int iA = com.mgmi.f.f.a(this.j);
        int iB = com.mgmi.f.f.b(this.j);
        if (iA > iB) {
            iA = iB;
        }
        float fJ = (((d) this.m).a().j() * iA) / 100.0f;
        float fK = (((d) this.m).a().k() * ((iA * 9) / 16)) / 100.0f;
        layoutParams.leftMargin = (int) fJ;
        layoutParams.topMargin = (int) fK;
        layoutParams.width = (int) (w3d.a(this.j, ((d) this.m).a().g() / 2) * a(this.j));
        layoutParams.height = (int) (w3d.a(this.j, ((d) this.m).a().f() / 2) * a(this.j));
        if (!p() || this.g == null) {
            return;
        }
        n();
    }

    @Override
    public View a(d dVar) {
        if (dVar == null || this.j == null) {
            return null;
        }
        if (this.g == null) {
            CreativeSimpleDraweeView creativeSimpleDraweeView = new CreativeSimpleDraweeView(this.j);
            this.g = creativeSimpleDraweeView;
            creativeSimpleDraweeView.setClickType(dVar.a().o());
            ((CreativeSimpleDraweeView) this.g).setTouch(new CreativeSimpleDraweeView.a() {
                @Override
                public void a(View view, dkd dkdVar, String str) {
                    c.this.a(dkdVar, view);
                }

                @Override
                public void a(VASTAd vASTAd, String str) {
                    if (c.this.p()) {
                        c.this.s();
                        c cVar = c.this;
                        cVar.a(str, 3, cVar.o);
                    }
                }
            });
        }
        if (this.g != null && dVar.b() != null && !TextUtils.isEmpty(dVar.b()) && this.g.getDrawable() == null) {
            this.g.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        }
        return this.g;
    }

    public void a(dkd dkdVar, View view) {
        if (this.o != null) {
            new m5d(com.mgmi.ads.api.c.a(), String.valueOf(this.o.getVastAid()), this.o).c(view, this.f, dkdVar, this.o.getCurrentStaticResource());
        }
    }

    @Override
    public void a() {
        FrameLayout.LayoutParams layoutParams;
        super.a();
        T t = this.m;
        if (t == 0 || ((d) t).a() == null || (layoutParams = (FrameLayout.LayoutParams) ((d) this.m).d()) == null || this.i == null) {
            return;
        }
        int iW = w();
        int iX = x();
        int width = this.i.getWidth();
        this.i.getHeight();
        float fJ = ((((d) this.m).a().j() * iW) / 100.0f) + (((width - iW) * 1.0f) / 2.0f);
        float fK = (((d) this.m).a().k() * iX) / 100.0f;
        layoutParams.leftMargin = (int) fJ;
        layoutParams.topMargin = (int) fK;
        layoutParams.width = (int) (layoutParams.width * b(this.j));
        layoutParams.height = (int) (layoutParams.height * b(this.j));
        layoutParams.gravity = 51;
        if (!p() || this.g == null) {
            return;
        }
        n();
    }

    public void b(boolean z) {
        this.s = z;
    }

    private float a(Context context) {
        int iA = mpd.a(context);
        int iN = mpd.n(context);
        return iA > iN ? (iN * 1.0f) / iA : (iA * 1.0f) / iN;
    }

    public void a(String str, int i, VASTAd vASTAd) {
        List<String> traceCheck;
        com.mgmi.e.a.d dVarB = com.mgmi.net.b.a().b();
        if (vASTAd == null || dVarB == null || (traceCheck = vASTAd.getTraceCheck()) == null || traceCheck.size() <= 0) {
            return;
        }
        Iterator<String> it = traceCheck.iterator();
        while (it.hasNext()) {
            String strReplace = it.next().replace("[EV_KEY]", "interact_ad").replace("[EV_V1]", str);
            if (this.m != 0) {
                strReplace = strReplace.replace("[EV_V2]", ((d) this.m).c() + "");
            }
            dVarB.a(strReplace.replace("[EV_V4]", String.valueOf(i)));
        }
    }
}
