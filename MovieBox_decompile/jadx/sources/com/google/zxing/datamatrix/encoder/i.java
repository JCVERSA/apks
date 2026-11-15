package com.google.zxing.datamatrix.encoder;

final class i extends c {
    i() {
    }

    @Override
    public void a(f fVar) {
        StringBuilder sb2 = new StringBuilder();
        while (fVar.i()) {
            char c10 = fVar.c();
            fVar.f32070d++;
            c(c10, sb2);
            if (sb2.length() % 3 == 0) {
                c.h(fVar, sb2);
                if (g.n(fVar.d(), fVar.f32070d, f()) != f()) {
                    fVar.o(0);
                    break;
                }
            }
        }
        g(fVar, sb2);
    }

    @Override
    int c(char c10, StringBuilder sb2) {
        if (c10 == '\r') {
            sb2.append((char) 0);
        } else if (c10 == ' ') {
            sb2.append((char) 3);
        } else if (c10 == '*') {
            sb2.append((char) 1);
        } else if (c10 == '>') {
            sb2.append((char) 2);
        } else if (c10 >= '0' && c10 <= '9') {
            sb2.append((char) (c10 - ','));
        } else if (c10 < 'A' || c10 > 'Z') {
            g.e(c10);
        } else {
            sb2.append((char) (c10 - '3'));
        }
        return 1;
    }

    @Override
    public int f() {
        return 3;
    }

    @Override
    void g(f fVar, StringBuilder sb2) {
        fVar.p();
        int iA = fVar.g().a() - fVar.a();
        fVar.f32070d -= sb2.length();
        if (fVar.f() > 1 || iA > 1 || fVar.f() != iA) {
            fVar.r((char) 254);
        }
        if (fVar.e() < 0) {
            fVar.o(0);
        }
    }
}
