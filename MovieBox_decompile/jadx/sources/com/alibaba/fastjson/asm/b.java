package com.alibaba.fastjson.asm;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okio.Utf8;

public class b {

    public final byte[] f17456a;

    private final int[] f17457b;

    private final String[] f17458c;

    private final int f17459d;

    public final int f17460e;

    private boolean f17461f;

    public b(InputStream inputStream, boolean z10) throws IOException {
        int i10;
        this.f17461f = z10;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i11 = inputStream.read(bArr);
            i10 = 0;
            if (i11 == -1) {
                break;
            } else if (i11 > 0) {
                byteArrayOutputStream.write(bArr, 0, i11);
            }
        }
        inputStream.close();
        this.f17456a = byteArrayOutputStream.toByteArray();
        int[] iArr = new int[g(8)];
        this.f17457b = iArr;
        int length = iArr.length;
        this.f17458c = new String[length];
        int i12 = 10;
        int i13 = 1;
        while (i13 < length) {
            int i14 = i12 + 1;
            this.f17457b[i13] = i14;
            byte b10 = this.f17456a[i12];
            int iG = 3;
            if (b10 == 1) {
                iG = 3 + g(i14);
                if (iG > i10) {
                    i10 = iG;
                }
            } else if (b10 != 15) {
                iG = 5;
                if (b10 != 18 && b10 != 3 && b10 != 4) {
                    if (b10 != 5 && b10 != 6) {
                        switch (b10) {
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                                break;
                            default:
                                continue;
                        }
                    } else {
                        i13++;
                        iG = 9;
                    }
                }
            } else {
                iG = 4;
            }
            i12 += iG;
            i13++;
        }
        this.f17459d = i10;
        this.f17460e = i12;
    }

    private int b() {
        int i10 = this.f17460e;
        int iG = i10 + 8 + (g(i10 + 6) * 2);
        for (int iG2 = g(iG); iG2 > 0; iG2--) {
            for (int iG3 = g(iG + 8); iG3 > 0; iG3--) {
                iG += c(iG + 12) + 6;
            }
            iG += 8;
        }
        int iC = iG + 2;
        for (int iG4 = g(iC); iG4 > 0; iG4--) {
            for (int iG5 = g(iC + 8); iG5 > 0; iG5--) {
                iC += c(iC + 12) + 6;
            }
            iC += 8;
        }
        return iC + 2;
    }

    private int c(int i10) {
        byte[] bArr = this.f17456a;
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    private int d(TypeCollector typeCollector, char[] cArr, int i10) {
        int iG = g(i10);
        String strF = f(i10 + 2, cArr);
        String strF2 = f(i10 + 4, cArr);
        int i11 = i10 + 8;
        int i12 = 0;
        int i13 = 0;
        for (int iG2 = g(i10 + 6); iG2 > 0; iG2--) {
            String strF3 = f(i11, cArr);
            int iC = c(i11 + 2);
            int i14 = i11 + 6;
            if (strF3.equals("Code")) {
                i13 = i14;
            }
            i11 = i14 + iC;
        }
        g gVarE = typeCollector.e(iG, strF, strF2);
        if (gVarE != null && i13 != 0) {
            int iC2 = i13 + 8 + c(i13 + 4);
            int i15 = iC2 + 2;
            for (int iG3 = g(iC2); iG3 > 0; iG3--) {
                i15 += 8;
            }
            int iC3 = i15 + 2;
            int i16 = 0;
            for (int iG4 = g(i15); iG4 > 0; iG4--) {
                String strF4 = f(iC3, cArr);
                if (strF4.equals("LocalVariableTable")) {
                    i12 = iC3 + 6;
                } else if (strF4.equals("LocalVariableTypeTable")) {
                    i16 = iC3 + 6;
                }
                iC3 += c(iC3 + 2) + 6;
            }
            if (i12 != 0) {
                if (i16 != 0) {
                    int iG5 = g(i16) * 3;
                    int i17 = i16 + 2;
                    int[] iArr = new int[iG5];
                    while (iG5 > 0) {
                        iArr[iG5 - 1] = i17 + 6;
                        iArr[iG5 - 2] = g(i17 + 8);
                        iG5 -= 3;
                        iArr[iG5] = g(i17);
                        i17 += 10;
                    }
                }
                int i18 = i12 + 2;
                for (int iG6 = g(i12); iG6 > 0; iG6--) {
                    gVarE.b(f(i18 + 4, cArr), g(i18 + 8));
                    i18 += 10;
                }
            }
        }
        return i11;
    }

    private String e(int i10, int i11, char[] cArr) {
        int i12;
        int i13 = i11 + i10;
        byte[] bArr = this.f17456a;
        int i14 = 0;
        char c10 = 0;
        char c11 = 0;
        while (i10 < i13) {
            int i15 = i10 + 1;
            byte b10 = bArr[i10];
            if (c10 == 0) {
                int i16 = b10 & 255;
                if (i16 < 128) {
                    cArr[i14] = (char) i16;
                    i14++;
                } else if (i16 >= 224 || i16 <= 191) {
                    c11 = (char) (b10 & 15);
                    c10 = 2;
                } else {
                    i12 = b10 & 31;
                    c11 = (char) i12;
                    c10 = 1;
                }
            } else if (c10 == 1) {
                cArr[i14] = (char) ((b10 & Utf8.REPLACEMENT_BYTE) | (c11 << 6));
                i14++;
                c10 = 0;
            } else if (c10 == 2) {
                i12 = (b10 & Utf8.REPLACEMENT_BYTE) | (c11 << 6);
                c11 = (char) i12;
                c10 = 1;
            }
            i10 = i15;
        }
        return new String(cArr, 0, i14);
    }

    private String f(int i10, char[] cArr) {
        int iG = g(i10);
        String[] strArr = this.f17458c;
        String str = strArr[iG];
        if (str != null) {
            return str;
        }
        int i11 = this.f17457b[iG];
        String strE = e(i11 + 2, g(i11), cArr);
        strArr[iG] = strE;
        return strE;
    }

    private int g(int i10) {
        byte[] bArr = this.f17456a;
        return (bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8);
    }

    public void a(TypeCollector typeCollector) {
        int i10;
        char[] cArr = new char[this.f17459d];
        if (!this.f17461f) {
            i10 = 0;
            break;
        }
        int iB = b();
        int iG = g(iB);
        while (true) {
            if (iG <= 0) {
                i10 = 0;
                break;
            } else if ("RuntimeVisibleAnnotations".equals(f(iB + 2, cArr))) {
                i10 = iB + 8;
                break;
            } else {
                iB += c(iB + 4) + 6;
                iG--;
            }
        }
        int i11 = this.f17460e;
        int iG2 = g(i11 + 6);
        int i12 = i11 + 8;
        for (int i13 = 0; i13 < iG2; i13++) {
            i12 += 2;
        }
        int iC = i12 + 2;
        int iC2 = iC;
        for (int iG3 = g(i12); iG3 > 0; iG3--) {
            iC2 += 8;
            for (int iG4 = g(iC2 + 6); iG4 > 0; iG4--) {
                iC2 += c(iC2 + 2) + 6;
            }
        }
        int iC3 = iC2 + 2;
        for (int iG5 = g(iC2); iG5 > 0; iG5--) {
            iC3 += 8;
            for (int iG6 = g(iC3 + 6); iG6 > 0; iG6--) {
                iC3 += c(iC3 + 2) + 6;
            }
        }
        int iC4 = iC3 + 2;
        for (int iG7 = g(iC3); iG7 > 0; iG7--) {
            iC4 += c(iC4 + 2) + 6;
        }
        if (i10 != 0) {
            int i14 = i10 + 2;
            for (int iG8 = g(i10); iG8 > 0; iG8--) {
                typeCollector.d(f(i14, cArr));
            }
        }
        for (int iG9 = g(i12); iG9 > 0; iG9--) {
            iC += 8;
            for (int iG10 = g(iC + 6); iG10 > 0; iG10--) {
                iC += c(iC + 2) + 6;
            }
        }
        int iD = iC + 2;
        for (int iG11 = g(iC); iG11 > 0; iG11--) {
            iD = d(typeCollector, cArr, iD);
        }
    }
}
