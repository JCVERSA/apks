package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import java.util.HashSet;
import java.util.Iterator;

public final class C2543fg implements Zf {
    public final HashSet a;
    public boolean b;
    public C2468cg c;

    public C2543fg() {
        this(C2910ua.j().t());
    }

    @Override
    public final synchronized void a(@Nullable C2468cg c2468cg) {
        if (c2468cg != null) {
            try {
                LoggerStorage.getMainPublicOrAnonymousLogger().info("Received referrer from source %s: %s", c2468cg.d.a, c2468cg.a);
            } catch (Throwable th) {
                throw th;
            }
        }
        this.c = c2468cg;
        this.b = true;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Sf) it.next()).a(this.c);
        }
        this.a.clear();
    }

    public C2543fg(C2418ag c2418ag) {
        this.a = new HashSet();
        c2418ag.a(new Zk(this));
        c2418ag.a();
    }

    public final synchronized void a(@NonNull Sf sf) {
        this.a.add(sf);
        if (this.b) {
            sf.a(this.c);
            this.a.remove(sf);
        }
    }
}
