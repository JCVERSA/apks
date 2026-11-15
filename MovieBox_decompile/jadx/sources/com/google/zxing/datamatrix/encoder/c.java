package com.google.zxing.datamatrix.encoder;

class c implements e {
    c() {
    }

    private int b(f fVar, StringBuilder sb2, StringBuilder sb3, int i10) {
        int length = sb2.length();
        sb2.delete(length - i10, length);
        fVar.f32070d--;
        int iC = c(fVar.c(), sb3);
        fVar.k();
        return iC;
    }

    private static String e(CharSequence charSequence) {
        int iCharAt = (charSequence.charAt(0) * 1600) + (charSequence.charAt(1) * '(') + charSequence.charAt(2) + 1;
        return new String(new char[]{(char) (iCharAt / 256), (char) (iCharAt % 256)});
    }

    static void h(f fVar, StringBuilder sb2) {
        fVar.s(e(sb2));
        sb2.delete(0, 3);
    }

    @Override
    public void a(f fVar) {
        StringBuilder sb2 = new StringBuilder();
        while (fVar.i()) {
            char c10 = fVar.c();
            fVar.f32070d++;
            int iC = c(c10, sb2);
            int iA = fVar.a() + ((sb2.length() / 3) * 2);
            fVar.q(iA);
            int iA2 = fVar.g().a() - iA;
            if (!fVar.i()) {
                StringBuilder sb3 = new StringBuilder();
                if (sb2.length() % 3 == 2 && iA2 != 2) {
                    iC = b(fVar, sb2, sb3, iC);
                }
                while (sb2.length() % 3 == 1 && (iC > 3 || iA2 != 1)) {
                    iC = b(fVar, sb2, sb3, iC);
                }
                break;
            }
            if (sb2.length() % 3 == 0 && g.n(fVar.d(), fVar.f32070d, f()) != f()) {
                fVar.o(0);
                break;
            }
        }
        g(fVar, sb2);
    }

    int c(char c10, StringBuilder sb2) {
        if (c10 == ' ') {
            sb2.append((char) 3);
            return 1;
        }
        if (c10 >= '0' && c10 <= '9') {
            sb2.append((char) (c10 - ','));
            return 1;
        }
        if (c10 >= 'A' && c10 <= 'Z') {
            sb2.append((char) (c10 - '3'));
            return 1;
        }
        if (c10 < ' ') {
            sb2.append((char) 0);
            sb2.append(c10);
            return 2;
        }
        if (c10 <= '/') {
            sb2.append((char) 1);
            sb2.append((char) (c10 - '!'));
            return 2;
        }
        if (c10 <= '@') {
            sb2.append((char) 1);
            sb2.append((char) (c10 - '+'));
            return 2;
        }
        if (c10 <= '_') {
            sb2.append((char) 1);
            sb2.append((char) (c10 - 'E'));
            return 2;
        }
        if (c10 > 127) {
            sb2.append("\u0001\u001e");
            return c((char) (c10 - 128), sb2) + 2;
        }
        sb2.append((char) 2);
        sb2.append((char) (c10 - '`'));
        return 2;
    }

    void d(f fVar) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = fVar.f32070d;
        int length = 0;
        int iC = 0;
        while (fVar.i()) {
            char c10 = fVar.c();
            fVar.f32070d++;
            iC = c(c10, sb2);
            if (sb2.length() % 3 == 0) {
                i10 = fVar.f32070d;
                length = sb2.length();
            }
        }
        if (length != sb2.length()) {
            int iA = fVar.a() + ((sb2.length() / 3) * 2) + 1;
            fVar.q(iA);
            int iA2 = fVar.g().a() - iA;
            int length2 = sb2.length() % 3;
            if ((length2 == 2 && iA2 != 2) || (length2 == 1 && (iC > 3 || iA2 != 1))) {
                sb2.setLength(length);
                fVar.f32070d = i10;
            }
        }
        if (sb2.length() > 0) {
            fVar.r((char) 230);
        }
        g(fVar, sb2);
    }

    public int f() {
        return 1;
    }

    void g(f fVar, StringBuilder sb2) {
        int length = (sb2.length() / 3) * 2;
        int length2 = sb2.length() % 3;
        int iA = fVar.a() + length;
        fVar.q(iA);
        int iA2 = fVar.g().a() - iA;
        if (length2 == 2) {
            sb2.append((char) 0);
            while (sb2.length() >= 3) {
                h(fVar, sb2);
            }
            if (fVar.i()) {
                fVar.r((char) 254);
            }
        } else if (iA2 == 1 && length2 == 1) {
            while (sb2.length() >= 3) {
                h(fVar, sb2);
            }
            if (fVar.i()) {
                fVar.r((char) 254);
            }
            fVar.f32070d--;
        } else {
            if (length2 != 0) {
                throw new IllegalStateException("Unexpected case. Please report!");
            }
            while (sb2.length() >= 3) {
                h(fVar, sb2);
            }
            if (iA2 > 0 || fVar.i()) {
                fVar.r((char) 254);
            }
        }
        fVar.o(0);
    }
}
