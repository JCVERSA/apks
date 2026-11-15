package defpackage;

import androidx.collection.ArrayMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class sh8 {
    public static final b d = new b(null);
    public final a a = new a();
    public final a b = new a();
    public final ArrayMap c = new ArrayMap();

    public static final class a {
        public long a;
        public int b;

        public final void a(long j) {
            this.a += j;
        }

        public final void b(long j) {
            a(j);
            this.b++;
        }

        public final long c() {
            return this.a;
        }

        public final long d() {
            int i = this.b;
            if (i == 0) {
                return 0L;
            }
            return this.a / ((long) i);
        }

        public final int e() {
            return this.b;
        }

        public final void f() {
            this.a = 0L;
            this.b = 0;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long b(long j) {
            return j / 1000;
        }

        public b() {
        }
    }

    public final void a() {
        this.a.f();
        this.b.f();
        Iterator it = this.c.entrySet().iterator();
        while (it.hasNext()) {
            ((a) ((Map.Entry) it.next()).getValue()).f();
        }
    }

    public final Map b() {
        HashMap map = new HashMap();
        map.put("view obtaining - total count", Integer.valueOf(this.a.e()));
        map.put("view obtaining - total time (µs)", Long.valueOf(th8.b(d.b(this.a.c()))));
        Iterator it = this.c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            a aVar = (a) entry.getValue();
            if (aVar.e() > 0) {
                map.put("blocking view obtaining for " + str + " - count", Integer.valueOf(aVar.e()));
                map.put("blocking view obtaining for " + str + " - avg time (µs)", Long.valueOf(th8.b(d.b(aVar.d()))));
            }
        }
        if (this.b.e() > 0) {
            map.put("long view requests - count", Integer.valueOf(this.b.e()));
            map.put("long view requests - avg time (µs)", Long.valueOf(th8.b(d.b(this.b.d()))));
        }
        return map;
    }

    public final boolean c() {
        if (this.b.e() > 0) {
            return true;
        }
        Iterator it = this.c.entrySet().iterator();
        while (it.hasNext()) {
            if (((a) ((Map.Entry) it.next()).getValue()).e() > 0) {
                return true;
            }
        }
        return false;
    }

    public final void d(String str, long j) {
        y45.j(str, "viewName");
        this.a.b(j);
        ArrayMap arrayMap = this.c;
        Object aVar = arrayMap.get(str);
        if (aVar == null) {
            aVar = new a();
            arrayMap.put(str, aVar);
        }
        ((a) aVar).b(j);
    }

    public final void e(long j) {
        this.a.b(j);
    }

    public final void f(long j) {
        this.a.a(j);
        if (j >= 1000000) {
            this.b.b(j);
        }
    }
}
