package j4;

import androidx.work.BackoffPolicy;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class u {

    public static final a f62984u = new a(null);

    private static final String f62985v;

    public static final l.a f62986w;

    public final String f62987a;

    public WorkInfo.State f62988b;

    public String f62989c;

    public String f62990d;

    public androidx.work.d f62991e;

    public androidx.work.d f62992f;

    public long f62993g;

    public long f62994h;

    public long f62995i;

    public androidx.work.b f62996j;

    public int f62997k;

    public BackoffPolicy f62998l;

    public long f62999m;

    public long f63000n;

    public long f63001o;

    public long f63002p;

    public boolean f63003q;

    public OutOfQuotaPolicy f63004r;

    private int f63005s;

    private final int f63006t;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b {

        public String f63007a;

        public WorkInfo.State f63008b;

        public b(String id2, WorkInfo.State state) {
            Intrinsics.h(id2, "id");
            Intrinsics.h(state, "state");
            this.f63007a = id2;
            this.f63008b = state;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f63007a, bVar.f63007a) && this.f63008b == bVar.f63008b;
        }

        public int hashCode() {
            return (this.f63007a.hashCode() * 31) + this.f63008b.hashCode();
        }

        public String toString() {
            return "IdAndState(id=" + this.f63007a + ", state=" + this.f63008b + ')';
        }
    }

    public static final class c {

        private String f63009a;

        private WorkInfo.State f63010b;

        private androidx.work.d f63011c;

        private int f63012d;

        private final int f63013e;

        private List f63014f;

        private List f63015g;

        public c(String id2, WorkInfo.State state, androidx.work.d output, int i10, int i11, List tags, List progress) {
            Intrinsics.h(id2, "id");
            Intrinsics.h(state, "state");
            Intrinsics.h(output, "output");
            Intrinsics.h(tags, "tags");
            Intrinsics.h(progress, "progress");
            this.f63009a = id2;
            this.f63010b = state;
            this.f63011c = output;
            this.f63012d = i10;
            this.f63013e = i11;
            this.f63014f = tags;
            this.f63015g = progress;
        }

        public final WorkInfo a() {
            return new WorkInfo(UUID.fromString(this.f63009a), this.f63010b, this.f63011c, this.f63014f, !this.f63015g.isEmpty() ? (androidx.work.d) this.f63015g.get(0) : androidx.work.d.f15129c, this.f63012d, this.f63013e);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.c(this.f63009a, cVar.f63009a) && this.f63010b == cVar.f63010b && Intrinsics.c(this.f63011c, cVar.f63011c) && this.f63012d == cVar.f63012d && this.f63013e == cVar.f63013e && Intrinsics.c(this.f63014f, cVar.f63014f) && Intrinsics.c(this.f63015g, cVar.f63015g);
        }

        public int hashCode() {
            return (((((((((((this.f63009a.hashCode() * 31) + this.f63010b.hashCode()) * 31) + this.f63011c.hashCode()) * 31) + this.f63012d) * 31) + this.f63013e) * 31) + this.f63014f.hashCode()) * 31) + this.f63015g.hashCode();
        }

        public String toString() {
            return "WorkInfoPojo(id=" + this.f63009a + ", state=" + this.f63010b + ", output=" + this.f63011c + ", runAttemptCount=" + this.f63012d + ", generation=" + this.f63013e + ", tags=" + this.f63014f + ", progress=" + this.f63015g + ')';
        }
    }

    static {
        String strI = androidx.work.j.i("WorkSpec");
        Intrinsics.g(strI, "tagWithPrefix(\"WorkSpec\")");
        f62985v = strI;
        f62986w = new l.a() {
            @Override
            public final Object apply(Object obj) {
                return u.b((List) obj);
            }
        };
    }

    public u(String id2, WorkInfo.State state, String workerClassName, String str, androidx.work.d input, androidx.work.d output, long j10, long j11, long j12, androidx.work.b constraints, int i10, BackoffPolicy backoffPolicy, long j13, long j14, long j15, long j16, boolean z10, OutOfQuotaPolicy outOfQuotaPolicy, int i11, int i12) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(state, "state");
        Intrinsics.h(workerClassName, "workerClassName");
        Intrinsics.h(input, "input");
        Intrinsics.h(output, "output");
        Intrinsics.h(constraints, "constraints");
        Intrinsics.h(backoffPolicy, "backoffPolicy");
        Intrinsics.h(outOfQuotaPolicy, "outOfQuotaPolicy");
        this.f62987a = id2;
        this.f62988b = state;
        this.f62989c = workerClassName;
        this.f62990d = str;
        this.f62991e = input;
        this.f62992f = output;
        this.f62993g = j10;
        this.f62994h = j11;
        this.f62995i = j12;
        this.f62996j = constraints;
        this.f62997k = i10;
        this.f62998l = backoffPolicy;
        this.f62999m = j13;
        this.f63000n = j14;
        this.f63001o = j15;
        this.f63002p = j16;
        this.f63003q = z10;
        this.f63004r = outOfQuotaPolicy;
        this.f63005s = i11;
        this.f63006t = i12;
    }

    public static final List b(List list) {
        if (list == null) {
            return null;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((c) it.next()).a());
        }
        return arrayList;
    }

    public final long c() {
        if (i()) {
            return this.f63000n + RangesKt.i(this.f62998l == BackoffPolicy.LINEAR ? this.f62999m * ((long) this.f62997k) : (long) Math.scalb(this.f62999m, this.f62997k - 1), 18000000L);
        }
        long j10 = 0;
        if (!j()) {
            long jCurrentTimeMillis = this.f63000n;
            if (jCurrentTimeMillis == 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            return jCurrentTimeMillis + this.f62993g;
        }
        int i10 = this.f63005s;
        long j11 = this.f63000n;
        if (i10 == 0) {
            j11 += this.f62993g;
        }
        long j12 = this.f62995i;
        long j13 = this.f62994h;
        if (j12 != j13) {
            j10 = i10 == 0 ? ((long) (-1)) * j12 : 0L;
            j11 += j13;
        } else if (i10 != 0) {
            j10 = j13;
        }
        return j11 + j10;
    }

    public final u d(String id2, WorkInfo.State state, String workerClassName, String str, androidx.work.d input, androidx.work.d output, long j10, long j11, long j12, androidx.work.b constraints, int i10, BackoffPolicy backoffPolicy, long j13, long j14, long j15, long j16, boolean z10, OutOfQuotaPolicy outOfQuotaPolicy, int i11, int i12) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(state, "state");
        Intrinsics.h(workerClassName, "workerClassName");
        Intrinsics.h(input, "input");
        Intrinsics.h(output, "output");
        Intrinsics.h(constraints, "constraints");
        Intrinsics.h(backoffPolicy, "backoffPolicy");
        Intrinsics.h(outOfQuotaPolicy, "outOfQuotaPolicy");
        return new u(id2, state, workerClassName, str, input, output, j10, j11, j12, constraints, i10, backoffPolicy, j13, j14, j15, j16, z10, outOfQuotaPolicy, i11, i12);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return Intrinsics.c(this.f62987a, uVar.f62987a) && this.f62988b == uVar.f62988b && Intrinsics.c(this.f62989c, uVar.f62989c) && Intrinsics.c(this.f62990d, uVar.f62990d) && Intrinsics.c(this.f62991e, uVar.f62991e) && Intrinsics.c(this.f62992f, uVar.f62992f) && this.f62993g == uVar.f62993g && this.f62994h == uVar.f62994h && this.f62995i == uVar.f62995i && Intrinsics.c(this.f62996j, uVar.f62996j) && this.f62997k == uVar.f62997k && this.f62998l == uVar.f62998l && this.f62999m == uVar.f62999m && this.f63000n == uVar.f63000n && this.f63001o == uVar.f63001o && this.f63002p == uVar.f63002p && this.f63003q == uVar.f63003q && this.f63004r == uVar.f63004r && this.f63005s == uVar.f63005s && this.f63006t == uVar.f63006t;
    }

    public final int f() {
        return this.f63006t;
    }

    public final int g() {
        return this.f63005s;
    }

    public final boolean h() {
        return !Intrinsics.c(androidx.work.b.f15108j, this.f62996j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [int] */
    /* JADX WARN: Type inference failed for: r1v31, types: [int] */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v38 */
    public int hashCode() {
        int iHashCode = ((((this.f62987a.hashCode() * 31) + this.f62988b.hashCode()) * 31) + this.f62989c.hashCode()) * 31;
        String str = this.f62990d;
        int iHashCode2 = (((((((((((((((((((((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f62991e.hashCode()) * 31) + this.f62992f.hashCode()) * 31) + androidx.collection.s.a(this.f62993g)) * 31) + androidx.collection.s.a(this.f62994h)) * 31) + androidx.collection.s.a(this.f62995i)) * 31) + this.f62996j.hashCode()) * 31) + this.f62997k) * 31) + this.f62998l.hashCode()) * 31) + androidx.collection.s.a(this.f62999m)) * 31) + androidx.collection.s.a(this.f63000n)) * 31) + androidx.collection.s.a(this.f63001o)) * 31) + androidx.collection.s.a(this.f63002p)) * 31;
        boolean z10 = this.f63003q;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return ((((((iHashCode2 + r10) * 31) + this.f63004r.hashCode()) * 31) + this.f63005s) * 31) + this.f63006t;
    }

    public final boolean i() {
        return this.f62988b == WorkInfo.State.ENQUEUED && this.f62997k > 0;
    }

    public final boolean j() {
        return this.f62994h != 0;
    }

    public final void k(long j10) {
        if (j10 < 900000) {
            androidx.work.j.e().k(f62985v, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        l(RangesKt.f(j10, 900000L), RangesKt.f(j10, 900000L));
    }

    public final void l(long j10, long j11) {
        if (j10 < 900000) {
            androidx.work.j.e().k(f62985v, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        this.f62994h = RangesKt.f(j10, 900000L);
        if (j11 < 300000) {
            androidx.work.j.e().k(f62985v, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (j11 > this.f62994h) {
            androidx.work.j.e().k(f62985v, "Flex duration greater than interval duration; Changed to " + j10);
        }
        this.f62995i = RangesKt.m(j11, 300000L, this.f62994h);
    }

    public String toString() {
        return "{WorkSpec: " + this.f62987a + '}';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public u(String str, WorkInfo.State state, String str2, String str3, androidx.work.d dVar, androidx.work.d dVar2, long j10, long j11, long j12, androidx.work.b bVar, int i10, BackoffPolicy backoffPolicy, long j13, long j14, long j15, long j16, boolean z10, OutOfQuotaPolicy outOfQuotaPolicy, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        androidx.work.d dVar3;
        androidx.work.d dVar4;
        WorkInfo.State state2 = (i13 & 2) != 0 ? WorkInfo.State.ENQUEUED : state;
        String str4 = (i13 & 8) != 0 ? null : str3;
        if ((i13 & 16) != 0) {
            androidx.work.d EMPTY = androidx.work.d.f15129c;
            Intrinsics.g(EMPTY, "EMPTY");
            dVar3 = EMPTY;
        } else {
            dVar3 = dVar;
        }
        if ((i13 & 32) != 0) {
            androidx.work.d EMPTY2 = androidx.work.d.f15129c;
            Intrinsics.g(EMPTY2, "EMPTY");
            dVar4 = EMPTY2;
        } else {
            dVar4 = dVar2;
        }
        this(str, state2, str2, str4, dVar3, dVar4, (i13 & 64) != 0 ? 0L : j10, (i13 & 128) != 0 ? 0L : j11, (i13 & 256) != 0 ? 0L : j12, (i13 & 512) != 0 ? androidx.work.b.f15108j : bVar, (i13 & 1024) != 0 ? 0 : i10, (i13 & 2048) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i13 & 4096) != 0 ? 30000L : j13, (i13 & 8192) != 0 ? 0L : j14, (i13 & 16384) != 0 ? 0L : j15, (32768 & i13) != 0 ? -1L : j16, (65536 & i13) != 0 ? false : z10, (131072 & i13) != 0 ? OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST : outOfQuotaPolicy, (262144 & i13) != 0 ? 0 : i11, (i13 & 524288) != 0 ? 0 : i12);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u(String id2, String workerClassName_) {
        this(id2, null, workerClassName_, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 1048570, null);
        Intrinsics.h(id2, "id");
        Intrinsics.h(workerClassName_, "workerClassName_");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u(String newId, u other) {
        this(newId, other.f62988b, other.f62989c, other.f62990d, new androidx.work.d(other.f62991e), new androidx.work.d(other.f62992f), other.f62993g, other.f62994h, other.f62995i, new androidx.work.b(other.f62996j), other.f62997k, other.f62998l, other.f62999m, other.f63000n, other.f63001o, other.f63002p, other.f63003q, other.f63004r, other.f63005s, 0, 524288, null);
        Intrinsics.h(newId, "newId");
        Intrinsics.h(other, "other");
    }
}
