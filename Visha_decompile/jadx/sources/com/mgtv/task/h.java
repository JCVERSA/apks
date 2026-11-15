package com.mgtv.task;

import android.os.AsyncTask;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;

public class h {
    private final Map<g, WeakReference<com.mgtv.task.a<?, ?>>> a;
    private final Map<g, WeakReference<com.mgtv.task.a<?, ?>>> b;
    private Executor c;
    private boolean d;

    public class a<Param, ResultType> implements com.mgtv.task.a.InterfaceC0186a<Param, ResultType> {
        g a;

        public a(g gVar) {
            this.a = gVar;
        }

        @Override
        public void a(f<Param, ResultType> fVar, boolean z) {
            com.mgtv.task.a aVar = new com.mgtv.task.a(fVar, null, this, z);
            h.this.b.put(this.a, new WeakReference(aVar));
            h.b(h.this.c, aVar, fVar, z);
        }
    }

    public class b<Param, ResultType> implements com.mgtv.task.a.InterfaceC0186a<Param, ResultType> {
        i a;
        g b;

        public b(i iVar, g gVar) {
            this.a = iVar;
            this.b = gVar;
        }

        @Override
        public void a(f<Param, ResultType> fVar, boolean z) {
            com.mgtv.task.a aVar = new com.mgtv.task.a(fVar, this.a, this, z);
            h.this.a.put(this.b, new WeakReference(aVar));
            h.b(h.this.c, aVar, fVar, z);
        }
    }

    public h() {
        this(AsyncTask.THREAD_POOL_EXECUTOR, false);
    }

    public h(Executor executor, boolean z) {
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = executor;
        if (executor instanceof ThreadPoolExecutor) {
            ((ThreadPoolExecutor) executor).setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy());
        }
        this.d = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <Param, ResultType> void b(Executor executor, com.mgtv.task.a<Param, ResultType> aVar, f<Param, ResultType> fVar, boolean z) {
        if (z) {
            aVar.b(fVar.b);
            return;
        }
        try {
            aVar.executeOnExecutor(executor, fVar.b);
        } catch (RejectedExecutionException e) {
            e.printStackTrace();
        }
    }

    public <Param, ResultType> g a(@NonNull List<? extends f<Param, ResultType>> list, @Nullable final i iVar) {
        final g gVar = new g();
        if (list.isEmpty()) {
            return gVar;
        }
        final f<Param, ResultType> fVar = list.get(0);
        int i = 0;
        f<Param, ResultType> fVar2 = fVar;
        for (f<Param, ResultType> fVar3 : list) {
            if (fVar3 != fVar2) {
                fVar2.g = fVar3;
            }
            i += fVar3.f;
            fVar2 = fVar3;
        }
        if (iVar != null) {
            iVar.setProgress(0);
            iVar.a(i);
            iVar.show();
        }
        ArrayList arrayList = new ArrayList();
        f<Param, ResultType> fVar4 = null;
        for (final f<Param, ResultType> fVar5 : list) {
            if (fVar5.d != null && fVar5.c != null) {
                final f<Param, ResultType> fVar6 = new f<>();
                fVar6.b = fVar5.b;
                fVar6.a = new n<Param, ResultType>() {
                    @Override
                    public l<ResultType> a(j jVar, Param param) {
                        f fVar7 = fVar5;
                        if (!fVar7.d.a(fVar7.b)) {
                            return null;
                        }
                        f fVar8 = fVar5;
                        return new l<>(fVar8.d.b(fVar8.b));
                    }
                };
                fVar6.c = new e<ResultType>() {
                    @Override
                    public void a(ResultType resulttype, Object obj, Throwable th) {
                        d<ResultType> dVar;
                        if (resulttype != null && (dVar = fVar5.c) != null) {
                            dVar.c(resulttype);
                        }
                        if (fVar6.g == null) {
                            h hVar = h.this;
                            hVar.a(fVar, iVar, gVar, hVar.d);
                        }
                    }

                    @Override
                    public void d(ResultType resulttype, Object obj, Throwable th) {
                        d<ResultType> dVar;
                        if (resulttype == null || (dVar = fVar5.c) == null) {
                            return;
                        }
                        dVar.c(resulttype);
                    }
                };
                if (fVar4 != null) {
                    fVar4.g = fVar6;
                }
                arrayList.add(fVar6);
                fVar4 = fVar6;
            }
        }
        if (!arrayList.isEmpty()) {
            a((f) arrayList.get(0), gVar, this.d);
        } else {
            a(fVar, iVar, gVar, this.d);
        }
        return gVar;
    }

    public void a(@Nullable g gVar) {
        if (gVar == null) {
            Iterator<Map.Entry<g, WeakReference<com.mgtv.task.a<?, ?>>>> it = this.b.entrySet().iterator();
            while (it.hasNext()) {
                com.mgtv.task.a aVar = (com.mgtv.task.a) a(it.next().getValue());
                if (aVar != null) {
                    aVar.cancel(true);
                }
            }
            Iterator<Map.Entry<g, WeakReference<com.mgtv.task.a<?, ?>>>> it2 = this.a.entrySet().iterator();
            while (it2.hasNext()) {
                com.mgtv.task.a aVar2 = (com.mgtv.task.a) a(it2.next().getValue());
                if (aVar2 != null) {
                    aVar2.cancel(true);
                }
            }
            return;
        }
        com.mgtv.task.a aVar3 = (com.mgtv.task.a) a(this.b.get(gVar));
        if (aVar3 != null) {
            aVar3.cancel(true);
        }
        com.mgtv.task.a aVar4 = (com.mgtv.task.a) a(this.a.get(gVar));
        if (aVar4 != null) {
            aVar4.cancel(true);
        }
    }

    private <Param, ResultType> void a(f<Param, ResultType> fVar, g gVar, boolean z) {
        new a(gVar).a(fVar, z);
    }

    public <Param, ResultType> void a(f<Param, ResultType> fVar, i iVar, g gVar, boolean z) {
        new b(iVar, gVar).a(fVar, z);
    }

    public static <T> T a(@Nullable Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }
}
