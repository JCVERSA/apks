package as;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.transsion.shorttv.utils.h;
import kotlin.jvm.internal.Intrinsics;

public final class a extends t0 {

    private final b0 f15432a = new b0();

    private final b0 f15433b = new b0();

    private final b0 f15434c = new b0();

    private final b0 f15435d = new b0();

    private final b0 f15436e = new b0();

    private String f15437f;

    public final void b() {
        this.f15435d.q(null);
        this.f15436e.q(null);
        this.f15434c.q(Boolean.valueOf(Intrinsics.c(h.f51644a.d().getString("k_subtitle_language", ""), "off")));
        this.f15437f = null;
    }

    public final String c() {
        return this.f15437f;
    }

    public final b0 d() {
        return this.f15435d;
    }

    public final b0 e() {
        return this.f15436e;
    }

    public final b0 f() {
        return this.f15434c;
    }

    public final void g(String str) {
        this.f15437f = str;
    }
}
