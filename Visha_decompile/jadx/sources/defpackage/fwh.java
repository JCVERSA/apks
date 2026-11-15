package defpackage;

import java.util.HashSet;
import org.json.JSONObject;

public abstract class fwh extends gwh {
    public final HashSet c;
    public final JSONObject d;
    public final long e;

    public fwh(dwh dwhVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(dwhVar);
        this.c = new HashSet(hashSet);
        this.d = jSONObject;
        this.e = j;
    }
}
