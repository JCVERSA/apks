package i2;

import android.content.Context;
import android.graphics.Point;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.accessibility.CaptioningManager;
import androidx.core.view.PointerIconCompat;
import androidx.media3.common.g0;
import androidx.media3.common.h0;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.audio.w0;
import androidx.media3.exoplayer.w3;
import androidx.media3.exoplayer.x3;
import androidx.media3.exoplayer.y3;
import androidx.media3.exoplayer.z3;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.google.common.collect.h2;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;

public class n extends b0 implements y3.a {

    private static final Ordering f61662j = Ordering.from(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return n.V((Integer) obj, (Integer) obj2);
        }
    });

    private final Object f61663d;

    public final Context f61664e;

    private final z.b f61665f;

    private e f61666g;

    private g f61667h;

    private androidx.media3.common.c f61668i;

    static final class b extends i implements Comparable {

        private final int f61669e;

        private final boolean f61670f;

        private final String f61671g;

        private final e f61672h;

        private final boolean f61673i;

        private final int f61674j;

        private final int f61675k;

        private final int f61676l;

        private final boolean f61677m;

        private final boolean f61678n;

        private final int f61679o;

        private final int f61680p;

        private final boolean f61681q;

        private final int f61682r;

        private final int f61683s;

        private final int f61684t;

        private final int f61685u;

        private final boolean f61686v;

        private final boolean f61687w;

        private final boolean f61688x;

        /* JADX WARN: Multi-variable type inference failed */
        public b(int i10, androidx.media3.common.f0 f0Var, int i11, e eVar, int i12, boolean z10, com.google.common.base.n nVar, int i13) {
            int i14;
            int iH;
            int iH2;
            super(i10, f0Var, i11);
            this.f61672h = eVar;
            int i15 = eVar.f61703y0 ? 24 : 16;
            this.f61677m = eVar.f61699u0 && (i13 & i15) != 0;
            this.f61671g = n.a0(this.f61723d.f9838d);
            this.f61673i = x3.l(i12, false);
            int i16 = 0;
            while (true) {
                i14 = Integer.MAX_VALUE;
                if (i16 >= eVar.f9704p.size()) {
                    iH = 0;
                    i16 = Integer.MAX_VALUE;
                    break;
                } else {
                    iH = n.H(this.f61723d, (String) eVar.f9704p.get(i16), false);
                    if (iH > 0) {
                        break;
                    } else {
                        i16++;
                    }
                }
            }
            this.f61675k = i16;
            this.f61674j = iH;
            this.f61676l = n.L(this.f61723d.f9840f, eVar.f9705q);
            androidx.media3.common.r rVar = this.f61723d;
            int i17 = rVar.f9840f;
            this.f61678n = i17 == 0 || (i17 & 1) != 0;
            this.f61681q = (rVar.f9839e & 1) != 0;
            this.f61688x = n.P(rVar);
            androidx.media3.common.r rVar2 = this.f61723d;
            int i18 = rVar2.E;
            this.f61682r = i18;
            this.f61683s = rVar2.F;
            int i19 = rVar2.f9844j;
            this.f61684t = i19;
            this.f61670f = (i19 == -1 || i19 <= eVar.f9707s) && (i18 == -1 || i18 <= eVar.f9706r) && nVar.apply(rVar2);
            String[] strArrP0 = a1.p0();
            int i20 = 0;
            while (true) {
                if (i20 >= strArrP0.length) {
                    iH2 = 0;
                    i20 = Integer.MAX_VALUE;
                    break;
                } else {
                    iH2 = n.H(this.f61723d, strArrP0[i20], false);
                    if (iH2 > 0) {
                        break;
                    } else {
                        i20++;
                    }
                }
            }
            this.f61679o = i20;
            this.f61680p = iH2;
            for (int i21 = 0; i21 < eVar.f9708t.size(); i21++) {
                String str = this.f61723d.f9849o;
                if (str != null && str.equals(eVar.f9708t.get(i21))) {
                    i14 = i21;
                    break;
                }
            }
            this.f61685u = i14;
            this.f61686v = x3.h(i12) == 128;
            this.f61687w = x3.j(i12) == 64;
            this.f61669e = g(i12, z10, i15);
        }

        public static int d(List list, List list2) {
            return ((b) Collections.max(list)).compareTo((b) Collections.max(list2));
        }

        public static ImmutableList f(int i10, androidx.media3.common.f0 f0Var, e eVar, int[] iArr, boolean z10, com.google.common.base.n nVar, int i11) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i12 = 0; i12 < f0Var.f9659a; i12++) {
                aVarBuilder.a(new b(i10, f0Var, i12, eVar, iArr[i12], z10, nVar, i11));
            }
            return aVarBuilder.e();
        }

        private int g(int i10, boolean z10, int i11) {
            if (!x3.l(i10, this.f61672h.A0)) {
                return 0;
            }
            if (!this.f61670f && !this.f61672h.f61698t0) {
                return 0;
            }
            e eVar = this.f61672h;
            if (eVar.f9709u.f9719a == 2 && !n.b0(eVar, i10, this.f61723d)) {
                return 0;
            }
            if (x3.l(i10, false) && this.f61670f && this.f61723d.f9844j != -1) {
                e eVar2 = this.f61672h;
                if (!eVar2.C && !eVar2.B && ((eVar2.C0 || !z10) && eVar2.f9709u.f9719a != 2 && (i10 & i11) != 0)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override
        public int a() {
            return this.f61669e;
        }

        @Override
        public int compareTo(b bVar) {
            Ordering orderingReverse = (this.f61670f && this.f61673i) ? n.f61662j : n.f61662j.reverse();
            h2 h2VarG = h2.k().h(this.f61673i, bVar.f61673i).g(Integer.valueOf(this.f61675k), Integer.valueOf(bVar.f61675k), Ordering.natural().reverse()).d(this.f61674j, bVar.f61674j).d(this.f61676l, bVar.f61676l).h(this.f61681q, bVar.f61681q).h(this.f61678n, bVar.f61678n).g(Integer.valueOf(this.f61679o), Integer.valueOf(bVar.f61679o), Ordering.natural().reverse()).d(this.f61680p, bVar.f61680p).h(this.f61670f, bVar.f61670f).g(Integer.valueOf(this.f61685u), Integer.valueOf(bVar.f61685u), Ordering.natural().reverse());
            if (this.f61672h.B) {
                h2VarG = h2VarG.g(Integer.valueOf(this.f61684t), Integer.valueOf(bVar.f61684t), n.f61662j.reverse());
            }
            h2 h2VarG2 = h2VarG.h(this.f61686v, bVar.f61686v).h(this.f61687w, bVar.f61687w).h(this.f61688x, bVar.f61688x).g(Integer.valueOf(this.f61682r), Integer.valueOf(bVar.f61682r), orderingReverse).g(Integer.valueOf(this.f61683s), Integer.valueOf(bVar.f61683s), orderingReverse);
            if (Objects.equals(this.f61671g, bVar.f61671g)) {
                h2VarG2 = h2VarG2.g(Integer.valueOf(this.f61684t), Integer.valueOf(bVar.f61684t), orderingReverse);
            }
            return h2VarG2.j();
        }

        @Override
        public boolean b(b bVar) {
            int i10;
            String str;
            int i11;
            if ((this.f61672h.f61701w0 || ((i11 = this.f61723d.E) != -1 && i11 == bVar.f61723d.E)) && (this.f61677m || ((str = this.f61723d.f9849o) != null && TextUtils.equals(str, bVar.f61723d.f9849o)))) {
                e eVar = this.f61672h;
                if ((eVar.f61700v0 || ((i10 = this.f61723d.F) != -1 && i10 == bVar.f61723d.F)) && (eVar.f61702x0 || (this.f61686v == bVar.f61686v && this.f61687w == bVar.f61687w))) {
                    return true;
                }
            }
            return false;
        }
    }

    static final class c extends i implements Comparable {

        private final int f61689e;

        private final int f61690f;

        public c(int i10, androidx.media3.common.f0 f0Var, int i11, e eVar, int i12) {
            super(i10, f0Var, i11);
            this.f61689e = x3.l(i12, eVar.A0) ? 1 : 0;
            this.f61690f = this.f61723d.e();
        }

        public static int d(List list, List list2) {
            return ((c) list.get(0)).compareTo((c) list2.get(0));
        }

        public static ImmutableList f(int i10, androidx.media3.common.f0 f0Var, e eVar, int[] iArr) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i11 = 0; i11 < f0Var.f9659a; i11++) {
                aVarBuilder.a(new c(i10, f0Var, i11, eVar, iArr[i11]));
            }
            return aVarBuilder.e();
        }

        @Override
        public int a() {
            return this.f61689e;
        }

        @Override
        public int compareTo(c cVar) {
            return Integer.compare(this.f61690f, cVar.f61690f);
        }

        @Override
        public boolean b(c cVar) {
            return false;
        }
    }

    private static final class d implements Comparable {

        private final boolean f61691a;

        private final boolean f61692b;

        public d(androidx.media3.common.r rVar, int i10) {
            this.f61691a = (rVar.f9839e & 1) != 0;
            this.f61692b = x3.l(i10, false);
        }

        @Override
        public int compareTo(d dVar) {
            return h2.k().h(this.f61692b, dVar.f61692b).h(this.f61691a, dVar.f61691a).j();
        }
    }

    public static final class e extends h0 {
        public static final e G0;
        public static final e H0;
        private static final String I0;
        private static final String J0;
        private static final String K0;
        private static final String L0;
        private static final String M0;
        private static final String N0;
        private static final String O0;
        private static final String P0;
        private static final String Q0;
        private static final String R0;
        private static final String S0;
        private static final String T0;
        private static final String U0;
        private static final String V0;
        private static final String W0;
        private static final String X0;
        private static final String Y0;
        private static final String Z0;

        private static final String f61693a1;
        public final boolean A0;
        public final boolean B0;
        public final boolean C0;
        public final boolean D0;
        private final SparseArray E0;
        private final SparseBooleanArray F0;

        public final boolean f61694p0;

        public final boolean f61695q0;

        public final boolean f61696r0;

        public final boolean f61697s0;

        public final boolean f61698t0;

        public final boolean f61699u0;

        public final boolean f61700v0;

        public final boolean f61701w0;

        public final boolean f61702x0;

        public final boolean f61703y0;

        public final boolean f61704z0;

        public static final class a extends h0.c {
            private boolean F;
            private boolean G;
            private boolean H;
            private boolean I;
            private boolean J;
            private boolean K;
            private boolean L;
            private boolean M;
            private boolean N;
            private boolean O;
            private boolean P;
            private boolean Q;
            private boolean R;
            private boolean S;
            private boolean T;
            private final SparseArray U;
            private final SparseBooleanArray V;

            private static SparseArray j0(SparseArray sparseArray) {
                SparseArray sparseArray2 = new SparseArray();
                for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                    sparseArray2.put(sparseArray.keyAt(i10), new HashMap((Map) sparseArray.valueAt(i10)));
                }
                return sparseArray2;
            }

            private void k0() {
                this.F = true;
                this.G = false;
                this.H = true;
                this.I = false;
                this.J = true;
                this.K = false;
                this.L = false;
                this.M = false;
                this.N = false;
                this.O = true;
                this.P = true;
                this.Q = true;
                this.R = false;
                this.S = true;
                this.T = false;
            }

            @Override
            public e F() {
                return new e(this);
            }

            @Override
            public a G(int i10) {
                super.G(i10);
                return this;
            }

            protected a l0(h0 h0Var) {
                super.J(h0Var);
                return this;
            }

            @Override
            public a K(int i10) {
                super.K(i10);
                return this;
            }

            @Override
            public a L(g0 g0Var) {
                super.L(g0Var);
                return this;
            }

            @Override
            public a M(String str) {
                super.M(str);
                return this;
            }

            @Override
            public a N(String... strArr) {
                super.N(strArr);
                return this;
            }

            @Override
            public a O(int i10) {
                super.O(i10);
                return this;
            }

            @Override
            public a P(int i10, boolean z10) {
                super.P(i10, z10);
                return this;
            }

            public a() {
                this.U = new SparseArray();
                this.V = new SparseBooleanArray();
                k0();
            }

            private a(e eVar) {
                super(eVar);
                this.F = eVar.f61694p0;
                this.G = eVar.f61695q0;
                this.H = eVar.f61696r0;
                this.I = eVar.f61697s0;
                this.J = eVar.f61698t0;
                this.K = eVar.f61699u0;
                this.L = eVar.f61700v0;
                this.M = eVar.f61701w0;
                this.N = eVar.f61702x0;
                this.O = eVar.f61703y0;
                this.P = eVar.f61704z0;
                this.Q = eVar.A0;
                this.R = eVar.B0;
                this.S = eVar.C0;
                this.T = eVar.D0;
                this.U = j0(eVar.E0);
                this.V = eVar.F0.clone();
            }
        }

        static {
            e eVarF = new a().F();
            G0 = eVarF;
            H0 = eVarF;
            I0 = a1.C0(1000);
            J0 = a1.C0(1001);
            K0 = a1.C0(1002);
            L0 = a1.C0(1003);
            M0 = a1.C0(1004);
            N0 = a1.C0(1005);
            O0 = a1.C0(PointerIconCompat.TYPE_CELL);
            P0 = a1.C0(PointerIconCompat.TYPE_CROSSHAIR);
            Q0 = a1.C0(PointerIconCompat.TYPE_TEXT);
            R0 = a1.C0(PointerIconCompat.TYPE_VERTICAL_TEXT);
            S0 = a1.C0(1010);
            T0 = a1.C0(1011);
            U0 = a1.C0(1012);
            V0 = a1.C0(PointerIconCompat.TYPE_ALL_SCROLL);
            W0 = a1.C0(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW);
            X0 = a1.C0(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW);
            Y0 = a1.C0(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW);
            Z0 = a1.C0(PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW);
            f61693a1 = a1.C0(PointerIconCompat.TYPE_ZOOM_IN);
        }

        private static boolean d(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i10)) < 0) {
                    return false;
                }
            }
            return true;
        }

        private static boolean e(SparseArray sparseArray, SparseArray sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i10));
                if (iIndexOfKey < 0 || !f((Map) sparseArray.valueAt(i10), (Map) sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        private static boolean f(Map map, Map map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry entry : map.entrySet()) {
                f2.z zVar = (f2.z) entry.getKey();
                if (!map2.containsKey(zVar) || !Objects.equals(entry.getValue(), map2.get(zVar))) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return super.equals(eVar) && this.f61694p0 == eVar.f61694p0 && this.f61695q0 == eVar.f61695q0 && this.f61696r0 == eVar.f61696r0 && this.f61697s0 == eVar.f61697s0 && this.f61698t0 == eVar.f61698t0 && this.f61699u0 == eVar.f61699u0 && this.f61700v0 == eVar.f61700v0 && this.f61701w0 == eVar.f61701w0 && this.f61702x0 == eVar.f61702x0 && this.f61703y0 == eVar.f61703y0 && this.f61704z0 == eVar.f61704z0 && this.A0 == eVar.A0 && this.B0 == eVar.B0 && this.C0 == eVar.C0 && this.D0 == eVar.D0 && d(this.F0, eVar.F0) && e(this.E0, eVar.E0);
        }

        @Override
        public a a() {
            return new a();
        }

        public boolean h(int i10) {
            return this.F0.get(i10);
        }

        @Override
        public int hashCode() {
            return ((((((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.f61694p0 ? 1 : 0)) * 31) + (this.f61695q0 ? 1 : 0)) * 31) + (this.f61696r0 ? 1 : 0)) * 31) + (this.f61697s0 ? 1 : 0)) * 31) + (this.f61698t0 ? 1 : 0)) * 31) + (this.f61699u0 ? 1 : 0)) * 31) + (this.f61700v0 ? 1 : 0)) * 31) + (this.f61701w0 ? 1 : 0)) * 31) + (this.f61702x0 ? 1 : 0)) * 31) + (this.f61703y0 ? 1 : 0)) * 31) + (this.f61704z0 ? 1 : 0)) * 31) + (this.A0 ? 1 : 0)) * 31) + (this.B0 ? 1 : 0)) * 31) + (this.C0 ? 1 : 0)) * 31) + (this.D0 ? 1 : 0);
        }

        public f i(int i10, f2.z zVar) {
            Map map = (Map) this.E0.get(i10);
            if (map == null) {
                return null;
            }
            android.support.v4.media.session.c.a(map.get(zVar));
            return null;
        }

        public boolean j(int i10, f2.z zVar) {
            Map map = (Map) this.E0.get(i10);
            return map != null && map.containsKey(zVar);
        }

        private e(a aVar) {
            super(aVar);
            this.f61694p0 = aVar.F;
            this.f61695q0 = aVar.G;
            this.f61696r0 = aVar.H;
            this.f61697s0 = aVar.I;
            this.f61698t0 = aVar.J;
            this.f61699u0 = aVar.K;
            this.f61700v0 = aVar.L;
            this.f61701w0 = aVar.M;
            this.f61702x0 = aVar.N;
            this.f61703y0 = aVar.O;
            this.f61704z0 = aVar.P;
            this.A0 = aVar.Q;
            this.B0 = aVar.R;
            this.C0 = aVar.S;
            this.D0 = aVar.T;
            this.E0 = aVar.U;
            this.F0 = aVar.V;
        }
    }

    public static final class f {
    }

    private static class g {

        private final Spatializer f61705a;

        private final boolean f61706b;

        private final Handler f61707c;

        private final Spatializer$OnSpatializerStateChangedListener f61708d;

        class a implements Spatializer$OnSpatializerStateChangedListener {

            final n f61709a;

            a(n nVar) {
                this.f61709a = nVar;
            }

            public void onSpatializerAvailableChanged(Spatializer spatializer, boolean z10) {
                this.f61709a.Y();
            }

            public void onSpatializerEnabledChanged(Spatializer spatializer, boolean z10) {
                this.f61709a.Y();
            }
        }

        public g(Context context, n nVar) {
            AudioManager audioManagerC = context == null ? null : t1.m.c(context);
            if (audioManagerC == null || a1.K0((Context) androidx.media3.common.util.a.e(context))) {
                this.f61705a = null;
                this.f61706b = false;
                this.f61707c = null;
                this.f61708d = null;
                return;
            }
            Spatializer spatializer = audioManagerC.getSpatializer();
            this.f61705a = spatializer;
            this.f61706b = spatializer.getImmersiveAudioLevel() != 0;
            a aVar = new a(nVar);
            this.f61708d = aVar;
            Handler handler = new Handler((Looper) androidx.media3.common.util.a.i(Looper.myLooper()));
            this.f61707c = handler;
            Objects.requireNonNull(handler);
            spatializer.addOnSpatializerStateChangedListener(new w0(handler), aVar);
        }

        public boolean a(androidx.media3.common.c cVar, androidx.media3.common.r rVar) {
            int i10;
            if (Objects.equals(rVar.f9849o, MimeTypes.AUDIO_E_AC3_JOC)) {
                i10 = rVar.E;
                if (i10 == 16) {
                    i10 = 12;
                }
            } else if (Objects.equals(rVar.f9849o, "audio/iamf")) {
                i10 = rVar.E;
                if (i10 == -1) {
                    i10 = 6;
                }
            } else if (Objects.equals(rVar.f9849o, "audio/ac4")) {
                i10 = rVar.E;
                if (i10 == 18 || i10 == 21) {
                    i10 = 24;
                }
            } else {
                i10 = rVar.E;
            }
            int iM = a1.M(i10);
            if (iM == 0) {
                return false;
            }
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(iM);
            int i11 = rVar.F;
            if (i11 != -1) {
                channelMask.setSampleRate(i11);
            }
            return s.a(androidx.media3.common.util.a.e(this.f61705a)).canBeSpatialized(cVar.a().f9607a, channelMask.build());
        }

        public boolean b() {
            return s.a(androidx.media3.common.util.a.e(this.f61705a)).isAvailable();
        }

        public boolean c() {
            return s.a(androidx.media3.common.util.a.e(this.f61705a)).isEnabled();
        }

        public boolean d() {
            return this.f61706b;
        }

        public void e() {
            Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener;
            Spatializer spatializer = this.f61705a;
            if (spatializer == null || (spatializer$OnSpatializerStateChangedListener = this.f61708d) == null || this.f61707c == null) {
                return;
            }
            spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
            this.f61707c.removeCallbacksAndMessages(null);
        }
    }

    static final class h extends i implements Comparable {

        private final int f61711e;

        private final boolean f61712f;

        private final boolean f61713g;

        private final boolean f61714h;

        private final int f61715i;

        private final int f61716j;

        private final int f61717k;

        private final int f61718l;

        private final boolean f61719m;

        /* JADX WARN: Multi-variable type inference failed */
        public h(int i10, androidx.media3.common.f0 f0Var, int i11, e eVar, int i12, String str, String str2) {
            int iH;
            super(i10, f0Var, i11);
            int i13 = 0;
            this.f61712f = x3.l(i12, false);
            int i14 = this.f61723d.f9839e & (~eVar.f9713y);
            this.f61713g = (i14 & 1) != 0;
            this.f61714h = (i14 & 2) != 0;
            ImmutableList immutableListOf = str2 != null ? ImmutableList.of(str2) : eVar.f9710v.isEmpty() ? ImmutableList.of("") : eVar.f9710v;
            int i15 = 0;
            while (true) {
                if (i15 >= immutableListOf.size()) {
                    i15 = Integer.MAX_VALUE;
                    iH = 0;
                    break;
                } else {
                    iH = n.H(this.f61723d, (String) immutableListOf.get(i15), eVar.f9714z);
                    if (iH > 0) {
                        break;
                    } else {
                        i15++;
                    }
                }
            }
            this.f61715i = i15;
            this.f61716j = iH;
            int iL = n.L(this.f61723d.f9840f, str2 != null ? 1088 : eVar.f9711w);
            this.f61717k = iL;
            this.f61719m = (1088 & this.f61723d.f9840f) != 0;
            int iH2 = n.H(this.f61723d, str, n.a0(str) == null);
            this.f61718l = iH2;
            boolean z10 = iH > 0 || (eVar.f9710v.isEmpty() && iL > 0) || this.f61713g || (this.f61714h && iH2 > 0);
            if (x3.l(i12, eVar.A0) && z10) {
                i13 = 1;
            }
            this.f61711e = i13;
        }

        public static int d(List list, List list2) {
            return ((h) list.get(0)).compareTo((h) list2.get(0));
        }

        public static ImmutableList f(int i10, androidx.media3.common.f0 f0Var, e eVar, int[] iArr, String str, String str2) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i11 = 0; i11 < f0Var.f9659a; i11++) {
                aVarBuilder.a(new h(i10, f0Var, i11, eVar, iArr[i11], str, str2));
            }
            return aVarBuilder.e();
        }

        @Override
        public int a() {
            return this.f61711e;
        }

        @Override
        public int compareTo(h hVar) {
            h2 h2VarD = h2.k().h(this.f61712f, hVar.f61712f).g(Integer.valueOf(this.f61715i), Integer.valueOf(hVar.f61715i), Ordering.natural().reverse()).d(this.f61716j, hVar.f61716j).d(this.f61717k, hVar.f61717k).h(this.f61713g, hVar.f61713g).g(Boolean.valueOf(this.f61714h), Boolean.valueOf(hVar.f61714h), this.f61716j == 0 ? Ordering.natural() : Ordering.natural().reverse()).d(this.f61718l, hVar.f61718l);
            if (this.f61717k == 0) {
                h2VarD = h2VarD.i(this.f61719m, hVar.f61719m);
            }
            return h2VarD.j();
        }

        @Override
        public boolean b(h hVar) {
            return false;
        }
    }

    static abstract class i {

        public final int f61720a;

        public final androidx.media3.common.f0 f61721b;

        public final int f61722c;

        public final androidx.media3.common.r f61723d;

        public interface a {
            List a(int i10, androidx.media3.common.f0 f0Var, int[] iArr);
        }

        public i(int i10, androidx.media3.common.f0 f0Var, int i11) {
            this.f61720a = i10;
            this.f61721b = f0Var;
            this.f61722c = i11;
            this.f61723d = f0Var.a(i11);
        }

        public abstract int a();

        public abstract boolean b(i iVar);
    }

    static final class j extends i {

        private final boolean f61724e;

        private final e f61725f;

        private final boolean f61726g;

        private final boolean f61727h;

        private final boolean f61728i;

        private final int f61729j;

        private final int f61730k;

        private final int f61731l;

        private final int f61732m;

        private final int f61733n;

        private final int f61734o;

        private final boolean f61735p;

        private final int f61736q;

        private final boolean f61737r;

        private final int f61738s;

        private final boolean f61739t;

        private final boolean f61740u;

        private final int f61741v;

        /* JADX WARN: Code duplicated, block: B:31:0x004b  */
        /* JADX WARN: Code duplicated, block: B:51:0x0079  */
        /* JADX WARN: Multi-variable type inference failed */
        public j(int i10, androidx.media3.common.f0 f0Var, int i11, e eVar, int i12, String str, int i13, boolean z10) {
            boolean z11;
            boolean z12;
            int i14;
            int iH;
            androidx.media3.common.r rVar;
            int i15;
            int i16;
            int i17;
            androidx.media3.common.r rVar2;
            int i18;
            int i19;
            int i20;
            super(i10, f0Var, i11);
            this.f61725f = eVar;
            int i21 = eVar.f61696r0 ? 24 : 16;
            this.f61737r = eVar.f61695q0 && (i13 & i21) != 0;
            if (!z10 || (((i18 = (rVar2 = this.f61723d).f9856v) != -1 && i18 > eVar.f9689a) || ((i19 = rVar2.f9857w) != -1 && i19 > eVar.f9690b))) {
                z11 = false;
            } else {
                float f10 = rVar2.f9858x;
                if ((f10 == -1.0f || f10 <= eVar.f9691c) && ((i20 = rVar2.f9844j) == -1 || i20 <= eVar.f9692d)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            }
            this.f61724e = z11;
            if (!z10 || (((i15 = (rVar = this.f61723d).f9856v) != -1 && i15 < eVar.f9693e) || ((i16 = rVar.f9857w) != -1 && i16 < eVar.f9694f))) {
                z12 = false;
            } else {
                float f11 = rVar.f9858x;
                if ((f11 == -1.0f || f11 >= eVar.f9695g) && ((i17 = rVar.f9844j) == -1 || i17 >= eVar.f9696h)) {
                    z12 = true;
                } else {
                    z12 = false;
                }
            }
            this.f61726g = z12;
            this.f61727h = x3.l(i12, false);
            androidx.media3.common.r rVar3 = this.f61723d;
            float f12 = rVar3.f9858x;
            this.f61728i = f12 != -1.0f && f12 >= 10.0f;
            this.f61729j = rVar3.f9844j;
            this.f61730k = rVar3.e();
            int i22 = 0;
            while (true) {
                i14 = Integer.MAX_VALUE;
                if (i22 >= eVar.f9702n.size()) {
                    i22 = Integer.MAX_VALUE;
                    iH = 0;
                    break;
                } else {
                    iH = n.H(this.f61723d, (String) eVar.f9702n.get(i22), false);
                    if (iH > 0) {
                        break;
                    } else {
                        i22++;
                    }
                }
            }
            this.f61732m = i22;
            this.f61733n = iH;
            this.f61734o = n.L(this.f61723d.f9840f, eVar.f9703o);
            int i23 = this.f61723d.f9840f;
            this.f61735p = i23 == 0 || (i23 & 1) != 0;
            this.f61736q = n.H(this.f61723d, str, n.a0(str) == null);
            for (int i24 = 0; i24 < eVar.f9701m.size(); i24++) {
                String str2 = this.f61723d.f9849o;
                if (str2 != null && str2.equals(eVar.f9701m.get(i24))) {
                    i14 = i24;
                    break;
                }
            }
            this.f61731l = i14;
            this.f61739t = x3.h(i12) == 128;
            this.f61740u = x3.j(i12) == 64;
            this.f61741v = n.M(this.f61723d.f9849o);
            this.f61738s = j(i12, i21);
        }

        public static int f(j jVar, j jVar2) {
            h2 h2VarH = h2.k().h(jVar.f61727h, jVar2.f61727h).g(Integer.valueOf(jVar.f61732m), Integer.valueOf(jVar2.f61732m), Ordering.natural().reverse()).d(jVar.f61733n, jVar2.f61733n).d(jVar.f61734o, jVar2.f61734o).h(jVar.f61735p, jVar2.f61735p).d(jVar.f61736q, jVar2.f61736q).h(jVar.f61728i, jVar2.f61728i).h(jVar.f61724e, jVar2.f61724e).h(jVar.f61726g, jVar2.f61726g).g(Integer.valueOf(jVar.f61731l), Integer.valueOf(jVar2.f61731l), Ordering.natural().reverse()).h(jVar.f61739t, jVar2.f61739t).h(jVar.f61740u, jVar2.f61740u);
            if (jVar.f61739t && jVar.f61740u) {
                h2VarH = h2VarH.d(jVar.f61741v, jVar2.f61741v);
            }
            return h2VarH.j();
        }

        public static int g(j jVar, j jVar2) {
            Ordering orderingReverse = (jVar.f61724e && jVar.f61727h) ? n.f61662j : n.f61662j.reverse();
            h2 h2VarK = h2.k();
            if (jVar.f61725f.B) {
                h2VarK = h2VarK.g(Integer.valueOf(jVar.f61729j), Integer.valueOf(jVar2.f61729j), n.f61662j.reverse());
            }
            return h2VarK.g(Integer.valueOf(jVar.f61730k), Integer.valueOf(jVar2.f61730k), orderingReverse).g(Integer.valueOf(jVar.f61729j), Integer.valueOf(jVar2.f61729j), orderingReverse).j();
        }

        public static int h(List list, List list2) {
            return h2.k().g((j) Collections.max(list, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return n.j.f((n.j) obj, (n.j) obj2);
                }
            }), (j) Collections.max(list2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return n.j.f((n.j) obj, (n.j) obj2);
                }
            }), new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return n.j.f((n.j) obj, (n.j) obj2);
                }
            }).d(list.size(), list2.size()).g((j) Collections.max(list, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return n.j.g((n.j) obj, (n.j) obj2);
                }
            }), (j) Collections.max(list2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return n.j.g((n.j) obj, (n.j) obj2);
                }
            }), new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return n.j.g((n.j) obj, (n.j) obj2);
                }
            }).j();
        }

        public static ImmutableList i(int i10, androidx.media3.common.f0 f0Var, e eVar, int[] iArr, String str, int i11, Point point) {
            int I = n.I(f0Var, point != null ? point.x : eVar.f9697i, point != null ? point.y : eVar.f9698j, eVar.f9700l);
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i12 = 0; i12 < f0Var.f9659a; i12++) {
                int iE = f0Var.a(i12).e();
                aVarBuilder.a(new j(i10, f0Var, i12, eVar, iArr[i12], str, i11, I == Integer.MAX_VALUE || (iE != -1 && iE <= I)));
            }
            return aVarBuilder.e();
        }

        private int j(int i10, int i11) {
            if ((this.f61723d.f9840f & 16384) != 0 || !x3.l(i10, this.f61725f.A0)) {
                return 0;
            }
            if (!this.f61724e && !this.f61725f.f61694p0) {
                return 0;
            }
            if (x3.l(i10, false) && this.f61726g && this.f61724e && this.f61723d.f9844j != -1) {
                e eVar = this.f61725f;
                if (!eVar.C && !eVar.B && (i10 & i11) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override
        public int a() {
            return this.f61738s;
        }

        @Override
        public boolean b(j jVar) {
            return (this.f61737r || Objects.equals(this.f61723d.f9849o, jVar.f61723d.f9849o)) && (this.f61725f.f61697s0 || (this.f61739t == jVar.f61739t && this.f61740u == jVar.f61740u));
        }
    }

    public n(Context context) {
        this(context, new i2.a.b());
    }

    private static void E(b0.a aVar, e eVar, z.a[] aVarArr) {
        int iD = aVar.d();
        for (int i10 = 0; i10 < iD; i10++) {
            f2.z zVarF = aVar.f(i10);
            if (eVar.j(i10, zVarF)) {
                eVar.i(i10, zVarF);
                aVarArr[i10] = null;
            }
        }
    }

    private static void F(b0.a aVar, h0 h0Var, z.a[] aVarArr) {
        int iD = aVar.d();
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < iD; i10++) {
            G(aVar.f(i10), h0Var, map);
        }
        G(aVar.h(), h0Var, map);
        for (int i11 = 0; i11 < iD; i11++) {
            g0 g0Var = (g0) map.get(Integer.valueOf(aVar.e(i11)));
            if (g0Var != null) {
                aVarArr[i11] = (g0Var.f9668b.isEmpty() || aVar.f(i11).d(g0Var.f9667a) == -1) ? null : new z.a(g0Var.f9667a, Ints.o(g0Var.f9668b));
            }
        }
    }

    private static void G(f2.z zVar, h0 h0Var, Map map) {
        g0 g0Var;
        for (int i10 = 0; i10 < zVar.f59968a; i10++) {
            g0 g0Var2 = (g0) h0Var.D.get(zVar.b(i10));
            if (g0Var2 != null && ((g0Var = (g0) map.get(Integer.valueOf(g0Var2.a()))) == null || (g0Var.f9668b.isEmpty() && !g0Var2.f9668b.isEmpty()))) {
                map.put(Integer.valueOf(g0Var2.a()), g0Var2);
            }
        }
    }

    protected static int H(androidx.media3.common.r rVar, String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && str.equals(rVar.f9838d)) {
            return 4;
        }
        String strA0 = a0(str);
        String strA1 = a0(rVar.f9838d);
        if (strA1 == null || strA0 == null) {
            return (z10 && strA1 == null) ? 1 : 0;
        }
        if (strA1.startsWith(strA0) || strA0.startsWith(strA1)) {
            return 3;
        }
        return a1.p1(strA1, "-")[0].equals(a1.p1(strA0, "-")[0]) ? 2 : 0;
    }

    public static int I(androidx.media3.common.f0 f0Var, int i10, int i11, boolean z10) {
        int i12;
        int i13 = Integer.MAX_VALUE;
        if (i10 != Integer.MAX_VALUE && i11 != Integer.MAX_VALUE) {
            for (int i14 = 0; i14 < f0Var.f9659a; i14++) {
                androidx.media3.common.r rVarA = f0Var.a(i14);
                int i15 = rVarA.f9856v;
                if (i15 > 0 && (i12 = rVarA.f9857w) > 0) {
                    Point pointD = d0.d(z10, i10, i11, i15, i12);
                    int i16 = rVarA.f9856v;
                    int i17 = rVarA.f9857w;
                    int i18 = i16 * i17;
                    if (i16 >= ((int) (pointD.x * 0.98f)) && i17 >= ((int) (pointD.y * 0.98f)) && i18 < i13) {
                        i13 = i18;
                    }
                }
            }
        }
        return i13;
    }

    private static String K(Context context) {
        CaptioningManager captioningManager;
        Locale locale;
        if (context == null || (captioningManager = (CaptioningManager) context.getSystemService("captioning")) == null || !captioningManager.isEnabled() || (locale = captioningManager.getLocale()) == null) {
            return null;
        }
        return a1.e0(locale);
    }

    public static int L(int i10, int i11) {
        if (i10 == 0 || i10 != i11) {
            return Integer.bitCount(i10 & i11);
        }
        return Integer.MAX_VALUE;
    }

    public static int M(String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
            case "video/dolby-vision":
                return 5;
            case "video/av01":
                return 4;
            case "video/hevc":
                return 3;
            case "video/avc":
                return 1;
            case "video/x-vnd.on2.vp9":
                return 2;
            default:
                return 0;
        }
    }

    public boolean Q(androidx.media3.common.r rVar, e eVar) {
        int i10;
        g gVar;
        g gVar2;
        return !eVar.f61704z0 || (i10 = rVar.E) == -1 || i10 <= 2 || (O(rVar) && (a1.f10038a < 32 || (gVar2 = this.f61667h) == null || !gVar2.d())) || (a1.f10038a >= 32 && (gVar = this.f61667h) != null && gVar.d() && this.f61667h.b() && this.f61667h.c() && this.f61667h.a(this.f61668i, rVar));
    }

    private static boolean O(androidx.media3.common.r rVar) {
        String str = rVar.f9849o;
        if (str == null) {
            return false;
        }
        str.hashCode();
        switch (str) {
            case "audio/eac3-joc":
            case "audio/ac3":
            case "audio/ac4":
            case "audio/eac3":
                return true;
            default:
                return false;
        }
    }

    public static boolean P(androidx.media3.common.r rVar) {
        String str = rVar.f9849o;
        if (str == null) {
            return false;
        }
        str.hashCode();
        switch (str) {
            case "audio/eac3-joc":
            case "audio/ac4":
            case "audio/iamf":
                return true;
            default:
                return false;
        }
    }

    public List R(final e eVar, boolean z10, int[] iArr, int i10, androidx.media3.common.f0 f0Var, int[] iArr2) {
        return b.f(i10, f0Var, eVar, iArr2, z10, new com.google.common.base.n() {
            @Override
            public final boolean apply(Object obj) {
                return this.f61660a.Q(eVar, (androidx.media3.common.r) obj);
            }
        }, iArr[i10]);
    }

    public static List S(e eVar, int i10, androidx.media3.common.f0 f0Var, int[] iArr) {
        return c.f(i10, f0Var, eVar, iArr);
    }

    public static List T(e eVar, String str, String str2, int i10, androidx.media3.common.f0 f0Var, int[] iArr) {
        return h.f(i10, f0Var, eVar, iArr, str, str2);
    }

    public static List U(e eVar, String str, int[] iArr, Point point, int i10, androidx.media3.common.f0 f0Var, int[] iArr2) {
        return j.i(i10, f0Var, eVar, iArr2, str, iArr[i10], point);
    }

    public static int V(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    private static void W(e eVar, b0.a aVar, int[][][] iArr, z3[] z3VarArr, z[] zVarArr) {
        int i10 = -1;
        boolean z10 = false;
        int i11 = 0;
        for (int i12 = 0; i12 < aVar.d(); i12++) {
            int iE = aVar.e(i12);
            z zVar = zVarArr[i12];
            if (iE != 1 && zVar != null) {
                return;
            }
            if (iE == 1 && zVar != null && zVar.length() == 1) {
                if (b0(eVar, iArr[i12][aVar.f(i12).d(zVar.getTrackGroup())][zVar.getIndexInTrackGroup(0)], zVar.getSelectedFormat())) {
                    i11++;
                    i10 = i12;
                }
            }
        }
        if (i11 == 1) {
            int i13 = eVar.f9709u.f9720b ? 1 : 2;
            z3 z3Var = z3VarArr[i10];
            if (z3Var != null && z3Var.f13088b) {
                z10 = true;
            }
            z3VarArr[i10] = new z3(i13, z10);
        }
    }

    private static void X(b0.a aVar, int[][][] iArr, z3[] z3VarArr, z[] zVarArr) {
        boolean z10;
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        while (true) {
            if (i12 >= aVar.d()) {
                z10 = true;
                break;
            }
            int iE = aVar.e(i12);
            z zVar = zVarArr[i12];
            if ((iE == 1 || iE == 2) && zVar != null && c0(iArr[i12], aVar.f(i12), zVar)) {
                if (iE == 1) {
                    if (i11 != -1) {
                        z10 = false;
                        break;
                    }
                    i11 = i12;
                } else {
                    if (i10 != -1) {
                        z10 = false;
                        break;
                    }
                    i10 = i12;
                }
            }
            i12++;
        }
        if (z10 && ((i11 == -1 || i10 == -1) ? false : true)) {
            z3 z3Var = new z3(0, true);
            z3VarArr[i11] = z3Var;
            z3VarArr[i10] = z3Var;
        }
    }

    public void Y() {
        boolean z10;
        g gVar;
        synchronized (this.f61663d) {
            try {
                z10 = this.f61666g.f61704z0 && a1.f10038a >= 32 && (gVar = this.f61667h) != null && gVar.d();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            f();
        }
    }

    private void Z(w3 w3Var) {
        boolean z10;
        synchronized (this.f61663d) {
            z10 = this.f61666g.D0;
        }
        if (z10) {
            g(w3Var);
        }
    }

    protected static String a0(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    public static boolean b0(e eVar, int i10, androidx.media3.common.r rVar) {
        if (x3.g(i10) == 0) {
            return false;
        }
        if (eVar.f9709u.f9721c && (x3.g(i10) & 2048) == 0) {
            return false;
        }
        if (eVar.f9709u.f9720b) {
            return !(rVar.H != 0 || rVar.I != 0) || ((x3.g(i10) & 1024) != 0);
        }
        return true;
    }

    private static boolean c0(int[][] iArr, f2.z zVar, z zVar2) {
        if (zVar2 == null) {
            return false;
        }
        int iD = zVar.d(zVar2.getTrackGroup());
        for (int i10 = 0; i10 < zVar2.length(); i10++) {
            if (x3.k(iArr[iD][zVar2.getIndexInTrackGroup(i10)]) != 32) {
                return false;
            }
        }
        return true;
    }

    private Pair i0(int i10, b0.a aVar, int[][][] iArr, i.a aVar2, Comparator comparator) {
        int i11;
        RandomAccess randomAccessOf;
        ArrayList arrayList = new ArrayList();
        int iD = aVar.d();
        int i12 = 0;
        while (i12 < iD) {
            if (i10 == aVar.e(i12)) {
                f2.z zVarF = aVar.f(i12);
                for (int i13 = 0; i13 < zVarF.f59968a; i13++) {
                    androidx.media3.common.f0 f0VarB = zVarF.b(i13);
                    List listA = aVar2.a(i12, f0VarB, iArr[i12][i13]);
                    boolean[] zArr = new boolean[f0VarB.f9659a];
                    int i14 = 0;
                    while (i14 < f0VarB.f9659a) {
                        i iVar = (i) listA.get(i14);
                        int iA = iVar.a();
                        if (zArr[i14] || iA == 0) {
                            i11 = iD;
                        } else {
                            if (iA == 1) {
                                randomAccessOf = ImmutableList.of(iVar);
                                i11 = iD;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(iVar);
                                int i15 = i14 + 1;
                                while (i15 < f0VarB.f9659a) {
                                    i iVar2 = (i) listA.get(i15);
                                    int i16 = iD;
                                    if (iVar2.a() == 2 && iVar.b(iVar2)) {
                                        arrayList2.add(iVar2);
                                        zArr[i15] = true;
                                    }
                                    i15++;
                                    iD = i16;
                                }
                                i11 = iD;
                                randomAccessOf = arrayList2;
                            }
                            arrayList.add(randomAccessOf);
                        }
                        i14++;
                        iD = i11;
                    }
                }
            }
            i12++;
            iD = iD;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i17 = 0; i17 < list.size(); i17++) {
            iArr2[i17] = ((i) list.get(i17)).f61722c;
        }
        i iVar3 = (i) list.get(0);
        return Pair.create(new z.a(iVar3.f61721b, iArr2), Integer.valueOf(iVar3.f61720a));
    }

    private void k0(e eVar) {
        boolean zEquals;
        androidx.media3.common.util.a.e(eVar);
        synchronized (this.f61663d) {
            zEquals = this.f61666g.equals(eVar);
            this.f61666g = eVar;
        }
        if (zEquals) {
            return;
        }
        if (eVar.f61704z0 && this.f61664e == null) {
            androidx.media3.common.util.u.h("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
        f();
    }

    @Override
    public e c() {
        e eVar;
        synchronized (this.f61663d) {
            eVar = this.f61666g;
        }
        return eVar;
    }

    @Override
    public void b(w3 w3Var) {
        Z(w3Var);
    }

    protected z.a[] d0(b0.a aVar, int[][][] iArr, int[] iArr2, e eVar) {
        String str;
        int iD = aVar.d();
        z.a[] aVarArr = new z.a[iD];
        Pair pairE0 = e0(aVar, iArr, iArr2, eVar);
        if (pairE0 != null) {
            aVarArr[((Integer) pairE0.second).intValue()] = (z.a) pairE0.first;
        }
        if (pairE0 == null) {
            str = null;
        } else {
            Object obj = pairE0.first;
            str = ((z.a) obj).f61742a.a(((z.a) obj).f61743b[0]).f9838d;
        }
        Pair pairJ0 = j0(aVar, iArr, iArr2, eVar, str);
        Pair pairF0 = (eVar.A || pairJ0 == null) ? f0(aVar, iArr, eVar) : null;
        if (pairF0 != null) {
            aVarArr[((Integer) pairF0.second).intValue()] = (z.a) pairF0.first;
        } else if (pairJ0 != null) {
            aVarArr[((Integer) pairJ0.second).intValue()] = (z.a) pairJ0.first;
        }
        Pair pairH0 = h0(aVar, iArr, eVar, str);
        if (pairH0 != null) {
            aVarArr[((Integer) pairH0.second).intValue()] = (z.a) pairH0.first;
        }
        for (int i10 = 0; i10 < iD; i10++) {
            int iE = aVar.e(i10);
            if (iE != 2 && iE != 1 && iE != 3 && iE != 4) {
                aVarArr[i10] = g0(iE, aVar.f(i10), iArr[i10], eVar);
            }
        }
        return aVarArr;
    }

    protected Pair e0(b0.a aVar, int[][][] iArr, final int[] iArr2, final e eVar) {
        final boolean z10 = false;
        for (int i10 = 0; i10 < aVar.d(); i10++) {
            if (2 == aVar.e(i10) && aVar.f(i10).f59968a > 0) {
                z10 = true;
                break;
            }
        }
        return i0(1, aVar, iArr, new i.a() {
            @Override
            public final List a(int i11, androidx.media3.common.f0 f0Var, int[] iArr3) {
                return this.f61653a.R(eVar, z10, iArr2, i11, f0Var, iArr3);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return n.b.d((List) obj, (List) obj2);
            }
        });
    }

    protected Pair f0(b0.a aVar, int[][][] iArr, final e eVar) {
        if (eVar.f9709u.f9719a == 2) {
            return null;
        }
        return i0(4, aVar, iArr, new i.a() {
            @Override
            public final List a(int i10, androidx.media3.common.f0 f0Var, int[] iArr2) {
                return n.S(eVar, i10, f0Var, iArr2);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return n.c.d((List) obj, (List) obj2);
            }
        });
    }

    protected z.a g0(int i10, f2.z zVar, int[][] iArr, e eVar) {
        if (eVar.f9709u.f9719a == 2) {
            return null;
        }
        int i11 = 0;
        androidx.media3.common.f0 f0Var = null;
        d dVar = null;
        for (int i12 = 0; i12 < zVar.f59968a; i12++) {
            androidx.media3.common.f0 f0VarB = zVar.b(i12);
            int[] iArr2 = iArr[i12];
            for (int i13 = 0; i13 < f0VarB.f9659a; i13++) {
                if (x3.l(iArr2[i13], eVar.A0)) {
                    d dVar2 = new d(f0VarB.a(i13), iArr2[i13]);
                    if (dVar == null || dVar2.compareTo(dVar) > 0) {
                        f0Var = f0VarB;
                        i11 = i13;
                        dVar = dVar2;
                    }
                }
            }
        }
        if (f0Var == null) {
            return null;
        }
        return new z.a(f0Var, i11);
    }

    @Override
    public boolean h() {
        return true;
    }

    protected Pair h0(b0.a aVar, int[][][] iArr, final e eVar, final String str) {
        if (eVar.f9709u.f9719a == 2) {
            return null;
        }
        final String strK = eVar.f9712x ? K(this.f61664e) : null;
        return i0(3, aVar, iArr, new i.a() {
            @Override
            public final List a(int i10, androidx.media3.common.f0 f0Var, int[] iArr2) {
                return n.T(eVar, str, strK, i10, f0Var, iArr2);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return n.h.d((List) obj, (List) obj2);
            }
        });
    }

    @Override
    public void j() {
        g gVar;
        if (a1.f10038a >= 32 && (gVar = this.f61667h) != null) {
            gVar.e();
        }
        super.j();
    }

    protected Pair j0(b0.a aVar, int[][][] iArr, final int[] iArr2, final e eVar, final String str) {
        Context context;
        final Point pointV = null;
        if (eVar.f9709u.f9719a == 2) {
            return null;
        }
        if (eVar.f9699k && (context = this.f61664e) != null) {
            pointV = a1.V(context);
        }
        return i0(2, aVar, iArr, new i.a() {
            @Override
            public final List a(int i10, androidx.media3.common.f0 f0Var, int[] iArr3) {
                return n.U(eVar, str, iArr2, pointV, i10, f0Var, iArr3);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return n.j.h((List) obj, (List) obj2);
            }
        });
    }

    @Override
    public void l(androidx.media3.common.c cVar) {
        if (this.f61668i.equals(cVar)) {
            return;
        }
        this.f61668i = cVar;
        Y();
    }

    @Override
    public void m(h0 h0Var) {
        if (h0Var instanceof e) {
            k0((e) h0Var);
        }
        k0(new e.a().l0(h0Var).F());
    }

    @Override
    protected final Pair q(b0.a aVar, int[][][] iArr, int[] iArr2, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var) {
        e eVar;
        synchronized (this.f61663d) {
            eVar = this.f61666g;
        }
        if (eVar.f61704z0 && a1.f10038a >= 32 && this.f61667h == null) {
            this.f61667h = new g(this.f61664e, this);
        }
        int iD = aVar.d();
        z.a[] aVarArrD0 = d0(aVar, iArr, iArr2, eVar);
        F(aVar, eVar, aVarArrD0);
        E(aVar, eVar, aVarArrD0);
        for (int i10 = 0; i10 < iD; i10++) {
            int iE = aVar.e(i10);
            if (eVar.h(i10) || eVar.E.contains(Integer.valueOf(iE))) {
                aVarArrD0[i10] = null;
            }
        }
        z[] zVarArrA = this.f61665f.a(aVarArrD0, a(), bVar, e0Var);
        z3[] z3VarArr = new z3[iD];
        for (int i11 = 0; i11 < iD; i11++) {
            z3VarArr[i11] = (eVar.h(i11) || eVar.E.contains(Integer.valueOf(aVar.e(i11))) || (aVar.e(i11) != -2 && zVarArrA[i11] == null)) ? null : z3.f13086c;
        }
        if (eVar.B0) {
            X(aVar, iArr, z3VarArr, zVarArrA);
        }
        if (eVar.f9709u.f9719a != 0) {
            W(eVar, aVar, iArr, z3VarArr, zVarArrA);
        }
        return Pair.create(z3VarArr, zVarArrA);
    }

    public n(Context context, z.b bVar) {
        this(context, e.G0, bVar);
    }

    public n(Context context, h0 h0Var, z.b bVar) {
        this(h0Var, bVar, context);
    }

    private n(h0 h0Var, z.b bVar, Context context) {
        this.f61663d = new Object();
        this.f61664e = context != null ? context.getApplicationContext() : null;
        this.f61665f = bVar;
        if (h0Var instanceof e) {
            this.f61666g = (e) h0Var;
        } else {
            this.f61666g = e.G0.a().l0(h0Var).F();
        }
        this.f61668i = androidx.media3.common.c.f9595g;
        if (this.f61666g.f61704z0 && context == null) {
            androidx.media3.common.util.u.h("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    @Override
    public y3.a d() {
        return this;
    }
}
