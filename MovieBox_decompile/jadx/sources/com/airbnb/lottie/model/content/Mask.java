package com.airbnb.lottie.model.content;

import s4.d;
import s4.h;

public class Mask {

    private final MaskMode f17167a;

    private final h f17168b;

    private final d f17169c;

    private final boolean f17170d;

    public enum MaskMode {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public Mask(MaskMode maskMode, h hVar, d dVar, boolean z10) {
        this.f17167a = maskMode;
        this.f17168b = hVar;
        this.f17169c = dVar;
        this.f17170d = z10;
    }

    public MaskMode a() {
        return this.f17167a;
    }

    public h b() {
        return this.f17168b;
    }

    public d c() {
        return this.f17169c;
    }

    public boolean d() {
        return this.f17170d;
    }
}
