package com.google.android.gms.common.api.internal;

import android.os.Looper;
import defpackage.vn4;
import defpackage.wd8;
import java.util.concurrent.Executor;

public final class d {
    public final Executor a;
    public volatile Object b;
    public volatile a c;

    public static final class a {
        public final Object a;
        public final String b;

        public a(Object obj, String str) {
            this.a = obj;
            this.b = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b.equals(aVar.b);
        }

        public int hashCode() {
            return (System.identityHashCode(this.a) * 31) + this.b.hashCode();
        }
    }

    public interface b {
        void a(Object obj);

        void b();
    }

    public d(Looper looper, Object obj, String str) {
        this.a = new vn4(looper);
        this.b = wd8.m(obj, "Listener must not be null");
        this.c = new a(obj, wd8.f(str));
    }

    public void a() {
        this.b = null;
        this.c = null;
    }

    public a b() {
        return this.c;
    }

    public void c(final b bVar) {
        wd8.m(bVar, "Notifier must not be null");
        this.a.execute(new Runnable() {
            @Override
            public final void run() {
                this.zaa.d(bVar);
            }
        });
    }

    public final void d(b bVar) {
        Object obj = this.b;
        if (obj == null) {
            bVar.b();
            return;
        }
        try {
            bVar.a(obj);
        } catch (RuntimeException e) {
            bVar.b();
            throw e;
        }
    }
}
