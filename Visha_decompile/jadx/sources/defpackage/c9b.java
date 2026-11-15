package defpackage;

import java.util.Set;

public final class c9b implements b9b {
    public final Set a;
    public final a9b b;
    public final f9b c;

    public c9b(Set set, a9b a9bVar, f9b f9bVar) {
        this.a = set;
        this.b = a9bVar;
        this.c = f9bVar;
    }

    @Override
    public x8b a(String str, Class cls, ka3 ka3Var, h7b h7bVar) {
        if (this.a.contains(ka3Var)) {
            return new e9b(this.b, str, ka3Var, h7bVar, this.c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", ka3Var, this.a));
    }
}
