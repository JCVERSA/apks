package com.transsion.api.gateway.dns;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class b {

    public String f41393a;

    public CopyOnWriteArrayList f41394b = new CopyOnWriteArrayList();

    public b(String str) {
        this.f41393a = str;
    }

    public void a(String str, int i10) {
        d dVar;
        synchronized (b.class) {
            try {
                Iterator it = this.f41394b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        dVar = null;
                        break;
                    } else {
                        dVar = (d) it.next();
                        if (dVar.f41397b.equals(str)) {
                            break;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (b.class) {
            if (dVar == null) {
                try {
                    this.f41394b.add(new d(str, i10));
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    public b(b bVar) {
        this.f41393a = bVar.f41393a;
        Iterator it = bVar.f41394b.iterator();
        while (it.hasNext()) {
            this.f41394b.add(new d((d) it.next()));
        }
    }
}
