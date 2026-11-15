package com.caverock.androidsvg;

public class a {
    public CSSParser.n a;
    public PreserveAspectRatio b;
    public String c;
    public SVG.b d;
    public String e;
    public SVG.b f;

    public a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
    }

    public a a(String str) {
        this.a = new CSSParser(CSSParser.Source.RenderOptions).d(str);
        return this;
    }

    public boolean b() {
        CSSParser.n nVar = this.a;
        return nVar != null && nVar.f() > 0;
    }

    public boolean c() {
        return this.b != null;
    }

    public boolean d() {
        return this.c != null;
    }

    public boolean e() {
        return this.e != null;
    }

    public boolean f() {
        return this.d != null;
    }

    public boolean g() {
        return this.f != null;
    }

    public a h(float f, float f2, float f3, float f4) {
        this.f = new SVG.b(f, f2, f3, f4);
        return this;
    }

    public a(a aVar) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        if (aVar == null) {
            return;
        }
        this.a = aVar.a;
        this.b = aVar.b;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
    }
}
