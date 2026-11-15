package com.google.zxing.qrcode.decoder;

import com.google.zxing.k;

public final class f {

    private final boolean f32168a;

    f(boolean z10) {
        this.f32168a = z10;
    }

    public void a(k[] kVarArr) {
        if (!this.f32168a || kVarArr == null || kVarArr.length < 3) {
            return;
        }
        k kVar = kVarArr[0];
        kVarArr[0] = kVarArr[2];
        kVarArr[2] = kVar;
    }
}
