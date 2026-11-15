package qn;

import androidx.compose.foundation.e;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final int f69914a;

    private final String f69915b;

    private final int f69916c;

    private final boolean f69917d;

    private final b[] f69918e;

    public d(int i10, String str, int i11, boolean z10, b[] formats) {
        Intrinsics.h(formats, "formats");
        this.f69914a = i10;
        this.f69915b = str;
        this.f69916c = i11;
        this.f69917d = z10;
        this.f69918e = formats;
    }

    public final boolean a() {
        return this.f69917d;
    }

    public final b[] b() {
        return this.f69918e;
    }

    public final String c() {
        return this.f69915b;
    }

    public final int d() {
        return this.f69914a;
    }

    public final int e() {
        return this.f69916c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f69914a == dVar.f69914a && Intrinsics.c(this.f69915b, dVar.f69915b) && this.f69916c == dVar.f69916c && this.f69917d == dVar.f69917d && Intrinsics.c(this.f69918e, dVar.f69918e);
    }

    public int hashCode() {
        int i10 = this.f69914a * 31;
        String str = this.f69915b;
        return ((((((i10 + (str == null ? 0 : str.hashCode())) * 31) + this.f69916c) * 31) + e.a(this.f69917d)) * 31) + Arrays.hashCode(this.f69918e);
    }

    public String toString() {
        return "TnTracksGroup(length=" + this.f69914a + ", id=" + this.f69915b + ", type=" + this.f69916c + ", adaptiveSupported=" + this.f69917d + ", formats=" + Arrays.toString(this.f69918e) + ")";
    }
}
