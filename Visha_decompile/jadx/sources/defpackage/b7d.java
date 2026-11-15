package defpackage;

import java.util.HashSet;
import org.json.JSONObject;

public class b7d implements c7d.b {
    public JSONObject a;
    public final l8d b;

    public b7d(l8d l8dVar) {
        this.b = l8dVar;
    }

    @Override
    public JSONObject a() {
        return this.a;
    }

    public void b(JSONObject jSONObject, HashSet hashSet, long j) {
        this.b.c(new kbd(this, hashSet, jSONObject, j));
    }

    public void c() {
        this.b.c(new v9d(this));
    }

    public void d(JSONObject jSONObject, HashSet hashSet, long j) {
        this.b.c(new red(this, hashSet, jSONObject, j));
    }

    @Override
    public void a(JSONObject jSONObject) {
        this.a = jSONObject;
    }
}
