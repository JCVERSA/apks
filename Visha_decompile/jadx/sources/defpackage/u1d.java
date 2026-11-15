package defpackage;

import java.util.HashSet;
import org.json.JSONObject;

public abstract class u1d extends c7d {
    public final HashSet c;
    public final JSONObject d;
    public final long e;

    public u1d(c7d.b bVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(bVar);
        this.c = new HashSet(hashSet);
        this.d = jSONObject;
        this.e = j;
    }
}
