package com.google.zxing.oned.rss.expanded.decoders;

final class b extends f {
    b(kd.a aVar) {
        super(aVar);
    }

    @Override
    protected void h(StringBuilder sb2, int i10) {
        if (i10 < 10000) {
            sb2.append("(3202)");
        } else {
            sb2.append("(3203)");
        }
    }

    @Override
    protected int i(int i10) {
        return i10 < 10000 ? i10 : i10 - 10000;
    }
}
