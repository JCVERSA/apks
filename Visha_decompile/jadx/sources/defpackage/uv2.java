package defpackage;

import androidx.collection.ArrayMap;
import java.util.Map;

public class uv2 {
    public final long a;
    public final Map b;

    public interface a {
    }

    public uv2(long j) {
        this(j, new ArrayMap());
    }

    public a a(String str) {
        return (a) this.b.get(str);
    }

    public Map b() {
        return this.b;
    }

    public long c() {
        return this.a;
    }

    public void d(String str, a aVar) {
        this.b.put(str, aVar);
    }

    public void e() {
        this.b.clear();
    }

    public uv2(long j, Map map) {
        this.a = j;
        this.b = map;
    }
}
