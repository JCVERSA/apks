package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.g90;
import defpackage.v6a;
import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class g90 extends ListAdapter<ia0, ma0> {
    private final na0 a;
    private final b90 b;
    private final defpackage.nk1 c;
    private final LinkedHashMap d;
    private a e;
    private boolean f;

    public final class a implements View.OnAttachStateChangeListener {
        public a() {
        }

        @Override
        public final void onViewAttachedToWindow(View view) {
            y45.j(view, "view");
            Map map = g90.this.d;
            g90 g90Var = g90.this;
            for (Map.Entry entry : map.entrySet()) {
                g90.access$bindHolder(g90Var, (ma0) entry.getKey(), ((Number) entry.getValue()).intValue());
            }
            g90.this.c();
        }

        @Override
        public final void onViewDetachedFromWindow(View view) {
            y45.j(view, "v");
            g90.access$unregisterTrackers(g90.this);
            Set setKeySet = g90.this.d.keySet();
            g90 g90Var = g90.this;
            Iterator it = setKeySet.iterator();
            while (it.hasNext()) {
                g90.access$unbindHolder(g90Var, (ma0) it.next());
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g90(na0 na0Var, b90 b90Var) {
        super(new ja0());
        y45.j(na0Var, "feedViewModel");
        y45.j(b90Var, "feedAdItemVisibilityTracker");
        this.a = na0Var;
        this.b = b90Var;
        this.c = kotlinx.coroutines.d.a(defpackage.mc2.c().plus(v6a.b(null, 1, null)));
        this.d = new LinkedHashMap();
    }

    public static final void a(g90 g90Var, int i) {
        y45.j(g90Var, "this$0");
        g90Var.a.a(i);
    }

    public static final void access$bindHolder(g90 g90Var, ma0 ma0Var, int i) {
        ia0 ia0Var = g90Var.getCurrentList().get(i);
        if ((ma0Var instanceof ca0) && (ia0Var instanceof n90)) {
            ((ca0) ma0Var).a((n90) ia0Var);
        }
    }

    public static final void access$unbindHolder(g90 g90Var, ma0 ma0Var) {
        g90Var.getClass();
        ca0 ca0Var = ma0Var instanceof ca0 ? (ca0) ma0Var : null;
        if (ca0Var != null) {
            ca0Var.a();
        }
    }

    public static final void access$unregisterTrackers(g90 g90Var) {
        g90Var.b.a();
        kotlinx.coroutines.d.f(g90Var.c, null, 1, null);
        g90Var.f = false;
    }

    public final void c() {
        if (this.f) {
            return;
        }
        this.f = true;
        this.b.a(new a90() {
            @Override
            public final void a(int i) {
                g90.a(this.a, i);
            }
        });
        defpackage.el0.d(this.c, null, null, new h90(this, null), 3, null);
    }

    public abstract st a();

    public abstract qe2 b();

    @Override
    public int getItemCount() {
        return getCurrentList().size();
    }

    @Override
    public int getItemViewType(int i) {
        return y45.e(getCurrentList().get(i), ha0.a) ? 1 : 0;
    }

    @Override
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        y45.j(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        a aVar = this.e;
        if (aVar == null) {
            aVar = new a();
        }
        this.e = aVar;
        recyclerView.removeOnAttachStateChangeListener(aVar);
        recyclerView.addOnAttachStateChangeListener(aVar);
        if (this.a.d().get() < 0) {
            this.a.f();
        }
        c();
    }

    @Override
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        y45.j(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
        a aVar = this.e;
        if (aVar != null) {
            recyclerView.removeOnAttachStateChangeListener(aVar);
        }
        this.b.a();
        kotlinx.coroutines.d.f(this.c, null, 1, null);
        this.f = false;
    }

    @Override
    public void onBindViewHolder(ma0 ma0Var, int i) {
        y45.j(ma0Var, "holder");
        this.d.put(ma0Var, Integer.valueOf(i));
        ia0 ia0Var = getCurrentList().get(i);
        if ((ma0Var instanceof ca0) && (ia0Var instanceof n90)) {
            ((ca0) ma0Var).a((n90) ia0Var);
        }
    }

    @Override
    public ma0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        y45.j(viewGroup, "parent");
        Context context = viewGroup.getContext();
        if (i != 0) {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.monetization_ads_feed_progressbar, viewGroup, false);
            y45.g(viewInflate);
            return new fa0(viewInflate);
        }
        View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.monetization_ads_feed_item, viewGroup, false);
        y45.h(viewInflate2, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup2 = (ViewGroup) viewInflate2;
        o3 o3VarA = this.a.a();
        st stVarA = a();
        qe2 qe2VarB = b();
        return new ca0(o3VarA, viewGroup2, stVarA, qe2VarB, new p90(o3VarA, viewGroup2, stVarA, qe2VarB));
    }

    @Override
    public void onViewAttachedToWindow(ma0 ma0Var) {
        y45.j(ma0Var, "holder");
        super.onViewAttachedToWindow(ma0Var);
        int bindingAdapterPosition = ma0Var.getBindingAdapterPosition();
        if (ma0Var instanceof ca0) {
            View view = ma0Var.itemView;
            y45.i(view, "itemView");
            this.b.a(view, bindingAdapterPosition);
        }
    }

    @Override
    public void onViewDetachedFromWindow(ma0 ma0Var) {
        y45.j(ma0Var, "holder");
        super.onViewDetachedFromWindow(ma0Var);
        b90 b90Var = this.b;
        View view = ma0Var.itemView;
        y45.i(view, "itemView");
        b90Var.a(view);
    }

    @Override
    public void onViewRecycled(ma0 ma0Var) {
        y45.j(ma0Var, "holder");
        super.onViewRecycled(ma0Var);
        this.d.remove(ma0Var);
        ca0 ca0Var = ma0Var instanceof ca0 ? (ca0) ma0Var : null;
        if (ca0Var != null) {
            ca0Var.a();
        }
    }

    public g90(na0 na0Var, b90 b90Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(na0Var, (i & 2) != 0 ? new b90() : b90Var);
    }
}
