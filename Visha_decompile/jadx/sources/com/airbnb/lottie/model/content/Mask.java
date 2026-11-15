package com.airbnb.lottie.model.content;

import defpackage.fc;
import defpackage.kc;

public class Mask {
    public final MaskMode a;
    public final kc b;
    public final fc c;
    public final boolean d;

    public enum MaskMode {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public Mask(MaskMode maskMode, kc kcVar, fc fcVar, boolean z) {
        this.a = maskMode;
        this.b = kcVar;
        this.c = fcVar;
        this.d = z;
    }

    public MaskMode a() {
        return this.a;
    }

    public kc b() {
        return this.b;
    }

    public fc c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }
}
