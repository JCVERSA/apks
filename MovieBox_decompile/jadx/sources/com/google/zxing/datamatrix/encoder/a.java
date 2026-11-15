package com.google.zxing.datamatrix.encoder;

final class a implements e {
    a() {
    }

    private static char b(char c10, char c11) {
        if (g.f(c10) && g.f(c11)) {
            return (char) (((c10 - '0') * 10) + (c11 - '0') + 130);
        }
        throw new IllegalArgumentException("not digits: " + c10 + c11);
    }

    @Override
    public void a(f fVar) {
        if (g.a(fVar.d(), fVar.f32070d) >= 2) {
            fVar.r(b(fVar.d().charAt(fVar.f32070d), fVar.d().charAt(fVar.f32070d + 1)));
            fVar.f32070d += 2;
            return;
        }
        char c10 = fVar.c();
        int iN = g.n(fVar.d(), fVar.f32070d, c());
        if (iN == c()) {
            if (!g.g(c10)) {
                fVar.r((char) (c10 + 1));
                fVar.f32070d++;
                return;
            } else {
                fVar.r((char) 235);
                fVar.r((char) (c10 - 127));
                fVar.f32070d++;
                return;
            }
        }
        if (iN == 1) {
            fVar.r((char) 230);
            fVar.o(1);
            return;
        }
        if (iN == 2) {
            fVar.r((char) 239);
            fVar.o(2);
            return;
        }
        if (iN == 3) {
            fVar.r((char) 238);
            fVar.o(3);
            return;
        }
        if (iN == 4) {
            fVar.r((char) 240);
            fVar.o(4);
        } else if (iN == 5) {
            fVar.r((char) 231);
            fVar.o(5);
        } else {
            throw new IllegalStateException("Illegal mode: " + iN);
        }
    }

    public int c() {
        return 0;
    }
}
