package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

public class j2a implements iv4 {
    public boolean a = false;
    public final Map b = new HashMap();
    public final LinkedBlockingQueue c = new LinkedBlockingQueue();

    @Override
    public synchronized qq5 a(String str) {
        i2a i2aVar;
        i2aVar = (i2a) this.b.get(str);
        if (i2aVar == null) {
            i2aVar = new i2a(str, this.c, this.a);
            this.b.put(str, i2aVar);
        }
        return i2aVar;
    }

    public void b() {
        this.b.clear();
        this.c.clear();
    }

    public LinkedBlockingQueue c() {
        return this.c;
    }

    public List d() {
        return new ArrayList(this.b.values());
    }

    public void e() {
        this.a = true;
    }
}
