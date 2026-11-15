package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

public final class wg1 extends uy1 {
    private final ag1 m = new ag1();
    private final ag1 n = new ag1();
    private final a o = new a();

    @Nullable
    private Inflater p;

    public static final class a {
        private final ag1 a = new ag1();
        private final int[] b = new int[256];
        private boolean c;
        private int d;
        private int e;
        private int f;
        private int g;
        private int h;
        private int i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x0095  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [int] */
    @Override
    public final n32 a(byte[] bArr, int i, boolean z) throws p32 {
        ArrayList arrayList;
        boolean z2;
        hv hvVarA;
        ag1 ag1Var;
        int iT;
        boolean z3;
        ag1 ag1Var2;
        int iD;
        int iE;
        int iW;
        ?? r3;
        this.m.a(i, bArr);
        ag1 ag1Var3 = this.m;
        if (ag1Var3.a() > 0 && ag1Var3.g() == 120) {
            if (this.p == null) {
                this.p = new Inflater();
            }
            if (f92.a(ag1Var3, this.n, this.p)) {
                ag1Var3.a(this.n.e(), this.n.c());
            }
        }
        a aVar = this.o;
        ?? r5 = 0;
        aVar.d = 0;
        aVar.e = 0;
        aVar.f = 0;
        aVar.g = 0;
        aVar.h = 0;
        aVar.i = 0;
        aVar.a.c(0);
        aVar.c = false;
        ArrayList arrayList2 = new ArrayList();
        while (this.m.a() >= 3) {
            ag1 ag1Var4 = this.m;
            a aVar2 = this.o;
            int iE2 = ag1Var4.e();
            int iT2 = ag1Var4.t();
            int iZ = ag1Var4.z();
            int iD2 = ag1Var4.d() + iZ;
            if (iD2 > iE2) {
                ag1Var4.e(iE2);
                arrayList = arrayList2;
                r3 = r5;
                hvVarA = null;
            } else {
                if (iT2 != 128) {
                    switch (iT2) {
                        case 20:
                            aVar2.getClass();
                            if (iZ % 5 != 2) {
                                arrayList = arrayList2;
                                ag1Var2 = ag1Var4;
                            } else {
                                ag1Var4.f(2);
                                Arrays.fill(aVar2.b, (int) r5);
                                int i2 = iZ / 5;
                                for (?? r7 = r5; r7 < i2; r7++) {
                                    int iT3 = ag1Var4.t();
                                    int iT4 = ag1Var4.t();
                                    int iT5 = ag1Var4.t();
                                    int iT6 = ag1Var4.t();
                                    int iT7 = ag1Var4.t();
                                    ArrayList arrayList3 = arrayList2;
                                    double d = iT4;
                                    double d2 = iT5 - 128;
                                    ag1 ag1Var5 = ag1Var4;
                                    int i3 = i2;
                                    double d3 = iT6 - 128;
                                    int[] iArr = aVar2.b;
                                    int i4 = f92.a;
                                    iArr[iT3] = Math.max(0, Math.min((int) ((d3 * 1.772d) + d), 255)) | (Math.max(0, Math.min((int) ((1.402d * d2) + d), 255)) << 16) | (iT7 << 24) | (Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 255)) << 8);
                                    arrayList2 = arrayList3;
                                    i2 = i3;
                                    ag1Var4 = ag1Var5;
                                }
                                arrayList = arrayList2;
                                ag1Var2 = ag1Var4;
                                aVar2.c = true;
                            }
                            break;
                        case 21:
                            aVar2.getClass();
                            if (iZ >= 4) {
                                ag1Var4.f(3);
                                int i5 = iZ - 4;
                                if (((ag1Var4.t() & 128) != 0 ? 1 : r5) == 0) {
                                    iD = aVar2.a.d();
                                    iE = aVar2.a.e();
                                    if (iD < iE && i5 > 0) {
                                        int iMin = Math.min(i5, iE - iD);
                                        ag1Var4.a(aVar2.a.c(), iD, iMin);
                                        aVar2.a.e(iD + iMin);
                                    }
                                } else if (i5 >= 7 && (iW = ag1Var4.w()) >= 4) {
                                    aVar2.h = ag1Var4.z();
                                    aVar2.i = ag1Var4.z();
                                    aVar2.a.c(iW - 4);
                                    i5 = iZ - 11;
                                    iD = aVar2.a.d();
                                    iE = aVar2.a.e();
                                    if (iD < iE) {
                                        int iMin2 = Math.min(i5, iE - iD);
                                        ag1Var4.a(aVar2.a.c(), iD, iMin2);
                                        aVar2.a.e(iD + iMin2);
                                    }
                                }
                            }
                            arrayList = arrayList2;
                            ag1Var2 = ag1Var4;
                            break;
                        case 22:
                            aVar2.getClass();
                            if (iZ >= 19) {
                                aVar2.d = ag1Var4.z();
                                aVar2.e = ag1Var4.z();
                                ag1Var4.f(11);
                                aVar2.f = ag1Var4.z();
                                aVar2.g = ag1Var4.z();
                            }
                            arrayList = arrayList2;
                            ag1Var2 = ag1Var4;
                            break;
                        default:
                            arrayList = arrayList2;
                            ag1Var2 = ag1Var4;
                            break;
                    }
                    ag1Var = ag1Var2;
                    z3 = false;
                    hvVarA = null;
                } else {
                    arrayList = arrayList2;
                    if (aVar2.d == 0 || aVar2.e == 0 || aVar2.h == 0 || aVar2.i == 0 || aVar2.a.e() == 0 || aVar2.a.d() != aVar2.a.e() || !aVar2.c) {
                        z2 = false;
                        hvVarA = null;
                    } else {
                        aVar2.a.e(0);
                        int i6 = aVar2.h * aVar2.i;
                        int[] iArr2 = new int[i6];
                        int i7 = 0;
                        while (i7 < i6) {
                            int iT8 = aVar2.a.t();
                            if (iT8 != 0) {
                                iT = i7 + 1;
                                iArr2[i7] = aVar2.b[iT8];
                            } else {
                                int iT9 = aVar2.a.t();
                                if (iT9 != 0) {
                                    iT = ((iT9 & 64) == 0 ? iT9 & 63 : ((iT9 & 63) << 8) | aVar2.a.t()) + i7;
                                    Arrays.fill(iArr2, i7, iT, (iT9 & 128) == 0 ? 0 : aVar2.b[aVar2.a.t()]);
                                }
                            }
                            i7 = iT;
                        }
                        hvVarA = new hv.a().a(Bitmap.createBitmap(iArr2, aVar2.h, aVar2.i, Bitmap.Config.ARGB_8888)).b(aVar2.f / aVar2.d).b(0).a(0, aVar2.g / aVar2.e).a(0).d(aVar2.h / aVar2.d).a(aVar2.i / aVar2.e).a();
                        z2 = false;
                    }
                    aVar2.d = z2 ? 1 : 0;
                    aVar2.e = z2 ? 1 : 0;
                    aVar2.f = z2 ? 1 : 0;
                    aVar2.g = z2 ? 1 : 0;
                    aVar2.h = z2 ? 1 : 0;
                    aVar2.i = z2 ? 1 : 0;
                    aVar2.a.c(z2 ? 1 : 0);
                    aVar2.c = z2;
                    ag1Var = ag1Var4;
                    z3 = z2;
                }
                ag1Var.e(iD2);
                r3 = z3;
            }
            arrayList2 = arrayList;
            if (hvVarA != null) {
                arrayList2.add(hvVarA);
            }
            r5 = r3;
        }
        return new xg1(Collections.unmodifiableList(arrayList2));
    }
}
