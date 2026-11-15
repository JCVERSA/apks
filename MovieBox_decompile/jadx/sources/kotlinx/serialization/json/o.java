package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.json.internal.o0;

public final class o extends u {

    private final boolean f65384c;

    private final String f65385d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(Object body, boolean z10) {
        super(null);
        Intrinsics.h(body, "body");
        this.f65384c = z10;
        this.f65385d = body.toString();
    }

    @Override
    public String a() {
        return this.f65385d;
    }

    public boolean c() {
        return this.f65384c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(Reflection.b(o.class), Reflection.b(obj.getClass()))) {
            return false;
        }
        o oVar = (o) obj;
        return c() == oVar.c() && Intrinsics.c(a(), oVar.a());
    }

    public int hashCode() {
        return (androidx.compose.foundation.e.a(c()) * 31) + a().hashCode();
    }

    @Override
    public String toString() {
        if (!c()) {
            return a();
        }
        StringBuilder sb2 = new StringBuilder();
        o0.c(sb2, a());
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
