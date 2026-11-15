package defpackage;

import com.google.android.gms.ads.internal.util.zze;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;

public final class s6f implements r5f, r6f {
    public final r6f b;
    public final HashSet c = new HashSet();

    public s6f(r6f r6fVar) {
        this.b = r6fVar;
    }

    @Override
    public final void a(String str, n3f n3fVar) {
        this.b.a(str, n3fVar);
        this.c.remove(new AbstractMap.SimpleEntry(str, n3fVar));
    }

    @Override
    public final void b(String str, n3f n3fVar) {
        this.b.b(str, n3fVar);
        this.c.add(new AbstractMap.SimpleEntry(str, n3fVar));
    }

    @Override
    public final void zza(String str) {
        this.b.zza(str);
    }

    @Override
    public final void zzb(String str, String str2) {
        q5f.c(this, str, str2);
    }

    public final void zzc() {
        HashSet<AbstractMap.SimpleEntry> hashSet = this.c;
        for (AbstractMap.SimpleEntry simpleEntry : hashSet) {
            zze.zza("Unregistering eventhandler: ".concat(String.valueOf(((n3f) simpleEntry.getValue()).toString())));
            this.b.a((String) simpleEntry.getKey(), (n3f) simpleEntry.getValue());
        }
        hashSet.clear();
    }

    @Override
    public final void zzd(String str, Map map) {
        q5f.a(this, str, map);
    }

    @Override
    public final void zze(String str, JSONObject jSONObject) {
        q5f.b(this, str, jSONObject);
    }

    @Override
    public final void zzp(String str, JSONObject jSONObject) {
        q5f.d(this, str, jSONObject);
    }
}
