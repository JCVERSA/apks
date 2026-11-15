package com.yandex.mobile.ads.impl;

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
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.yandex.mobile.ads.impl.jc0;
import com.yandex.mobile.ads.impl.km;
import com.yandex.mobile.ads.impl.s00;
import com.yandex.mobile.ads.impl.y52;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;

public final class s00 extends cu0 {
    private static final jf1<Integer> i = jf1.a(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return s00.a((Integer) obj, (Integer) obj2);
        }
    });
    private static final jf1<Integer> j = jf1.a(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return s00.b((Integer) obj, (Integer) obj2);
        }
    });
    private final Object c;
    private final h70.b d;
    private final boolean e;

    @GuardedBy("lock")
    private c f;

    @Nullable
    @GuardedBy("lock")
    private e g;

    @GuardedBy("lock")
    private ph h;

    public static final class a extends g<a> implements Comparable<a> {
        private final int f;
        private final boolean g;

        @Nullable
        private final String h;
        private final c i;
        private final boolean j;
        private final int k;
        private final int l;
        private final int m;
        private final boolean n;
        private final int o;
        private final int p;
        private final boolean q;
        private final int r;
        private final int s;
        private final int t;
        private final int u;
        private final boolean v;
        private final boolean w;

        public a(int i, y52 y52Var, int i2, c cVar, int i3, boolean z, wj1<jc0> wj1Var) {
            int i4;
            int iA;
            int iA2;
            super(i, i2, y52Var);
            this.i = cVar;
            this.h = s00.b(this.e.d);
            this.j = s00.a(false, i3);
            int i5 = 0;
            while (true) {
                i4 = Integer.MAX_VALUE;
                if (i5 >= cVar.o.size()) {
                    iA = 0;
                    i5 = Integer.MAX_VALUE;
                    break;
                } else {
                    iA = s00.a(this.e, cVar.o.get(i5), false);
                    if (iA > 0) {
                        break;
                    } else {
                        i5++;
                    }
                }
            }
            this.l = i5;
            this.k = iA;
            this.m = s00.a(this.e.f, cVar.p);
            jc0 jc0Var = this.e;
            int i6 = jc0Var.f;
            this.n = i6 == 0 || (i6 & 1) != 0;
            this.q = (jc0Var.e & 1) != 0;
            int i7 = jc0Var.z;
            this.r = i7;
            this.s = jc0Var.A;
            int i8 = jc0Var.i;
            this.t = i8;
            this.g = (i8 == -1 || i8 <= cVar.r) && (i7 == -1 || i7 <= cVar.q) && wj1Var.apply(jc0Var);
            String[] strArrD = f92.d();
            int i9 = 0;
            while (true) {
                if (i9 >= strArrD.length) {
                    iA2 = 0;
                    i9 = Integer.MAX_VALUE;
                    break;
                } else {
                    iA2 = s00.a(this.e, strArrD[i9], false);
                    if (iA2 > 0) {
                        break;
                    } else {
                        i9++;
                    }
                }
            }
            this.o = i9;
            this.p = iA2;
            for (int i10 = 0; i10 < cVar.s.size(); i10++) {
                String str = this.e.m;
                if (str != null && str.equals(cVar.s.get(i10))) {
                    i4 = i10;
                    break;
                }
            }
            this.u = i4;
            this.v = zo1.a(i3) == 128;
            this.w = zo1.b(i3) == 64;
            this.f = a(z, i3);
        }

        public static int a(List<a> list, List<a> list2) {
            return ((a) Collections.max(list)).compareTo((a) Collections.max(list2));
        }

        @Override
        public final int compareTo(a aVar) {
            jf1 jf1VarB = (this.g && this.j) ? s00.i : s00.i.b();
            yq yqVarA = yq.b().a(this.j, aVar.j).a(Integer.valueOf(this.l), Integer.valueOf(aVar.l), jf1.a().b()).a(this.k, aVar.k).a(this.m, aVar.m).a(this.q, aVar.q).a(this.n, aVar.n).a(Integer.valueOf(this.o), Integer.valueOf(aVar.o), jf1.a().b()).a(this.p, aVar.p).a(this.g, aVar.g).a(Integer.valueOf(this.u), Integer.valueOf(aVar.u), jf1.a().b()).a(Integer.valueOf(this.t), Integer.valueOf(aVar.t), this.i.x ? s00.i.b() : s00.j).a(this.v, aVar.v).a(this.w, aVar.w).a(Integer.valueOf(this.r), Integer.valueOf(aVar.r), jf1VarB).a(Integer.valueOf(this.s), Integer.valueOf(aVar.s), jf1VarB);
            Integer numValueOf = Integer.valueOf(this.t);
            Integer numValueOf2 = Integer.valueOf(aVar.t);
            if (!f92.a(this.h, aVar.h)) {
                jf1VarB = s00.j;
            }
            return yqVarA.a(numValueOf, numValueOf2, jf1VarB).a();
        }

        private int a(boolean z, int i) {
            if (!s00.a(this.i.M, i)) {
                return 0;
            }
            if (!this.g && !this.i.G) {
                return 0;
            }
            if (s00.a(false, i) && this.g && this.e.i != -1) {
                c cVar = this.i;
                if (!cVar.y && !cVar.x && (cVar.O || !z)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override
        public final int a() {
            return this.f;
        }

        @Override
        public final boolean a(g gVar) {
            int i;
            String str;
            int i2;
            a aVar = (a) gVar;
            c cVar = this.i;
            if ((cVar.J || ((i2 = this.e.z) != -1 && i2 == aVar.e.z)) && (cVar.H || ((str = this.e.m) != null && TextUtils.equals(str, aVar.e.m)))) {
                c cVar2 = this.i;
                if ((cVar2.I || ((i = this.e.A) != -1 && i == aVar.e.A)) && (cVar2.K || (this.v == aVar.v && this.w == aVar.w))) {
                    return true;
                }
            }
            return false;
        }
    }

    public static final class b implements Comparable<b> {
        private final boolean b;
        private final boolean c;

        public b(jc0 jc0Var, int i) {
            this.b = (jc0Var.e & 1) != 0;
            this.c = s00.a(false, i);
        }

        @Override
        public final int compareTo(b bVar) {
            b bVar2 = bVar;
            return yq.b().a(this.c, bVar2.c).a(this.b, bVar2.b).a();
        }
    }

    public static final class c extends e62 {
        public static final c R = new c(new a());
        public final boolean C;
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
        private final SparseArray<Map<z52, d>> P;
        private final SparseBooleanArray Q;

        public static final class a extends e62.a {
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
            private final SparseArray<Map<z52, d>> N;
            private final SparseBooleanArray O;

            private void a() {
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

            public final void b(boolean z) {
                this.I = z;
            }

            public final void c(boolean z) {
                this.F = z;
            }

            public final void d(boolean z) {
                this.G = z;
            }

            public final void e(boolean z) {
                this.M = z;
            }

            public final void f(boolean z) {
                this.D = z;
            }

            public final void g(boolean z) {
                this.B = z;
            }

            public final void h(boolean z) {
                this.C = z;
            }

            public final void i(boolean z) {
                this.J = z;
            }

            public final void j(boolean z) {
                this.E = z;
            }

            public final void k(boolean z) {
                this.K = z;
            }

            public final void l(boolean z) {
                this.A = z;
            }

            public final void m(boolean z) {
                this.L = z;
            }

            @Deprecated
            public a() {
                this.N = new SparseArray<>();
                this.O = new SparseBooleanArray();
                a();
            }

            @Override
            public final void b(Context context) {
                Point pointC = f92.c(context);
                super.a(pointC.x, pointC.y);
            }

            public a(Context context) {
                super(context);
                this.N = new SparseArray<>();
                this.O = new SparseBooleanArray();
                a();
            }

            private a(Bundle bundle) {
                super(bundle);
                a();
                c cVar = c.R;
                l(bundle.getBoolean(e62.a(1000), cVar.C));
                g(bundle.getBoolean(e62.a(1001), cVar.D));
                h(bundle.getBoolean(e62.a(1002), cVar.E));
                f(bundle.getBoolean(e62.a(1014), cVar.F));
                j(bundle.getBoolean(e62.a(1003), cVar.G));
                c(bundle.getBoolean(e62.a(1004), cVar.H));
                d(bundle.getBoolean(e62.a(1005), cVar.I));
                a(bundle.getBoolean(e62.a(1006), cVar.J));
                b(bundle.getBoolean(e62.a(1015), cVar.K));
                i(bundle.getBoolean(e62.a(1016), cVar.L));
                k(bundle.getBoolean(e62.a(1007), cVar.M));
                m(bundle.getBoolean(e62.a(1008), cVar.N));
                e(bundle.getBoolean(e62.a(1009), cVar.O));
                this.N = new SparseArray<>();
                a(bundle);
                this.O = a(bundle.getIntArray(e62.a(1013)));
            }

            private static SparseBooleanArray a(@Nullable int[] iArr) {
                if (iArr == null) {
                    return new SparseBooleanArray();
                }
                SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
                for (int i : iArr) {
                    sparseBooleanArray.append(i, true);
                }
                return sparseBooleanArray;
            }

            public final void a(boolean z) {
                this.H = z;
            }

            @Override
            public final void a(Context context) {
                super.a(context);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private void a(Bundle bundle) {
                kk0 kk0VarA;
                SparseArray sparseArray;
                int[] intArray = bundle.getIntArray(Integer.toString(1010, 36));
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(Integer.toString(1011, 36));
                if (parcelableArrayList == null) {
                    kk0VarA = kk0.h();
                } else {
                    kk0VarA = lm.a(z52.f, parcelableArrayList);
                }
                SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(Integer.toString(1012, 36));
                if (sparseParcelableArray == null) {
                    sparseArray = new SparseArray();
                } else {
                    km.a<d> aVar = d.e;
                    SparseArray sparseArray2 = new SparseArray(sparseParcelableArray.size());
                    for (int i = 0; i < sparseParcelableArray.size(); i++) {
                        sparseArray2.put(sparseParcelableArray.keyAt(i), aVar.fromBundle((Bundle) sparseParcelableArray.valueAt(i)));
                    }
                    sparseArray = sparseArray2;
                }
                if (intArray == null || intArray.length != kk0VarA.size()) {
                    return;
                }
                for (int i2 = 0; i2 < intArray.length; i2++) {
                    int i3 = intArray[i2];
                    z52 z52Var = (z52) kk0VarA.get(i2);
                    d dVar = (d) sparseArray.get(i2);
                    Map<z52, d> map = this.N.get(i3);
                    if (map == null) {
                        map = new HashMap<>();
                        this.N.put(i3, map);
                    }
                    if (!map.containsKey(z52Var) || !f92.a(map.get(z52Var), dVar)) {
                        map.put(z52Var, dVar);
                    }
                }
            }

            @Override
            public final e62.a a(int i, int i2) {
                super.a(i, i2);
                return this;
            }
        }

        static {
            new km.a() {
                @Override
                public final km fromBundle(Bundle bundle) {
                    return s00.c.b(bundle);
                }
            };
        }

        private c(a aVar) {
            super(aVar);
            this.C = aVar.A;
            this.D = aVar.B;
            this.E = aVar.C;
            this.F = aVar.D;
            this.G = aVar.E;
            this.H = aVar.F;
            this.I = aVar.G;
            this.J = aVar.H;
            this.K = aVar.I;
            this.L = aVar.J;
            this.M = aVar.K;
            this.N = aVar.L;
            this.O = aVar.M;
            this.P = aVar.N;
            this.Q = aVar.O;
        }

        public static c a(Context context) {
            return new c(new a(context));
        }

        public static c b(Bundle bundle) {
            return new c(new a(bundle));
        }

        @Override
        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            if (super.equals(cVar) && this.C == cVar.C && this.D == cVar.D && this.E == cVar.E && this.F == cVar.F && this.G == cVar.G && this.H == cVar.H && this.I == cVar.I && this.J == cVar.J && this.K == cVar.K && this.L == cVar.L && this.M == cVar.M && this.N == cVar.N && this.O == cVar.O) {
                SparseBooleanArray sparseBooleanArray = this.Q;
                SparseBooleanArray sparseBooleanArray2 = cVar.Q;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    for (int i = 0; i < size; i++) {
                        if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) >= 0) {
                        }
                    }
                    SparseArray<Map<z52, d>> sparseArray = this.P;
                    SparseArray<Map<z52, d>> sparseArray2 = cVar.P;
                    int size2 = sparseArray.size();
                    if (sparseArray2.size() == size2) {
                        for (int i2 = 0; i2 < size2; i2++) {
                            int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i2));
                            if (iIndexOfKey >= 0) {
                                Map<z52, d> mapValueAt = sparseArray.valueAt(i2);
                                Map<z52, d> mapValueAt2 = sparseArray2.valueAt(iIndexOfKey);
                                if (mapValueAt2.size() == mapValueAt.size()) {
                                    for (Map.Entry<z52, d> entry : mapValueAt.entrySet()) {
                                        z52 key = entry.getKey();
                                        if (!mapValueAt2.containsKey(key) || !f92.a(entry.getValue(), mapValueAt2.get(key))) {
                                        }
                                    }
                                }
                            }
                        }
                        return true;
                    }
                }
            }
            return false;
        }

        @Override
        public final int hashCode() {
            return ((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.C ? 1 : 0)) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31) + (this.F ? 1 : 0)) * 31) + (this.G ? 1 : 0)) * 31) + (this.H ? 1 : 0)) * 31) + (this.I ? 1 : 0)) * 31) + (this.J ? 1 : 0)) * 31) + (this.K ? 1 : 0)) * 31) + (this.L ? 1 : 0)) * 31) + (this.M ? 1 : 0)) * 31) + (this.N ? 1 : 0)) * 31) + (this.O ? 1 : 0);
        }
    }

    public static final class d implements km {
        public static final km.a<d> e = new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return s00.d.a(bundle);
            }
        };
        public final int b;
        public final int[] c;
        public final int d;

        public d(int i, int i2, int[] iArr) {
            this.b = i;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.c = iArrCopyOf;
            this.d = i2;
            Arrays.sort(iArrCopyOf);
        }

        public static d a(Bundle bundle) {
            int i = bundle.getInt(Integer.toString(0, 36), -1);
            int[] intArray = bundle.getIntArray(Integer.toString(1, 36));
            int i2 = bundle.getInt(Integer.toString(2, 36), -1);
            if (i < 0 || i2 < 0) {
                throw new IllegalArgumentException();
            }
            intArray.getClass();
            return new d(i, i2, intArray);
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.b == dVar.b && Arrays.equals(this.c, dVar.c) && this.d == dVar.d;
        }

        public final int hashCode() {
            return ((Arrays.hashCode(this.c) + (this.b * 31)) * 31) + this.d;
        }
    }

    @RequiresApi(32)
    public static class e {
        private final Spatializer a;
        private final boolean b;

        @Nullable
        private Handler c;

        @Nullable
        private Spatializer$OnSpatializerStateChangedListener d;

        public class a implements Spatializer$OnSpatializerStateChangedListener {
            final s00 a;

            public a(s00 s00Var) {
                this.a = s00Var;
            }

            public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
                this.a.e();
            }

            public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
                this.a.e();
            }
        }

        private e(Spatializer spatializer) {
            this.a = spatializer;
            this.b = spatializer.getImmersiveAudioLevel() != 0;
        }

        public final boolean b() {
            return this.a.isEnabled();
        }

        public final void c() {
            Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener = this.d;
            if (spatializer$OnSpatializerStateChangedListener == null || this.c == null) {
                return;
            }
            this.a.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
            Handler handler = this.c;
            int i = f92.a;
            handler.removeCallbacksAndMessages(null);
            this.c = null;
            this.d = null;
        }

        public final boolean a(jc0 jc0Var, ph phVar) {
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(f92.a((MimeTypes.AUDIO_E_AC3_JOC.equals(jc0Var.m) && jc0Var.z == 16) ? 12 : jc0Var.z));
            int i = jc0Var.A;
            if (i != -1) {
                channelMask.setSampleRate(i);
            }
            return this.a.canBeSpatialized(phVar.a().a, channelMask.build());
        }

        public final void a(s00 s00Var, Looper looper) {
            if (this.d == null && this.c == null) {
                this.d = new a(s00Var);
                Handler handler = new Handler(looper);
                this.c = handler;
                this.a.addOnSpatializerStateChangedListener(new defpackage.de1(handler), this.d);
            }
        }

        public final boolean a() {
            return this.a.isAvailable();
        }

        @Nullable
        public static e a(Context context) {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager == null) {
                return null;
            }
            return new e(audioManager.getSpatializer());
        }
    }

    public static final class f extends g<f> implements Comparable<f> {
        private final int f;
        private final boolean g;
        private final boolean h;
        private final boolean i;
        private final int j;
        private final int k;
        private final int l;
        private final int m;
        private final boolean n;

        public f(int i, y52 y52Var, int i2, c cVar, int i3, @Nullable String str) {
            int iA;
            super(i, i2, y52Var);
            int i4 = 0;
            this.g = s00.a(false, i3);
            int i5 = this.e.e & (~cVar.v);
            this.h = (i5 & 1) != 0;
            this.i = (i5 & 2) != 0;
            kk0<String> kk0VarA = cVar.t.isEmpty() ? kk0.a("") : cVar.t;
            int i6 = 0;
            while (true) {
                if (i6 >= kk0VarA.size()) {
                    i6 = Integer.MAX_VALUE;
                    iA = 0;
                    break;
                } else {
                    iA = s00.a(this.e, kk0VarA.get(i6), cVar.w);
                    if (iA > 0) {
                        break;
                    } else {
                        i6++;
                    }
                }
            }
            this.j = i6;
            this.k = iA;
            int iA2 = s00.a(this.e.f, cVar.u);
            this.l = iA2;
            this.n = (this.e.f & 1088) != 0;
            int iA3 = s00.a(this.e, str, s00.b(str) == null);
            this.m = iA3;
            boolean z = iA > 0 || (cVar.t.isEmpty() && iA2 > 0) || this.h || (this.i && iA3 > 0);
            if (s00.a(cVar.M, i3) && z) {
                i4 = 1;
            }
            this.f = i4;
        }

        public static int a(List<f> list, List<f> list2) {
            return list.get(0).compareTo(list2.get(0));
        }

        @Override
        public final int compareTo(f fVar) {
            yq yqVarA = yq.b().a(this.g, fVar.g).a(Integer.valueOf(this.j), Integer.valueOf(fVar.j), jf1.a().b()).a(this.k, fVar.k).a(this.l, fVar.l).a(this.h, fVar.h).a(Boolean.valueOf(this.i), Boolean.valueOf(fVar.i), this.k == 0 ? jf1.a() : jf1.a().b()).a(this.m, fVar.m);
            if (this.l == 0) {
                yqVarA = yqVarA.b(this.n, fVar.n);
            }
            return yqVarA.a();
        }

        @Override
        public final int a() {
            return this.f;
        }

        @Override
        public final boolean a(g gVar) {
            return false;
        }
    }

    public static abstract class g<T extends g<T>> {
        public final int b;
        public final y52 c;
        public final int d;
        public final jc0 e;

        public interface a<T extends g<T>> {
            List<T> a(int i, y52 y52Var, int[] iArr);
        }

        public g(int i, int i2, y52 y52Var) {
            this.b = i;
            this.c = y52Var;
            this.d = i2;
            this.e = y52Var.a(i2);
        }

        public abstract int a();

        public abstract boolean a(T t);
    }

    public s00(Context context, c cVar, za.b bVar) {
        this(cVar, bVar, context);
    }

    public static boolean a(boolean z, int i2) {
        int i3 = i2 & 7;
        return i3 == 4 || (z && i3 == 3);
    }

    public static int b(Integer num, Integer num2) {
        return 0;
    }

    @Override
    public final void d() {
        e eVar;
        synchronized (this.c) {
            try {
                if (f92.a >= 32 && (eVar = this.g) != null) {
                    eVar.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        super.d();
    }

    private s00(c cVar, za.b bVar, @Nullable Context context) {
        this.c = new Object();
        if (context != null) {
            context.getApplicationContext();
        }
        this.d = bVar;
        this.f = cVar;
        this.h = ph.h;
        boolean z = context != null && f92.d(context);
        this.e = z;
        if (!z && context != null && f92.a >= 32) {
            this.g = e.a(context);
        }
        if (this.f.L && context == null) {
            et0.d("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    private static void a(z52 z52Var, c cVar, HashMap map) {
        d62 d62Var;
        for (int i2 = 0; i2 < z52Var.b; i2++) {
            d62 d62Var2 = cVar.z.get(z52Var.a(i2));
            if (d62Var2 != null && ((d62Var = (d62) map.get(Integer.valueOf(d62Var2.b.d))) == null || (d62Var.c.isEmpty() && !d62Var2.c.isEmpty()))) {
                map.put(Integer.valueOf(d62Var2.b.d), d62Var2);
            }
        }
    }

    @Nullable
    public static String b(@Nullable String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    public void e() {
        boolean z;
        e eVar;
        synchronized (this.c) {
            try {
                z = this.f.L && !this.e && f92.a >= 32 && (eVar = this.g) != null && eVar.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            b();
        }
    }

    public static int a(jc0 jc0Var, @Nullable String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(jc0Var.d)) {
            return 4;
        }
        String strB = b(str);
        String strB2 = b(jc0Var.d);
        if (strB2 == null || strB == null) {
            return (z && strB2 == null) ? 1 : 0;
        }
        if (strB2.startsWith(strB) || strB.startsWith(strB2)) {
            return 3;
        }
        int i2 = f92.a;
        return strB2.split("-", 2)[0].equals(strB.split("-", 2)[0]) ? 2 : 0;
    }

    public static final class h extends g<h> {
        private final boolean f;
        private final c g;
        private final boolean h;
        private final boolean i;
        private final int j;
        private final int k;
        private final int l;
        private final int m;
        private final boolean n;
        private final boolean o;
        private final int p;
        private final boolean q;
        private final boolean r;
        private final int s;

        /* JADX WARN: Code duplicated, block: B:31:0x004b  */
        /* JADX WARN: Code duplicated, block: B:51:0x0079  */
        public h(int i, y52 y52Var, int i2, c cVar, int i3, int i4, boolean z) {
            boolean z2;
            boolean z3;
            jc0 jc0Var;
            int i5;
            int i6;
            int i7;
            jc0 jc0Var2;
            int i8;
            int i9;
            int i10;
            super(i, i2, y52Var);
            this.g = cVar;
            int i11 = cVar.E ? 24 : 16;
            this.o = cVar.D && (i4 & i11) != 0;
            if (!z || (((i8 = (jc0Var2 = this.e).r) != -1 && i8 > cVar.b) || ((i9 = jc0Var2.s) != -1 && i9 > cVar.c))) {
                z2 = false;
            } else {
                float f = jc0Var2.t;
                if ((f == -1.0f || f <= cVar.d) && ((i10 = jc0Var2.i) == -1 || i10 <= cVar.e)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            this.f = z2;
            if (!z || (((i5 = (jc0Var = this.e).r) != -1 && i5 < cVar.f) || ((i6 = jc0Var.s) != -1 && i6 < cVar.g))) {
                z3 = false;
            } else {
                float f2 = jc0Var.t;
                if ((f2 == -1.0f || f2 >= cVar.h) && ((i7 = jc0Var.i) == -1 || i7 >= cVar.i)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            }
            this.h = z3;
            this.i = s00.a(false, i3);
            jc0 jc0Var3 = this.e;
            this.j = jc0Var3.i;
            this.k = jc0Var3.b();
            this.m = s00.a(this.e.f, cVar.n);
            int i12 = this.e.f;
            this.n = i12 == 0 || (i12 & 1) != 0;
            int i13 = 0;
            while (true) {
                if (i13 >= cVar.m.size()) {
                    i13 = Integer.MAX_VALUE;
                    break;
                }
                String str = this.e.m;
                if (str != null && str.equals(cVar.m.get(i13))) {
                    break;
                } else {
                    i13++;
                }
            }
            this.l = i13;
            this.q = zo1.a(i3) == 128;
            this.r = zo1.b(i3) == 64;
            this.s = s00.a(this.e.m);
            this.p = a(i3, i11);
        }

        public static int a(h hVar, h hVar2) {
            yq yqVarA = yq.b().a(hVar.i, hVar2.i).a(hVar.m, hVar2.m).a(hVar.n, hVar2.n).a(hVar.f, hVar2.f).a(hVar.h, hVar2.h).a(Integer.valueOf(hVar.l), Integer.valueOf(hVar2.l), jf1.a().b()).a(hVar.q, hVar2.q).a(hVar.r, hVar2.r);
            if (hVar.q && hVar.r) {
                yqVarA = yqVarA.a(hVar.s, hVar2.s);
            }
            return yqVarA.a();
        }

        public static int b(h hVar, h hVar2) {
            jf1 jf1VarB = (hVar.f && hVar.i) ? s00.i : s00.i.b();
            return yq.b().a(Integer.valueOf(hVar.j), Integer.valueOf(hVar2.j), hVar.g.x ? s00.i.b() : s00.j).a(Integer.valueOf(hVar.k), Integer.valueOf(hVar2.k), jf1VarB).a(Integer.valueOf(hVar.j), Integer.valueOf(hVar2.j), jf1VarB).a();
        }

        private int a(int i, int i2) {
            if ((this.e.f & 16384) != 0 || !s00.a(this.g.M, i)) {
                return 0;
            }
            if (!this.f && !this.g.C) {
                return 0;
            }
            if (s00.a(false, i) && this.h && this.f && this.e.i != -1) {
                c cVar = this.g;
                if (!cVar.y && !cVar.x && (i & i2) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override
        public final int a() {
            return this.p;
        }

        @Override
        public final boolean a(g gVar) {
            h hVar = (h) gVar;
            return (this.o || f92.a(this.e.m, hVar.e.m)) && (this.g.F || (this.q == hVar.q && this.r == hVar.r));
        }

        public static int a(List<h> list, List<h> list2) {
            return yq.b().a((h) Collections.max(list, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return s00.h.a((s00.h) obj, (s00.h) obj2);
                }
            }), (h) Collections.max(list2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return s00.h.a((s00.h) obj, (s00.h) obj2);
                }
            }), new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return s00.h.a((s00.h) obj, (s00.h) obj2);
                }
            }).a(list.size(), list2.size()).a((h) Collections.max(list, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return s00.h.b((s00.h) obj, (s00.h) obj2);
                }
            }), (h) Collections.max(list2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return s00.h.b((s00.h) obj, (s00.h) obj2);
                }
            }), new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return s00.h.b((s00.h) obj, (s00.h) obj2);
                }
            }).a();
        }
    }

    public static int a(int i2, int i3) {
        if (i2 == 0 || i2 != i3) {
            return Integer.bitCount(i2 & i3);
        }
        return Integer.MAX_VALUE;
    }

    public static int a(@Nullable String str) {
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

    /* JADX WARN: Code duplicated, block: B:40:0x0060 A[Catch: all -> 0x0087, FALL_THROUGH, TryCatch #0 {all -> 0x0087, blocks: (B:4:0x0006, B:6:0x000c, B:8:0x0010, B:10:0x0014, B:34:0x0052, B:36:0x0056, B:38:0x005a, B:40:0x0060, B:42:0x0064, B:44:0x0068, B:46:0x006e, B:48:0x0074, B:50:0x007c, B:56:0x008a), top: B:60:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0089  */
    public boolean a(jc0 jc0Var) {
        e eVar;
        e eVar2;
        boolean z = true;
        synchronized (this.c) {
            try {
                if (this.f.L && !this.e && jc0Var.z > 2) {
                    String str = jc0Var.m;
                    if (str != null) {
                        switch (str) {
                            case "audio/eac3-joc":
                            case "audio/ac3":
                            case "audio/ac4":
                            case "audio/eac3":
                                if (f92.a >= 32 && (eVar2 = this.g) != null && eVar2.b) {
                                }
                            default:
                                if (f92.a < 32) {
                                    z = false;
                                    break;
                                } else {
                                    z = false;
                                    break;
                                }
                                break;
                        }
                    } else if (f92.a < 32 || (eVar = this.g) == null || !eVar.b || !eVar.a() || !this.g.b() || !this.g.a(jc0Var, this.h)) {
                        z = false;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public List a(c cVar, boolean z, int i2, y52 y52Var, int[] iArr) {
        wj1 wj1Var = new wj1() {
            @Override
            public final boolean apply(Object obj) {
                return this.b.a((jc0) obj);
            }
        };
        int i3 = kk0.d;
        kk0.a aVar = new kk0.a();
        for (int i4 = 0; i4 < y52Var.b; i4++) {
            aVar.b(new a(i2, y52Var, i4, cVar, iArr[i4], z, wj1Var));
        }
        return aVar.a();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0039  */
    public static List a(c cVar, int[] iArr, int i2, y52 y52Var, int[] iArr2) {
        int i3;
        int i4;
        int i5;
        int i6;
        Point point;
        int i7 = iArr[i2];
        int i8 = cVar.j;
        int i9 = cVar.k;
        boolean z = cVar.l;
        if (i8 == Integer.MAX_VALUE || i9 == Integer.MAX_VALUE) {
            i3 = Integer.MAX_VALUE;
        } else {
            int i10 = Integer.MAX_VALUE;
            for (int i11 = 0; i11 < y52Var.b; i11++) {
                jc0 jc0VarA = y52Var.a(i11);
                int i12 = jc0VarA.r;
                if (i12 > 0 && (i4 = jc0VarA.s) > 0) {
                    if (!z) {
                        i5 = i8;
                        i6 = i9;
                    } else if ((i12 > i4) != (i8 > i9)) {
                        i6 = i8;
                        i5 = i9;
                    } else {
                        i5 = i8;
                        i6 = i9;
                    }
                    int i13 = i12 * i6;
                    int i14 = i4 * i5;
                    if (i13 >= i14) {
                        int i15 = f92.a;
                        point = new Point(i5, ((i14 + i12) - 1) / i12);
                    } else {
                        int i16 = f92.a;
                        point = new Point(((i13 + i4) - 1) / i4, i6);
                    }
                    int i17 = jc0VarA.r;
                    int i18 = jc0VarA.s;
                    int i19 = i17 * i18;
                    if (i17 >= ((int) (point.x * 0.98f)) && i18 >= ((int) (point.y * 0.98f)) && i19 < i10) {
                        i10 = i19;
                    }
                }
            }
            i3 = i10;
        }
        int i20 = kk0.d;
        kk0.a aVar = new kk0.a();
        for (int i21 = 0; i21 < y52Var.b; i21++) {
            int iB = y52Var.a(i21).b();
            aVar.b(new h(i2, y52Var, i21, cVar, iArr2[i21], i7, i3 == Integer.MAX_VALUE || (iB != -1 && iB <= i3)));
        }
        return aVar.a();
    }

    public static int a(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    @Nullable
    public final Pair a(cu0.a aVar, int[][][] iArr, final c cVar) throws m60 {
        final boolean z = false;
        for (int i2 = 0; i2 < aVar.a(); i2++) {
            if (2 == aVar.a(i2) && aVar.b(i2).b > 0) {
                z = true;
                break;
            }
        }
        return a(1, aVar, iArr, new g.a() {
            @Override
            public final List a(int i3, y52 y52Var, int[] iArr2) {
                return this.a.a(cVar, z, i3, y52Var, iArr2);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return s00.a.a((List<s00.a>) obj, (List<s00.a>) obj2);
            }
        });
    }

    @Nullable
    public static Pair a(cu0.a aVar, int[][][] iArr, final c cVar, @Nullable final String str) throws m60 {
        return a(3, aVar, iArr, new g.a() {
            @Override
            public final List a(int i2, y52 y52Var, int[] iArr2) {
                return s00.a(cVar, str, i2, y52Var, iArr2);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return s00.f.a((List) obj, (List) obj2);
            }
        });
    }

    @Override
    public final Pair<ap1[], h70[]> a(cu0.a aVar, int[][][] iArr, int[] iArr2, vw0.b bVar, i52 i52Var) throws m60 {
        c cVar;
        String str;
        int i2;
        boolean z;
        int i3;
        y52 y52Var;
        z52 z52Var;
        e eVar;
        synchronized (this.c) {
            try {
                cVar = this.f;
                if (cVar.L && f92.a >= 32 && (eVar = this.g) != null) {
                    Looper looperMyLooper = Looper.myLooper();
                    if (looperMyLooper != null) {
                        eVar.a(this, looperMyLooper);
                    } else {
                        throw new IllegalStateException();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int iA = aVar.a();
        int iA2 = aVar.a();
        h70.a[] aVarArr = new h70.a[iA2];
        Pair pairA = a(aVar, iArr, iArr2, cVar);
        if (pairA != null) {
            aVarArr[((Integer) pairA.second).intValue()] = (h70.a) pairA.first;
        }
        Pair pairA2 = a(aVar, iArr, cVar);
        if (pairA2 != null) {
            aVarArr[((Integer) pairA2.second).intValue()] = (h70.a) pairA2.first;
        }
        int i4 = 0;
        if (pairA2 == null) {
            str = null;
        } else {
            h70.a aVar2 = (h70.a) pairA2.first;
            str = aVar2.a.a(aVar2.b[0]).d;
        }
        Pair pairA3 = a(aVar, iArr, cVar, str);
        if (pairA3 != null) {
            aVarArr[((Integer) pairA3.second).intValue()] = (h70.a) pairA3.first;
        }
        int i5 = 0;
        while (true) {
            i2 = 2;
            if (i5 >= iA2) {
                break;
            }
            int iA3 = aVar.a(i5);
            if (iA3 == 2 || iA3 == 1 || iA3 == 3) {
                i3 = iA2;
            } else {
                z52 z52VarB = aVar.b(i5);
                int[][] iArr3 = iArr[i5];
                int i6 = i4;
                int i7 = i6;
                y52 y52Var2 = null;
                b bVar2 = null;
                while (i6 < z52VarB.b) {
                    y52 y52VarA = z52VarB.a(i6);
                    int[] iArr4 = iArr3[i6];
                    int i8 = i4;
                    while (i8 < y52VarA.b) {
                        int i9 = iA2;
                        if (a(cVar.M, iArr4[i8])) {
                            y52Var = y52VarA;
                            b bVar3 = new b(y52VarA.a(i8), iArr4[i8]);
                            if (bVar2 != null) {
                                z52Var = z52VarB;
                                if (yq.b().a(bVar3.c, bVar2.c).a(bVar3.b, bVar2.b).a() > 0) {
                                }
                            } else {
                                z52Var = z52VarB;
                            }
                            i7 = i8;
                            bVar2 = bVar3;
                            y52Var2 = y52Var;
                        } else {
                            y52Var = y52VarA;
                            z52Var = z52VarB;
                        }
                        i8++;
                        iA2 = i9;
                        y52VarA = y52Var;
                        z52VarB = z52Var;
                    }
                    i6++;
                    i4 = 0;
                }
                i3 = iA2;
                aVarArr[i5] = y52Var2 == null ? null : new h70.a(0, y52Var2, new int[]{i7});
            }
            i5++;
            iA2 = i3;
            i4 = 0;
        }
        int iA4 = aVar.a();
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < iA4; i10++) {
            a(aVar.b(i10), cVar, map);
        }
        a(aVar.b(), cVar, map);
        for (int i11 = 0; i11 < iA4; i11++) {
            d62 d62Var = (d62) map.get(Integer.valueOf(aVar.a(i11)));
            if (d62Var != null) {
                aVarArr[i11] = (d62Var.c.isEmpty() || aVar.b(i11).a(d62Var.b) == -1) ? null : new h70.a(0, d62Var.b, hq0.a(d62Var.c));
            }
        }
        int i12 = 0;
        int iA5 = aVar.a();
        for (int i13 = 0; i13 < iA5; i13++) {
            z52 z52VarB2 = aVar.b(i13);
            Map map2 = (Map) cVar.P.get(i13);
            if (map2 != null && map2.containsKey(z52VarB2)) {
                Map map3 = (Map) cVar.P.get(i13);
                d dVar = map3 != null ? (d) map3.get(z52VarB2) : null;
                aVarArr[i13] = (dVar == null || dVar.c.length == 0) ? null : new h70.a(dVar.d, z52VarB2.a(dVar.b), dVar.c);
            }
        }
        for (int i14 = 0; i14 < iA; i14++) {
            int iA6 = aVar.a(i14);
            if (cVar.Q.get(i14) || cVar.A.contains(Integer.valueOf(iA6))) {
                aVarArr[i14] = null;
            }
        }
        h70[] h70VarArrA = ((za.b) this.d).a(aVarArr, a());
        ap1[] ap1VarArr = new ap1[iA];
        for (int i15 = 0; i15 < iA; i15++) {
            ap1VarArr[i15] = (cVar.Q.get(i15) || cVar.A.contains(Integer.valueOf(aVar.a(i15))) || (aVar.a(i15) != -2 && h70VarArrA[i15] == null)) ? null : ap1.b;
        }
        if (cVar.N) {
            int i16 = -1;
            int i17 = -1;
            int i18 = 0;
            while (true) {
                if (i18 >= aVar.a()) {
                    z = true;
                    break;
                }
                int iA7 = aVar.a(i18);
                h70 h70Var = h70VarArrA[i18];
                if ((iA7 == 1 || iA7 == i2) && h70Var != null) {
                    int[][] iArr5 = iArr[i18];
                    int iA8 = aVar.b(i18).a(h70Var.a());
                    int i19 = i12;
                    while (true) {
                        if (i19 >= h70Var.b()) {
                            if (iA7 != 1) {
                                if (i17 == -1) {
                                    i17 = i18;
                                    break;
                                }
                                z = false;
                                break;
                            }
                            if (i16 == -1) {
                                i16 = i18;
                                break;
                            }
                            z = false;
                            break;
                        }
                        if ((iArr5[iA8][h70Var.b(i19)] & 32) != 32) {
                            break;
                        }
                        i19++;
                    }
                }
                i18++;
                i2 = 2;
                i12 = 0;
            }
            if (z & ((i16 == -1 || i17 == -1) ? false : true)) {
                ap1 ap1Var = new ap1(true);
                ap1VarArr[i16] = ap1Var;
                ap1VarArr[i17] = ap1Var;
            }
        }
        return Pair.create(ap1VarArr, h70VarArrA);
    }

    @Nullable
    private static Pair a(int i2, cu0.a aVar, int[][][] iArr, g.a aVar2, Comparator comparator) {
        int i3;
        RandomAccess randomAccessA;
        ArrayList arrayList = new ArrayList();
        int iA = aVar.a();
        int i4 = 0;
        while (i4 < iA) {
            if (i2 == aVar.a(i4)) {
                z52 z52VarB = aVar.b(i4);
                for (int i5 = 0; i5 < z52VarB.b; i5++) {
                    y52 y52VarA = z52VarB.a(i5);
                    List listA = aVar2.a(i4, y52VarA, iArr[i4][i5]);
                    boolean[] zArr = new boolean[y52VarA.b];
                    int i6 = 0;
                    while (i6 < y52VarA.b) {
                        g gVar = (g) listA.get(i6);
                        int iA2 = gVar.a();
                        if (zArr[i6] || iA2 == 0) {
                            i3 = iA;
                        } else {
                            if (iA2 == 1) {
                                randomAccessA = kk0.a(gVar);
                                i3 = iA;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(gVar);
                                int i7 = i6 + 1;
                                while (i7 < y52VarA.b) {
                                    g gVar2 = (g) listA.get(i7);
                                    int i8 = iA;
                                    if (gVar2.a() == 2 && gVar.a(gVar2)) {
                                        arrayList2.add(gVar2);
                                        zArr[i7] = true;
                                    }
                                    i7++;
                                    iA = i8;
                                }
                                i3 = iA;
                                randomAccessA = arrayList2;
                            }
                            arrayList.add(randomAccessA);
                        }
                        i6++;
                        iA = i3;
                    }
                }
            }
            i4++;
            iA = iA;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i9 = 0; i9 < list.size(); i9++) {
            iArr2[i9] = ((g) list.get(i9)).d;
        }
        g gVar3 = (g) list.get(0);
        return Pair.create(new h70.a(0, gVar3.c, iArr2), Integer.valueOf(gVar3.b));
    }

    @Nullable
    public static Pair a(cu0.a aVar, int[][][] iArr, final int[] iArr2, final c cVar) throws m60 {
        return a(2, aVar, iArr, new g.a() {
            @Override
            public final List a(int i2, y52 y52Var, int[] iArr3) {
                return s00.a(cVar, iArr2, i2, y52Var, iArr3);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return s00.h.a((List<s00.h>) obj, (List<s00.h>) obj2);
            }
        });
    }

    @Override
    public final void a(ph phVar) {
        boolean zEquals;
        synchronized (this.c) {
            zEquals = this.h.equals(phVar);
            this.h = phVar;
        }
        if (zEquals) {
            return;
        }
        e();
    }

    public static List a(c cVar, String str, int i2, y52 y52Var, int[] iArr) {
        int i3 = kk0.d;
        kk0.a aVar = new kk0.a();
        for (int i4 = 0; i4 < y52Var.b; i4++) {
            aVar.b(new f(i2, y52Var, i4, cVar, iArr[i4], str));
        }
        return aVar.a();
    }
}
