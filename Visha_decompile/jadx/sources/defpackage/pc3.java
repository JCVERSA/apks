package defpackage;

import java.util.Set;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;

public abstract class pc3 {
    public final TypeUsage a;
    public final Set b;
    public final sm9 c;

    public pc3(TypeUsage typeUsage, Set set, sm9 sm9Var) {
        y45.j(typeUsage, "howThisTypeIsUsed");
        this.a = typeUsage;
        this.b = set;
        this.c = sm9Var;
    }

    public abstract sm9 a();

    public abstract TypeUsage b();

    public abstract Set c();

    public abstract pc3 d(hcb hcbVar);

    public abstract int hashCode();
}
