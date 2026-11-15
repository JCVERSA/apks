package o6;

import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.j;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private final BaseQuickAdapter f67616a;

    private final d f67617b;

    private final j f67618c;

    private Executor f67619d;

    private final Executor f67620e;

    private final List f67621f;

    private int f67622g;

    private static final class a implements Executor {

        private final Handler f67623a = new Handler(Looper.getMainLooper());

        @Override
        public void execute(Runnable command) {
            Intrinsics.h(command, "command");
            this.f67623a.post(command);
        }
    }

    public static final class b extends DiffUtil.a {

        final List f67624a;

        final List f67625b;

        final c f67626c;

        b(List list, List list2, c cVar) {
            this.f67624a = list;
            this.f67625b = list2;
            this.f67626c = cVar;
        }

        @Override
        public boolean a(int i10, int i11) {
            Object obj = this.f67624a.get(i10);
            Object obj2 = this.f67625b.get(i11);
            if (obj != null && obj2 != null) {
                return this.f67626c.f67617b.b().areContentsTheSame(obj, obj2);
            }
            if (obj == null && obj2 == null) {
                return true;
            }
            throw new AssertionError();
        }

        @Override
        public boolean b(int i10, int i11) {
            Object obj = this.f67624a.get(i10);
            Object obj2 = this.f67625b.get(i11);
            if (obj == null || obj2 == null) {
                return obj == null && obj2 == null;
            }
            return this.f67626c.f67617b.b().areItemsTheSame(obj, obj2);
        }

        @Override
        public Object c(int i10, int i11) {
            Object obj = this.f67624a.get(i10);
            Object obj2 = this.f67625b.get(i11);
            if (obj == null || obj2 == null) {
                throw new AssertionError();
            }
            return this.f67626c.f67617b.b().getChangePayload(obj, obj2);
        }

        @Override
        public int d() {
            return this.f67625b.size();
        }

        @Override
        public int e() {
            return this.f67624a.size();
        }
    }

    public c(BaseQuickAdapter adapter, d config) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(config, "config");
        this.f67616a = adapter;
        this.f67617b = config;
        this.f67618c = new e(adapter);
        Executor aVar = new a();
        this.f67620e = aVar;
        Executor executorC = config.c();
        this.f67619d = executorC != null ? executorC : aVar;
        this.f67621f = new CopyOnWriteArrayList();
    }

    private final void d(List list, DiffUtil.d dVar, Runnable runnable) {
        List<Object> data = this.f67616a.getData();
        this.f67616a.Q0(list);
        dVar.b(this.f67618c);
        e(data, runnable);
    }

    private final void e(List list, Runnable runnable) {
        Iterator it = this.f67621f.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            this.f67616a.getData();
            throw null;
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public static final void g(final c this$0, List oldList, final List list, final int i10, final Runnable runnable) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(oldList, "$oldList");
        final DiffUtil.d dVarB = DiffUtil.b(new b(oldList, list, this$0));
        Intrinsics.g(dVarB, "@JvmOverloads\n    fun su…        }\n        }\n    }");
        this$0.f67619d.execute(new Runnable() {
            @Override
            public final void run() {
                c.h(this.f67611a, i10, list, dVarB, runnable);
            }
        });
    }

    public static final void h(c this$0, int i10, List list, DiffUtil.d result, Runnable runnable) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(result, "$result");
        if (this$0.f67622g == i10) {
            this$0.d(list, result, runnable);
        }
    }

    public final void f(final List list, final Runnable runnable) {
        final int i10 = this.f67622g + 1;
        this.f67622g = i10;
        if (list == this.f67616a.getData()) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        final List<Object> data = this.f67616a.getData();
        if (list == null) {
            int size = this.f67616a.getData().size();
            this.f67616a.Q0(new ArrayList());
            this.f67618c.onRemoved(0, size);
            e(data, runnable);
            return;
        }
        if (!this.f67616a.getData().isEmpty()) {
            this.f67617b.a().execute(new Runnable() {
                @Override
                public final void run() {
                    c.g(this.f67606a, data, list, i10, runnable);
                }
            });
            return;
        }
        this.f67616a.Q0(list);
        this.f67618c.onInserted(0, list.size());
        e(data, runnable);
    }
}
