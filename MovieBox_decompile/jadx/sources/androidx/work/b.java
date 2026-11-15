package androidx.work;

import android.net.Uri;
import android.os.Build;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final C0126b f15107i = new C0126b(null);

    public static final b f15108j = new b(null, false, false, false, false, 0, 0, null, 255, null);

    private final NetworkType f15109a;

    private final boolean f15110b;

    private final boolean f15111c;

    private final boolean f15112d;

    private final boolean f15113e;

    private final long f15114f;

    private final long f15115g;

    private final Set f15116h;

    public static final class a {

        private boolean f15117a;

        private boolean f15118b;

        private boolean f15120d;

        private boolean f15121e;

        private NetworkType f15119c = NetworkType.NOT_REQUIRED;

        private long f15122f = -1;

        private long f15123g = -1;

        private Set f15124h = new LinkedHashSet();

        public final b a() {
            Set setF;
            long j10;
            long j11;
            if (Build.VERSION.SDK_INT >= 24) {
                setF = CollectionsKt.W0(this.f15124h);
                j10 = this.f15122f;
                j11 = this.f15123g;
            } else {
                setF = SetsKt.f();
                j10 = -1;
                j11 = -1;
            }
            return new b(this.f15119c, this.f15117a, this.f15118b, this.f15120d, this.f15121e, j10, j11, setF);
        }

        public final a b(NetworkType networkType) {
            Intrinsics.h(networkType, "networkType");
            this.f15119c = networkType;
            return this;
        }
    }

    public static final class C0126b {
        public C0126b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0126b() {
        }
    }

    public static final class c {

        private final Uri f15125a;

        private final boolean f15126b;

        public c(Uri uri, boolean z10) {
            Intrinsics.h(uri, "uri");
            this.f15125a = uri;
            this.f15126b = z10;
        }

        public final Uri a() {
            return this.f15125a;
        }

        public final boolean b() {
            return this.f15126b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!Intrinsics.c(c.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            Intrinsics.f(obj, "null cannot be cast to non-null type androidx.work.Constraints.ContentUriTrigger");
            c cVar = (c) obj;
            return Intrinsics.c(this.f15125a, cVar.f15125a) && this.f15126b == cVar.f15126b;
        }

        public int hashCode() {
            return (this.f15125a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f15126b);
        }
    }

    public b() {
        this(null, false, false, false, false, 0L, 0L, null, 255, null);
    }

    public final long a() {
        return this.f15115g;
    }

    public final long b() {
        return this.f15114f;
    }

    public final Set c() {
        return this.f15116h;
    }

    public final NetworkType d() {
        return this.f15109a;
    }

    public final boolean e() {
        return !this.f15116h.isEmpty();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(b.class, obj.getClass())) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f15110b == bVar.f15110b && this.f15111c == bVar.f15111c && this.f15112d == bVar.f15112d && this.f15113e == bVar.f15113e && this.f15114f == bVar.f15114f && this.f15115g == bVar.f15115g && this.f15109a == bVar.f15109a) {
            return Intrinsics.c(this.f15116h, bVar.f15116h);
        }
        return false;
    }

    public final boolean f() {
        return this.f15112d;
    }

    public final boolean g() {
        return this.f15110b;
    }

    public final boolean h() {
        return this.f15111c;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.f15109a.hashCode() * 31) + (this.f15110b ? 1 : 0)) * 31) + (this.f15111c ? 1 : 0)) * 31) + (this.f15112d ? 1 : 0)) * 31) + (this.f15113e ? 1 : 0)) * 31;
        long j10 = this.f15114f;
        int i10 = (iHashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f15115g;
        return ((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f15116h.hashCode();
    }

    public final boolean i() {
        return this.f15113e;
    }

    public b(NetworkType requiredNetworkType, boolean z10, boolean z11, boolean z12, boolean z13, long j10, long j11, Set contentUriTriggers) {
        Intrinsics.h(requiredNetworkType, "requiredNetworkType");
        Intrinsics.h(contentUriTriggers, "contentUriTriggers");
        this.f15109a = requiredNetworkType;
        this.f15110b = z10;
        this.f15111c = z11;
        this.f15112d = z12;
        this.f15113e = z13;
        this.f15114f = j10;
        this.f15115g = j11;
        this.f15116h = contentUriTriggers;
    }

    public b(NetworkType networkType, boolean z10, boolean z11, boolean z12, boolean z13, long j10, long j11, Set set, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? false : z11, (i10 & 8) != 0 ? false : z12, (i10 & 16) == 0 ? z13 : false, (i10 & 32) != 0 ? -1L : j10, (i10 & 64) == 0 ? j11 : -1L, (i10 & 128) != 0 ? SetsKt.f() : set);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public b(b other) {
        Intrinsics.h(other, "other");
        boolean z10 = other.f15110b;
        boolean z11 = other.f15111c;
        this(other.f15109a, z10, z11, other.f15112d, other.f15113e, other.f15114f, other.f15115g, other.f15116h);
    }
}
