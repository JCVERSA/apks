package com.mgtv.task;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgtv.task.http.HttpParams;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class m {
    public static int a = 15000;
    private static int e = 3;
    private Context b;
    private h c;
    private k d;
    private boolean j;
    private boolean k;
    private boolean n;
    private Collection<String> o;
    private int f = 0;
    private int g = 0;
    private int h = e;
    private com.mgtv.task.http.retry.c i = new com.mgtv.task.http.host.a();
    private boolean l = true;
    private boolean m = true;

    public m(@Nullable Context context) {
        this.b = context != null ? context.getApplicationContext() : null;
        this.c = new h();
    }

    public m a(int i) {
        this.g = i;
        return this;
    }

    public m b(int i) {
        this.f = i;
        return this;
    }

    public m c(int i) {
        this.h = i;
        return this;
    }

    public m a(boolean z) {
        this.j = z;
        return this;
    }

    public m a() {
        this.m = false;
        return this;
    }

    public m a(@Nullable com.mgtv.task.http.retry.c cVar) {
        this.i = cVar;
        return this;
    }

    public m a(@Nullable Collection<String> collection) {
        this.o = collection;
        return this;
    }

    private void a(com.mgtv.task.http.e eVar) {
        eVar.b().b(this.f);
        eVar.b().a(this.g);
        com.mgtv.task.http.retry.c cVar = this.i;
        if (cVar instanceof com.mgtv.task.http.retry.a) {
            com.mgtv.task.http.retry.a aVar = (com.mgtv.task.http.retry.a) cVar;
            aVar.a(this.f);
            aVar.b(this.g);
            aVar.c(this.h);
        }
        com.mgtv.task.http.retry.c cVar2 = this.i;
        if (cVar2 instanceof com.mgtv.task.http.host.a) {
            com.mgtv.task.http.host.a aVar2 = (com.mgtv.task.http.host.a) cVar2;
            aVar2.a(this.l);
            aVar2.b(this.m);
        }
        eVar.b().a(this.i);
        eVar.a().wholeResponse = this.j;
        eVar.a().enableSmartDns = this.n;
        if (this.k) {
            com.mgtv.task.http.b bVar = new com.mgtv.task.http.b(this.b);
            eVar.d = bVar;
            bVar.a(this.o);
        }
        int i = a;
        this.f = i;
        this.g = i;
        this.h = e;
        this.i = new com.mgtv.task.http.host.a();
        this.j = false;
        this.o = null;
        this.l = true;
        this.k = false;
        this.n = false;
    }

    public m(@Nullable Context context, @NonNull h hVar, @Nullable k kVar) {
        this.b = context != null ? context.getApplicationContext() : null;
        this.c = hVar;
        this.d = kVar;
    }

    public <T> g a(@NonNull String str, @NonNull HttpParams httpParams, @NonNull com.mgtv.task.http.c<T> cVar) {
        com.mgtv.task.http.e eVarA = com.mgtv.task.http.f.a(this.b, str, httpParams, cVar);
        a(eVarA);
        return a(eVarA, (b) null);
    }

    public <Param, ResultType> g a(@NonNull f<Param, ResultType> fVar, @Nullable b<Param, ResultType> bVar) {
        return a(Collections.singletonList(fVar), bVar);
    }

    public <Param, ResultType> g a(@NonNull final List<? extends f<Param, ResultType>> list, @Nullable final b<Param, ResultType> bVar) {
        if (bVar != null) {
            for (f<Param, ResultType> fVar : list) {
                fVar.c = new o<ResultType>(fVar.c) {
                    @Override
                    public void a(ResultType resulttype, Object obj, Throwable th) {
                        super.a(resulttype, obj, th);
                        if (!c(resulttype, obj, th)) {
                            bVar.c();
                        } else if (bVar.b(list)) {
                            bVar.a(m.this, list);
                        } else if (bVar.a(list)) {
                            bVar.b();
                        }
                    }

                    @Override
                    public void b(ResultType resulttype, Object obj, Throwable th) {
                        super.b(resulttype, obj, th);
                        bVar.c();
                    }

                    @Override
                    public void c() {
                        super.c();
                        bVar.a();
                    }
                };
            }
        }
        return this.c.a(list, null);
    }

    public void a(g gVar) {
        this.c.a(gVar);
    }
}
