package defpackage;

import com.google.android.gms.internal.ads.zzfww;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

public abstract class bde {
    public static final zce a = new Object() {
    };

    /* JADX WARN: Code duplicated, block: B:30:0x008c  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ab A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:52:0x0104  */
    /* JADX WARN: Code duplicated, block: B:58:0x010e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00fe A[SYNTHETIC] */
    public static final hre a(byte[] bArr, int i, zce zceVar, ice iceVar) {
        boolean z;
        ade adeVar;
        int i2;
        int iE;
        cde cdeVarL;
        ArrayList arrayList = new ArrayList();
        u4h u4hVar = new u4h(bArr, i);
        boolean z2 = false;
        if (u4hVar.u() < 10) {
            zrg.f("Id3Decoder", "Data too short to be an ID3 tag");
        } else {
            int I = u4hVar.I();
            if (I == 4801587) {
                int iG = u4hVar.G();
                u4hVar.m(1);
                int iG2 = u4hVar.G();
                int iF = u4hVar.F();
                if (iG != 2) {
                    if (iG == 3) {
                        if ((iG2 & 64) != 0) {
                            int iA = u4hVar.A();
                            u4hVar.m(iA);
                            iF -= iA + 4;
                        }
                    } else if (iG == 4) {
                        if ((iG2 & 64) != 0) {
                            int iF2 = u4hVar.F();
                            u4hVar.m(iF2 - 4);
                            iF -= iF2;
                        }
                        if ((iG2 & 16) != 0) {
                            iF -= 10;
                        }
                    } else {
                        zrg.f("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + iG);
                    }
                    if (iG < 4) {
                        z = false;
                    } else {
                        z = false;
                    }
                    adeVar = new ade(iG, z, iF);
                } else if ((iG2 & 64) != 0) {
                    zrg.f("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                } else {
                    if (iG < 4 || (iG2 & 128) == 0) {
                        z = false;
                    } else {
                        z = true;
                    }
                    adeVar = new ade(iG, z, iF);
                }
                if (adeVar == null) {
                    return null;
                }
                int iW = u4hVar.w();
                i2 = adeVar.a == 2 ? 6 : 10;
                iE = adeVar.c;
                if (adeVar.b) {
                    iE = e(u4hVar, adeVar.c);
                }
                u4hVar.k(iW + iE);
                if (!j(u4hVar, adeVar.a, i2, false)) {
                    if (adeVar.a == 4 || !j(u4hVar, 4, i2, true)) {
                        zrg.f("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + adeVar.a);
                        return null;
                    }
                    z2 = true;
                }
                while (u4hVar.u() >= i2) {
                    cdeVarL = l(adeVar.a, u4hVar, z2, i2, zceVar);
                    if (cdeVarL != null) {
                        arrayList.add(cdeVarL);
                    }
                }
                return new hre(arrayList);
            }
            zrg.f("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x".concat(String.format("%06X", Integer.valueOf(I))));
        }
        adeVar = null;
        if (adeVar == null) {
            return null;
        }
        int iW2 = u4hVar.w();
        if (adeVar.a == 2) {
        }
        iE = adeVar.c;
        if (adeVar.b) {
            iE = e(u4hVar, adeVar.c);
        }
        u4hVar.k(iW2 + iE);
        if (!j(u4hVar, adeVar.a, i2, false)) {
            if (adeVar.a == 4) {
            }
            zrg.f("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + adeVar.a);
            return null;
        }
        while (u4hVar.u() >= i2) {
            cdeVarL = l(adeVar.a, u4hVar, z2, i2, zceVar);
            if (cdeVarL != null) {
                arrayList.add(cdeVarL);
            }
        }
        return new hre(arrayList);
    }

    public static int b(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    public static int c(byte[] bArr, int i, int i2) {
        int iD = d(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iD;
        }
        while (true) {
            int length = bArr.length;
            if (iD >= length - 1) {
                return length;
            }
            int i3 = iD + 1;
            if ((iD - i) % 2 == 0 && bArr[i3] == 0) {
                return iD;
            }
            iD = d(bArr, i3);
        }
    }

    public static int d(byte[] bArr, int i) {
        while (true) {
            int length = bArr.length;
            if (i >= length) {
                return length;
            }
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
    }

    public static int e(u4h u4hVar, int i) {
        byte[] bArrN = u4hVar.n();
        int iW = u4hVar.w();
        int i2 = iW;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= iW + i) {
                return i;
            }
            if ((bArrN[i2] & 255) == 255 && bArrN[i3] == 0) {
                System.arraycopy(bArrN, i2 + 2, bArrN, i3, (i - (i2 - iW)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    public static zzfww f(byte[] bArr, int i, int i2) {
        if (i2 >= bArr.length) {
            return zzfww.zzo("");
        }
        int i3 = zzfww.zzd;
        l4i l4iVar = new l4i();
        int iC = c(bArr, i2, i);
        while (i2 < iC) {
            l4iVar.g(new String(bArr, i2, iC - i2, i(i)));
            i2 = b(i) + iC;
            iC = c(bArr, i2, i);
        }
        zzfww zzfwwVarJ = l4iVar.j();
        return zzfwwVarJ.isEmpty() ? zzfww.zzo("") : zzfwwVarJ;
    }

    public static String g(byte[] bArr, int i, int i2, Charset charset) {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, charset);
    }

    public static String h(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static Charset i(int i) {
        if (i == 1) {
            return StandardCharsets.UTF_16;
        }
        if (i != 2) {
            return i != 3 ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_8;
        }
        return StandardCharsets.UTF_16BE;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006d A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:3:0x0008, B:7:0x0015, B:20:0x0040, B:23:0x004b, B:25:0x006d, B:29:0x0073, B:41:0x008f, B:42:0x0091, B:45:0x0097, B:48:0x00a1, B:31:0x007d, B:35:0x0084, B:10:0x0025), top: B:54:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0071  */
    /* JADX WARN: Code duplicated, block: B:28:0x0072  */
    /* JADX WARN: Code duplicated, block: B:30:0x007b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x007d A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:3:0x0008, B:7:0x0015, B:20:0x0040, B:23:0x004b, B:25:0x006d, B:29:0x0073, B:41:0x008f, B:42:0x0091, B:45:0x0097, B:48:0x00a1, B:31:0x007d, B:35:0x0084, B:10:0x0025), top: B:54:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0081  */
    /* JADX WARN: Code duplicated, block: B:34:0x0083  */
    /* JADX WARN: Code duplicated, block: B:37:0x0088  */
    /* JADX WARN: Code duplicated, block: B:38:0x0089  */
    /* JADX WARN: Code duplicated, block: B:39:0x008b  */
    /* JADX WARN: Code duplicated, block: B:41:0x008f A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:3:0x0008, B:7:0x0015, B:20:0x0040, B:23:0x004b, B:25:0x006d, B:29:0x0073, B:41:0x008f, B:42:0x0091, B:45:0x0097, B:48:0x00a1, B:31:0x007d, B:35:0x0084, B:10:0x0025), top: B:54:0x0008 }] */
    public static boolean j(u4h u4hVar, int i, int i2, boolean z) {
        boolean z2;
        int I;
        long jI;
        int iK;
        int i3;
        int iW = u4hVar.w();
        while (true) {
            try {
                z2 = true;
                z2 = true;
                int i4 = 1;
                int i5 = 1;
                if (u4hVar.u() >= i2) {
                    if (i >= 3) {
                        I = u4hVar.A();
                        jI = u4hVar.O();
                        iK = u4hVar.K();
                    } else {
                        I = u4hVar.I();
                        jI = u4hVar.I();
                        iK = 0;
                    }
                    if (I != 0 || jI != 0 || iK != 0) {
                        if (i != 4 || z) {
                            if (i == 4) {
                                if ((iK & 64) != 0) {
                                    i4 = 0;
                                }
                                int i6 = i4;
                                i5 = iK & 1;
                                i3 = i6;
                            } else if (i == 3) {
                                if ((iK & 32) != 0) {
                                    i3 = 1;
                                } else {
                                    i3 = 0;
                                }
                                if ((iK & 128) != 0) {
                                    i5 = 0;
                                }
                            } else {
                                i3 = 0;
                                i5 = 0;
                            }
                            if (i5 != 0) {
                                i3 += 4;
                            }
                            if (jI >= i3 && u4hVar.u() >= jI) {
                                u4hVar.m((int) jI);
                            }
                        } else if ((8421504 & jI) == 0) {
                            long j = ((jI >> 16) & 255) << 14;
                            jI = ((jI >> 24) << 21) | j | (jI & 255) | (((jI >> 8) & 255) << 7);
                            if (i == 4) {
                                if ((iK & 64) != 0) {
                                    i4 = 0;
                                }
                                int i7 = i4;
                                i5 = iK & 1;
                                i3 = i7;
                            } else if (i == 3) {
                                if ((iK & 32) != 0) {
                                    i3 = 1;
                                } else {
                                    i3 = 0;
                                }
                                if ((iK & 128) != 0) {
                                    i5 = 0;
                                }
                            } else {
                                i3 = 0;
                                i5 = 0;
                            }
                            if (i5 != 0) {
                                i3 += 4;
                            }
                            if (jI >= i3) {
                                u4hVar.m((int) jI);
                            }
                        }
                        z2 = false;
                        break;
                    }
                    break;
                }
                break;
            } catch (Throwable th) {
                u4hVar.l(iW);
                throw th;
            }
        }
        u4hVar.l(iW);
        return z2;
    }

    public static byte[] k(byte[] bArr, int i, int i2) {
        return i2 <= i ? kfh.c : Arrays.copyOfRange(bArr, i, i2);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 15081. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public static defpackage.cde l(int r35, defpackage.u4h r36, boolean r37, int r38, defpackage.zce r39) {
        /*
            Method dump skipped, instruction units count: 1508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bde.l(int, u4h, boolean, int, zce):cde");
    }
}
