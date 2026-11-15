package com.google.zxing.datamatrix.encoder;

import java.nio.charset.StandardCharsets;

final class f {

    private final String f32067a;

    private SymbolShapeHint f32068b;

    private final StringBuilder f32069c;

    int f32070d;

    private int f32071e;

    private pd.d f32072f;

    private int f32073g;

    f(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb2 = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i10 = 0; i10 < length; i10++) {
            char c10 = (char) (bytes[i10] & 255);
            if (c10 == '?' && str.charAt(i10) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb2.append(c10);
        }
        this.f32067a = sb2.toString();
        this.f32068b = SymbolShapeHint.FORCE_NONE;
        this.f32069c = new StringBuilder(str.length());
        this.f32071e = -1;
    }

    private int h() {
        return this.f32067a.length() - this.f32073g;
    }

    public int a() {
        return this.f32069c.length();
    }

    public StringBuilder b() {
        return this.f32069c;
    }

    public char c() {
        return this.f32067a.charAt(this.f32070d);
    }

    public String d() {
        return this.f32067a;
    }

    public int e() {
        return this.f32071e;
    }

    public int f() {
        return h() - this.f32070d;
    }

    public pd.d g() {
        return this.f32072f;
    }

    public boolean i() {
        return this.f32070d < h();
    }

    public void j() {
        this.f32071e = -1;
    }

    public void k() {
        this.f32072f = null;
    }

    public void l(com.google.zxing.c cVar, com.google.zxing.c cVar2) {
    }

    public void m(int i10) {
        this.f32073g = i10;
    }

    public void n(SymbolShapeHint symbolShapeHint) {
        this.f32068b = symbolShapeHint;
    }

    public void o(int i10) {
        this.f32071e = i10;
    }

    public void p() {
        q(a());
    }

    public void q(int i10) {
        pd.d dVar = this.f32072f;
        if (dVar == null || i10 > dVar.a()) {
            this.f32072f = pd.d.l(i10, this.f32068b, null, null, true);
        }
    }

    public void r(char c10) {
        this.f32069c.append(c10);
    }

    public void s(String str) {
        this.f32069c.append(str);
    }
}
