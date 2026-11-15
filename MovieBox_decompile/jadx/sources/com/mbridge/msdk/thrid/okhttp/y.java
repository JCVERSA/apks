package com.mbridge.msdk.thrid.okhttp;

import java.io.Closeable;

public final class y implements Closeable {

    final w f37559a;

    final u f37560b;

    final int f37561c;

    final String f37562d;

    final o f37563e;

    final p f37564f;

    final z f37565g;

    final y f37566h;

    final y f37567i;

    final y f37568j;

    final long f37569k;

    final long f37570l;

    private volatile c f37571m;

    public static class a {

        w f37572a;

        u f37573b;

        int f37574c;

        String f37575d;

        o f37576e;

        p.a f37577f;

        z f37578g;

        y f37579h;

        y f37580i;

        y f37581j;

        long f37582k;

        long f37583l;

        public a() {
            this.f37574c = -1;
            this.f37577f = new p.a();
        }

        public a a(w wVar) {
            this.f37572a = wVar;
            return this;
        }

        public a b(String str, String str2) {
            this.f37577f.c(str, str2);
            return this;
        }

        public a c(y yVar) {
            if (yVar != null) {
                a("networkResponse", yVar);
            }
            this.f37579h = yVar;
            return this;
        }

        public a d(y yVar) {
            if (yVar != null) {
                b(yVar);
            }
            this.f37581j = yVar;
            return this;
        }

        private void b(y yVar) {
            if (yVar.f37565g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public a a(u uVar) {
            this.f37573b = uVar;
            return this;
        }

        public a a(int i10) {
            this.f37574c = i10;
            return this;
        }

        a(y yVar) {
            this.f37574c = -1;
            this.f37572a = yVar.f37559a;
            this.f37573b = yVar.f37560b;
            this.f37574c = yVar.f37561c;
            this.f37575d = yVar.f37562d;
            this.f37576e = yVar.f37563e;
            this.f37577f = yVar.f37564f.a();
            this.f37578g = yVar.f37565g;
            this.f37579h = yVar.f37566h;
            this.f37580i = yVar.f37567i;
            this.f37581j = yVar.f37568j;
            this.f37582k = yVar.f37569k;
            this.f37583l = yVar.f37570l;
        }

        public a a(String str) {
            this.f37575d = str;
            return this;
        }

        public a b(long j10) {
            this.f37582k = j10;
            return this;
        }

        public a a(o oVar) {
            this.f37576e = oVar;
            return this;
        }

        public a a(String str, String str2) {
            this.f37577f.a(str, str2);
            return this;
        }

        public a a(p pVar) {
            this.f37577f = pVar.a();
            return this;
        }

        public a a(z zVar) {
            this.f37578g = zVar;
            return this;
        }

        public a a(y yVar) {
            if (yVar != null) {
                a("cacheResponse", yVar);
            }
            this.f37580i = yVar;
            return this;
        }

        private void a(String str, y yVar) {
            if (yVar.f37565g == null) {
                if (yVar.f37566h == null) {
                    if (yVar.f37567i == null) {
                        if (yVar.f37568j == null) {
                            return;
                        }
                        throw new IllegalArgumentException(str + ".priorResponse != null");
                    }
                    throw new IllegalArgumentException(str + ".cacheResponse != null");
                }
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            throw new IllegalArgumentException(str + ".body != null");
        }

        public a a(long j10) {
            this.f37583l = j10;
            return this;
        }

        public y a() {
            if (this.f37572a != null) {
                if (this.f37573b != null) {
                    if (this.f37574c >= 0) {
                        if (this.f37575d != null) {
                            return new y(this);
                        }
                        throw new IllegalStateException("message == null");
                    }
                    throw new IllegalStateException("code < 0: " + this.f37574c);
                }
                throw new IllegalStateException("protocol == null");
            }
            throw new IllegalStateException("request == null");
        }
    }

    y(a aVar) {
        this.f37559a = aVar.f37572a;
        this.f37560b = aVar.f37573b;
        this.f37561c = aVar.f37574c;
        this.f37562d = aVar.f37575d;
        this.f37563e = aVar.f37576e;
        this.f37564f = aVar.f37577f.a();
        this.f37565g = aVar.f37578g;
        this.f37566h = aVar.f37579h;
        this.f37567i = aVar.f37580i;
        this.f37568j = aVar.f37581j;
        this.f37569k = aVar.f37582k;
        this.f37570l = aVar.f37583l;
    }

    public String a(String str, String str2) {
        String strB = this.f37564f.b(str);
        return strB != null ? strB : str2;
    }

    public String b(String str) {
        return a(str, null);
    }

    @Override
    public void close() {
        z zVar = this.f37565g;
        if (zVar == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        zVar.close();
    }

    public z d() {
        return this.f37565g;
    }

    public c h() {
        c cVar = this.f37571m;
        if (cVar != null) {
            return cVar;
        }
        c cVarA = c.a(this.f37564f);
        this.f37571m = cVarA;
        return cVarA;
    }

    public int k() {
        return this.f37561c;
    }

    public o l() {
        return this.f37563e;
    }

    public p m() {
        return this.f37564f;
    }

    public boolean n() {
        int i10 = this.f37561c;
        return i10 >= 200 && i10 < 300;
    }

    public a o() {
        return new a(this);
    }

    public y p() {
        return this.f37568j;
    }

    public long q() {
        return this.f37570l;
    }

    public w r() {
        return this.f37559a;
    }

    public long s() {
        return this.f37569k;
    }

    public String toString() {
        return "Response{protocol=" + this.f37560b + ", code=" + this.f37561c + ", message=" + this.f37562d + ", url=" + this.f37559a.g() + '}';
    }
}
