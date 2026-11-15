package com.google.zxing.oned.rss.expanded.decoders;

final class n extends p {

    private final String f32108b;

    private final int f32109c;

    private final boolean f32110d;

    n(int i10, String str) {
        super(i10);
        this.f32108b = str;
        this.f32110d = false;
        this.f32109c = 0;
    }

    String b() {
        return this.f32108b;
    }

    int c() {
        return this.f32109c;
    }

    boolean d() {
        return this.f32110d;
    }

    n(int i10, String str, int i11) {
        super(i10);
        this.f32110d = true;
        this.f32109c = i11;
        this.f32108b = str;
    }
}
