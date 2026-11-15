package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.util.Pair;
import android.view.accessibility.CaptioningManager;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzfyh;
import defpackage.aqj;
import defpackage.f4i;
import defpackage.mqj;
import defpackage.pqj;
import defpackage.rqj;
import defpackage.zpj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.RandomAccess;

public final class rqj extends wqj implements z9j {
    public static final zzfyh i = zzfyh.zzb(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            Integer num = (Integer) obj;
            Integer num2 = (Integer) obj2;
            zzfyh zzfyhVar = rqj.i;
            if (num.intValue() == -1) {
                return num2.intValue() == -1 ? 0 : -1;
            }
            if (num2.intValue() == -1) {
                return 1;
            }
            return num.intValue() - num2.intValue();
        }
    });
    public final Object c;
    public final Context d;
    public hqj e;
    public lqj f;
    public hvg g;
    public final rpj h;

    public rqj(Context context) {
        rpj rpjVar = new rpj();
        hqj hqjVar = hqj.W;
        this.c = new Object();
        this.d = context != null ? context.getApplicationContext() : null;
        this.h = rpjVar;
        if (hqjVar != null) {
            this.e = hqjVar;
        } else {
            gqj gqjVar = new gqj(hqjVar, null);
            gqjVar.C(hqjVar);
            this.e = new hqj(gqjVar);
        }
        this.g = hvg.b;
        if (this.e.P && context == null) {
            zrg.f("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    public static int l(int i2, int i3) {
        if (i2 == 0 || i2 != i3) {
            return Integer.bitCount(i2 & i3);
        }
        return Integer.MAX_VALUE;
    }

    public static int m(erj erjVar, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(erjVar.d)) {
            return 4;
        }
        String strP = p(str);
        String strP2 = p(erjVar.d);
        if (strP2 == null || strP == null) {
            return (z && strP2 == null) ? 1 : 0;
        }
        if (strP2.startsWith(strP) || strP.startsWith(strP2)) {
            return 3;
        }
        int i2 = kfh.a;
        return strP2.split("-", 2)[0].equals(strP.split("-", 2)[0]) ? 2 : 0;
    }

    public static String p(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static boolean s(rqj rqjVar, hqj hqjVar, erj erjVar) {
        lqj lqjVar;
        lqj lqjVar2;
        if (!hqjVar.P) {
            return true;
        }
        int i2 = erjVar.E;
        byte b = -1;
        if (i2 == -1 || i2 <= 2) {
            return true;
        }
        String str = erjVar.o;
        if (str != null) {
            switch (str.hashCode()) {
                case -2123537834:
                    if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                        b = 2;
                    }
                    break;
                case 187078296:
                    if (str.equals("audio/ac3")) {
                        b = 0;
                    }
                    break;
                case 187078297:
                    if (str.equals(MimeTypes.AUDIO_AC4)) {
                        b = 3;
                    }
                    break;
                case 1504578661:
                    if (str.equals("audio/eac3")) {
                        b = 1;
                    }
                    break;
            }
            if ((b == 0 || b == 1 || b == 2 || b == 3) && (kfh.a < 32 || (lqjVar2 = rqjVar.f) == null || !lqjVar2.e())) {
                return true;
            }
        }
        if (kfh.a >= 32 && (lqjVar = rqjVar.f) != null && lqjVar.e() && lqjVar.c() && rqjVar.f.d()) {
            return rqjVar.f.b(rqjVar.g, erjVar);
        }
        return false;
    }

    public static void t(npj npjVar, z8f z8fVar, Map map) {
        for (int i2 = 0; i2 < npjVar.a; i2++) {
            ubc.a(z8fVar.D.get(npjVar.b(i2)));
        }
    }

    public static final Pair v(int i2, vqj vqjVar, int[][][] iArr, nqj nqjVar, Comparator comparator) {
        RandomAccess randomAccessZzo;
        boolean z;
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < 2; i3++) {
            if (i2 == vqjVar.c(i3)) {
                npj npjVarD = vqjVar.d(i3);
                for (int i4 = 0; i4 < npjVarD.a; i4++) {
                    n5f n5fVarB = npjVarD.b(i4);
                    List listA = nqjVar.a(i3, n5fVarB, iArr[i3][i4]);
                    int i5 = n5fVarB.a;
                    boolean[] zArr = new boolean[i5];
                    int i6 = 0;
                    while (i6 < i5) {
                        int i7 = i6 + 1;
                        oqj oqjVar = (oqj) listA.get(i6);
                        int iA = oqjVar.a();
                        if (!zArr[i6] && iA != 0) {
                            if (iA == 1) {
                                randomAccessZzo = zzfww.zzo(oqjVar);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(oqjVar);
                                for (int i8 = i7; i8 < i5; i8++) {
                                    oqj oqjVar2 = (oqj) listA.get(i8);
                                    if (oqjVar2.a() == 2 && oqjVar.b(oqjVar2)) {
                                        arrayList2.add(oqjVar2);
                                        z = true;
                                        zArr[i8] = true;
                                    } else {
                                        z = true;
                                    }
                                }
                                randomAccessZzo = arrayList2;
                            }
                            arrayList.add(randomAccessZzo);
                        }
                        i6 = i7;
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i9 = 0; i9 < list.size(); i9++) {
            iArr2[i9] = ((oqj) list.get(i9)).d;
        }
        oqj oqjVar3 = (oqj) list.get(0);
        return Pair.create(new sqj(oqjVar3.c, iArr2, 0), Integer.valueOf(oqjVar3.b));
    }

    @Override
    public final void a(x9j x9jVar) {
        synchronized (this.c) {
            boolean z = this.e.T;
        }
    }

    @Override
    public final z9j b() {
        return this;
    }

    @Override
    public final void c() {
        lqj lqjVar;
        if (kfh.a >= 32 && (lqjVar = this.f) != null) {
            lqjVar.a();
        }
        super.c();
    }

    @Override
    public final void d(hvg hvgVar) {
        if (this.g.equals(hvgVar)) {
            return;
        }
        this.g = hvgVar;
        u();
    }

    @Override
    public final boolean e() {
        return true;
    }

    @Override
    public final Pair k(vqj vqjVar, int[][][] iArr, final int[] iArr2, bnj bnjVar, w4f w4fVar) {
        final hqj hqjVar;
        final boolean z;
        final String str;
        final String languageTag;
        int i2;
        Context context;
        CaptioningManager captioningManager;
        Locale locale;
        Context context2;
        int i3 = 1;
        synchronized (this.c) {
            hqjVar = this.e;
        }
        if (hqjVar.P && kfh.a >= 32 && this.f == null) {
            this.f = new lqj(this.d, this);
        }
        int i4 = 2;
        sqj[] sqjVarArr = new sqj[2];
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i6 >= 2) {
                z = false;
                break;
            }
            if (vqjVar.c(i6) == 2 && vqjVar.d(i6).a > 0) {
                z = true;
                break;
            }
            i6++;
        }
        Pair pairV = v(1, vqjVar, iArr, new nqj() {
            @Override
            public final List a(int i7, n5f n5fVar, int[] iArr3) {
                wpj wpjVar = this;
                final rqj rqjVar = wpjVar.a;
                final hqj hqjVar2 = hqjVar;
                w2i w2iVar = new w2i() {
                    @Override
                    public final boolean zza(Object obj) {
                        return rqj.s(rqjVar, hqjVar2, (erj) obj);
                    }
                };
                int i8 = iArr2[i7];
                int i9 = zzfww.zzd;
                l4i l4iVar = new l4i();
                int i10 = 0;
                while (i10 < n5fVar.a) {
                    l4iVar.g(new zpj(i7, n5fVar, i10, hqjVar2, iArr3[i10], z, w2iVar, i8));
                    i10++;
                    wpjVar = this;
                }
                return l4iVar.j();
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ((zpj) Collections.max((List) obj)).d((zpj) Collections.max((List) obj2));
            }
        });
        if (pairV != null) {
            sqjVarArr[((Integer) pairV.second).intValue()] = (sqj) pairV.first;
        }
        if (pairV == null) {
            str = null;
        } else {
            Object obj = pairV.first;
            str = ((sqj) obj).a.b(((sqj) obj).b[0]).d;
        }
        int i7 = hqjVar.u.a;
        final Point pointR = (!hqjVar.k || (context2 = this.d) == null) ? null : kfh.R(context2);
        Pair pairV2 = v(2, vqjVar, iArr, new nqj() {
            /* JADX WARN: Code duplicated, block: B:29:0x004c  */
            @Override
            public final List a(int i8, n5f n5fVar, int[] iArr3) {
                int i9;
                int i10;
                int i11;
                int i12;
                Point point;
                zzfyh zzfyhVar = rqj.i;
                hqj hqjVar2 = hqjVar;
                int i13 = iArr2[i8];
                Point point2 = pointR;
                int i14 = point2 != null ? point2.x : hqjVar2.i;
                int i15 = point2 != null ? point2.y : hqjVar2.j;
                boolean z2 = hqjVar2.l;
                int i16 = -1;
                if (i14 == Integer.MAX_VALUE) {
                    i9 = Integer.MAX_VALUE;
                } else if (i15 == Integer.MAX_VALUE) {
                    i9 = Integer.MAX_VALUE;
                } else {
                    int i17 = Integer.MAX_VALUE;
                    for (int i18 = 0; i18 < n5fVar.a; i18++) {
                        erj erjVarB = n5fVar.b(i18);
                        int i19 = erjVarB.v;
                        if (i19 > 0 && (i10 = erjVarB.w) > 0) {
                            if (!z2) {
                                i11 = i15;
                                i12 = i14;
                            } else if ((i19 > i10) != (i14 > i15)) {
                                i12 = i15;
                                i11 = i14;
                            } else {
                                i11 = i15;
                                i12 = i14;
                            }
                            int i20 = i19 * i11;
                            int i21 = i10 * i12;
                            if (i20 >= i21) {
                                int i22 = kfh.a;
                                point = new Point(i12, ((i21 + i19) - 1) / i19);
                            } else {
                                int i23 = kfh.a;
                                point = new Point(((i20 + i10) - 1) / i10, i11);
                            }
                            int i24 = i19 * i10;
                            if (i19 >= ((int) (point.x * 0.98f)) && i10 >= ((int) (point.y * 0.98f)) && i24 < i17) {
                                i17 = i24;
                            }
                        }
                    }
                    i9 = i17;
                }
                int i25 = zzfww.zzd;
                l4i l4iVar = new l4i();
                int i26 = 0;
                while (i26 < n5fVar.a) {
                    int iA = n5fVar.b(i26).a();
                    l4iVar.g(new pqj(i8, n5fVar, i26, hqjVar2, iArr3[i26], str, i13, i9 == Integer.MAX_VALUE || (iA != i16 && iA <= i9)));
                    i26++;
                    i16 = -1;
                }
                return l4iVar.j();
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj2, Object obj3) {
                List list = (List) obj2;
                List list2 = (List) obj3;
                return f4i.i().c((pqj) Collections.max(list, new Comparator() {
                    @Override
                    public final int compare(Object obj4, Object obj5) {
                        return pqj.e((pqj) obj4, (pqj) obj5);
                    }
                }), (pqj) Collections.max(list2, new Comparator() {
                    @Override
                    public final int compare(Object obj4, Object obj5) {
                        return pqj.e((pqj) obj4, (pqj) obj5);
                    }
                }), new Comparator() {
                    @Override
                    public final int compare(Object obj4, Object obj5) {
                        return pqj.e((pqj) obj4, (pqj) obj5);
                    }
                }).b(list.size(), list2.size()).c((pqj) Collections.max(list, new Comparator() {
                    @Override
                    public final int compare(Object obj4, Object obj5) {
                        return pqj.d((pqj) obj4, (pqj) obj5);
                    }
                }), (pqj) Collections.max(list2, new Comparator() {
                    @Override
                    public final int compare(Object obj4, Object obj5) {
                        return pqj.d((pqj) obj4, (pqj) obj5);
                    }
                }), new Comparator() {
                    @Override
                    public final int compare(Object obj4, Object obj5) {
                        return pqj.d((pqj) obj4, (pqj) obj5);
                    }
                }).a();
            }
        });
        int i8 = 4;
        Pair pairV3 = pairV2 == null ? v(4, vqjVar, iArr, new nqj() {
            @Override
            public final List a(int i9, n5f n5fVar, int[] iArr3) {
                zzfyh zzfyhVar = rqj.i;
                int i10 = zzfww.zzd;
                l4i l4iVar = new l4i();
                for (int i11 = 0; i11 < n5fVar.a; i11++) {
                    l4iVar.g(new aqj(i9, n5fVar, i11, hqjVar, iArr3[i11]));
                }
                return l4iVar.j();
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj2, Object obj3) {
                return ((aqj) ((List) obj2).get(0)).compareTo((aqj) ((List) obj3).get(0));
            }
        }) : null;
        if (pairV3 != null) {
            sqjVarArr[((Integer) pairV3.second).intValue()] = (sqj) pairV3.first;
        } else if (pairV2 != null) {
            sqjVarArr[((Integer) pairV2.second).intValue()] = (sqj) pairV2.first;
        }
        if (!hqjVar.x || (context = this.d) == null || (captioningManager = (CaptioningManager) context.getSystemService("captioning")) == null || !captioningManager.isEnabled() || (locale = captioningManager.getLocale()) == null) {
            languageTag = null;
        } else {
            int i9 = kfh.a;
            languageTag = locale.toLanguageTag();
        }
        int i10 = 3;
        Pair pairV4 = v(3, vqjVar, iArr, new nqj() {
            @Override
            public final List a(int i11, n5f n5fVar, int[] iArr3) {
                zzfyh zzfyhVar = rqj.i;
                int i12 = zzfww.zzd;
                l4i l4iVar = new l4i();
                for (int i13 = 0; i13 < n5fVar.a; i13++) {
                    String str2 = languageTag;
                    int i14 = i13;
                    l4iVar.g(new mqj(i11, n5fVar, i14, hqjVar, iArr3[i13], str, str2));
                }
                return l4iVar.j();
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj2, Object obj3) {
                return ((mqj) ((List) obj2).get(0)).d((mqj) ((List) obj3).get(0));
            }
        });
        if (pairV4 != null) {
            sqjVarArr[((Integer) pairV4.second).intValue()] = (sqj) pairV4.first;
        }
        int i11 = 0;
        while (i11 < i4) {
            int iC = vqjVar.c(i11);
            if (iC != i4 && iC != i3 && iC != i10 && iC != i8) {
                npj npjVarD = vqjVar.d(i11);
                int[][] iArr3 = iArr[i11];
                int i12 = i5;
                int i13 = i12;
                n5f n5fVar = null;
                bqj bqjVar = null;
                while (i12 < npjVarD.a) {
                    n5f n5fVarB = npjVarD.b(i12);
                    int[] iArr4 = iArr3[i12];
                    bqj bqjVar2 = bqjVar;
                    for (int i14 = i5; i14 < n5fVarB.a; i14++) {
                        if (y9j.a(iArr4[i14], hqjVar.Q)) {
                            bqj bqjVar3 = new bqj(n5fVarB.b(i14), iArr4[i14]);
                            if (bqjVar2 == null || bqjVar3.compareTo(bqjVar2) > 0) {
                                bqjVar2 = bqjVar3;
                                n5fVar = n5fVarB;
                                i13 = i14;
                            }
                        }
                        i3 = 1;
                    }
                    i12 += i3;
                    bqjVar = bqjVar2;
                    i5 = 0;
                }
                sqjVarArr[i11] = n5fVar == null ? null : new sqj(n5fVar, new int[]{i13}, 0);
                i3 = 1;
            }
            i11 += i3;
            i4 = 2;
            i5 = 0;
            i10 = 3;
            i8 = 4;
        }
        HashMap map = new HashMap();
        int i15 = 2;
        for (int i16 = 0; i16 < 2; i16 += i3) {
            t(vqjVar.d(i16), hqjVar, map);
        }
        t(vqjVar.e(), hqjVar, map);
        for (int i17 = 0; i17 < 2; i17 += i3) {
            ubc.a(map.get(Integer.valueOf(vqjVar.c(i17))));
        }
        int i18 = 0;
        while (i18 < i15) {
            npj npjVarD2 = vqjVar.d(i18);
            if (hqjVar.f(i18, npjVarD2)) {
                hqjVar.d(i18, npjVarD2);
                sqjVarArr[i18] = null;
            }
            i18++;
            i15 = 2;
        }
        int i19 = 0;
        for (int i20 = i15; i19 < i20; i20 = 2) {
            int iC2 = vqjVar.c(i19);
            if (hqjVar.e(i19) || hqjVar.E.contains(Integer.valueOf(iC2))) {
                sqjVarArr[i19] = null;
            }
            i19++;
        }
        rpj rpjVar = this.h;
        mrj mrjVarH = h();
        zzfww zzfwwVarB = spj.b(sqjVarArr);
        int i21 = 2;
        tqj[] tqjVarArr = new tqj[2];
        int i22 = 0;
        while (i22 < i21) {
            sqj sqjVar = sqjVarArr[i22];
            if (sqjVar != null) {
                int[] iArr5 = sqjVar.b;
                int length = iArr5.length;
                if (length == 0) {
                    i2 = 1;
                } else {
                    tqjVarArr[i22] = length == 1 ? new uqj(sqjVar.a, iArr5[0], 0, 0, null) : rpjVar.a(sqjVar.a, iArr5, 0, mrjVarH, (zzfww) zzfwwVarB.get(i22));
                }
                i22 += i2;
                i21 = 2;
            }
            i2 = 1;
            i22 += i2;
            i21 = 2;
        }
        baj[] bajVarArr = new baj[i21];
        for (int i23 = 0; i23 < i21; i23++) {
            bajVarArr[i23] = (hqjVar.e(i23) || hqjVar.E.contains(Integer.valueOf(vqjVar.c(i23))) || (vqjVar.c(i23) != -2 && tqjVarArr[i23] == null)) ? null : baj.b;
        }
        return Pair.create(bajVarArr, tqjVarArr);
    }

    public final hqj n() {
        hqj hqjVar;
        synchronized (this.c) {
            hqjVar = this.e;
        }
        return hqjVar;
    }

    public final void r(gqj gqjVar) {
        boolean zEquals;
        hqj hqjVar = new hqj(gqjVar);
        synchronized (this.c) {
            zEquals = this.e.equals(hqjVar);
            this.e = hqjVar;
        }
        if (zEquals) {
            return;
        }
        if (hqjVar.P && this.d == null) {
            zrg.f("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
        j();
    }

    public final void u() {
        boolean z;
        lqj lqjVar;
        synchronized (this.c) {
            try {
                z = false;
                if (this.e.P && kfh.a >= 32 && (lqjVar = this.f) != null && lqjVar.e()) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            j();
        }
    }
}
