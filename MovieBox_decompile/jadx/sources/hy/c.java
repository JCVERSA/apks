package hy;

abstract class c extends h {

    static class a extends c {

        private byte[][] f61532a = {new byte[]{27, 36, 41, 65}, new byte[]{27, 36, 41, 71}, new byte[]{27, 36, 42, 72}, new byte[]{27, 36, 41, 69}, new byte[]{27, 36, 43, 73}, new byte[]{27, 36, 43, 74}, new byte[]{27, 36, 43, 75}, new byte[]{27, 36, 43, 76}, new byte[]{27, 36, 43, 77}, new byte[]{27, 78}, new byte[]{27, 79}};

        a() {
        }

        @Override
        String b() {
            return "ISO-2022-CN";
        }

        @Override
        hy.b c(hy.a aVar) {
            int iD = d(aVar.f61515a, aVar.f61516b, this.f61532a);
            if (iD == 0) {
                return null;
            }
            return new hy.b(aVar, this, iD);
        }
    }

    static class b extends c {

        private byte[][] f61533a = {new byte[]{27, 36, 40, 67}, new byte[]{27, 36, 40, 68}, new byte[]{27, 36, 64}, new byte[]{27, 36, 65}, new byte[]{27, 36, 66}, new byte[]{27, 38, 64}, new byte[]{27, 40, 66}, new byte[]{27, 40, 72}, new byte[]{27, 40, 73}, new byte[]{27, 40, 74}, new byte[]{27, 46, 65}, new byte[]{27, 46, 70}};

        b() {
        }

        @Override
        String b() {
            return "ISO-2022-JP";
        }

        @Override
        hy.b c(hy.a aVar) {
            int iD = d(aVar.f61515a, aVar.f61516b, this.f61533a);
            if (iD == 0) {
                return null;
            }
            return new hy.b(aVar, this, iD);
        }
    }

    static class C0748c extends c {

        private byte[][] f61534a = {new byte[]{27, 36, 41, 67}};

        C0748c() {
        }

        @Override
        String b() {
            return "ISO-2022-KR";
        }

        @Override
        hy.b c(hy.a aVar) {
            int iD = d(aVar.f61515a, aVar.f61516b, this.f61534a);
            if (iD == 0) {
                return null;
            }
            return new hy.b(aVar, this, iD);
        }
    }

    c() {
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003e  */
    int d(byte[] bArr, int i10, byte[][] bArr2) {
        byte b10;
        int length = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (length < i10) {
            if (bArr[length] == 27) {
                int i14 = 0;
                while (true) {
                    if (i14 < bArr2.length) {
                        byte[] bArr3 = bArr2[i14];
                        if (i10 - length >= bArr3.length) {
                            int i15 = 1;
                            while (true) {
                                if (i15 >= bArr3.length) {
                                    i11++;
                                    length += bArr3.length - 1;
                                } else if (bArr3[i15] == bArr[length + i15]) {
                                    i15++;
                                }
                            }
                        }
                        i14++;
                    } else {
                        i12++;
                        b10 = bArr[length];
                        if (b10 != 14 || b10 == 15) {
                            i13++;
                        }
                    }
                }
            } else {
                b10 = bArr[length];
                if (b10 != 14) {
                    i13++;
                } else {
                    i13++;
                }
            }
            length++;
        }
        if (i11 == 0) {
            return 0;
        }
        int i16 = ((i11 * 100) - (i12 * 100)) / (i12 + i11);
        int i17 = i11 + i13;
        if (i17 < 5) {
            i16 -= (5 - i17) * 10;
        }
        if (i16 < 0) {
            return 0;
        }
        return i16;
    }
}
