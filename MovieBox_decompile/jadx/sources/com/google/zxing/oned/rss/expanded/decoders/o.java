package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;

final class o extends p {

    private final int f32111b;

    private final int f32112c;

    o(int i10, int i11, int i12) throws FormatException {
        super(i10);
        if (i11 < 0 || i11 > 10 || i12 < 0 || i12 > 10) {
            throw FormatException.getFormatInstance();
        }
        this.f32111b = i11;
        this.f32112c = i12;
    }

    int b() {
        return this.f32111b;
    }

    int c() {
        return this.f32112c;
    }

    boolean d() {
        return this.f32111b == 10;
    }

    boolean e() {
        return this.f32112c == 10;
    }
}
