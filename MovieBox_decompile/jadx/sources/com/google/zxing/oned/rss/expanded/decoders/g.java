package com.google.zxing.oned.rss.expanded.decoders;

final class g extends h {
    g(kd.a aVar) {
        super(aVar);
    }

    @Override
    public String d() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(01)");
        int length = sb2.length();
        sb2.append(b().f(4, 4));
        g(sb2, 8, length);
        return b().a(sb2, 48);
    }
}
