package androidx.compose.foundation;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.x0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

final class c {

    private e4 f2307a;

    private m1 f2308b;

    private z.a f2309c;

    private Path f2310d;

    public c() {
        this(null, null, null, null, 15, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f2307a, cVar.f2307a) && Intrinsics.c(this.f2308b, cVar.f2308b) && Intrinsics.c(this.f2309c, cVar.f2309c) && Intrinsics.c(this.f2310d, cVar.f2310d);
    }

    public final Path g() {
        Path path = this.f2310d;
        if (path != null) {
            return path;
        }
        Path pathA = x0.a();
        this.f2310d = pathA;
        return pathA;
    }

    public int hashCode() {
        e4 e4Var = this.f2307a;
        int iHashCode = (e4Var == null ? 0 : e4Var.hashCode()) * 31;
        m1 m1Var = this.f2308b;
        int iHashCode2 = (iHashCode + (m1Var == null ? 0 : m1Var.hashCode())) * 31;
        z.a aVar = this.f2309c;
        int iHashCode3 = (iHashCode2 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        Path path = this.f2310d;
        return iHashCode3 + (path != null ? path.hashCode() : 0);
    }

    public String toString() {
        return "BorderCache(imageBitmap=" + this.f2307a + ", canvas=" + this.f2308b + ", canvasDrawScope=" + this.f2309c + ", borderPath=" + this.f2310d + ')';
    }

    public c(e4 e4Var, m1 m1Var, z.a aVar, Path path) {
        this.f2307a = e4Var;
        this.f2308b = m1Var;
        this.f2309c = aVar;
        this.f2310d = path;
    }

    public c(e4 e4Var, m1 m1Var, z.a aVar, Path path, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : e4Var, (i10 & 2) != 0 ? null : m1Var, (i10 & 4) != 0 ? null : aVar, (i10 & 8) != 0 ? null : path);
    }
}
