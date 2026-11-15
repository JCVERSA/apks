package defpackage;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;

public final class xke implements pke {
    public final p3h a = new p3h(new byte[5], 5);
    public final SparseArray b = new SparseArray();
    public final SparseIntArray c = new SparseIntArray();
    public final int d;
    public final yke e;

    public xke(yke ykeVar, int i) {
        this.e = ykeVar;
        this.d = i;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:23:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:26:0x00dd  */
    @Override
    public final void a(u4h u4hVar) {
        fch fchVar;
        int i;
        int i2;
        if (u4hVar.G() != 2) {
            return;
        }
        yke ykeVar = this.e;
        fch fchVar2 = (fch) ykeVar.b.get(0);
        if ((u4hVar.G() & 128) != 0) {
            u4hVar.m(1);
            int iK = u4hVar.K();
            int i3 = 3;
            u4hVar.m(3);
            p3h p3hVar = this.a;
            u4hVar.g(p3hVar, 2);
            p3hVar.n(3);
            int i4 = 13;
            ykeVar.r = p3hVar.d(13);
            u4hVar.g(p3hVar, 2);
            int i5 = 4;
            p3hVar.n(4);
            int i6 = 12;
            u4hVar.m(p3hVar.d(12));
            SparseArray sparseArray = this.b;
            sparseArray.clear();
            SparseIntArray sparseIntArray = this.c;
            sparseIntArray.clear();
            int iU = u4hVar.u();
            while (iU > 0) {
                int i7 = 5;
                u4hVar.g(p3hVar, 5);
                int iD = p3hVar.d(8);
                p3hVar.n(i3);
                int iD2 = p3hVar.d(i4);
                p3hVar.n(i5);
                int iD3 = p3hVar.d(i6);
                int iW = u4hVar.w();
                int i8 = iW + iD3;
                String str = null;
                ArrayList arrayList = null;
                int i9 = -1;
                int iG = 0;
                while (u4hVar.w() < i8) {
                    int iG2 = u4hVar.G();
                    int iW2 = u4hVar.w() + u4hVar.G();
                    if (iW2 > i8) {
                        break;
                    }
                    if (iG2 == i7) {
                        long jO = u4hVar.O();
                        if (jO == 1094921523) {
                            i9 = 129;
                        } else if (jO == 1161904947) {
                            i9 = 135;
                        } else if (jO == 1094921524) {
                            i9 = 172;
                        } else if (jO == 1212503619) {
                            i2 = 36;
                            i9 = i2;
                        }
                    } else if (iG2 == 106) {
                        i9 = 129;
                    } else if (iG2 == 122) {
                        i9 = 135;
                    } else if (iG2 == 127) {
                        int iG3 = u4hVar.G();
                        if (iG3 == 21) {
                            i9 = 172;
                        } else {
                            if (iG3 == 14) {
                                i2 = 136;
                            } else if (iG3 == 33) {
                                i2 = 139;
                            }
                            i9 = i2;
                        }
                    } else if (iG2 == 123) {
                        i2 = 138;
                        i9 = i2;
                    } else if (iG2 == 10) {
                        String strTrim = u4hVar.b(3, StandardCharsets.UTF_8).trim();
                        iG = u4hVar.G();
                        str = strTrim;
                    } else if (iG2 == 89) {
                        ArrayList arrayList2 = new ArrayList();
                        while (u4hVar.w() < iW2) {
                            p3h p3hVar2 = p3hVar;
                            String strTrim2 = u4hVar.b(3, StandardCharsets.UTF_8).trim();
                            int iG4 = u4hVar.G();
                            fch fchVar3 = fchVar2;
                            byte[] bArr = new byte[4];
                            u4hVar.h(bArr, 0, 4);
                            arrayList2.add(new zke(strTrim2, iG4, bArr));
                            fchVar2 = fchVar3;
                            p3hVar = p3hVar2;
                            iK = iK;
                        }
                        fchVar2 = fchVar2;
                        iK = iK;
                        p3hVar = p3hVar;
                        arrayList = arrayList2;
                        i9 = 89;
                    } else {
                        fchVar2 = fchVar2;
                        iK = iK;
                        p3hVar = p3hVar;
                        if (iG2 == 111) {
                            i9 = 257;
                        }
                    }
                    u4hVar.m(iW2 - u4hVar.w());
                    fchVar2 = fchVar2;
                    p3hVar = p3hVar;
                    iK = iK;
                    i7 = 5;
                }
                fch fchVar4 = fchVar2;
                int i10 = iK;
                p3h p3hVar3 = p3hVar;
                u4hVar.l(i8);
                ale aleVar = new ale(i9, str, iG, arrayList, Arrays.copyOfRange(u4hVar.n(), iW, i8));
                if (iD == 6 || iD == 5) {
                    iD = aleVar.a;
                }
                iU -= iD3 + 5;
                if (!ykeVar.h.get(iD2)) {
                    dle dleVarA = ykeVar.e.a(iD, aleVar);
                    sparseIntArray.put(iD2, iD2);
                    sparseArray.put(iD2, dleVarA);
                }
                i5 = 4;
                fchVar2 = fchVar4;
                p3hVar = p3hVar3;
                iK = i10;
                i3 = 3;
                i4 = 13;
                i6 = 12;
            }
            fch fchVar5 = fchVar2;
            int i11 = iK;
            int size = sparseIntArray.size();
            int i12 = 0;
            while (i12 < size) {
                int iKeyAt = sparseIntArray.keyAt(i12);
                int iValueAt = sparseIntArray.valueAt(i12);
                ykeVar.h.put(iKeyAt, true);
                ykeVar.i.put(iValueAt, true);
                dle dleVar = (dle) sparseArray.valueAt(i12);
                if (dleVar != null) {
                    f9e f9eVar = ykeVar.l;
                    i = i11;
                    cle cleVar = new cle(i, iKeyAt, 8192);
                    fchVar = fchVar5;
                    dleVar.b(fchVar, f9eVar, cleVar);
                    ykeVar.g.put(iValueAt, dleVar);
                } else {
                    fchVar = fchVar5;
                    i = i11;
                }
                i12++;
                fchVar5 = fchVar;
                i11 = i;
            }
            ykeVar.g.remove(this.d);
            ykeVar.m = 0;
            if (ykeVar.m == 0) {
                ykeVar.l.zzG();
                ykeVar.n = true;
            }
        }
    }

    @Override
    public final void b(fch fchVar, f9e f9eVar, cle cleVar) {
    }
}
