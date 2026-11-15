package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import java.io.IOException;
import java.util.List;

public final class g implements r.a {

    private final List<r> f37160a;

    private final com.mbridge.msdk.thrid.okhttp.internal.connection.g f37161b;

    private final c f37162c;

    private final com.mbridge.msdk.thrid.okhttp.internal.connection.c f37163d;

    private final int f37164e;

    private final w f37165f;

    private final com.mbridge.msdk.thrid.okhttp.d f37166g;

    private final n f37167h;

    private final int f37168i;

    private final int f37169j;

    private final int f37170k;

    private int f37171l;

    public g(List<r> list, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, c cVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar2, int i10, w wVar, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar, int i11, int i12, int i13) {
        this.f37160a = list;
        this.f37163d = cVar2;
        this.f37161b = gVar;
        this.f37162c = cVar;
        this.f37164e = i10;
        this.f37165f = wVar;
        this.f37166g = dVar;
        this.f37167h = nVar;
        this.f37168i = i11;
        this.f37169j = i12;
        this.f37170k = i13;
    }

    @Override
    public int a() {
        return this.f37168i;
    }

    @Override
    public int b() {
        return this.f37169j;
    }

    @Override
    public int c() {
        return this.f37170k;
    }

    @Override
    public w d() {
        return this.f37165f;
    }

    public com.mbridge.msdk.thrid.okhttp.d e() {
        return this.f37166g;
    }

    public com.mbridge.msdk.thrid.okhttp.g f() {
        return this.f37163d;
    }

    public n g() {
        return this.f37167h;
    }

    public c h() {
        return this.f37162c;
    }

    public com.mbridge.msdk.thrid.okhttp.internal.connection.g i() {
        return this.f37161b;
    }

    @Override
    public y a(w wVar) throws IOException {
        return a(wVar, this.f37161b, this.f37162c, this.f37163d);
    }

    public y a(w wVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, c cVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar2) throws IOException {
        if (this.f37164e < this.f37160a.size()) {
            this.f37171l++;
            if (this.f37162c != null && !this.f37163d.a(wVar.g())) {
                throw new IllegalStateException("network interceptor " + this.f37160a.get(this.f37164e - 1) + " must retain the same host and port");
            }
            if (this.f37162c != null && this.f37171l > 1) {
                throw new IllegalStateException("network interceptor " + this.f37160a.get(this.f37164e - 1) + " must call proceed() exactly once");
            }
            g gVar2 = new g(this.f37160a, gVar, cVar, cVar2, this.f37164e + 1, wVar, this.f37166g, this.f37167h, this.f37168i, this.f37169j, this.f37170k);
            r rVar = this.f37160a.get(this.f37164e);
            y yVarA = rVar.a(gVar2);
            if (cVar != null && this.f37164e + 1 < this.f37160a.size() && gVar2.f37171l != 1) {
                throw new IllegalStateException("network interceptor " + rVar + " must call proceed() exactly once");
            }
            if (yVarA != null) {
                if (yVarA.d() != null) {
                    return yVarA;
                }
                throw new IllegalStateException("interceptor " + rVar + " returned a response with no body");
            }
            throw new NullPointerException("interceptor " + rVar + " returned null");
        }
        throw new AssertionError();
    }
}
