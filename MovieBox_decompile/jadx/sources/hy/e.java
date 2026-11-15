package hy;

abstract class e extends h {

    static class a extends e {
        a() {
        }

        @Override
        String b() {
            return "UTF-16BE";
        }

        @Override
        hy.b c(hy.a aVar) {
            byte[] bArr = aVar.f61519e;
            int iMin = Math.min(bArr.length, 30);
            int iD = 10;
            for (int i10 = 0; i10 < iMin - 1; i10 += 2) {
                int iE = e.e(bArr[i10], bArr[i10 + 1]);
                if (i10 == 0 && iE == 65279) {
                    iD = 100;
                    break;
                }
                iD = e.d(iE, iD);
                if (iD == 0 || iD == 100) {
                    break;
                }
            }
            int i11 = (iMin >= 4 || iD >= 100) ? iD : 0;
            if (i11 > 0) {
                return new hy.b(aVar, this, i11);
            }
            return null;
        }
    }

    static class b extends e {
        b() {
        }

        @Override
        String b() {
            return "UTF-16LE";
        }

        @Override
        hy.b c(hy.a aVar) {
            byte[] bArr = aVar.f61519e;
            int iMin = Math.min(bArr.length, 30);
            int iD = 10;
            for (int i10 = 0; i10 < iMin - 1; i10 += 2) {
                int iE = e.e(bArr[i10 + 1], bArr[i10]);
                if (i10 == 0 && iE == 65279) {
                    iD = 100;
                    break;
                }
                iD = e.d(iE, iD);
                if (iD == 0 || iD == 100) {
                    break;
                }
            }
            int i11 = (iMin >= 4 || iD >= 100) ? iD : 0;
            if (i11 > 0) {
                return new hy.b(aVar, this, i11);
            }
            return null;
        }
    }

    static abstract class c extends e {
        c() {
        }

        /* JADX WARN: Code duplicated, block: B:26:0x0042  */
        /* JADX WARN: Code duplicated, block: B:31:0x004c  */
        @Override
        hy.b c(hy.a aVar) {
            byte[] bArr = aVar.f61519e;
            int i10 = (aVar.f61520f / 4) * 4;
            if (i10 == 0) {
                return null;
            }
            int i11 = 0;
            boolean z10 = f(bArr, 0) == 65279;
            int i12 = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < i10; i14 += 4) {
                int iF = f(bArr, i14);
                if (iF < 0 || iF >= 1114111 || (iF >= 55296 && iF <= 57343)) {
                    i12++;
                } else {
                    i13++;
                }
            }
            if (z10 && i12 == 0) {
                i11 = 100;
            } else if (z10 && i13 > i12 * 10) {
                i11 = 80;
            } else if (i13 > 3 && i12 == 0) {
                i11 = 100;
            } else if (i13 > 0 && i12 == 0) {
                i11 = 80;
            } else if (i13 > i12 * 10) {
                i11 = 25;
            }
            if (i11 == 0) {
                return null;
            }
            return new hy.b(aVar, this, i11);
        }

        abstract int f(byte[] bArr, int i10);
    }

    static class d extends c {
        d() {
        }

        @Override
        String b() {
            return "UTF-32BE";
        }

        @Override
        int f(byte[] bArr, int i10) {
            return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
        }
    }

    static class C0749e extends c {
        C0749e() {
        }

        @Override
        String b() {
            return "UTF-32LE";
        }

        @Override
        int f(byte[] bArr, int i10) {
            return (bArr[i10] & 255) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 1] & 255) << 8);
        }
    }

    e() {
    }

    static int d(int i10, int i11) {
        if (i10 == 0) {
            i11 -= 10;
        } else if ((i10 >= 32 && i10 <= 255) || i10 == 10) {
            i11 += 10;
        }
        if (i11 < 0) {
            return 0;
        }
        if (i11 > 100) {
            return 100;
        }
        return i11;
    }

    static int e(byte b10, byte b11) {
        return ((b10 & 255) << 8) | (b11 & 255);
    }
}
