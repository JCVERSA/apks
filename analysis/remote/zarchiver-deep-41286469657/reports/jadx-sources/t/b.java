package t;

import java.io.IOException;
import java.io.InputStream;
import u.f;
import u.i;
import u.j;
import u.k;

public final class b {

    public int f2064a;

    public boolean f2065b;

    public boolean f2066c;

    public boolean f2067d;

    public byte f2069f;

    public String f2070g;

    public boolean f2068e = true;

    public f f2072i = null;

    public final u.b[] f2071h = new u.b[3];

    public b() {
        c();
    }

    /* JADX WARN: Code duplicated, block: B:111:0x00e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    /* JADX WARN: Code duplicated, block: B:19:0x003a  */
    /* JADX WARN: Code duplicated, block: B:37:0x0075  */
    /* JADX WARN: Code duplicated, block: B:39:0x007b  */
    /* JADX WARN: Code duplicated, block: B:48:0x008d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0095 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:53:0x0097  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ea A[LOOP:1: B:76:0x00d7->B:80:0x00ea, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:75:0x00d5, please report this as an issue */
    public static String a(InputStream inputStream) throws IOException {
        boolean z2;
        int i2;
        int i3;
        int i4;
        int i5;
        byte b2;
        int i6;
        String strB;
        byte[] bArr = new byte[4096];
        b bVar = new b();
        int i7 = inputStream.read(bArr);
        u.b[] bVarArr = bVar.f2071h;
        if (i7 > 0 && !(z2 = bVar.f2065b) && !z2) {
            if (i7 > 0) {
                bVar.f2067d = true;
            }
            if (bVar.f2066c) {
                bVar.f2066c = false;
                if (i7 <= 3 || (strB = b(bArr)) == null) {
                    i2 = 0 + i7;
                    for (i3 = 0; i3 < i2; i3++) {
                        b2 = bArr[i3];
                        i6 = b2 & 255;
                        if ((i6 & 128) != 0 || i6 == 160) {
                            if (bVar.f2064a == 1 && (i6 == 27 || (i6 == 123 && bVar.f2069f == 126))) {
                                bVar.f2064a = 2;
                            }
                            if (bVar.f2064a == 1 && bVar.f2068e) {
                                bVar.f2068e = (i6 < 32 && i6 <= 126) || i6 == 10 || i6 == 13 || i6 == 9;
                            }
                            bVar.f2069f = b2;
                        } else if (bVar.f2064a != 3) {
                            bVar.f2064a = 3;
                            if (bVar.f2072i != null) {
                                bVar.f2072i = null;
                            }
                            if (bVarArr[0] == null) {
                                bVarArr[0] = new j();
                            }
                            if (bVarArr[1] == null) {
                                bVarArr[1] = new k();
                            }
                            if (bVarArr[2] == null) {
                                bVarArr[2] = new i();
                            }
                        }
                    }
                    i4 = bVar.f2064a;
                    if (i4 == 2) {
                        if (bVar.f2072i == null) {
                            bVar.f2072i = new f();
                        }
                        if (bVar.f2072i.d(bArr, i7) != 2) {
                            bVar.f2072i.getClass();
                        }
                        bVar.f2065b = true;
                        bVar.f2070g = bVar.f2072i.f2130e;
                    } else if (i4 == 3) {
                        for (u.b bVar2 : bVarArr) {
                            if (bVar2.d(bArr, i7) == 2) {
                                bVar.f2065b = true;
                                bVar.f2070g = bVar2.a();
                                break;
                            }
                        }
                    }
                } else {
                    bVar.f2070g = strB;
                    bVar.f2065b = true;
                }
            } else {
                i2 = 0 + i7;
                while (i3 < i2) {
                    b2 = bArr[i3];
                    i6 = b2 & 255;
                    if ((i6 & 128) != 0) {
                        if (bVar.f2064a == 1) {
                            bVar.f2064a = 2;
                        }
                        if (bVar.f2064a == 1) {
                            bVar.f2068e = (i6 < 32 && i6 <= 126) || i6 == 10 || i6 == 13 || i6 == 9;
                        }
                        bVar.f2069f = b2;
                    } else {
                        if (bVar.f2064a == 1) {
                            bVar.f2064a = 2;
                        }
                        if (bVar.f2064a == 1) {
                            bVar.f2068e = (i6 < 32 && i6 <= 126) || i6 == 10 || i6 == 13 || i6 == 9;
                        }
                        bVar.f2069f = b2;
                    }
                }
                i4 = bVar.f2064a;
                if (i4 == 2) {
                    if (bVar.f2072i == null) {
                        bVar.f2072i = new f();
                    }
                    if (bVar.f2072i.d(bArr, i7) != 2) {
                        bVar.f2072i.getClass();
                    }
                    bVar.f2065b = true;
                    bVar.f2070g = bVar.f2072i.f2130e;
                } else if (i4 == 3) {
                    while (i5 < r7) {
                        if (bVar2.d(bArr, i7) == 2) {
                            bVar.f2065b = true;
                            bVar.f2070g = bVar2.a();
                            break;
                        }
                    }
                }
            }
        }
        if (bVar.f2067d) {
            if (bVar.f2070g != null) {
                bVar.f2065b = true;
            } else {
                int i8 = bVar.f2064a;
                if (i8 == 3) {
                    float f2 = 0.0f;
                    int i9 = 0;
                    for (int i10 = 0; i10 < bVarArr.length; i10++) {
                        float fB = bVarArr[i10].b();
                        if (fB > f2) {
                            f2 = fB;
                            i9 = i10;
                        }
                    }
                    if (f2 > 0.2f) {
                        bVar.f2070g = bVarArr[i9].a();
                    }
                } else if (i8 != 2 && i8 == 1) {
                    bVar.f2070g = a.A;
                }
            }
        }
        String str = bVar.f2070g;
        bVar.c();
        return str;
    }

    public static String b(byte[] bArr) {
        if (bArr.length <= 3) {
            return null;
        }
        int i2 = bArr[0] & 255;
        int i3 = bArr[1] & 255;
        int i4 = bArr[2] & 255;
        int i5 = bArr[3] & 255;
        if (i2 == 0) {
            if (i3 == 0 && i4 == 254 && i5 == 255) {
                return a.f2061x;
            }
            return null;
        }
        if (i2 == 239) {
            if (i3 == 187 && i4 == 191) {
                return a.f2058u;
            }
            return null;
        }
        if (i2 == 254) {
            if (!(i3 == 255 && i4 == 0 && i5 == 0) && i3 == 255) {
                return a.f2059v;
            }
            return null;
        }
        if (i2 != 255) {
            return null;
        }
        if (i3 == 254 && i4 == 0 && i5 == 0) {
            return a.f2062y;
        }
        if (i3 == 254) {
            return a.f2060w;
        }
        return null;
    }

    public final void c() {
        this.f2065b = false;
        this.f2066c = true;
        this.f2070g = null;
        this.f2067d = false;
        this.f2064a = 1;
        this.f2069f = (byte) 0;
        f fVar = this.f2072i;
        if (fVar != null) {
            fVar.e();
        }
        for (u.b bVar : this.f2071h) {
            if (bVar != null) {
                bVar.e();
            }
        }
    }
}
