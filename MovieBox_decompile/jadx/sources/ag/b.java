package ag;

import com.tn.lib.net.cons.HeaderType;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private boolean f348a;

    private boolean f349b;

    private String f350c = "";

    private HeaderType f351d = HeaderType.ONE_ROOM;

    private long f352e;

    public final HeaderType a() {
        return this.f351d;
    }

    public final String b() {
        return this.f350c;
    }

    public final boolean c() {
        return this.f348a;
    }

    public final boolean d() {
        return this.f349b;
    }

    public final void e(boolean z10) {
        this.f348a = z10;
    }

    public final void f(boolean z10) {
        this.f349b = z10;
    }

    public final void g(long j10) {
        this.f352e = j10;
    }

    public final void h(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f350c = str;
    }
}
