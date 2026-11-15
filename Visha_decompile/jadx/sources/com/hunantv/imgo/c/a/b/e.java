package com.hunantv.imgo.c.a.b;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class e {
    private final Map<Integer, com.hunantv.imgo.c.a.a.d> a = Collections.synchronizedMap(new HashMap());
    private final int b;
    private int c;
    private b.C0128b d;

    public e(b.C0128b c0128b) {
        a(c0128b.a, c0128b.c, c0128b.b, c0128b.d);
        this.d = c0128b;
        this.b = (c0128b.a * 2) + 1;
    }

    private boolean a(int i) {
        return i >= 10;
    }

    private boolean b() {
        return this.a.keySet().size() >= this.b;
    }

    private void a(int i, String str, int i2, com.hunantv.imgo.c.a aVar) {
        for (int i3 = 0; i3 < i; i3++) {
            this.a.put(Integer.valueOf(i3), new com.hunantv.imgo.c.a.a.d(str + "  # " + i2 + "#" + i3, i2, aVar));
        }
    }

    public void a(Runnable runnable) {
        a(runnable, (String) null, 0, 0);
    }

    public synchronized void a(Runnable runnable, String str, int i, int i2) {
        try {
            if (this.c >= this.b) {
                this.c = 0;
            }
            com.hunantv.imgo.c.a.a.d dVar = this.a.get(Integer.valueOf(this.c));
            if (dVar == null && this.c == 0) {
                return;
            }
            if (dVar == null) {
                this.c = 0;
                a(runnable, str, i, i2);
                return;
            }
            if (dVar.b()) {
                this.a.remove(Integer.valueOf(this.c));
                int i3 = this.c;
                if (i3 < this.d.a) {
                    this.a.put(Integer.valueOf(i3), new com.hunantv.imgo.c.a.a.d(this.d.c + "  # " + i2 + "#" + this.c, i2, this.d.d, true));
                }
                this.c = 0;
                a(runnable, str, i, i2);
                return;
            }
            if (a(dVar.a()) && !b()) {
                com.hunantv.imgo.c.a.a.d dVarA = a();
                if (dVarA == null) {
                    this.c = 0;
                    a(runnable, str, i, i2);
                } else {
                    dVarA.a(runnable, str, i, i2);
                    this.c++;
                }
                return;
            }
            dVar.a(runnable, str, i, i2);
            this.c++;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void a(String str) {
        Iterator<Map.Entry<Integer, com.hunantv.imgo.c.a.a.d>> it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            com.hunantv.imgo.c.a.a.d value = it.next().getValue();
            if (value != null) {
                value.a(str);
            }
        }
    }

    private synchronized com.hunantv.imgo.c.a.a.d a() {
        if (b()) {
            return null;
        }
        int size = this.a.keySet().size();
        com.hunantv.imgo.c.a.a.d dVar = this.a.get(Integer.valueOf(size));
        if (dVar != null) {
            return dVar;
        }
        String str = this.d.c + "  # " + this.d.b + "#" + size;
        b.C0128b c0128b = this.d;
        com.hunantv.imgo.c.a.a.d dVar2 = new com.hunantv.imgo.c.a.a.d(str, c0128b.b, c0128b.d, false);
        dVar2.a(this.d.e);
        this.a.put(Integer.valueOf(size), dVar2);
        return dVar2;
    }
}
