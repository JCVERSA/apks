package com.yandex.mobile.ads.impl;

public final class w {
    private static final int[] a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    public static final class a {
        public final int a;
        public final int b;
        public final int c;

        private a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    public static void a(int i, ag1 ag1Var) {
        ag1Var.c(7);
        byte[] bArrC = ag1Var.c();
        bArrC[0] = -84;
        bArrC[1] = 64;
        bArrC[2] = -1;
        bArrC[3] = -1;
        bArrC[4] = (byte) ((i >> 16) & 255);
        bArrC[5] = (byte) ((i >> 8) & 255);
        bArrC[6] = (byte) (i & 255);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x008b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0090  */
    /* JADX WARN: Code duplicated, block: B:48:0x0092  */
    /* JADX WARN: Code duplicated, block: B:49:0x0095  */
    public static a a(zf1 zf1Var) {
        int i;
        int i2;
        int iB = zf1Var.b(16);
        int iB2 = zf1Var.b(16);
        if (iB2 == 65535) {
            iB2 = zf1Var.b(24);
            i = 7;
        } else {
            i = 4;
        }
        int i3 = iB2 + i;
        if (iB == 44097) {
            i3 += 2;
        }
        if (zf1Var.b(2) == 3) {
            do {
                zf1Var.b(2);
            } while (zf1Var.f());
        }
        int iB3 = zf1Var.b(10);
        if (zf1Var.f() && zf1Var.b(3) > 0) {
            zf1Var.d(2);
        }
        int i4 = zf1Var.f() ? 48000 : 44100;
        int iB4 = zf1Var.b(4);
        if (i4 == 44100 && iB4 == 13) {
            i2 = a[iB4];
        } else if (i4 == 48000) {
            int[] iArr = a;
            if (iB4 < 14) {
                int i5 = iArr[iB4];
                int i6 = iB3 % 5;
                if (i6 == 1) {
                    if (iB4 != 3 || iB4 == 8) {
                        i2 = i5 + 1;
                    } else {
                        i2 = i5;
                    }
                } else if (i6 != 2) {
                    if (i6 == 3) {
                        if (iB4 != 3) {
                        }
                        i2 = i5 + 1;
                    } else if (i6 == 4 && (iB4 == 3 || iB4 == 8 || iB4 == 11)) {
                        i2 = i5 + 1;
                    } else {
                        i2 = i5;
                    }
                } else if (iB4 == 8 || iB4 == 11) {
                    i2 = i5 + 1;
                } else {
                    i2 = i5;
                }
            } else {
                i2 = 0;
            }
        } else {
            i2 = 0;
        }
        return new a(i4, i3, i2);
    }
}
