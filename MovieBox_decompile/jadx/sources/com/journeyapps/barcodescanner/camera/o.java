package com.journeyapps.barcodescanner.camera;

import af.q;
import android.graphics.Rect;

public class o extends PreviewScalingStrategy {
    private static float e(float f10) {
        return f10 < 1.0f ? 1.0f / f10 : f10;
    }

    @Override
    protected float c(q qVar, q qVar2) {
        int i10 = qVar.f336a;
        if (i10 <= 0 || qVar.f337b <= 0) {
            return 0.0f;
        }
        float fE = (1.0f / e((i10 * 1.0f) / qVar2.f336a)) / e((qVar.f337b * 1.0f) / qVar2.f337b);
        float fE2 = e(((qVar.f336a * 1.0f) / qVar.f337b) / ((qVar2.f336a * 1.0f) / qVar2.f337b));
        return fE * (((1.0f / fE2) / fE2) / fE2);
    }

    @Override
    public Rect d(q qVar, q qVar2) {
        return new Rect(0, 0, qVar2.f336a, qVar2.f337b);
    }
}
