package com.journeyapps.barcodescanner.camera;

import af.q;
import android.graphics.Rect;

public class l extends PreviewScalingStrategy {
    @Override
    protected float c(q qVar, q qVar2) {
        if (qVar.f336a <= 0 || qVar.f337b <= 0) {
            return 0.0f;
        }
        q qVarF = qVar.f(qVar2);
        float fPow = (qVarF.f336a * 1.0f) / qVar.f336a;
        if (fPow > 1.0f) {
            fPow = (float) Math.pow(1.0f / fPow, 1.1d);
        }
        float f10 = ((qVarF.f336a * 1.0f) / qVar2.f336a) + ((qVarF.f337b * 1.0f) / qVar2.f337b);
        return fPow * ((1.0f / f10) / f10);
    }

    @Override
    public Rect d(q qVar, q qVar2) {
        q qVarF = qVar.f(qVar2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Preview: ");
        sb2.append(qVar);
        sb2.append("; Scaled: ");
        sb2.append(qVarF);
        sb2.append("; Want: ");
        sb2.append(qVar2);
        int i10 = (qVarF.f336a - qVar2.f336a) / 2;
        int i11 = (qVarF.f337b - qVar2.f337b) / 2;
        return new Rect(-i10, -i11, qVarF.f336a - i10, qVarF.f337b - i11);
    }
}
