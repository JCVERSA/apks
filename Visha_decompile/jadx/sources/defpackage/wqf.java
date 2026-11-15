package defpackage;

import java.util.Collections;
import java.util.Set;
import org.json.JSONObject;

public final class wqf implements fyi {
    public final qyi a;
    public final qyi b;

    public wqf(qyi qyiVar, qyi qyiVar2, qyi qyiVar3) {
        this.a = qyiVar;
        this.b = qyiVar3;
    }

    @Override
    public final Object zzb() {
        Set setEmptySet = ((JSONObject) this.b.zzb()) == null ? Collections.emptySet() : Collections.singleton(new i8g((oqf) this.a.zzb(), fqh.b()));
        pyi.b(setEmptySet);
        return setEmptySet;
    }
}
