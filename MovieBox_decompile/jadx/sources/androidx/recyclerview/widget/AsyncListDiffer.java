package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

public class AsyncListDiffer {

    private static final Executor f13767h = new b();

    private final j f13768a;

    final c f13769b;

    Executor f13770c;

    private List f13772e;

    int f13774g;

    private final List f13771d = new CopyOnWriteArrayList();

    private List f13773f = Collections.emptyList();

    public interface a {
        void a(List list, List list2);
    }

    private static class b implements Executor {

        final Handler f13776a = new Handler(Looper.getMainLooper());

        b() {
        }

        @Override
        public void execute(Runnable runnable) {
            this.f13776a.post(runnable);
        }
    }

    public AsyncListDiffer(j jVar, c cVar) {
        this.f13768a = jVar;
        this.f13769b = cVar;
        if (cVar.c() != null) {
            this.f13770c = cVar.c();
        } else {
            this.f13770c = f13767h;
        }
    }

    private void d(List list, Runnable runnable) {
        Iterator it = this.f13771d.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(list, this.f13773f);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void a(a aVar) {
        this.f13771d.add(aVar);
    }

    public List b() {
        return this.f13773f;
    }

    void c(List list, DiffUtil.d dVar, Runnable runnable) {
        List list2 = this.f13773f;
        this.f13772e = list;
        this.f13773f = Collections.unmodifiableList(list);
        dVar.b(this.f13768a);
        d(list2, runnable);
    }

    public void e(List list) {
        f(list, null);
    }

    public void f(final List list, final Runnable runnable) {
        final int i10 = this.f13774g + 1;
        this.f13774g = i10;
        final List list2 = this.f13772e;
        if (list == list2) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List list3 = this.f13773f;
        if (list == null) {
            int size = list2.size();
            this.f13772e = null;
            this.f13773f = Collections.emptyList();
            this.f13768a.onRemoved(0, size);
            d(list3, runnable);
            return;
        }
        if (list2 != null) {
            this.f13769b.a().execute(new Runnable() {

                class a extends DiffUtil.a {
                    a() {
                    }

                    @Override
                    public boolean a(int i10, int i11) {
                        Object obj = list2.get(i10);
                        Object obj2 = list.get(i11);
                        if (obj != null && obj2 != null) {
                            return AsyncListDiffer.this.f13769b.b().areContentsTheSame(obj, obj2);
                        }
                        if (obj == null && obj2 == null) {
                            return true;
                        }
                        throw new AssertionError();
                    }

                    @Override
                    public boolean b(int i10, int i11) {
                        Object obj = list2.get(i10);
                        Object obj2 = list.get(i11);
                        if (obj == null || obj2 == null) {
                            return obj == null && obj2 == null;
                        }
                        return AsyncListDiffer.this.f13769b.b().areItemsTheSame(obj, obj2);
                    }

                    @Override
                    public Object c(int i10, int i11) {
                        Object obj = list2.get(i10);
                        Object obj2 = list.get(i11);
                        if (obj == null || obj2 == null) {
                            throw new AssertionError();
                        }
                        return AsyncListDiffer.this.f13769b.b().getChangePayload(obj, obj2);
                    }

                    @Override
                    public int d() {
                        return list.size();
                    }

                    @Override
                    public int e() {
                        return list2.size();
                    }
                }

                @Override
                public void run() {
                    final DiffUtil.d dVarB = DiffUtil.b(new a());
                    AsyncListDiffer.this.f13770c.execute(new Runnable() {
                        @Override
                        public void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            AsyncListDiffer asyncListDiffer = AsyncListDiffer.this;
                            if (asyncListDiffer.f13774g == i10) {
                                asyncListDiffer.c(list, dVarB, runnable);
                            }
                        }
                    });
                }
            });
            return;
        }
        this.f13772e = list;
        this.f13773f = Collections.unmodifiableList(list);
        this.f13768a.onInserted(0, list.size());
        d(list3, runnable);
    }
}
