package com.google.android.datatransport.runtime;

import java.util.Set;

final class p implements t8.i {

    private final Set f23748a;

    private final o f23749b;

    private final s f23750c;

    p(Set set, o oVar, s sVar) {
        this.f23748a = set;
        this.f23749b = oVar;
        this.f23750c = sVar;
    }

    @Override
    public t8.h a(String str, Class cls, t8.g gVar) {
        return b(str, cls, t8.c.b("proto"), gVar);
    }

    @Override
    public t8.h b(String str, Class cls, t8.c cVar, t8.g gVar) {
        if (this.f23748a.contains(cVar)) {
            return new r(this.f23749b, str, cVar, gVar, this.f23750c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", cVar, this.f23748a));
    }
}
