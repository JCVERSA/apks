package com.mgadplus.d;

import com.mgadplus.mgutil.SourceKitLogger;
import defpackage.j4d;
import defpackage.w5d;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;

public class a {
    public boolean a = false;
    public boolean b = false;
    public final Queue c = new LinkedList();
    public c d;

    public class C0155a implements c.b {
        public final Executor a;

        public C0155a(Executor executor) {
            this.a = executor;
        }

        @Override
        public void a() {
            a.this.d = null;
            w5d w5dVarL = a.this.l();
            if (w5dVarL != null) {
                a.this.e(this.a, w5dVarL);
            } else {
                a.this.b = false;
            }
        }
    }

    public Collection c() {
        return this.c;
    }

    public final void e(final Executor executor, final w5d w5dVar) {
        if (this.a || w5dVar == null) {
            return;
        }
        if (!j4d.d()) {
            j4d.b(new Runnable() {
                @Override
                public void run() {
                    a.this.e(executor, w5dVar);
                }
            });
            return;
        }
        c cVar = new c();
        this.d = cVar;
        cVar.d(executor, w5dVar, new C0155a(executor));
    }

    public boolean g(Executor executor, List list) {
        if (h()) {
            return false;
        }
        return i(executor, list);
    }

    public boolean h() {
        return this.b;
    }

    public final boolean i(Executor executor, List list) {
        if (list.isEmpty()) {
            SourceKitLogger.a("QueueTask", "startInternal empty");
            return false;
        }
        this.a = false;
        this.b = true;
        c().clear();
        c().addAll(list);
        w5d w5dVarL = l();
        if (w5dVarL == null) {
            return false;
        }
        e(executor, w5dVarL);
        return true;
    }

    public void j() {
        if (this.a) {
            return;
        }
        k();
    }

    public boolean k() {
        if (!h() || this.a) {
            return false;
        }
        this.a = true;
        c().clear();
        c cVar = this.d;
        if (cVar != null) {
            cVar.cancel(true);
        }
        return true;
    }

    public final w5d l() {
        Collection collectionC = c();
        if (collectionC == null || !(collectionC instanceof Queue)) {
            return null;
        }
        return (w5d) ((Queue) c()).poll();
    }
}
