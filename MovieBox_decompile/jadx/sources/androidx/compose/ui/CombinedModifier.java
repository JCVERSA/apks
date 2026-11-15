package androidx.compose.ui;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class CombinedModifier implements f {

    private final f f3774b;

    private final f f3775c;

    public CombinedModifier(f fVar, f fVar2) {
        this.f3774b = fVar;
        this.f3775c = fVar2;
    }

    public final f a() {
        return this.f3775c;
    }

    @Override
    public Object b(Object obj, Function2 function2) {
        return this.f3775c.b(this.f3774b.b(obj, function2), function2);
    }

    @Override
    public boolean c(Function1 function1) {
        return this.f3774b.c(function1) && this.f3775c.c(function1);
    }

    @Override
    public f e(f fVar) {
        return e.a(this, fVar);
    }

    public boolean equals(Object obj) {
        if (obj instanceof CombinedModifier) {
            CombinedModifier combinedModifier = (CombinedModifier) obj;
            if (Intrinsics.c(this.f3774b, combinedModifier.f3774b) && Intrinsics.c(this.f3775c, combinedModifier.f3775c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f3774b.hashCode() + (this.f3775c.hashCode() * 31);
    }

    public final f i() {
        return this.f3774b;
    }

    public String toString() {
        return '[' + ((String) b("", new Function2<String, f.b, String>() {
            @Override
            public final String invoke(String str, f.b bVar) {
                if (str.length() == 0) {
                    return bVar.toString();
                }
                return str + ", " + bVar;
            }
        })) + ']';
    }
}
