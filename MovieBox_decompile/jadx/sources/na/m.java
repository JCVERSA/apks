package na;

import android.content.Context;
import android.graphics.Point;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.core.view.PointerIconCompat;
import androidx.media3.exoplayer.audio.w0;
import com.google.android.exoplayer2.b3;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.z2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.google.common.collect.h2;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;

public class m extends u {

    private static final Ordering f67028k = Ordering.from(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return m.P((Integer) obj, (Integer) obj2);
        }
    });

    private static final Ordering f67029l = Ordering.from(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return m.Q((Integer) obj, (Integer) obj2);
        }
    });

    private final Object f67030d;

    public final Context f67031e;

    private final s.b f67032f;

    private final boolean f67033g;

    private d f67034h;

    private f f67035i;

    private com.google.android.exoplayer2.audio.e f67036j;

    static final class b extends h implements Comparable {

        private final int f67037e;

        private final boolean f67038f;

        private final String f67039g;

        private final d f67040h;

        private final boolean f67041i;

        private final int f67042j;

        private final int f67043k;

        private final int f67044l;

        private final boolean f67045m;

        private final int f67046n;

        private final int f67047o;

        private final boolean f67048p;

        private final int f67049q;

        private final int f67050r;

        private final int f67051s;

        private final int f67052t;

        private final boolean f67053u;

        private final boolean f67054v;

        /* JADX WARN: Multi-variable type inference failed */
        public b(int i10, v9.w wVar, int i11, d dVar, int i12, boolean z10, com.google.common.base.n nVar) {
            int i13;
            int iD;
            int iD2;
            super(i10, wVar, i11);
            this.f67040h = dVar;
            this.f67039g = m.T(this.f67079d.f24892c);
            this.f67041i = m.L(i12, false);
            int i14 = 0;
            while (true) {
                i13 = Integer.MAX_VALUE;
                if (i14 >= dVar.f67123n.size()) {
                    iD = 0;
                    i14 = Integer.MAX_VALUE;
                    break;
                } else {
                    iD = m.D(this.f67079d, (String) dVar.f67123n.get(i14), false);
                    if (iD > 0) {
                        break;
                    } else {
                        i14++;
                    }
                }
            }
            this.f67043k = i14;
            this.f67042j = iD;
            this.f67044l = m.H(this.f67079d.f24894e, dVar.f67124o);
            p1 p1Var = this.f67079d;
            int i15 = p1Var.f24894e;
            this.f67045m = i15 == 0 || (i15 & 1) != 0;
            this.f67048p = (p1Var.f24893d & 1) != 0;
            int i16 = p1Var.f24914y;
            this.f67049q = i16;
            this.f67050r = p1Var.f24915z;
            int i17 = p1Var.f24897h;
            this.f67051s = i17;
            this.f67038f = (i17 == -1 || i17 <= dVar.f67126q) && (i16 == -1 || i16 <= dVar.f67125p) && nVar.apply(p1Var);
            String[] strArrI0 = p0.i0();
            int i18 = 0;
            while (true) {
                if (i18 >= strArrI0.length) {
                    iD2 = 0;
                    i18 = Integer.MAX_VALUE;
                    break;
                } else {
                    iD2 = m.D(this.f67079d, strArrI0[i18], false);
                    if (iD2 > 0) {
                        break;
                    } else {
                        i18++;
                    }
                }
            }
            this.f67046n = i18;
            this.f67047o = iD2;
            for (int i19 = 0; i19 < dVar.f67127r.size(); i19++) {
                String str = this.f67079d.f24901l;
                if (str != null && str.equals(dVar.f67127r.get(i19))) {
                    i13 = i19;
                    break;
                }
            }
            this.f67052t = i13;
            this.f67053u = z2.e(i12) == 128;
            this.f67054v = z2.g(i12) == 64;
            this.f67037e = g(i12, z10);
        }

        public static int d(List list, List list2) {
            return ((b) Collections.max(list)).compareTo((b) Collections.max(list2));
        }

        public static ImmutableList f(int i10, v9.w wVar, d dVar, int[] iArr, boolean z10, com.google.common.base.n nVar) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i11 = 0; i11 < wVar.f73554a; i11++) {
                aVarBuilder.a(new b(i10, wVar, i11, dVar, iArr[i11], z10, nVar));
            }
            return aVarBuilder.e();
        }

        private int g(int i10, boolean z10) {
            if (!m.L(i10, this.f67040h.N)) {
                return 0;
            }
            if (!this.f67038f && !this.f67040h.H) {
                return 0;
            }
            if (m.L(i10, false) && this.f67038f && this.f67079d.f24897h != -1) {
                d dVar = this.f67040h;
                if (!dVar.f67133x && !dVar.f67132w && (dVar.P || !z10)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override
        public int a() {
            return this.f67037e;
        }

        @Override
        public int compareTo(b bVar) {
            Ordering orderingReverse = (this.f67038f && this.f67041i) ? m.f67028k : m.f67028k.reverse();
            h2 h2VarG = h2.k().h(this.f67041i, bVar.f67041i).g(Integer.valueOf(this.f67043k), Integer.valueOf(bVar.f67043k), Ordering.natural().reverse()).d(this.f67042j, bVar.f67042j).d(this.f67044l, bVar.f67044l).h(this.f67048p, bVar.f67048p).h(this.f67045m, bVar.f67045m).g(Integer.valueOf(this.f67046n), Integer.valueOf(bVar.f67046n), Ordering.natural().reverse()).d(this.f67047o, bVar.f67047o).h(this.f67038f, bVar.f67038f).g(Integer.valueOf(this.f67052t), Integer.valueOf(bVar.f67052t), Ordering.natural().reverse()).g(Integer.valueOf(this.f67051s), Integer.valueOf(bVar.f67051s), this.f67040h.f67132w ? m.f67028k.reverse() : m.f67029l).h(this.f67053u, bVar.f67053u).h(this.f67054v, bVar.f67054v).g(Integer.valueOf(this.f67049q), Integer.valueOf(bVar.f67049q), orderingReverse).g(Integer.valueOf(this.f67050r), Integer.valueOf(bVar.f67050r), orderingReverse);
            Integer numValueOf = Integer.valueOf(this.f67051s);
            Integer numValueOf2 = Integer.valueOf(bVar.f67051s);
            if (!p0.c(this.f67039g, bVar.f67039g)) {
                orderingReverse = m.f67029l;
            }
            return h2VarG.g(numValueOf, numValueOf2, orderingReverse).j();
        }

        @Override
        public boolean b(b bVar) {
            int i10;
            String str;
            int i11;
            d dVar = this.f67040h;
            if ((dVar.K || ((i11 = this.f67079d.f24914y) != -1 && i11 == bVar.f67079d.f24914y)) && (dVar.I || ((str = this.f67079d.f24901l) != null && TextUtils.equals(str, bVar.f67079d.f24901l)))) {
                d dVar2 = this.f67040h;
                if ((dVar2.J || ((i10 = this.f67079d.f24915z) != -1 && i10 == bVar.f67079d.f24915z)) && (dVar2.L || (this.f67053u == bVar.f67053u && this.f67054v == bVar.f67054v))) {
                    return true;
                }
            }
            return false;
        }
    }

    private static final class c implements Comparable {

        private final boolean f67055a;

        private final boolean f67056b;

        public c(p1 p1Var, int i10) {
            this.f67055a = (p1Var.f24893d & 1) != 0;
            this.f67056b = m.L(i10, false);
        }

        @Override
        public int compareTo(c cVar) {
            return h2.k().h(this.f67056b, cVar.f67056b).h(this.f67055a, cVar.f67055a).j();
        }
    }

    public static final class d extends z implements com.google.android.exoplayer2.k {
        public static final d S;
        public static final d T;
        public static final com.google.android.exoplayer2.k.a U;
        public final boolean D;
        public final boolean E;
        public final boolean F;
        public final boolean G;
        public final boolean H;
        public final boolean I;
        public final boolean J;
        public final boolean K;
        public final boolean L;
        public final boolean M;
        public final boolean N;
        public final boolean O;
        public final boolean P;
        private final SparseArray Q;
        private final SparseBooleanArray R;

        static {
            d dVarA = new a().A();
            S = dVarA;
            T = dVarA;
            U = new com.google.android.exoplayer2.k.a() {
                @Override
                public final com.google.android.exoplayer2.k a(Bundle bundle) {
                    return m.d.p(bundle);
                }
            };
        }

        private static boolean g(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
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

        private static boolean h(SparseArray sparseArray, SparseArray sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i10));
                if (iIndexOfKey < 0 || !i((Map) sparseArray.valueAt(i10), (Map) sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        private static boolean i(Map map, Map map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry entry : map.entrySet()) {
                v9.y yVar = (v9.y) entry.getKey();
                if (!map2.containsKey(yVar) || !p0.c(entry.getValue(), map2.get(yVar))) {
                    return false;
                }
            }
            return true;
        }

        public static d k(Context context) {
            return new a(context).A();
        }

        private static int[] l(SparseBooleanArray sparseBooleanArray) {
            int[] iArr = new int[sparseBooleanArray.size()];
            for (int i10 = 0; i10 < sparseBooleanArray.size(); i10++) {
                iArr[i10] = sparseBooleanArray.keyAt(i10);
            }
            return iArr;
        }

        public static d p(Bundle bundle) {
            return new a(bundle).A();
        }

        private static void q(Bundle bundle, SparseArray sparseArray) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray2 = new SparseArray();
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                int iKeyAt = sparseArray.keyAt(i10);
                for (Map.Entry entry : ((Map) sparseArray.valueAt(i10)).entrySet()) {
                    e eVar = (e) entry.getValue();
                    if (eVar != null) {
                        sparseArray2.put(arrayList2.size(), eVar);
                    }
                    arrayList2.add((v9.y) entry.getKey());
                    arrayList.add(Integer.valueOf(iKeyAt));
                }
                bundle.putIntArray(z.c(1010), Ints.o(arrayList));
                bundle.putParcelableArrayList(z.c(1011), com.google.android.exoplayer2.util.d.d(arrayList2));
                bundle.putSparseParcelableArray(z.c(1012), com.google.android.exoplayer2.util.d.e(sparseArray2));
            }
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return super.equals(dVar) && this.D == dVar.D && this.E == dVar.E && this.F == dVar.F && this.G == dVar.G && this.H == dVar.H && this.I == dVar.I && this.J == dVar.J && this.K == dVar.K && this.L == dVar.L && this.M == dVar.M && this.N == dVar.N && this.O == dVar.O && this.P == dVar.P && g(this.R, dVar.R) && h(this.Q, dVar.Q);
        }

        @Override
        public int hashCode() {
            return ((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31) + (this.F ? 1 : 0)) * 31) + (this.G ? 1 : 0)) * 31) + (this.H ? 1 : 0)) * 31) + (this.I ? 1 : 0)) * 31) + (this.J ? 1 : 0)) * 31) + (this.K ? 1 : 0)) * 31) + (this.L ? 1 : 0)) * 31) + (this.M ? 1 : 0)) * 31) + (this.N ? 1 : 0)) * 31) + (this.O ? 1 : 0)) * 31) + (this.P ? 1 : 0);
        }

        @Override
        public a a() {
            return new a();
        }

        public boolean m(int i10) {
            return this.R.get(i10);
        }

        public e n(int i10, v9.y yVar) {
            Map map = (Map) this.Q.get(i10);
            if (map != null) {
                return (e) map.get(yVar);
            }
            return null;
        }

        public boolean o(int i10, v9.y yVar) {
            Map map = (Map) this.Q.get(i10);
            return map != null && map.containsKey(yVar);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = super.toBundle();
            bundle.putBoolean(z.c(1000), this.D);
            bundle.putBoolean(z.c(1001), this.E);
            bundle.putBoolean(z.c(1002), this.F);
            bundle.putBoolean(z.c(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW), this.G);
            bundle.putBoolean(z.c(1003), this.H);
            bundle.putBoolean(z.c(1004), this.I);
            bundle.putBoolean(z.c(1005), this.J);
            bundle.putBoolean(z.c(PointerIconCompat.TYPE_CELL), this.K);
            bundle.putBoolean(z.c(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW), this.L);
            bundle.putBoolean(z.c(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW), this.M);
            bundle.putBoolean(z.c(PointerIconCompat.TYPE_CROSSHAIR), this.N);
            bundle.putBoolean(z.c(PointerIconCompat.TYPE_TEXT), this.O);
            bundle.putBoolean(z.c(PointerIconCompat.TYPE_VERTICAL_TEXT), this.P);
            q(bundle, this.Q);
            bundle.putIntArray(z.c(PointerIconCompat.TYPE_ALL_SCROLL), l(this.R));
            return bundle;
        }

        public static final class a extends z.a {
            private boolean A;
            private boolean B;
            private boolean C;
            private boolean D;
            private boolean E;
            private boolean F;
            private boolean G;
            private boolean H;
            private boolean I;
            private boolean J;
            private boolean K;
            private boolean L;
            private boolean M;
            private final SparseArray N;
            private final SparseBooleanArray O;

            private static SparseArray d0(SparseArray sparseArray) {
                SparseArray sparseArray2 = new SparseArray();
                for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                    sparseArray2.put(sparseArray.keyAt(i10), new HashMap((Map) sparseArray.valueAt(i10)));
                }
                return sparseArray2;
            }

            private void e0() {
                this.A = true;
                this.B = false;
                this.C = true;
                this.D = false;
                this.E = true;
                this.F = false;
                this.G = false;
                this.H = false;
                this.I = false;
                this.J = true;
                this.K = true;
                this.L = false;
                this.M = true;
            }

            private SparseBooleanArray f0(int[] iArr) {
                if (iArr == null) {
                    return new SparseBooleanArray();
                }
                SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
                for (int i10 : iArr) {
                    sparseBooleanArray.append(i10, true);
                }
                return sparseBooleanArray;
            }

            /* JADX WARN: Multi-variable type inference failed */
            private void x0(Bundle bundle) {
                int[] intArray = bundle.getIntArray(z.c(1010));
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(z.c(1011));
                ImmutableList immutableListOf = parcelableArrayList == null ? ImmutableList.of() : com.google.android.exoplayer2.util.d.b(v9.y.f73560e, parcelableArrayList);
                SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(z.c(1012));
                SparseArray sparseArray = sparseParcelableArray == null ? new SparseArray() : com.google.android.exoplayer2.util.d.c(e.f67057e, sparseParcelableArray);
                if (intArray == null || intArray.length != immutableListOf.size()) {
                    return;
                }
                for (int i10 = 0; i10 < intArray.length; i10++) {
                    w0(intArray[i10], (v9.y) immutableListOf.get(i10), (e) sparseArray.get(i10));
                }
            }

            @Override
            public a K(int i10, int i11, boolean z10) {
                super.K(i10, i11, z10);
                return this;
            }

            @Override
            public a L(Context context, boolean z10) {
                super.L(context, z10);
                return this;
            }

            @Override
            public d A() {
                return new d(this);
            }

            @Override
            public a B(int i10) {
                super.B(i10);
                return this;
            }

            protected a g0(z zVar) {
                super.E(zVar);
                return this;
            }

            public a h0(boolean z10) {
                this.H = z10;
                return this;
            }

            public a i0(boolean z10) {
                this.I = z10;
                return this;
            }

            public a j0(boolean z10) {
                this.F = z10;
                return this;
            }

            public a k0(boolean z10) {
                this.G = z10;
                return this;
            }

            public a l0(boolean z10) {
                this.M = z10;
                return this;
            }

            public a m0(boolean z10) {
                this.D = z10;
                return this;
            }

            public a n0(boolean z10) {
                this.B = z10;
                return this;
            }

            public a o0(boolean z10) {
                this.C = z10;
                return this;
            }

            public a p0(boolean z10) {
                this.J = z10;
                return this;
            }

            public a q0(boolean z10) {
                this.E = z10;
                return this;
            }

            public a r0(boolean z10) {
                this.K = z10;
                return this;
            }

            public a s0(boolean z10) {
                this.A = z10;
                return this;
            }

            @Override
            public a F(int i10) {
                super.F(i10);
                return this;
            }

            @Override
            public a G(x xVar) {
                super.G(xVar);
                return this;
            }

            @Override
            public a H(Context context) {
                super.H(context);
                return this;
            }

            public a w0(int i10, v9.y yVar, e eVar) {
                Map map = (Map) this.N.get(i10);
                if (map == null) {
                    map = new HashMap();
                    this.N.put(i10, map);
                }
                if (map.containsKey(yVar) && p0.c(map.get(yVar), eVar)) {
                    return this;
                }
                map.put(yVar, eVar);
                return this;
            }

            @Override
            public a J(int i10, boolean z10) {
                super.J(i10, z10);
                return this;
            }

            public a z0(boolean z10) {
                this.L = z10;
                return this;
            }

            @Deprecated
            public a() {
                this.N = new SparseArray();
                this.O = new SparseBooleanArray();
                e0();
            }

            public a(Context context) {
                super(context);
                this.N = new SparseArray();
                this.O = new SparseBooleanArray();
                e0();
            }

            private a(d dVar) {
                super(dVar);
                this.A = dVar.D;
                this.B = dVar.E;
                this.C = dVar.F;
                this.D = dVar.G;
                this.E = dVar.H;
                this.F = dVar.I;
                this.G = dVar.J;
                this.H = dVar.K;
                this.I = dVar.L;
                this.J = dVar.M;
                this.K = dVar.N;
                this.L = dVar.O;
                this.M = dVar.P;
                this.N = d0(dVar.Q);
                this.O = dVar.R.clone();
            }

            private a(Bundle bundle) {
                super(bundle);
                e0();
                d dVar = d.S;
                s0(bundle.getBoolean(z.c(1000), dVar.D));
                n0(bundle.getBoolean(z.c(1001), dVar.E));
                o0(bundle.getBoolean(z.c(1002), dVar.F));
                m0(bundle.getBoolean(z.c(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW), dVar.G));
                q0(bundle.getBoolean(z.c(1003), dVar.H));
                j0(bundle.getBoolean(z.c(1004), dVar.I));
                k0(bundle.getBoolean(z.c(1005), dVar.J));
                h0(bundle.getBoolean(z.c(PointerIconCompat.TYPE_CELL), dVar.K));
                i0(bundle.getBoolean(z.c(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW), dVar.L));
                p0(bundle.getBoolean(z.c(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW), dVar.M));
                r0(bundle.getBoolean(z.c(PointerIconCompat.TYPE_CROSSHAIR), dVar.N));
                z0(bundle.getBoolean(z.c(PointerIconCompat.TYPE_TEXT), dVar.O));
                l0(bundle.getBoolean(z.c(PointerIconCompat.TYPE_VERTICAL_TEXT), dVar.P));
                this.N = new SparseArray();
                x0(bundle);
                this.O = f0(bundle.getIntArray(z.c(PointerIconCompat.TYPE_ALL_SCROLL)));
            }
        }

        private d(a aVar) {
            super(aVar);
            this.D = aVar.A;
            this.E = aVar.B;
            this.F = aVar.C;
            this.G = aVar.D;
            this.H = aVar.E;
            this.I = aVar.F;
            this.J = aVar.G;
            this.K = aVar.H;
            this.L = aVar.I;
            this.M = aVar.J;
            this.N = aVar.K;
            this.O = aVar.L;
            this.P = aVar.M;
            this.Q = aVar.N;
            this.R = aVar.O;
        }
    }

    public static final class e implements com.google.android.exoplayer2.k {

        public static final com.google.android.exoplayer2.k.a f67057e = new com.google.android.exoplayer2.k.a() {
            @Override
            public final com.google.android.exoplayer2.k a(Bundle bundle) {
                return m.e.c(bundle);
            }
        };

        public final int f67058a;

        public final int[] f67059b;

        public final int f67060c;

        public final int f67061d;

        public e(int i10, int[] iArr, int i11) {
            this.f67058a = i10;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.f67059b = iArrCopyOf;
            this.f67060c = iArr.length;
            this.f67061d = i11;
            Arrays.sort(iArrCopyOf);
        }

        private static String b(int i10) {
            return Integer.toString(i10, 36);
        }

        public static e c(Bundle bundle) {
            boolean z10 = false;
            int i10 = bundle.getInt(b(0), -1);
            int[] intArray = bundle.getIntArray(b(1));
            int i11 = bundle.getInt(b(2), -1);
            if (i10 >= 0 && i11 >= 0) {
                z10 = true;
            }
            com.google.android.exoplayer2.util.a.a(z10);
            com.google.android.exoplayer2.util.a.e(intArray);
            return new e(i10, intArray, i11);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f67058a == eVar.f67058a && Arrays.equals(this.f67059b, eVar.f67059b) && this.f67061d == eVar.f67061d;
        }

        public int hashCode() {
            return (((this.f67058a * 31) + Arrays.hashCode(this.f67059b)) * 31) + this.f67061d;
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(b(0), this.f67058a);
            bundle.putIntArray(b(1), this.f67059b);
            bundle.putInt(b(2), this.f67061d);
            return bundle;
        }
    }

    private static class f {

        private final Spatializer f67062a;

        private final boolean f67063b;

        private Handler f67064c;

        private Spatializer$OnSpatializerStateChangedListener f67065d;

        class a implements Spatializer$OnSpatializerStateChangedListener {

            final m f67066a;

            a(f fVar, m mVar) {
                this.f67066a = mVar;
            }

            public void onSpatializerAvailableChanged(Spatializer spatializer, boolean z10) {
                this.f67066a.S();
            }

            public void onSpatializerEnabledChanged(Spatializer spatializer, boolean z10) {
                this.f67066a.S();
            }
        }

        private f(Spatializer spatializer) {
            this.f67062a = spatializer;
            this.f67063b = spatializer.getImmersiveAudioLevel() != 0;
        }

        public static f g(Context context) {
            AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            if (audioManager == null) {
                return null;
            }
            return new f(audioManager.getSpatializer());
        }

        public boolean a(com.google.android.exoplayer2.audio.e eVar, p1 p1Var) {
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(p0.G((MimeTypes.AUDIO_E_AC3_JOC.equals(p1Var.f24901l) && p1Var.f24914y == 16) ? 12 : p1Var.f24914y));
            int i10 = p1Var.f24915z;
            if (i10 != -1) {
                channelMask.setSampleRate(i10);
            }
            return this.f67062a.canBeSpatialized(eVar.b().f23950a, channelMask.build());
        }

        public void b(m mVar, Looper looper) {
            if (this.f67065d == null && this.f67064c == null) {
                this.f67065d = new a(this, mVar);
                Handler handler = new Handler(looper);
                this.f67064c = handler;
                Spatializer spatializer = this.f67062a;
                Objects.requireNonNull(handler);
                spatializer.addOnSpatializerStateChangedListener(new w0(handler), this.f67065d);
            }
        }

        public boolean c() {
            return this.f67062a.isAvailable();
        }

        public boolean d() {
            return this.f67062a.isEnabled();
        }

        public boolean e() {
            return this.f67063b;
        }

        public void f() {
            Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener = this.f67065d;
            if (spatializer$OnSpatializerStateChangedListener == null || this.f67064c == null) {
                return;
            }
            this.f67062a.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
            ((Handler) p0.j(this.f67064c)).removeCallbacksAndMessages(null);
            this.f67064c = null;
            this.f67065d = null;
        }
    }

    static final class g extends h implements Comparable {

        private final int f67067e;

        private final boolean f67068f;

        private final boolean f67069g;

        private final boolean f67070h;

        private final int f67071i;

        private final int f67072j;

        private final int f67073k;

        private final int f67074l;

        private final boolean f67075m;

        /* JADX WARN: Multi-variable type inference failed */
        public g(int i10, v9.w wVar, int i11, d dVar, int i12, String str) {
            int iD;
            super(i10, wVar, i11);
            int i13 = 0;
            this.f67068f = m.L(i12, false);
            int i14 = this.f67079d.f24893d & (~dVar.f67130u);
            this.f67069g = (i14 & 1) != 0;
            this.f67070h = (i14 & 2) != 0;
            ImmutableList immutableListOf = dVar.f67128s.isEmpty() ? ImmutableList.of("") : dVar.f67128s;
            int i15 = 0;
            while (true) {
                if (i15 >= immutableListOf.size()) {
                    i15 = Integer.MAX_VALUE;
                    iD = 0;
                    break;
                } else {
                    iD = m.D(this.f67079d, (String) immutableListOf.get(i15), dVar.f67131v);
                    if (iD > 0) {
                        break;
                    } else {
                        i15++;
                    }
                }
            }
            this.f67071i = i15;
            this.f67072j = iD;
            int iH = m.H(this.f67079d.f24894e, dVar.f67129t);
            this.f67073k = iH;
            this.f67075m = (this.f67079d.f24894e & 1088) != 0;
            int iD2 = m.D(this.f67079d, str, m.T(str) == null);
            this.f67074l = iD2;
            boolean z10 = iD > 0 || (dVar.f67128s.isEmpty() && iH > 0) || this.f67069g || (this.f67070h && iD2 > 0);
            if (m.L(i12, dVar.N) && z10) {
                i13 = 1;
            }
            this.f67067e = i13;
        }

        public static int d(List list, List list2) {
            return ((g) list.get(0)).compareTo((g) list2.get(0));
        }

        public static ImmutableList f(int i10, v9.w wVar, d dVar, int[] iArr, String str) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i11 = 0; i11 < wVar.f73554a; i11++) {
                aVarBuilder.a(new g(i10, wVar, i11, dVar, iArr[i11], str));
            }
            return aVarBuilder.e();
        }

        @Override
        public int a() {
            return this.f67067e;
        }

        @Override
        public int compareTo(g gVar) {
            h2 h2VarD = h2.k().h(this.f67068f, gVar.f67068f).g(Integer.valueOf(this.f67071i), Integer.valueOf(gVar.f67071i), Ordering.natural().reverse()).d(this.f67072j, gVar.f67072j).d(this.f67073k, gVar.f67073k).h(this.f67069g, gVar.f67069g).g(Boolean.valueOf(this.f67070h), Boolean.valueOf(gVar.f67070h), this.f67072j == 0 ? Ordering.natural() : Ordering.natural().reverse()).d(this.f67074l, gVar.f67074l);
            if (this.f67073k == 0) {
                h2VarD = h2VarD.i(this.f67075m, gVar.f67075m);
            }
            return h2VarD.j();
        }

        @Override
        public boolean b(g gVar) {
            return false;
        }
    }

    static abstract class h {

        public final int f67076a;

        public final v9.w f67077b;

        public final int f67078c;

        public final p1 f67079d;

        public interface a {
            List a(int i10, v9.w wVar, int[] iArr);
        }

        public h(int i10, v9.w wVar, int i11) {
            this.f67076a = i10;
            this.f67077b = wVar;
            this.f67078c = i11;
            this.f67079d = wVar.c(i11);
        }

        public abstract int a();

        public abstract boolean b(h hVar);
    }

    static final class i extends h {

        private final boolean f67080e;

        private final d f67081f;

        private final boolean f67082g;

        private final boolean f67083h;

        private final int f67084i;

        private final int f67085j;

        private final int f67086k;

        private final int f67087l;

        private final boolean f67088m;

        private final boolean f67089n;

        private final int f67090o;

        private final boolean f67091p;

        private final boolean f67092q;

        private final int f67093r;

        /* JADX WARN: Code duplicated, block: B:31:0x004b  */
        /* JADX WARN: Code duplicated, block: B:51:0x0079  */
        public i(int i10, v9.w wVar, int i11, d dVar, int i12, int i13, boolean z10) {
            boolean z11;
            boolean z12;
            p1 p1Var;
            int i14;
            int i15;
            int i16;
            p1 p1Var2;
            int i17;
            int i18;
            int i19;
            super(i10, wVar, i11);
            this.f67081f = dVar;
            int i20 = dVar.F ? 24 : 16;
            this.f67089n = dVar.E && (i13 & i20) != 0;
            if (!z10 || (((i17 = (p1Var2 = this.f67079d).f24906q) != -1 && i17 > dVar.f67110a) || ((i18 = p1Var2.f24907r) != -1 && i18 > dVar.f67111b))) {
                z11 = false;
            } else {
                float f10 = p1Var2.f24908s;
                if ((f10 == -1.0f || f10 <= dVar.f67112c) && ((i19 = p1Var2.f24897h) == -1 || i19 <= dVar.f67113d)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            }
            this.f67080e = z11;
            if (!z10 || (((i14 = (p1Var = this.f67079d).f24906q) != -1 && i14 < dVar.f67114e) || ((i15 = p1Var.f24907r) != -1 && i15 < dVar.f67115f))) {
                z12 = false;
            } else {
                float f11 = p1Var.f24908s;
                if ((f11 == -1.0f || f11 >= dVar.f67116g) && ((i16 = p1Var.f24897h) == -1 || i16 >= dVar.f67117h)) {
                    z12 = true;
                } else {
                    z12 = false;
                }
            }
            this.f67082g = z12;
            this.f67083h = m.L(i12, false);
            p1 p1Var3 = this.f67079d;
            this.f67084i = p1Var3.f24897h;
            this.f67085j = p1Var3.f();
            this.f67087l = m.H(this.f67079d.f24894e, dVar.f67122m);
            int i21 = this.f67079d.f24894e;
            this.f67088m = i21 == 0 || (i21 & 1) != 0;
            int i22 = 0;
            while (true) {
                if (i22 >= dVar.f67121l.size()) {
                    i22 = Integer.MAX_VALUE;
                    break;
                }
                String str = this.f67079d.f24901l;
                if (str != null && str.equals(dVar.f67121l.get(i22))) {
                    break;
                } else {
                    i22++;
                }
            }
            this.f67086k = i22;
            this.f67091p = z2.e(i12) == 128;
            this.f67092q = z2.g(i12) == 64;
            this.f67093r = m.I(this.f67079d.f24901l);
            this.f67090o = j(i12, i20);
        }

        public static int f(i iVar, i iVar2) {
            h2 h2VarH = h2.k().h(iVar.f67083h, iVar2.f67083h).d(iVar.f67087l, iVar2.f67087l).h(iVar.f67088m, iVar2.f67088m).h(iVar.f67080e, iVar2.f67080e).h(iVar.f67082g, iVar2.f67082g).g(Integer.valueOf(iVar.f67086k), Integer.valueOf(iVar2.f67086k), Ordering.natural().reverse()).h(iVar.f67091p, iVar2.f67091p).h(iVar.f67092q, iVar2.f67092q);
            if (iVar.f67091p && iVar.f67092q) {
                h2VarH = h2VarH.d(iVar.f67093r, iVar2.f67093r);
            }
            return h2VarH.j();
        }

        public static int g(i iVar, i iVar2) {
            Ordering orderingReverse = (iVar.f67080e && iVar.f67083h) ? m.f67028k : m.f67028k.reverse();
            return h2.k().g(Integer.valueOf(iVar.f67084i), Integer.valueOf(iVar2.f67084i), iVar.f67081f.f67132w ? m.f67028k.reverse() : m.f67029l).g(Integer.valueOf(iVar.f67085j), Integer.valueOf(iVar2.f67085j), orderingReverse).g(Integer.valueOf(iVar.f67084i), Integer.valueOf(iVar2.f67084i), orderingReverse).j();
        }

        public static int h(List list, List list2) {
            return h2.k().g((i) Collections.max(list, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return m.i.f((m.i) obj, (m.i) obj2);
                }
            }), (i) Collections.max(list2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return m.i.f((m.i) obj, (m.i) obj2);
                }
            }), new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return m.i.f((m.i) obj, (m.i) obj2);
                }
            }).d(list.size(), list2.size()).g((i) Collections.max(list, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return m.i.g((m.i) obj, (m.i) obj2);
                }
            }), (i) Collections.max(list2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return m.i.g((m.i) obj, (m.i) obj2);
                }
            }), new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return m.i.g((m.i) obj, (m.i) obj2);
                }
            }).j();
        }

        public static ImmutableList i(int i10, v9.w wVar, d dVar, int[] iArr, int i11) {
            int iE = m.E(wVar, dVar.f67118i, dVar.f67119j, dVar.f67120k);
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i12 = 0; i12 < wVar.f73554a; i12++) {
                int iF = wVar.c(i12).f();
                aVarBuilder.a(new i(i10, wVar, i12, dVar, iArr[i12], i11, iE == Integer.MAX_VALUE || (iF != -1 && iF <= iE)));
            }
            return aVarBuilder.e();
        }

        private int j(int i10, int i11) {
            if ((this.f67079d.f24894e & 16384) != 0 || !m.L(i10, this.f67081f.N)) {
                return 0;
            }
            if (!this.f67080e && !this.f67081f.D) {
                return 0;
            }
            if (m.L(i10, false) && this.f67082g && this.f67080e && this.f67079d.f24897h != -1) {
                d dVar = this.f67081f;
                if (!dVar.f67133x && !dVar.f67132w && (i10 & i11) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override
        public int a() {
            return this.f67090o;
        }

        @Override
        public boolean b(i iVar) {
            return (this.f67089n || p0.c(this.f67079d.f24901l, iVar.f67079d.f24901l)) && (this.f67081f.G || (this.f67091p == iVar.f67091p && this.f67092q == iVar.f67092q));
        }
    }

    @Deprecated
    public m() {
        this(d.S, new na.a.b());
    }

    private static void A(u.a aVar, d dVar, s.a[] aVarArr) {
        int iD = aVar.d();
        for (int i10 = 0; i10 < iD; i10++) {
            v9.y yVarF = aVar.f(i10);
            if (dVar.o(i10, yVarF)) {
                e eVarN = dVar.n(i10, yVarF);
                aVarArr[i10] = (eVarN == null || eVarN.f67059b.length == 0) ? null : new s.a(yVarF.b(eVarN.f67058a), eVarN.f67059b, eVarN.f67061d);
            }
        }
    }

    private static void B(u.a aVar, z zVar, s.a[] aVarArr) {
        int iD = aVar.d();
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < iD; i10++) {
            C(aVar.f(i10), zVar, map);
        }
        C(aVar.h(), zVar, map);
        for (int i11 = 0; i11 < iD; i11++) {
            x xVar = (x) map.get(Integer.valueOf(aVar.e(i11)));
            if (xVar != null) {
                aVarArr[i11] = (xVar.f67109b.isEmpty() || aVar.f(i11).c(xVar.f67108a) == -1) ? null : new s.a(xVar.f67108a, Ints.o(xVar.f67109b));
            }
        }
    }

    private static void C(v9.y yVar, z zVar, Map map) {
        x xVar;
        for (int i10 = 0; i10 < yVar.f73561a; i10++) {
            x xVar2 = (x) zVar.f67134y.get(yVar.b(i10));
            if (xVar2 != null && ((xVar = (x) map.get(Integer.valueOf(xVar2.b()))) == null || (xVar.f67109b.isEmpty() && !xVar2.f67109b.isEmpty()))) {
                map.put(Integer.valueOf(xVar2.b()), xVar2);
            }
        }
    }

    protected static int D(p1 p1Var, String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && str.equals(p1Var.f24892c)) {
            return 4;
        }
        String strT = T(str);
        String strT2 = T(p1Var.f24892c);
        if (strT2 == null || strT == null) {
            return (z10 && strT2 == null) ? 1 : 0;
        }
        if (strT2.startsWith(strT) || strT.startsWith(strT2)) {
            return 3;
        }
        return p0.T0(strT2, "-")[0].equals(p0.T0(strT, "-")[0]) ? 2 : 0;
    }

    public static int E(v9.w wVar, int i10, int i11, boolean z10) {
        int i12;
        int i13 = Integer.MAX_VALUE;
        if (i10 != Integer.MAX_VALUE && i11 != Integer.MAX_VALUE) {
            for (int i14 = 0; i14 < wVar.f73554a; i14++) {
                p1 p1VarC = wVar.c(i14);
                int i15 = p1VarC.f24906q;
                if (i15 > 0 && (i12 = p1VarC.f24907r) > 0) {
                    Point pointF = F(z10, i10, i11, i15, i12);
                    int i16 = p1VarC.f24906q;
                    int i17 = p1VarC.f24907r;
                    int i18 = i16 * i17;
                    if (i16 >= ((int) (pointF.x * 0.98f)) && i17 >= ((int) (pointF.y * 0.98f)) && i18 < i13) {
                        i13 = i18;
                    }
                }
            }
        }
        return i13;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x000f  */
    private static Point F(boolean z10, int i10, int i11, int i12, int i13) {
        if (z10) {
            if ((i12 > i13) == (i10 > i11)) {
                i11 = i10;
                i10 = i11;
            }
        } else {
            i11 = i10;
            i10 = i11;
        }
        int i14 = i12 * i10;
        int i15 = i13 * i11;
        return i14 >= i15 ? new Point(i11, p0.l(i15, i12)) : new Point(p0.l(i14, i13), i10);
    }

    public static int H(int i10, int i11) {
        if (i10 == 0 || i10 != i11) {
            return Integer.bitCount(i10 & i11);
        }
        return Integer.MAX_VALUE;
    }

    public static int I(String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
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

    public boolean J(p1 p1Var) {
        boolean z10;
        f fVar;
        f fVar2;
        synchronized (this.f67030d) {
            try {
                if (this.f67034h.M && !this.f67033g && p1Var.f24914y > 2 && (!K(p1Var) || (p0.f26854a >= 32 && (fVar2 = this.f67035i) != null && fVar2.e()))) {
                    z10 = p0.f26854a >= 32 && (fVar = this.f67035i) != null && fVar.e() && this.f67035i.c() && this.f67035i.d() && this.f67035i.a(this.f67036j, p1Var);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    private static boolean K(p1 p1Var) {
        String str = p1Var.f24901l;
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

    protected static boolean L(int i10, boolean z10) {
        int iF = z2.f(i10);
        return iF == 4 || (z10 && iF == 3);
    }

    public List M(d dVar, boolean z10, int i10, v9.w wVar, int[] iArr) {
        return b.f(i10, wVar, dVar, iArr, z10, new com.google.common.base.n() {
            @Override
            public final boolean apply(Object obj) {
                return this.f67027a.J((p1) obj);
            }
        });
    }

    public static List N(d dVar, String str, int i10, v9.w wVar, int[] iArr) {
        return g.f(i10, wVar, dVar, iArr, str);
    }

    public static List O(d dVar, int[] iArr, int i10, v9.w wVar, int[] iArr2) {
        return i.i(i10, wVar, dVar, iArr2, iArr[i10]);
    }

    public static int P(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    public static int Q(Integer num, Integer num2) {
        return 0;
    }

    private static void R(u.a aVar, int[][][] iArr, b3[] b3VarArr, s[] sVarArr) {
        boolean z10;
        boolean z11 = false;
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        while (true) {
            if (i12 >= aVar.d()) {
                z10 = true;
                break;
            }
            int iE = aVar.e(i12);
            s sVar = sVarArr[i12];
            if ((iE == 1 || iE == 2) && sVar != null && U(iArr[i12], aVar.f(i12), sVar)) {
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
        if (i11 != -1 && i10 != -1) {
            z11 = true;
        }
        if (z10 && z11) {
            b3 b3Var = new b3(true);
            b3VarArr[i11] = b3Var;
            b3VarArr[i10] = b3Var;
        }
    }

    public void S() {
        boolean z10;
        f fVar;
        synchronized (this.f67030d) {
            try {
                z10 = this.f67034h.M && !this.f67033g && p0.f26854a >= 32 && (fVar = this.f67035i) != null && fVar.e();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            d();
        }
    }

    protected static String T(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    private static boolean U(int[][] iArr, v9.y yVar, s sVar) {
        if (sVar == null) {
            return false;
        }
        int iC = yVar.c(sVar.getTrackGroup());
        for (int i10 = 0; i10 < sVar.length(); i10++) {
            if (z2.h(iArr[iC][sVar.getIndexInTrackGroup(i10)]) != 32) {
                return false;
            }
        }
        return true;
    }

    private Pair Z(int i10, u.a aVar, int[][][] iArr, h.a aVar2, Comparator comparator) {
        int i11;
        RandomAccess randomAccessOf;
        ArrayList arrayList = new ArrayList();
        int iD = aVar.d();
        int i12 = 0;
        while (i12 < iD) {
            if (i10 == aVar.e(i12)) {
                v9.y yVarF = aVar.f(i12);
                for (int i13 = 0; i13 < yVarF.f73561a; i13++) {
                    v9.w wVarB = yVarF.b(i13);
                    List listA = aVar2.a(i12, wVarB, iArr[i12][i13]);
                    boolean[] zArr = new boolean[wVarB.f73554a];
                    int i14 = 0;
                    while (i14 < wVarB.f73554a) {
                        h hVar = (h) listA.get(i14);
                        int iA = hVar.a();
                        if (zArr[i14] || iA == 0) {
                            i11 = iD;
                        } else {
                            if (iA == 1) {
                                randomAccessOf = ImmutableList.of(hVar);
                                i11 = iD;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(hVar);
                                int i15 = i14 + 1;
                                while (i15 < wVarB.f73554a) {
                                    h hVar2 = (h) listA.get(i15);
                                    int i16 = iD;
                                    if (hVar2.a() == 2 && hVar.b(hVar2)) {
                                        arrayList2.add(hVar2);
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
            iArr2[i17] = ((h) list.get(i17)).f67078c;
        }
        h hVar3 = (h) list.get(0);
        return Pair.create(new s.a(hVar3.f67077b, iArr2), Integer.valueOf(hVar3.f67076a));
    }

    private void b0(d dVar) {
        boolean zEquals;
        com.google.android.exoplayer2.util.a.e(dVar);
        synchronized (this.f67030d) {
            zEquals = this.f67034h.equals(dVar);
            this.f67034h = dVar;
        }
        if (zEquals) {
            return;
        }
        if (dVar.M && this.f67031e == null) {
            com.google.android.exoplayer2.util.s.i("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
        d();
    }

    @Override
    public d b() {
        d dVar;
        synchronized (this.f67030d) {
            dVar = this.f67034h;
        }
        return dVar;
    }

    protected s.a[] V(u.a aVar, int[][][] iArr, int[] iArr2, d dVar) {
        String str;
        int iD = aVar.d();
        s.a[] aVarArr = new s.a[iD];
        Pair pairA0 = a0(aVar, iArr, iArr2, dVar);
        if (pairA0 != null) {
            aVarArr[((Integer) pairA0.second).intValue()] = (s.a) pairA0.first;
        }
        Pair pairW = W(aVar, iArr, iArr2, dVar);
        if (pairW != null) {
            aVarArr[((Integer) pairW.second).intValue()] = (s.a) pairW.first;
        }
        if (pairW == null) {
            str = null;
        } else {
            Object obj = pairW.first;
            str = ((s.a) obj).f67094a.c(((s.a) obj).f67095b[0]).f24892c;
        }
        Pair pairY = Y(aVar, iArr, dVar, str);
        if (pairY != null) {
            aVarArr[((Integer) pairY.second).intValue()] = (s.a) pairY.first;
        }
        for (int i10 = 0; i10 < iD; i10++) {
            int iE = aVar.e(i10);
            if (iE != 2 && iE != 1 && iE != 3) {
                aVarArr[i10] = X(iE, aVar.f(i10), iArr[i10], dVar);
            }
        }
        return aVarArr;
    }

    protected Pair W(u.a aVar, int[][][] iArr, int[] iArr2, final d dVar) {
        final boolean z10 = false;
        for (int i10 = 0; i10 < aVar.d(); i10++) {
            if (2 == aVar.e(i10) && aVar.f(i10).f73561a > 0) {
                z10 = true;
                break;
            }
        }
        return Z(1, aVar, iArr, new h.a() {
            @Override
            public final List a(int i11, v9.w wVar, int[] iArr3) {
                return this.f67022a.M(dVar, z10, i11, wVar, iArr3);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return m.b.d((List) obj, (List) obj2);
            }
        });
    }

    protected s.a X(int i10, v9.y yVar, int[][] iArr, d dVar) {
        v9.w wVar = null;
        c cVar = null;
        int i11 = 0;
        for (int i12 = 0; i12 < yVar.f73561a; i12++) {
            v9.w wVarB = yVar.b(i12);
            int[] iArr2 = iArr[i12];
            for (int i13 = 0; i13 < wVarB.f73554a; i13++) {
                if (L(iArr2[i13], dVar.N)) {
                    c cVar2 = new c(wVarB.c(i13), iArr2[i13]);
                    if (cVar == null || cVar2.compareTo(cVar) > 0) {
                        wVar = wVarB;
                        i11 = i13;
                        cVar = cVar2;
                    }
                }
            }
        }
        if (wVar == null) {
            return null;
        }
        return new s.a(wVar, i11);
    }

    protected Pair Y(u.a aVar, int[][][] iArr, final d dVar, final String str) {
        return Z(3, aVar, iArr, new h.a() {
            @Override
            public final List a(int i10, v9.w wVar, int[] iArr2) {
                return m.N(dVar, str, i10, wVar, iArr2);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return m.g.d((List) obj, (List) obj2);
            }
        });
    }

    protected Pair a0(u.a aVar, int[][][] iArr, final int[] iArr2, final d dVar) {
        return Z(2, aVar, iArr, new h.a() {
            @Override
            public final List a(int i10, v9.w wVar, int[] iArr3) {
                return m.O(dVar, iArr2, i10, wVar, iArr3);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return m.i.h((List) obj, (List) obj2);
            }
        });
    }

    @Override
    public boolean e() {
        return true;
    }

    @Override
    public void g() {
        f fVar;
        synchronized (this.f67030d) {
            try {
                if (p0.f26854a >= 32 && (fVar = this.f67035i) != null) {
                    fVar.f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        super.g();
    }

    @Override
    public void i(com.google.android.exoplayer2.audio.e eVar) {
        boolean zEquals;
        synchronized (this.f67030d) {
            zEquals = this.f67036j.equals(eVar);
            this.f67036j = eVar;
        }
        if (zEquals) {
            return;
        }
        S();
    }

    @Override
    public void j(z zVar) {
        if (zVar instanceof d) {
            b0((d) zVar);
        }
        b0(new d.a().g0(zVar).A());
    }

    @Override
    protected final Pair n(u.a aVar, int[][][] iArr, int[] iArr2, com.google.android.exoplayer2.source.o.b bVar, l3 l3Var) {
        d dVar;
        f fVar;
        synchronized (this.f67030d) {
            try {
                dVar = this.f67034h;
                if (dVar.M && p0.f26854a >= 32 && (fVar = this.f67035i) != null) {
                    fVar.b(this, (Looper) com.google.android.exoplayer2.util.a.i(Looper.myLooper()));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int iD = aVar.d();
        s.a[] aVarArrV = V(aVar, iArr, iArr2, dVar);
        B(aVar, dVar, aVarArrV);
        A(aVar, dVar, aVarArrV);
        for (int i10 = 0; i10 < iD; i10++) {
            int iE = aVar.e(i10);
            if (dVar.m(i10) || dVar.f67135z.contains(Integer.valueOf(iE))) {
                aVarArrV[i10] = null;
            }
        }
        s[] sVarArrA = this.f67032f.a(aVarArrV, a(), bVar, l3Var);
        b3[] b3VarArr = new b3[iD];
        for (int i11 = 0; i11 < iD; i11++) {
            b3VarArr[i11] = (dVar.m(i11) || dVar.f67135z.contains(Integer.valueOf(aVar.e(i11))) || (aVar.e(i11) != -2 && sVarArrA[i11] == null)) ? null : b3.f24163b;
        }
        if (dVar.O) {
            R(aVar, iArr, b3VarArr, sVarArrA);
        }
        return Pair.create(b3VarArr, sVarArrA);
    }

    public m(Context context) {
        this(context, new na.a.b());
    }

    public m(Context context, s.b bVar) {
        this(context, d.k(context), bVar);
    }

    public m(z zVar, s.b bVar) {
        this(zVar, bVar, (Context) null);
    }

    public m(Context context, z zVar, s.b bVar) {
        this(zVar, bVar, context);
    }

    private m(z zVar, s.b bVar, Context context) {
        this.f67030d = new Object();
        this.f67031e = context != null ? context.getApplicationContext() : null;
        this.f67032f = bVar;
        if (zVar instanceof d) {
            this.f67034h = (d) zVar;
        } else {
            this.f67034h = (context == null ? d.S : d.k(context)).a().g0(zVar).A();
        }
        this.f67036j = com.google.android.exoplayer2.audio.e.f23942g;
        boolean z10 = context != null && p0.x0(context);
        this.f67033g = z10;
        if (!z10 && context != null && p0.f26854a >= 32) {
            this.f67035i = f.g(context);
        }
        if (this.f67034h.M && context == null) {
            com.google.android.exoplayer2.util.s.i("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }
}
