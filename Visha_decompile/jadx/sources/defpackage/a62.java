package defpackage;

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
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.k;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;

public class a62 extends hy5 {
    public static final Ordering k = Ordering.from(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return a62.M((Integer) obj, (Integer) obj2);
        }
    });
    public static final Ordering l = Ordering.from(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return a62.N((Integer) obj, (Integer) obj2);
        }
    });
    public final Object d;
    public final Context e;
    public final qi3.b f;
    public final boolean g;
    public d h;
    public f i;
    public com.google.android.exoplayer2.audio.a j;

    public static final class b extends h implements Comparable {
        public final int f;
        public final boolean g;
        public final String h;
        public final d i;
        public final boolean j;
        public final int k;
        public final int l;
        public final int m;
        public final boolean n;
        public final int o;
        public final int p;
        public final boolean q;
        public final int r;
        public final int s;
        public final int t;
        public final int u;
        public final boolean v;
        public final boolean w;

        /* JADX WARN: Multi-variable type inference failed */
        public b(int i, zua zuaVar, int i2, d dVar, int i3, boolean z, he8 he8Var) {
            int i4;
            int iB;
            int iB2;
            super(i, zuaVar, i2);
            this.i = dVar;
            this.h = a62.Q(this.e.d);
            this.j = a62.I(i3, false);
            int i5 = 0;
            while (true) {
                i4 = Integer.MAX_VALUE;
                if (i5 >= dVar.o.size()) {
                    iB = 0;
                    i5 = Integer.MAX_VALUE;
                    break;
                } else {
                    iB = a62.B(this.e, (String) dVar.o.get(i5), false);
                    if (iB > 0) {
                        break;
                    } else {
                        i5++;
                    }
                }
            }
            this.l = i5;
            this.k = iB;
            this.m = a62.E(this.e.f, dVar.p);
            k kVar = this.e;
            int i6 = kVar.f;
            this.n = i6 == 0 || (i6 & 1) != 0;
            this.q = (kVar.e & 1) != 0;
            int i7 = kVar.z;
            this.r = i7;
            this.s = kVar.A;
            int i8 = kVar.i;
            this.t = i8;
            this.g = (i8 == -1 || i8 <= dVar.r) && (i7 == -1 || i7 <= dVar.q) && he8Var.apply(kVar);
            String[] strArrA0 = blb.a0();
            int i9 = 0;
            while (true) {
                if (i9 >= strArrA0.length) {
                    iB2 = 0;
                    i9 = Integer.MAX_VALUE;
                    break;
                } else {
                    iB2 = a62.B(this.e, strArrA0[i9], false);
                    if (iB2 > 0) {
                        break;
                    } else {
                        i9++;
                    }
                }
            }
            this.o = i9;
            this.p = iB2;
            for (int i10 = 0; i10 < dVar.s.size(); i10++) {
                String str = this.e.m;
                if (str != null && str.equals(dVar.s.get(i10))) {
                    i4 = i10;
                    break;
                }
            }
            this.u = i4;
            this.v = ks8.getDecoderSupport(i3) == 128;
            this.w = ks8.getHardwareAccelerationSupport(i3) == 64;
            this.f = g(i3, z);
        }

        public static int d(List list, List list2) {
            return ((b) Collections.max(list)).compareTo((b) Collections.max(list2));
        }

        public static ImmutableList f(int i, zua zuaVar, d dVar, int[] iArr, boolean z, he8 he8Var) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i2 = 0; i2 < zuaVar.b; i2++) {
                aVarBuilder.a(new b(i, zuaVar, i2, dVar, iArr[i2], z, he8Var));
            }
            return aVarBuilder.e();
        }

        @Override
        public int a() {
            return this.f;
        }

        @Override
        public int compareTo(b bVar) {
            Ordering orderingReverse = (this.g && this.j) ? a62.k : a62.k.reverse();
            cb1 cb1VarG = cb1.k().h(this.j, bVar.j).g(Integer.valueOf(this.l), Integer.valueOf(bVar.l), Ordering.natural().reverse()).d(this.k, bVar.k).d(this.m, bVar.m).h(this.q, bVar.q).h(this.n, bVar.n).g(Integer.valueOf(this.o), Integer.valueOf(bVar.o), Ordering.natural().reverse()).d(this.p, bVar.p).h(this.g, bVar.g).g(Integer.valueOf(this.u), Integer.valueOf(bVar.u), Ordering.natural().reverse()).g(Integer.valueOf(this.t), Integer.valueOf(bVar.t), this.i.x ? a62.k.reverse() : a62.l).h(this.v, bVar.v).h(this.w, bVar.w).g(Integer.valueOf(this.r), Integer.valueOf(bVar.r), orderingReverse).g(Integer.valueOf(this.s), Integer.valueOf(bVar.s), orderingReverse);
            Integer numValueOf = Integer.valueOf(this.t);
            Integer numValueOf2 = Integer.valueOf(bVar.t);
            if (!blb.c(this.h, bVar.h)) {
                orderingReverse = a62.l;
            }
            return cb1VarG.g(numValueOf, numValueOf2, orderingReverse).j();
        }

        public final int g(int i, boolean z) {
            if (!a62.I(i, this.i.O)) {
                return 0;
            }
            if (!this.g && !this.i.I) {
                return 0;
            }
            if (a62.I(i, false) && this.g && this.e.i != -1) {
                d dVar = this.i;
                if (!dVar.y && !dVar.x && (dVar.Q || !z)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override
        public boolean b(b bVar) {
            int i;
            String str;
            int i2;
            d dVar = this.i;
            if ((dVar.L || ((i2 = this.e.z) != -1 && i2 == bVar.e.z)) && (dVar.J || ((str = this.e.m) != null && TextUtils.equals(str, bVar.e.m)))) {
                d dVar2 = this.i;
                if ((dVar2.K || ((i = this.e.A) != -1 && i == bVar.e.A)) && (dVar2.M || (this.v == bVar.v && this.w == bVar.w))) {
                    return true;
                }
            }
            return false;
        }
    }

    public static final class c implements Comparable {
        public final boolean b;
        public final boolean c;

        public c(k kVar, int i) {
            this.b = (kVar.e & 1) != 0;
            this.c = a62.I(i, false);
        }

        @Override
        public int compareTo(c cVar) {
            return cb1.k().h(this.c, cVar.c).h(this.b, cVar.b).j();
        }
    }

    public static final class d extends pva implements com.google.android.exoplayer2.e {
        public static final d T;
        public static final d U;
        public static final com.google.android.exoplayer2.e.a V;
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
        public final boolean Q;
        public final SparseArray R;
        public final SparseBooleanArray S;

        static {
            d dVarA = new a().A();
            T = dVarA;
            U = dVarA;
            V = new com.google.android.exoplayer2.e.a() {
                @Override
                public final e fromBundle(Bundle bundle) {
                    return a62.d.o(bundle);
                }
            };
        }

        public static boolean f(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                    return false;
                }
            }
            return true;
        }

        public static boolean g(SparseArray sparseArray, SparseArray sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                if (iIndexOfKey < 0 || !h((Map) sparseArray.valueAt(i), (Map) sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        public static boolean h(Map map, Map map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry entry : map.entrySet()) {
                eva evaVar = (eva) entry.getKey();
                if (!map2.containsKey(evaVar) || !blb.c(entry.getValue(), map2.get(evaVar))) {
                    return false;
                }
            }
            return true;
        }

        public static d j(Context context) {
            return new a(context).A();
        }

        public static int[] k(SparseBooleanArray sparseBooleanArray) {
            int[] iArr = new int[sparseBooleanArray.size()];
            for (int i = 0; i < sparseBooleanArray.size(); i++) {
                iArr[i] = sparseBooleanArray.keyAt(i);
            }
            return iArr;
        }

        public static d o(Bundle bundle) {
            return new a(bundle).A();
        }

        public static void p(Bundle bundle, SparseArray sparseArray) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray2 = new SparseArray();
            for (int i = 0; i < sparseArray.size(); i++) {
                int iKeyAt = sparseArray.keyAt(i);
                for (Map.Entry entry : ((Map) sparseArray.valueAt(i)).entrySet()) {
                    e eVar = (e) entry.getValue();
                    if (eVar != null) {
                        sparseArray2.put(arrayList2.size(), eVar);
                    }
                    arrayList2.add((eva) entry.getKey());
                    arrayList.add(Integer.valueOf(iKeyAt));
                }
                bundle.putIntArray(pva.b(1010), Ints.o(arrayList));
                bundle.putParcelableArrayList(pva.b(1011), xn0.d(arrayList2));
                bundle.putSparseParcelableArray(pva.b(1012), xn0.e(sparseArray2));
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
            return super.equals(dVar) && this.E == dVar.E && this.F == dVar.F && this.G == dVar.G && this.H == dVar.H && this.I == dVar.I && this.J == dVar.J && this.K == dVar.K && this.L == dVar.L && this.M == dVar.M && this.N == dVar.N && this.O == dVar.O && this.P == dVar.P && this.Q == dVar.Q && f(this.S, dVar.S) && g(this.R, dVar.R);
        }

        @Override
        public int hashCode() {
            return ((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.E ? 1 : 0)) * 31) + (this.F ? 1 : 0)) * 31) + (this.G ? 1 : 0)) * 31) + (this.H ? 1 : 0)) * 31) + (this.I ? 1 : 0)) * 31) + (this.J ? 1 : 0)) * 31) + (this.K ? 1 : 0)) * 31) + (this.L ? 1 : 0)) * 31) + (this.M ? 1 : 0)) * 31) + (this.N ? 1 : 0)) * 31) + (this.O ? 1 : 0)) * 31) + (this.P ? 1 : 0)) * 31) + (this.Q ? 1 : 0);
        }

        public a i() {
            return new a();
        }

        public boolean l(int i) {
            return this.S.get(i);
        }

        public e m(int i, eva evaVar) {
            Map map = (Map) this.R.get(i);
            if (map != null) {
                return (e) map.get(evaVar);
            }
            return null;
        }

        public boolean n(int i, eva evaVar) {
            Map map = (Map) this.R.get(i);
            return map != null && map.containsKey(evaVar);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = super.toBundle();
            bundle.putBoolean(pva.b(1000), this.E);
            bundle.putBoolean(pva.b(1001), this.F);
            bundle.putBoolean(pva.b(1002), this.G);
            bundle.putBoolean(pva.b(1014), this.H);
            bundle.putBoolean(pva.b(1003), this.I);
            bundle.putBoolean(pva.b(1004), this.J);
            bundle.putBoolean(pva.b(1005), this.K);
            bundle.putBoolean(pva.b(1006), this.L);
            bundle.putBoolean(pva.b(1015), this.M);
            bundle.putBoolean(pva.b(1016), this.N);
            bundle.putBoolean(pva.b(1007), this.O);
            bundle.putBoolean(pva.b(1008), this.P);
            bundle.putBoolean(pva.b(1009), this.Q);
            p(bundle, this.R);
            bundle.putIntArray(pva.b(1013), k(this.S));
            return bundle;
        }

        public static final class a extends pva.a {
            public boolean A;
            public boolean B;
            public boolean C;
            public boolean D;
            public boolean E;
            public boolean F;
            public boolean G;
            public boolean H;
            public boolean I;
            public boolean J;
            public boolean K;
            public boolean L;
            public boolean M;
            public final SparseArray N;
            public final SparseBooleanArray O;

            public static SparseArray Y(SparseArray sparseArray) {
                SparseArray sparseArray2 = new SparseArray();
                for (int i = 0; i < sparseArray.size(); i++) {
                    sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
                }
                return sparseArray2;
            }

            @Override
            public d A() {
                return new d(this);
            }

            public final void Z() {
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

            public final SparseBooleanArray a0(int[] iArr) {
                if (iArr == null) {
                    return new SparseBooleanArray();
                }
                SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
                for (int i : iArr) {
                    sparseBooleanArray.append(i, true);
                }
                return sparseBooleanArray;
            }

            public a b0(pva pvaVar) {
                super.D(pvaVar);
                return this;
            }

            public a c0(boolean z) {
                this.H = z;
                return this;
            }

            public a d0(boolean z) {
                this.I = z;
                return this;
            }

            public a e0(boolean z) {
                this.F = z;
                return this;
            }

            public a f0(boolean z) {
                this.G = z;
                return this;
            }

            public a g0(boolean z) {
                this.M = z;
                return this;
            }

            public a h0(boolean z) {
                this.D = z;
                return this;
            }

            public a i0(boolean z) {
                this.B = z;
                return this;
            }

            public a j0(boolean z) {
                this.C = z;
                return this;
            }

            public a k0(boolean z) {
                this.J = z;
                return this;
            }

            public a l0(boolean z) {
                this.E = z;
                return this;
            }

            public a m0(boolean z) {
                this.K = z;
                return this;
            }

            public a n0(boolean z) {
                this.A = z;
                return this;
            }

            @Override
            public a E(Context context) {
                super.E(context);
                return this;
            }

            public a p0(int i, eva evaVar, e eVar) {
                Map map = (Map) this.N.get(i);
                if (map == null) {
                    map = new HashMap();
                    this.N.put(i, map);
                }
                if (map.containsKey(evaVar) && blb.c(map.get(evaVar), eVar)) {
                    return this;
                }
                map.put(evaVar, eVar);
                return this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void q0(Bundle bundle) {
                int[] intArray = bundle.getIntArray(pva.b(1010));
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(pva.b(1011));
                ImmutableList immutableListOf = parcelableArrayList == null ? ImmutableList.of() : xn0.b(eva.f, parcelableArrayList);
                SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(pva.b(1012));
                SparseArray sparseArray = sparseParcelableArray == null ? new SparseArray() : xn0.c(e.f, sparseParcelableArray);
                if (intArray == null || intArray.length != immutableListOf.size()) {
                    return;
                }
                for (int i = 0; i < intArray.length; i++) {
                    p0(intArray[i], (eva) immutableListOf.get(i), (e) sparseArray.get(i));
                }
            }

            public a r0(boolean z) {
                this.L = z;
                return this;
            }

            @Override
            public a G(int i, int i2, boolean z) {
                super.G(i, i2, z);
                return this;
            }

            @Override
            public a H(Context context, boolean z) {
                super.H(context, z);
                return this;
            }

            public a() {
                this.N = new SparseArray();
                this.O = new SparseBooleanArray();
                Z();
            }

            public a(Context context) {
                super(context);
                this.N = new SparseArray();
                this.O = new SparseBooleanArray();
                Z();
            }

            public a(d dVar) {
                super(dVar);
                this.A = dVar.E;
                this.B = dVar.F;
                this.C = dVar.G;
                this.D = dVar.H;
                this.E = dVar.I;
                this.F = dVar.J;
                this.G = dVar.K;
                this.H = dVar.L;
                this.I = dVar.M;
                this.J = dVar.N;
                this.K = dVar.O;
                this.L = dVar.P;
                this.M = dVar.Q;
                this.N = Y(dVar.R);
                this.O = dVar.S.clone();
            }

            public a(Bundle bundle) {
                super(bundle);
                Z();
                d dVar = d.T;
                n0(bundle.getBoolean(pva.b(1000), dVar.E));
                i0(bundle.getBoolean(pva.b(1001), dVar.F));
                j0(bundle.getBoolean(pva.b(1002), dVar.G));
                h0(bundle.getBoolean(pva.b(1014), dVar.H));
                l0(bundle.getBoolean(pva.b(1003), dVar.I));
                e0(bundle.getBoolean(pva.b(1004), dVar.J));
                f0(bundle.getBoolean(pva.b(1005), dVar.K));
                c0(bundle.getBoolean(pva.b(1006), dVar.L));
                d0(bundle.getBoolean(pva.b(1015), dVar.M));
                k0(bundle.getBoolean(pva.b(1016), dVar.N));
                m0(bundle.getBoolean(pva.b(1007), dVar.O));
                r0(bundle.getBoolean(pva.b(1008), dVar.P));
                g0(bundle.getBoolean(pva.b(1009), dVar.Q));
                this.N = new SparseArray();
                q0(bundle);
                this.O = a0(bundle.getIntArray(pva.b(1013)));
            }
        }

        public d(a aVar) {
            super(aVar);
            this.E = aVar.A;
            this.F = aVar.B;
            this.G = aVar.C;
            this.H = aVar.D;
            this.I = aVar.E;
            this.J = aVar.F;
            this.K = aVar.G;
            this.L = aVar.H;
            this.M = aVar.I;
            this.N = aVar.J;
            this.O = aVar.K;
            this.P = aVar.L;
            this.Q = aVar.M;
            this.R = aVar.N;
            this.S = aVar.O;
        }
    }

    public static final class e implements com.google.android.exoplayer2.e {
        public static final com.google.android.exoplayer2.e.a f = new com.google.android.exoplayer2.e.a() {
            @Override
            public final e fromBundle(Bundle bundle) {
                return a62.e.c(bundle);
            }
        };
        public final int b;
        public final int[] c;
        public final int d;
        public final int e;

        public e(int i, int[] iArr, int i2) {
            this.b = i;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.c = iArrCopyOf;
            this.d = iArr.length;
            this.e = i2;
            Arrays.sort(iArrCopyOf);
        }

        private static String b(int i) {
            return Integer.toString(i, 36);
        }

        public static e c(Bundle bundle) {
            boolean z = false;
            int i = bundle.getInt(b(0), -1);
            int[] intArray = bundle.getIntArray(b(1));
            int i2 = bundle.getInt(b(2), -1);
            if (i >= 0 && i2 >= 0) {
                z = true;
            }
            zi.a(z);
            zi.e(intArray);
            return new e(i, intArray, i2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.b == eVar.b && Arrays.equals(this.c, eVar.c) && this.e == eVar.e;
        }

        public int hashCode() {
            return (((this.b * 31) + Arrays.hashCode(this.c)) * 31) + this.e;
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(b(0), this.b);
            bundle.putIntArray(b(1), this.c);
            bundle.putInt(b(2), this.e);
            return bundle;
        }
    }

    public static class f {
        public final Spatializer a;
        public final boolean b;
        public Handler c;
        public Spatializer$OnSpatializerStateChangedListener d;

        public class a implements Spatializer$OnSpatializerStateChangedListener {
            public final a62 a;

            public a(f fVar, a62 a62Var) {
                this.a = a62Var;
            }

            public void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
                this.a.P();
            }

            public void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
                this.a.P();
            }
        }

        public f(Spatializer spatializer) {
            this.a = spatializer;
            this.b = spatializer.getImmersiveAudioLevel() != 0;
        }

        public static f g(Context context) {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager == null) {
                return null;
            }
            return new f(audioManager.getSpatializer());
        }

        public boolean a(com.google.android.exoplayer2.audio.a aVar, k kVar) {
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(blb.D((MimeTypes.AUDIO_E_AC3_JOC.equals(kVar.m) && kVar.z == 16) ? 12 : kVar.z));
            int i = kVar.A;
            if (i != -1) {
                channelMask.setSampleRate(i);
            }
            return this.a.canBeSpatialized(aVar.b().a, channelMask.build());
        }

        public void b(a62 a62Var, Looper looper) {
            if (this.d == null && this.c == null) {
                this.d = new a(this, a62Var);
                Handler handler = new Handler(looper);
                this.c = handler;
                Spatializer spatializer = this.a;
                Objects.requireNonNull(handler);
                spatializer.addOnSpatializerStateChangedListener(new de1(handler), this.d);
            }
        }

        public boolean c() {
            return this.a.isAvailable();
        }

        public boolean d() {
            return this.a.isEnabled();
        }

        public boolean e() {
            return this.b;
        }

        public void f() {
            Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener = this.d;
            if (spatializer$OnSpatializerStateChangedListener == null || this.c == null) {
                return;
            }
            this.a.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
            ((Handler) blb.j(this.c)).removeCallbacksAndMessages(null);
            this.c = null;
            this.d = null;
        }
    }

    public static final class g extends h implements Comparable {
        public final int f;
        public final boolean g;
        public final boolean h;
        public final boolean i;
        public final int j;
        public final int k;
        public final int l;
        public final int m;
        public final boolean n;

        /* JADX WARN: Multi-variable type inference failed */
        public g(int i, zua zuaVar, int i2, d dVar, int i3, String str) {
            int iB;
            super(i, zuaVar, i2);
            int i4 = 0;
            this.g = a62.I(i3, false);
            int i5 = this.e.e & (~dVar.v);
            this.h = (i5 & 1) != 0;
            this.i = (i5 & 2) != 0;
            ImmutableList immutableListOf = dVar.t.isEmpty() ? ImmutableList.of("") : dVar.t;
            int i6 = 0;
            while (true) {
                if (i6 >= immutableListOf.size()) {
                    i6 = Integer.MAX_VALUE;
                    iB = 0;
                    break;
                } else {
                    iB = a62.B(this.e, (String) immutableListOf.get(i6), dVar.w);
                    if (iB > 0) {
                        break;
                    } else {
                        i6++;
                    }
                }
            }
            this.j = i6;
            this.k = iB;
            int iE = a62.E(this.e.f, dVar.u);
            this.l = iE;
            this.n = (this.e.f & 1088) != 0;
            int iB2 = a62.B(this.e, str, a62.Q(str) == null);
            this.m = iB2;
            boolean z = iB > 0 || (dVar.t.isEmpty() && iE > 0) || this.h || (this.i && iB2 > 0);
            if (a62.I(i3, dVar.O) && z) {
                i4 = 1;
            }
            this.f = i4;
        }

        public static int d(List list, List list2) {
            return ((g) list.get(0)).compareTo((g) list2.get(0));
        }

        public static ImmutableList f(int i, zua zuaVar, d dVar, int[] iArr, String str) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i2 = 0; i2 < zuaVar.b; i2++) {
                aVarBuilder.a(new g(i, zuaVar, i2, dVar, iArr[i2], str));
            }
            return aVarBuilder.e();
        }

        @Override
        public int a() {
            return this.f;
        }

        @Override
        public int compareTo(g gVar) {
            cb1 cb1VarD = cb1.k().h(this.g, gVar.g).g(Integer.valueOf(this.j), Integer.valueOf(gVar.j), Ordering.natural().reverse()).d(this.k, gVar.k).d(this.l, gVar.l).h(this.h, gVar.h).g(Boolean.valueOf(this.i), Boolean.valueOf(gVar.i), this.k == 0 ? Ordering.natural() : Ordering.natural().reverse()).d(this.m, gVar.m);
            if (this.l == 0) {
                cb1VarD = cb1VarD.i(this.n, gVar.n);
            }
            return cb1VarD.j();
        }

        @Override
        public boolean b(g gVar) {
            return false;
        }
    }

    public static abstract class h {
        public final int b;
        public final zua c;
        public final int d;
        public final k e;

        public interface a {
            List a(int i, zua zuaVar, int[] iArr);
        }

        public h(int i, zua zuaVar, int i2) {
            this.b = i;
            this.c = zuaVar;
            this.d = i2;
            this.e = zuaVar.c(i2);
        }

        public abstract int a();

        public abstract boolean b(h hVar);
    }

    public static final class i extends h {
        public final boolean f;
        public final d g;
        public final boolean h;
        public final boolean i;
        public final int j;
        public final int k;
        public final int l;
        public final int m;
        public final boolean n;
        public final boolean o;
        public final int p;
        public final boolean q;
        public final boolean r;
        public final int s;

        /* JADX WARN: Code duplicated, block: B:31:0x004b  */
        /* JADX WARN: Code duplicated, block: B:51:0x0079  */
        public i(int i, zua zuaVar, int i2, d dVar, int i3, int i4, boolean z) {
            boolean z2;
            boolean z3;
            k kVar;
            int i5;
            int i6;
            int i7;
            k kVar2;
            int i8;
            int i9;
            int i10;
            super(i, zuaVar, i2);
            this.g = dVar;
            int i11 = dVar.G ? 24 : 16;
            this.o = dVar.F && (i4 & i11) != 0;
            if (!z || (((i8 = (kVar2 = this.e).r) != -1 && i8 > dVar.b) || ((i9 = kVar2.s) != -1 && i9 > dVar.c))) {
                z2 = false;
            } else {
                float f = kVar2.t;
                if ((f == -1.0f || f <= dVar.d) && ((i10 = kVar2.i) == -1 || i10 <= dVar.e)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            this.f = z2;
            if (!z || (((i5 = (kVar = this.e).r) != -1 && i5 < dVar.f) || ((i6 = kVar.s) != -1 && i6 < dVar.g))) {
                z3 = false;
            } else {
                float f2 = kVar.t;
                if ((f2 == -1.0f || f2 >= dVar.h) && ((i7 = kVar.i) == -1 || i7 >= dVar.i)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            }
            this.h = z3;
            this.i = a62.I(i3, false);
            k kVar3 = this.e;
            this.j = kVar3.i;
            this.k = kVar3.f();
            this.m = a62.E(this.e.f, dVar.n);
            int i12 = this.e.f;
            this.n = i12 == 0 || (i12 & 1) != 0;
            int i13 = 0;
            while (true) {
                if (i13 >= dVar.m.size()) {
                    i13 = Integer.MAX_VALUE;
                    break;
                }
                String str = this.e.m;
                if (str != null && str.equals(dVar.m.get(i13))) {
                    break;
                } else {
                    i13++;
                }
            }
            this.l = i13;
            this.q = ks8.getDecoderSupport(i3) == 128;
            this.r = ks8.getHardwareAccelerationSupport(i3) == 64;
            this.s = a62.F(this.e.m);
            this.p = j(i3, i11);
        }

        public static int f(i iVar, i iVar2) {
            cb1 cb1VarH = cb1.k().h(iVar.i, iVar2.i).d(iVar.m, iVar2.m).h(iVar.n, iVar2.n).h(iVar.f, iVar2.f).h(iVar.h, iVar2.h).g(Integer.valueOf(iVar.l), Integer.valueOf(iVar2.l), Ordering.natural().reverse()).h(iVar.q, iVar2.q).h(iVar.r, iVar2.r);
            if (iVar.q && iVar.r) {
                cb1VarH = cb1VarH.d(iVar.s, iVar2.s);
            }
            return cb1VarH.j();
        }

        public static int g(i iVar, i iVar2) {
            Ordering orderingReverse = (iVar.f && iVar.i) ? a62.k : a62.k.reverse();
            return cb1.k().g(Integer.valueOf(iVar.j), Integer.valueOf(iVar2.j), iVar.g.x ? a62.k.reverse() : a62.l).g(Integer.valueOf(iVar.k), Integer.valueOf(iVar2.k), orderingReverse).g(Integer.valueOf(iVar.j), Integer.valueOf(iVar2.j), orderingReverse).j();
        }

        public static int h(List list, List list2) {
            return cb1.k().g((i) Collections.max(list, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return a62.i.f((a62.i) obj, (a62.i) obj2);
                }
            }), (i) Collections.max(list2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return a62.i.f((a62.i) obj, (a62.i) obj2);
                }
            }), new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return a62.i.f((a62.i) obj, (a62.i) obj2);
                }
            }).d(list.size(), list2.size()).g((i) Collections.max(list, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return a62.i.g((a62.i) obj, (a62.i) obj2);
                }
            }), (i) Collections.max(list2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return a62.i.g((a62.i) obj, (a62.i) obj2);
                }
            }), new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return a62.i.g((a62.i) obj, (a62.i) obj2);
                }
            }).j();
        }

        public static ImmutableList i(int i, zua zuaVar, d dVar, int[] iArr, int i2) {
            int iC = a62.C(zuaVar, dVar.j, dVar.k, dVar.l);
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i3 = 0; i3 < zuaVar.b; i3++) {
                int iF = zuaVar.c(i3).f();
                aVarBuilder.a(new i(i, zuaVar, i3, dVar, iArr[i3], i2, iC == Integer.MAX_VALUE || (iF != -1 && iF <= iC)));
            }
            return aVarBuilder.e();
        }

        @Override
        public int a() {
            return this.p;
        }

        public final int j(int i, int i2) {
            if ((this.e.f & 16384) != 0 || !a62.I(i, this.g.O)) {
                return 0;
            }
            if (!this.f && !this.g.E) {
                return 0;
            }
            if (a62.I(i, false) && this.h && this.f && this.e.i != -1) {
                d dVar = this.g;
                if (!dVar.y && !dVar.x && (i & i2) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override
        public boolean b(i iVar) {
            return (this.o || blb.c(this.e.m, iVar.e.m)) && (this.g.H || (this.q == iVar.q && this.r == iVar.r));
        }
    }

    public a62(Context context) {
        this(context, new f8.b());
    }

    public static void A(eva evaVar, pva pvaVar, Map map) {
        lva lvaVar;
        for (int i2 = 0; i2 < evaVar.b; i2++) {
            lva lvaVar2 = (lva) pvaVar.z.get(evaVar.b(i2));
            if (lvaVar2 != null && ((lvaVar = (lva) map.get(Integer.valueOf(lvaVar2.b()))) == null || (lvaVar.c.isEmpty() && !lvaVar2.c.isEmpty()))) {
                map.put(Integer.valueOf(lvaVar2.b()), lvaVar2);
            }
        }
    }

    public static int B(k kVar, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(kVar.d)) {
            return 4;
        }
        String strQ = Q(str);
        String strQ2 = Q(kVar.d);
        if (strQ2 == null || strQ == null) {
            return (z && strQ2 == null) ? 1 : 0;
        }
        if (strQ2.startsWith(strQ) || strQ.startsWith(strQ2)) {
            return 3;
        }
        return blb.G0(strQ2, "-")[0].equals(blb.G0(strQ, "-")[0]) ? 2 : 0;
    }

    public static int C(zua zuaVar, int i2, int i3, boolean z) {
        int i4;
        int i5 = Integer.MAX_VALUE;
        if (i2 != Integer.MAX_VALUE && i3 != Integer.MAX_VALUE) {
            for (int i6 = 0; i6 < zuaVar.b; i6++) {
                k kVarC = zuaVar.c(i6);
                int i7 = kVarC.r;
                if (i7 > 0 && (i4 = kVarC.s) > 0) {
                    Point pointD = D(z, i2, i3, i7, i4);
                    int i8 = kVarC.r;
                    int i9 = kVarC.s;
                    int i10 = i8 * i9;
                    if (i8 >= ((int) (pointD.x * 0.98f)) && i9 >= ((int) (pointD.y * 0.98f)) && i10 < i5) {
                        i5 = i10;
                    }
                }
            }
        }
        return i5;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x000f  */
    public static Point D(boolean z, int i2, int i3, int i4, int i5) {
        if (z) {
            if ((i4 > i5) == (i2 > i3)) {
                i3 = i2;
                i2 = i3;
            }
        } else {
            i3 = i2;
            i2 = i3;
        }
        int i6 = i4 * i2;
        int i7 = i5 * i3;
        return i6 >= i7 ? new Point(i3, blb.l(i7, i4)) : new Point(blb.l(i6, i5), i2);
    }

    public static int E(int i2, int i3) {
        if (i2 == 0 || i2 != i3) {
            return Integer.bitCount(i2 & i3);
        }
        return Integer.MAX_VALUE;
    }

    public static int F(String str) {
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

    public static boolean H(k kVar) {
        String str = kVar.m;
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

    public static boolean I(int i2, boolean z) {
        int formatSupport = ks8.getFormatSupport(i2);
        return formatSupport == 4 || (z && formatSupport == 3);
    }

    public static List K(d dVar, String str, int i2, zua zuaVar, int[] iArr) {
        return g.f(i2, zuaVar, dVar, iArr, str);
    }

    public static List L(d dVar, int[] iArr, int i2, zua zuaVar, int[] iArr2) {
        return i.i(i2, zuaVar, dVar, iArr2, iArr[i2]);
    }

    public static int M(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    public static int N(Integer num, Integer num2) {
        return 0;
    }

    public static void O(hy5.a aVar, int[][][] iArr, ls8[] ls8VarArr, qi3[] qi3VarArr) {
        boolean z;
        boolean z2 = false;
        int i2 = -1;
        int i3 = -1;
        int i4 = 0;
        while (true) {
            if (i4 >= aVar.d()) {
                z = true;
                break;
            }
            int iE = aVar.e(i4);
            qi3 qi3Var = qi3VarArr[i4];
            if ((iE == 1 || iE == 2) && qi3Var != null && R(iArr[i4], aVar.f(i4), qi3Var)) {
                if (iE == 1) {
                    if (i3 != -1) {
                        z = false;
                        break;
                    }
                    i3 = i4;
                } else {
                    if (i2 != -1) {
                        z = false;
                        break;
                    }
                    i2 = i4;
                }
            }
            i4++;
        }
        if (i3 != -1 && i2 != -1) {
            z2 = true;
        }
        if (z && z2) {
            ls8 ls8Var = new ls8(true);
            ls8VarArr[i3] = ls8Var;
            ls8VarArr[i2] = ls8Var;
        }
    }

    public static String Q(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    public static boolean R(int[][] iArr, eva evaVar, qi3 qi3Var) {
        if (qi3Var == null) {
            return false;
        }
        int iC = evaVar.c(qi3Var.getTrackGroup());
        for (int i2 = 0; i2 < qi3Var.length(); i2++) {
            if (ks8.getTunnelingSupport(iArr[iC][qi3Var.getIndexInTrackGroup(i2)]) != 32) {
                return false;
            }
        }
        return true;
    }

    public static void y(hy5.a aVar, d dVar, qi3.a[] aVarArr) {
        int iD = aVar.d();
        for (int i2 = 0; i2 < iD; i2++) {
            eva evaVarF = aVar.f(i2);
            if (dVar.n(i2, evaVarF)) {
                e eVarM = dVar.m(i2, evaVarF);
                aVarArr[i2] = (eVarM == null || eVarM.c.length == 0) ? null : new qi3.a(evaVarF.b(eVarM.b), eVarM.c, eVarM.e);
            }
        }
    }

    public static void z(hy5.a aVar, pva pvaVar, qi3.a[] aVarArr) {
        int iD = aVar.d();
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < iD; i2++) {
            A(aVar.f(i2), pvaVar, map);
        }
        A(aVar.h(), pvaVar, map);
        for (int i3 = 0; i3 < iD; i3++) {
            lva lvaVar = (lva) map.get(Integer.valueOf(aVar.e(i3)));
            if (lvaVar != null) {
                aVarArr[i3] = (lvaVar.c.isEmpty() || aVar.f(i3).c(lvaVar.b) == -1) ? null : new qi3.a(lvaVar.b, Ints.o(lvaVar.c));
            }
        }
    }

    public final boolean G(k kVar) {
        boolean z;
        f fVar;
        f fVar2;
        synchronized (this.d) {
            try {
                if (this.h.N && !this.g && kVar.z > 2 && (!H(kVar) || (blb.a >= 32 && (fVar2 = this.i) != null && fVar2.e()))) {
                    z = blb.a >= 32 && (fVar = this.i) != null && fVar.e() && this.i.c() && this.i.d() && this.i.a(this.j, kVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public final List J(d dVar, boolean z, int i2, zua zuaVar, int[] iArr) {
        return b.f(i2, zuaVar, dVar, iArr, z, new he8() {
            @Override
            public final boolean apply(Object obj) {
                return this.b.G((k) obj);
            }
        });
    }

    public final void P() {
        boolean z;
        f fVar;
        synchronized (this.d) {
            try {
                z = this.h.N && !this.g && blb.a >= 32 && (fVar = this.i) != null && fVar.e();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            c();
        }
    }

    public qi3.a[] S(hy5.a aVar, int[][][] iArr, int[] iArr2, d dVar) {
        String str;
        int iD = aVar.d();
        qi3.a[] aVarArr = new qi3.a[iD];
        Pair pairX = X(aVar, iArr, iArr2, dVar);
        if (pairX != null) {
            aVarArr[((Integer) pairX.second).intValue()] = (qi3.a) pairX.first;
        }
        Pair pairT = T(aVar, iArr, iArr2, dVar);
        if (pairT != null) {
            aVarArr[((Integer) pairT.second).intValue()] = (qi3.a) pairT.first;
        }
        if (pairT == null) {
            str = null;
        } else {
            Object obj = pairT.first;
            str = ((qi3.a) obj).a.c(((qi3.a) obj).b[0]).d;
        }
        Pair pairV = V(aVar, iArr, dVar, str);
        if (pairV != null) {
            aVarArr[((Integer) pairV.second).intValue()] = (qi3.a) pairV.first;
        }
        for (int i2 = 0; i2 < iD; i2++) {
            int iE = aVar.e(i2);
            if (iE != 2 && iE != 1 && iE != 3) {
                aVarArr[i2] = U(iE, aVar.f(i2), iArr[i2], dVar);
            }
        }
        return aVarArr;
    }

    public Pair T(hy5.a aVar, int[][][] iArr, int[] iArr2, final d dVar) {
        final boolean z = false;
        for (int i2 = 0; i2 < aVar.d(); i2++) {
            if (2 == aVar.e(i2) && aVar.f(i2).b > 0) {
                z = true;
                break;
            }
        }
        return W(1, aVar, iArr, new h.a() {
            @Override
            public final List a(int i3, zua zuaVar, int[] iArr3) {
                return this.a.J(dVar, z, i3, zuaVar, iArr3);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return a62.b.d((List) obj, (List) obj2);
            }
        });
    }

    public qi3.a U(int i2, eva evaVar, int[][] iArr, d dVar) {
        zua zuaVar = null;
        c cVar = null;
        int i3 = 0;
        for (int i4 = 0; i4 < evaVar.b; i4++) {
            zua zuaVarB = evaVar.b(i4);
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < zuaVarB.b; i5++) {
                if (I(iArr2[i5], dVar.O)) {
                    c cVar2 = new c(zuaVarB.c(i5), iArr2[i5]);
                    if (cVar == null || cVar2.compareTo(cVar) > 0) {
                        zuaVar = zuaVarB;
                        i3 = i5;
                        cVar = cVar2;
                    }
                }
            }
        }
        if (zuaVar == null) {
            return null;
        }
        return new qi3.a(zuaVar, i3);
    }

    public Pair V(hy5.a aVar, int[][][] iArr, final d dVar, final String str) {
        return W(3, aVar, iArr, new h.a() {
            @Override
            public final List a(int i2, zua zuaVar, int[] iArr2) {
                return a62.K(dVar, str, i2, zuaVar, iArr2);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return a62.g.d((List) obj, (List) obj2);
            }
        });
    }

    public final Pair W(int i2, hy5.a aVar, int[][][] iArr, h.a aVar2, Comparator comparator) {
        int i3;
        RandomAccess randomAccessOf;
        ArrayList arrayList = new ArrayList();
        int iD = aVar.d();
        int i4 = 0;
        while (i4 < iD) {
            if (i2 == aVar.e(i4)) {
                eva evaVarF = aVar.f(i4);
                for (int i5 = 0; i5 < evaVarF.b; i5++) {
                    zua zuaVarB = evaVarF.b(i5);
                    List listA = aVar2.a(i4, zuaVarB, iArr[i4][i5]);
                    boolean[] zArr = new boolean[zuaVarB.b];
                    int i6 = 0;
                    while (i6 < zuaVarB.b) {
                        h hVar = (h) listA.get(i6);
                        int iA = hVar.a();
                        if (zArr[i6] || iA == 0) {
                            i3 = iD;
                        } else {
                            if (iA == 1) {
                                randomAccessOf = ImmutableList.of(hVar);
                                i3 = iD;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(hVar);
                                int i7 = i6 + 1;
                                while (i7 < zuaVarB.b) {
                                    h hVar2 = (h) listA.get(i7);
                                    int i8 = iD;
                                    if (hVar2.a() == 2 && hVar.b(hVar2)) {
                                        arrayList2.add(hVar2);
                                        zArr[i7] = true;
                                    }
                                    i7++;
                                    iD = i8;
                                }
                                i3 = iD;
                                randomAccessOf = arrayList2;
                            }
                            arrayList.add(randomAccessOf);
                        }
                        i6++;
                        iD = i3;
                    }
                }
            }
            i4++;
            iD = iD;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i9 = 0; i9 < list.size(); i9++) {
            iArr2[i9] = ((h) list.get(i9)).d;
        }
        h hVar3 = (h) list.get(0);
        return Pair.create(new qi3.a(hVar3.c, iArr2), Integer.valueOf(hVar3.b));
    }

    public Pair X(hy5.a aVar, int[][][] iArr, final int[] iArr2, final d dVar) {
        return W(2, aVar, iArr, new h.a() {
            @Override
            public final List a(int i2, zua zuaVar, int[] iArr3) {
                return a62.L(dVar, iArr2, i2, zuaVar, iArr3);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return a62.i.h((List) obj, (List) obj2);
            }
        });
    }

    @Override
    public boolean d() {
        return true;
    }

    @Override
    public void f() {
        f fVar;
        synchronized (this.d) {
            try {
                if (blb.a >= 32 && (fVar = this.i) != null) {
                    fVar.f();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        super.f();
    }

    @Override
    public void h(com.google.android.exoplayer2.audio.a aVar) {
        boolean zEquals;
        synchronized (this.d) {
            zEquals = this.j.equals(aVar);
            this.j = aVar;
        }
        if (zEquals) {
            return;
        }
        P();
    }

    @Override
    public final Pair l(hy5.a aVar, int[][][] iArr, int[] iArr2, com.google.android.exoplayer2.source.i.b bVar, a0 a0Var) {
        d dVar;
        f fVar;
        synchronized (this.d) {
            try {
                dVar = this.h;
                if (dVar.N && blb.a >= 32 && (fVar = this.i) != null) {
                    fVar.b(this, (Looper) zi.i(Looper.myLooper()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int iD = aVar.d();
        qi3.a[] aVarArrS = S(aVar, iArr, iArr2, dVar);
        z(aVar, dVar, aVarArrS);
        y(aVar, dVar, aVarArrS);
        for (int i2 = 0; i2 < iD; i2++) {
            int iE = aVar.e(i2);
            if (dVar.l(i2) || dVar.A.contains(Integer.valueOf(iE))) {
                aVarArrS[i2] = null;
            }
        }
        qi3[] qi3VarArrA = this.f.a(aVarArrS, a(), bVar, a0Var);
        ls8[] ls8VarArr = new ls8[iD];
        for (int i3 = 0; i3 < iD; i3++) {
            ls8VarArr[i3] = (dVar.l(i3) || dVar.A.contains(Integer.valueOf(aVar.e(i3))) || (aVar.e(i3) != -2 && qi3VarArrA[i3] == null)) ? null : ls8.b;
        }
        if (dVar.P) {
            O(aVar, iArr, ls8VarArr, qi3VarArrA);
        }
        return Pair.create(ls8VarArr, qi3VarArrA);
    }

    public a62(Context context, qi3.b bVar) {
        this(context, d.j(context), bVar);
    }

    public a62(Context context, pva pvaVar, qi3.b bVar) {
        this(pvaVar, bVar, context);
    }

    public a62(pva pvaVar, qi3.b bVar, Context context) {
        this.d = new Object();
        this.e = context != null ? context.getApplicationContext() : null;
        this.f = bVar;
        if (pvaVar instanceof d) {
            this.h = (d) pvaVar;
        } else {
            this.h = (context == null ? d.T : d.j(context)).i().b0(pvaVar).A();
        }
        this.j = com.google.android.exoplayer2.audio.a.h;
        boolean z = context != null && blb.p0(context);
        this.g = z;
        if (!z && context != null && blb.a >= 32) {
            this.i = f.g(context);
        }
        if (this.h.N && context == null) {
            op5.i("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }
}
