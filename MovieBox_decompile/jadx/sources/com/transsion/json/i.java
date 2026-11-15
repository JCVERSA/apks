package com.transsion.json;

import java.util.HashMap;
import java.util.Map;

public class i {

    private final Map f44717a = new HashMap();

    private final Map f44718b = new HashMap();

    private m a() {
        m mVar = new m();
        for (Class cls : this.f44717a.keySet()) {
            mVar.b(cls, (o) this.f44717a.get(cls));
        }
        for (q qVar : this.f44718b.keySet()) {
            mVar.a(qVar, (o) this.f44718b.get(qVar));
        }
        return mVar;
    }

    public Object b(String str, Class cls) {
        return a().j(new l(str).j(), cls);
    }
}
