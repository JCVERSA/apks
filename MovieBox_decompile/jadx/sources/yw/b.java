package yw;

import androidx.collection.s;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b implements p6.a {

    public static final a f76402h = new a(null);

    private final String f76403a;

    private final String f76404b;

    private final String f76405c;

    private final int f76406d;

    private final long f76407e;

    private final int f76408f;

    private boolean f76409g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(String downloadPath, String downloadShowPath, String pathName, int i10, long j10, int i11) {
        Intrinsics.h(downloadPath, "downloadPath");
        Intrinsics.h(downloadShowPath, "downloadShowPath");
        Intrinsics.h(pathName, "pathName");
        this.f76403a = downloadPath;
        this.f76404b = downloadShowPath;
        this.f76405c = pathName;
        this.f76406d = i10;
        this.f76407e = j10;
        this.f76408f = i11;
    }

    public final long a() {
        return this.f76407e;
    }

    public final String b() {
        return this.f76403a;
    }

    public final String c() {
        return this.f76404b;
    }

    public final String d() {
        return this.f76405c;
    }

    public final int e() {
        return this.f76406d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f76403a, bVar.f76403a) && Intrinsics.c(this.f76404b, bVar.f76404b) && Intrinsics.c(this.f76405c, bVar.f76405c) && this.f76406d == bVar.f76406d && this.f76407e == bVar.f76407e && this.f76408f == bVar.f76408f;
    }

    public final boolean f() {
        return this.f76409g;
    }

    public final void g(boolean z10) {
        this.f76409g = z10;
    }

    @Override
    public int getItemType() {
        return this.f76408f;
    }

    public int hashCode() {
        return (((((((((this.f76403a.hashCode() * 31) + this.f76404b.hashCode()) * 31) + this.f76405c.hashCode()) * 31) + this.f76406d) * 31) + s.a(this.f76407e)) * 31) + this.f76408f;
    }

    public String toString() {
        return "DownloadSDCardPathInfo(downloadPath=" + this.f76403a + ", downloadShowPath=" + this.f76404b + ", pathName=" + this.f76405c + ", pathType=" + this.f76406d + ", availableSize=" + this.f76407e + ", itemType=" + this.f76408f + ")";
    }
}
