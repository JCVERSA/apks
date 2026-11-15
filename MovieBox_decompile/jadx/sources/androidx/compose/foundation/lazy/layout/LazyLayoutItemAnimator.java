package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterSet;
import androidx.collection.n0;
import androidx.collection.v0;
import androidx.collection.w0;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;

public final class LazyLayoutItemAnimator {

    private p f2649b;

    private int f2650c;

    private androidx.compose.ui.node.n f2657j;

    private final n0 f2648a = v0.d();

    private final MutableScatterSet f2651d = w0.a();

    private final List f2652e = new ArrayList();

    private final List f2653f = new ArrayList();

    private final List f2654g = new ArrayList();

    private final List f2655h = new ArrayList();

    private final List f2656i = new ArrayList();

    private final androidx.compose.ui.f f2658k = new DisplayingDisappearingItemsElement(this);

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$a;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "animator", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V", "j", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$a;", "node", "", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$a;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class DisplayingDisappearingItemsElement extends androidx.compose.ui.node.l0 {

        private final LazyLayoutItemAnimator animator;

        public DisplayingDisappearingItemsElement(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
            this.animator = lazyLayoutItemAnimator;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DisplayingDisappearingItemsElement) && Intrinsics.c(this.animator, ((DisplayingDisappearingItemsElement) other).animator);
        }

        public int hashCode() {
            return this.animator.hashCode();
        }

        @Override
        public a getNode() {
            return new a(this.animator);
        }

        @Override
        public void i(a node) {
            node.C1(this.animator);
        }

        public String toString() {
            return "DisplayingDisappearingItemsElement(animator=" + this.animator + ')';
        }
    }

    private static final class a extends androidx.compose.ui.f.c implements androidx.compose.ui.node.n {

        private LazyLayoutItemAnimator f2660n;

        public a(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
            this.f2660n = lazyLayoutItemAnimator;
        }

        public final void C1(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
            if (Intrinsics.c(this.f2660n, lazyLayoutItemAnimator) || !getNode().j1()) {
                return;
            }
            this.f2660n.n();
            lazyLayoutItemAnimator.f2657j = this;
            this.f2660n = lazyLayoutItemAnimator;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.c(this.f2660n, ((a) obj).f2660n);
        }

        public int hashCode() {
            return this.f2660n.hashCode();
        }

        @Override
        public void m1() {
            this.f2660n.f2657j = this;
        }

        @Override
        public void n(z.c cVar) {
            List list = this.f2660n.f2656i;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                k kVar = (k) list.get(i10);
                GraphicsLayer graphicsLayerE = kVar.e();
                if (graphicsLayerE != null) {
                    float fH = o0.p.h(kVar.d());
                    float fI = o0.p.i(kVar.d());
                    float fH2 = fH - o0.p.h(graphicsLayerE.w());
                    float fI2 = fI - o0.p.i(graphicsLayerE.w());
                    cVar.G0().c().c(fH2, fI2);
                    try {
                        androidx.compose.ui.graphics.layer.d.a(cVar, graphicsLayerE);
                        cVar.G0().c().c(-fH2, -fI2);
                    } catch (Throwable th2) {
                        cVar.G0().c().c(-fH2, -fI2);
                        throw th2;
                    }
                }
            }
            cVar.X0();
        }

        @Override
        public void n1() {
            this.f2660n.n();
        }

        public String toString() {
            return "DisplayingDisappearingItemsNode(animator=" + this.f2660n + ')';
        }

        @Override
        public void w0() {
            androidx.compose.ui.node.m.a(this);
        }
    }

    private final class b {

        private o0.b f2662b;

        private int f2663c;

        private int f2664d;

        private int f2666f;

        private int f2667g;

        private k[] f2661a = l.f2752a;

        private int f2665e = 1;

        public b() {
        }

        private final boolean h() {
            for (k kVar : this.f2661a) {
            }
            return false;
        }

        public static void l(b bVar, s sVar, kotlinx.coroutines.n0 n0Var, a4 a4Var, int i10, int i11, int i12, int i13, Object obj) {
            if ((i13 & 32) != 0) {
                i12 = LazyLayoutItemAnimator.this.e(sVar);
            }
            bVar.k(sVar, n0Var, a4Var, i10, i11, i12);
        }

        public final k[] a() {
            return this.f2661a;
        }

        public final o0.b b() {
            return this.f2662b;
        }

        public final int c() {
            return this.f2663c;
        }

        public final int d() {
            return this.f2664d;
        }

        public final int e() {
            return this.f2667g;
        }

        public final int f() {
            return this.f2666f;
        }

        public final int g() {
            return this.f2665e;
        }

        public final void i(int i10) {
            this.f2664d = i10;
        }

        public final void j(int i10) {
            this.f2665e = i10;
        }

        public final void k(s sVar, kotlinx.coroutines.n0 n0Var, a4 a4Var, int i10, int i11, int i12) {
            if (!h()) {
                this.f2666f = i10;
                this.f2667g = i11;
            }
            int length = this.f2661a.length;
            for (int iB = sVar.b(); iB < length; iB++) {
                k kVar = this.f2661a[iB];
            }
            if (this.f2661a.length != sVar.b()) {
                Object[] objArrCopyOf = Arrays.copyOf(this.f2661a, sVar.b());
                Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
                this.f2661a = (k[]) objArrCopyOf;
            }
            this.f2662b = o0.b.a(sVar.a());
            this.f2663c = i12;
            this.f2664d = sVar.k();
            this.f2665e = sVar.d();
            int iB2 = sVar.b();
            for (int i13 = 0; i13 < iB2; i13++) {
                l.b(sVar.i(i13));
                k kVar2 = this.f2661a[i13];
                this.f2661a[i13] = null;
            }
        }
    }

    public final int e(s sVar) {
        long j10 = sVar.j(0);
        return !sVar.e() ? o0.p.i(j10) : o0.p.h(j10);
    }

    private final boolean f(s sVar) {
        int iB = sVar.b();
        for (int i10 = 0; i10 < iB; i10++) {
            l.b(sVar.i(i10));
        }
        return false;
    }

    private final int g(s sVar) {
        long j10 = sVar.j(0);
        return sVar.e() ? o0.p.i(j10) : o0.p.h(j10);
    }

    private final void j(s sVar, int i10, b bVar) {
        long j10 = sVar.j(0);
        if (sVar.e()) {
            o0.p.e(j10, 0, i10, 1, null);
        } else {
            o0.p.e(j10, i10, 0, 2, null);
        }
        for (k kVar : bVar.a()) {
        }
    }

    static void k(LazyLayoutItemAnimator lazyLayoutItemAnimator, s sVar, int i10, b bVar, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            Object objB = lazyLayoutItemAnimator.f2648a.b(sVar.getKey());
            Intrinsics.e(objB);
            bVar = (b) objB;
        }
        lazyLayoutItemAnimator.j(sVar, i10, bVar);
    }

    private final void m(Object obj) {
        k[] kVarArrA;
        b bVar = (b) this.f2648a.o(obj);
        if (bVar == null || (kVarArrA = bVar.a()) == null) {
            return;
        }
        for (k kVar : kVarArrA) {
        }
    }

    private final void o(s sVar, boolean z10) {
        Object objB = this.f2648a.b(sVar.getKey());
        Intrinsics.e(objB);
        for (k kVar : ((b) objB).a()) {
        }
    }

    static void p(LazyLayoutItemAnimator lazyLayoutItemAnimator, s sVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        lazyLayoutItemAnimator.o(sVar, z10);
    }

    private final int q(int[] iArr, s sVar) {
        int iK = sVar.k();
        int iD = sVar.d() + iK;
        int iMax = 0;
        while (iK < iD) {
            int iH = iArr[iK] + sVar.h();
            iArr[iK] = iH;
            iMax = Math.max(iMax, iH);
            iK++;
        }
        return iMax;
    }

    public final k d(Object obj, int i10) {
        k[] kVarArrA;
        b bVar = (b) this.f2648a.b(obj);
        if (bVar == null || (kVarArrA = bVar.a()) == null) {
            return null;
        }
        return kVarArrA[i10];
    }

    public final long h() {
        long jA = o0.t.f67425b.a();
        List list = this.f2656i;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            k kVar = (k) list.get(i10);
            GraphicsLayer graphicsLayerE = kVar.e();
            if (graphicsLayerE != null) {
                jA = o0.u.a(Math.max(o0.t.g(jA), o0.p.h(kVar.h()) + o0.t.g(graphicsLayerE.v())), Math.max(o0.t.f(jA), o0.p.i(kVar.h()) + o0.t.f(graphicsLayerE.v())));
            }
        }
        return jA;
    }

    public final androidx.compose.ui.f i() {
        return this.f2658k;
    }

    public final void l(int i10, int i11, int i12, List list, final p pVar, t tVar, boolean z10, boolean z11, int i13, boolean z12, int i14, int i15, kotlinx.coroutines.n0 n0Var, a4 a4Var) {
        p pVar2;
        boolean z13;
        int[] iArr;
        int i16;
        int[] iArr2;
        long[] jArr;
        Object[] objArr;
        int i17;
        long[] jArr2;
        Object[] objArr2;
        p pVar3;
        int i18;
        int iA;
        long[] jArr3;
        int i19;
        int i20 = i13;
        p pVar4 = this.f2649b;
        this.f2649b = pVar;
        int size = list.size();
        int i21 = 0;
        while (true) {
            if (i21 >= size) {
                if (!this.f2648a.e()) {
                    break;
                }
                n();
                return;
            } else if (f((s) list.get(i21))) {
                break;
            } else {
                i21++;
            }
        }
        int i22 = this.f2650c;
        s sVar = (s) CollectionsKt.k0(list);
        this.f2650c = sVar != null ? sVar.getIndex() : 0;
        if (z10) {
            o0.q.a(0, i10);
        } else {
            o0.q.a(i10, 0);
        }
        boolean z14 = z11 || !z12;
        n0 n0Var2 = this.f2648a;
        Object[] objArr3 = n0Var2.f2036b;
        long[] jArr4 = n0Var2.f2035a;
        int length = jArr4.length - 2;
        int i23 = 8;
        if (length >= 0) {
            int i24 = 0;
            z13 = z14;
            while (true) {
                long j10 = jArr4[i24];
                pVar2 = pVar4;
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i25 = 8 - ((~(i24 - length)) >>> 31);
                    int i26 = 0;
                    while (i26 < i25) {
                        if ((j10 & 255) < 128) {
                            this.f2651d.h(objArr3[(i24 << 3) + i26]);
                            i23 = 8;
                        }
                        j10 >>= i23;
                        i26++;
                        jArr4 = jArr4;
                    }
                    jArr3 = jArr4;
                    i19 = 1;
                    if (i25 != i23) {
                        break;
                    }
                } else {
                    jArr3 = jArr4;
                    i19 = 1;
                }
                if (i24 == length) {
                    break;
                }
                i24 += i19;
                pVar4 = pVar2;
                jArr4 = jArr3;
            }
        } else {
            pVar2 = pVar4;
            z13 = z14;
        }
        int size2 = list.size();
        int i27 = 0;
        while (i27 < size2) {
            s sVar2 = (s) list.get(i27);
            this.f2651d.x(sVar2.getKey());
            if (f(sVar2)) {
                b bVar = (b) this.f2648a.b(sVar2.getKey());
                if (pVar2 != null) {
                    pVar3 = pVar2;
                    iA = pVar3.a(sVar2.getKey());
                } else {
                    pVar3 = pVar2;
                    iA = -1;
                }
                boolean z15 = iA == -1 && pVar3 != null;
                if (bVar == null) {
                    b bVar2 = new b();
                    b.l(bVar2, sVar2, n0Var, a4Var, i14, i15, 0, 32, null);
                    this.f2648a.r(sVar2.getKey(), bVar2);
                    if (sVar2.getIndex() == iA || iA == -1) {
                        long j11 = sVar2.j(0);
                        j(sVar2, sVar2.e() ? o0.p.i(j11) : o0.p.h(j11), bVar2);
                        if (z15) {
                            k[] kVarArrA = bVar2.a();
                            for (k kVar : kVarArrA) {
                            }
                        }
                    } else if (iA < i22) {
                        this.f2652e.add(sVar2);
                    } else {
                        this.f2653f.add(sVar2);
                    }
                } else if (z13) {
                    b.l(bVar, sVar2, n0Var, a4Var, i14, i15, 0, 32, null);
                    k[] kVarArrA2 = bVar.a();
                    int i28 = 0;
                    for (int length2 = kVarArrA2.length; i28 < length2; length2 = length2) {
                        k kVar2 = kVarArrA2[i28];
                        i28++;
                    }
                    i18 = 1;
                    if (z15) {
                        for (k kVar3 : bVar.a()) {
                        }
                    }
                    p(this, sVar2, false, 2, null);
                }
                i18 = 1;
            } else {
                pVar3 = pVar2;
                i18 = 1;
                m(sVar2.getKey());
            }
            i27 += i18;
            pVar2 = pVar3;
        }
        final p pVar5 = pVar2;
        int i29 = 0;
        int i30 = 2;
        int[] iArr3 = new int[i20];
        int i31 = 0;
        while (i31 < i20) {
            iArr3[i31] = i29;
            i31++;
            i29 = 0;
        }
        if (!z13 || pVar5 == null) {
            iArr = iArr3;
            i16 = 2;
        } else {
            if (this.f2652e.isEmpty()) {
                iArr = iArr3;
                i16 = 2;
            } else {
                List list2 = this.f2652e;
                if (list2.size() > 1) {
                    CollectionsKt.A(list2, new Comparator() {
                        @Override
                        public final int compare(T t10, T t11) {
                            return ComparisonsKt.d(Integer.valueOf(pVar5.a(((s) t11).getKey())), Integer.valueOf(pVar5.a(((s) t10).getKey())));
                        }
                    });
                }
                List list3 = this.f2652e;
                int size3 = list3.size();
                int i32 = 0;
                while (i32 < size3) {
                    s sVar3 = (s) list3.get(i32);
                    int i33 = i30;
                    k(this, sVar3, i14 - q(iArr3, sVar3), null, 4, null);
                    p(this, sVar3, false, i33, null);
                    i32++;
                    i30 = i33;
                    size3 = size3;
                    iArr3 = iArr3;
                }
                iArr = iArr3;
                i16 = i30;
                ArraysKt.w(iArr, 0, 0, 0, 6, null);
            }
            if (!this.f2653f.isEmpty()) {
                List list4 = this.f2653f;
                if (list4.size() > 1) {
                    CollectionsKt.A(list4, new Comparator() {
                        @Override
                        public final int compare(T t10, T t11) {
                            return ComparisonsKt.d(Integer.valueOf(pVar5.a(((s) t10).getKey())), Integer.valueOf(pVar5.a(((s) t11).getKey())));
                        }
                    });
                }
                List list5 = this.f2653f;
                int i34 = 0;
                for (int size4 = list5.size(); i34 < size4; size4 = size4) {
                    s sVar4 = (s) list5.get(i34);
                    k(this, sVar4, (i15 + q(iArr, sVar4)) - sVar4.h(), null, 4, null);
                    p(this, sVar4, false, i16, null);
                    i34++;
                }
                ArraysKt.w(iArr, 0, 0, 0, 6, null);
            }
        }
        MutableScatterSet mutableScatterSet = this.f2651d;
        Object[] objArr4 = mutableScatterSet.f1938b;
        long[] jArr5 = mutableScatterSet.f1937a;
        int length3 = jArr5.length - i16;
        if (length3 >= 0) {
            int i35 = 0;
            while (true) {
                long j12 = jArr5[i35];
                if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i36 = 8 - ((~(i35 - length3)) >>> 31);
                    int i37 = 0;
                    while (i37 < i36) {
                        if ((j12 & 255) < 128) {
                            Object obj = objArr4[(i35 << 3) + i37];
                            Object objB = this.f2648a.b(obj);
                            Intrinsics.e(objB);
                            b bVar3 = (b) objB;
                            int iA2 = pVar.a(obj);
                            jArr2 = jArr5;
                            bVar3.j(Math.min(i20, bVar3.g()));
                            objArr2 = objArr4;
                            bVar3.i(Math.min(i20 - bVar3.g(), bVar3.d()));
                            if (iA2 == -1) {
                                for (k kVar4 : bVar3.a()) {
                                }
                                m(obj);
                            } else {
                                o0.b bVarB = bVar3.b();
                                Intrinsics.e(bVarB);
                                s sVarA = tVar.a(iA2, bVar3.d(), bVar3.g(), bVarB.r());
                                sVarA.c(true);
                                for (k kVar5 : bVar3.a()) {
                                }
                                if (pVar5 == null || iA2 != pVar5.a(obj)) {
                                    bVar3.k(sVarA, n0Var, a4Var, i14, i15, bVar3.c());
                                    if (iA2 < this.f2650c) {
                                        this.f2654g.add(sVarA);
                                    } else {
                                        this.f2655h.add(sVarA);
                                    }
                                } else {
                                    m(obj);
                                }
                            }
                        } else {
                            jArr2 = jArr5;
                            objArr2 = objArr4;
                        }
                        j12 >>= 8;
                        i37++;
                        jArr5 = jArr2;
                        i20 = i13;
                        objArr4 = objArr2;
                    }
                    jArr = jArr5;
                    objArr = objArr4;
                    i17 = 1;
                    if (i36 != 8) {
                        break;
                    }
                } else {
                    jArr = jArr5;
                    objArr = objArr4;
                    i17 = 1;
                }
                if (i35 == length3) {
                    break;
                }
                i35 += i17;
                jArr5 = jArr;
                i20 = i13;
                objArr4 = objArr;
            }
        }
        if (this.f2654g.isEmpty()) {
            iArr2 = iArr;
        } else {
            List list6 = this.f2654g;
            if (list6.size() > 1) {
                CollectionsKt.A(list6, new Comparator() {
                    @Override
                    public final int compare(T t10, T t11) {
                        return ComparisonsKt.d(Integer.valueOf(pVar.a(((s) t11).getKey())), Integer.valueOf(pVar.a(((s) t10).getKey())));
                    }
                });
            }
            List list7 = this.f2654g;
            int size5 = list7.size();
            int i38 = 0;
            while (i38 < size5) {
                s sVar5 = (s) list7.get(i38);
                Object objB2 = this.f2648a.b(sVar5.getKey());
                Intrinsics.e(objB2);
                b bVar4 = (b) objB2;
                int[] iArr4 = iArr;
                sVar5.f((z11 ? g((s) CollectionsKt.i0(list)) : bVar4.f()) - q(iArr4, sVar5), bVar4.c(), i11, i12);
                if (z13) {
                    o(sVar5, true);
                }
                i38++;
                iArr = iArr4;
            }
            iArr2 = iArr;
            ArraysKt.w(iArr2, 0, 0, 0, 6, null);
        }
        if (!this.f2655h.isEmpty()) {
            List list8 = this.f2655h;
            if (list8.size() > 1) {
                CollectionsKt.A(list8, new Comparator() {
                    @Override
                    public final int compare(T t10, T t11) {
                        return ComparisonsKt.d(Integer.valueOf(pVar.a(((s) t10).getKey())), Integer.valueOf(pVar.a(((s) t11).getKey())));
                    }
                });
            }
            List list9 = this.f2655h;
            int size6 = list9.size();
            for (int i39 = 0; i39 < size6; i39++) {
                s sVar6 = (s) list9.get(i39);
                Object objB3 = this.f2648a.b(sVar6.getKey());
                Intrinsics.e(objB3);
                b bVar5 = (b) objB3;
                sVar6.f((z11 ? g((s) CollectionsKt.u0(list)) : bVar5.e() - sVar6.h()) + q(iArr2, sVar6), bVar5.c(), i11, i12);
                if (z13) {
                    o(sVar6, true);
                }
            }
        }
        List list10 = this.f2654g;
        CollectionsKt.Y(list10);
        Unit unit = Unit.f64096a;
        list.addAll(0, list10);
        list.addAll(this.f2655h);
        this.f2652e.clear();
        this.f2653f.clear();
        this.f2654g.clear();
        this.f2655h.clear();
        this.f2651d.m();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0056 A[LOOP:0: B:7:0x0015->B:19:0x0056, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:24:0x0059 A[EDGE_INSN: B:24:0x0059->B:20:0x0059 BREAK  A[LOOP:0: B:7:0x0015->B:19:0x0056], SYNTHETIC] */
    public final void n() {
        if (this.f2648a.f()) {
            n0 n0Var = this.f2648a;
            Object[] objArr = n0Var.f2037c;
            long[] jArr = n0Var.f2035a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i10 = 0;
                while (true) {
                    long j10 = jArr[i10];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i10 != length) {
                            break;
                            break;
                        }
                        i10++;
                    } else {
                        int i11 = 8 - ((~(i10 - length)) >>> 31);
                        for (int i12 = 0; i12 < i11; i12++) {
                            if ((255 & j10) < 128) {
                                for (k kVar : ((b) objArr[(i10 << 3) + i12]).a()) {
                                }
                            }
                            j10 >>= 8;
                        }
                        if (i11 != 8) {
                            break;
                        } else if (i10 != length) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
            }
            this.f2648a.h();
        }
        this.f2649b = p.f2757a;
        this.f2650c = -1;
    }
}
