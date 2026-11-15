package com.transsion.widgetslib.view.liquid.vfx.light;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;

public class b {
    public final a a;
    public final VFXLightAnimHelper b;
    public boolean c;

    public b(Context context) {
        a aVar = new a();
        this.a = aVar;
        VFXLightAnimHelper vFXLightAnimHelper = new VFXLightAnimHelper(context);
        this.b = vFXLightAnimHelper;
        vFXLightAnimHelper.setAnimValueListener(aVar);
    }

    public void a(View view) {
        this.a.f(view);
    }

    public void b(Canvas canvas, float f, float f2, float f3) {
        if (this.c) {
            this.a.h(canvas, f, f2, f3);
        }
    }

    public void c(MotionEvent motionEvent) {
        if (this.c) {
            this.b.h(motionEvent);
        }
    }

    public void d() {
        this.b.i();
        this.a.i();
    }

    public void e(int i, int i2) {
        this.a.j(i, i2);
    }

    public void f(boolean z) {
        this.a.k(z);
    }

    public void setLightTypeConfig(LightTypeConfig lightTypeConfig) {
        this.c = true;
        this.a.setLightTypeConfig(lightTypeConfig);
    }
}
