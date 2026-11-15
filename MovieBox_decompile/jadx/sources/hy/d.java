package hy;

class d extends h {
    d() {
    }

    @Override
    String b() {
        return "UTF-8";
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0068  */
    /* JADX WARN: Code duplicated, block: B:45:0x0072  */
    @Override
    b c(a aVar) {
        int i10;
        byte[] bArr = aVar.f61519e;
        int i11 = 0;
        boolean z10 = aVar.f61520f >= 3 && (bArr[0] & 255) == 239 && (bArr[1] & 255) == 187 && (bArr[2] & 255) == 191;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < aVar.f61520f) {
            byte b10 = bArr[i12];
            if ((b10 & 128) != 0) {
                if ((b10 & 224) != 192) {
                    if ((b10 & 240) != 224) {
                        if ((b10 & 248) != 240) {
                            i13++;
                            break;
                        }
                        i10 = 3;
                    } else {
                        i10 = 2;
                    }
                } else {
                    i10 = 1;
                }
                while (true) {
                    i12++;
                    if (i12 >= aVar.f61520f) {
                        break;
                    }
                    if ((bArr[i12] & 192) != 128) {
                        i13++;
                        break;
                        break;
                    }
                    i10--;
                    if (i10 == 0) {
                        i14++;
                        break;
                    }
                }
            }
            i12++;
        }
        if (z10 && i13 == 0) {
            i11 = 100;
        } else if (z10 && i14 > i13 * 10) {
            i11 = 80;
        } else if (i14 > 3 && i13 == 0) {
            i11 = 100;
        } else if (i14 > 0 && i13 == 0) {
            i11 = 80;
        } else if (i14 == 0 && i13 == 0) {
            i11 = 15;
        } else if (i14 > i13 * 10) {
            i11 = 25;
        }
        if (i11 == 0) {
            return null;
        }
        return new b(aVar, this, i11);
    }
}
