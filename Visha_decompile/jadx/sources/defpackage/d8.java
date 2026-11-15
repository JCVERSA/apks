package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.SparseArrayCompat;
import androidx.media3.extractor.AacUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.yanzhenjie.recyclerview.SwipeMenuLayout;
import com.yanzhenjie.recyclerview.SwipeMenuView;
import com.yanzhenjie.recyclerview.x.R;
import java.lang.reflect.Field;
import java.util.List;

public class d8 extends RecyclerView.Adapter {
    public SparseArrayCompat o = new SparseArrayCompat();
    public SparseArrayCompat p = new SparseArrayCompat();
    public RecyclerView.Adapter q;
    public LayoutInflater r;
    public r7a s;
    public ye7 t;
    public we7 u;
    public xe7 v;

    public class a implements View.OnClickListener {
        public final RecyclerView.ViewHolder b;

        public a(RecyclerView.ViewHolder viewHolder) {
            this.b = viewHolder;
        }

        @Override
        public void onClick(View view) {
            d8.this.u.a(view, this.b.getAdapterPosition());
        }
    }

    public class b implements View.OnLongClickListener {
        public final RecyclerView.ViewHolder b;

        public b(RecyclerView.ViewHolder viewHolder) {
            this.b = viewHolder;
        }

        @Override
        public boolean onLongClick(View view) {
            d8.this.v.a(view, this.b.getAdapterPosition());
            return true;
        }
    }

    public class c extends GridLayoutManager.SpanSizeLookup {
        public final GridLayoutManager a;
        public final GridLayoutManager.SpanSizeLookup b;

        public c(GridLayoutManager gridLayoutManager, GridLayoutManager.SpanSizeLookup spanSizeLookup) {
            this.a = gridLayoutManager;
            this.b = spanSizeLookup;
        }

        @Override
        public int getSpanSize(int i) {
            if (d8.this.u(i)) {
                return this.a.getSpanCount();
            }
            GridLayoutManager.SpanSizeLookup spanSizeLookup = this.b;
            if (spanSizeLookup != null) {
                return spanSizeLookup.getSpanSize(i);
            }
            return 1;
        }
    }

    public static class d extends RecyclerView.ViewHolder {
        public d(View view) {
            super(view);
        }
    }

    public d8(Context context, RecyclerView.Adapter adapter) {
        this.r = LayoutInflater.from(context);
        this.q = adapter;
    }

    public void d(View view) {
        this.p.put(k() + 200000, view);
    }

    public void g(View view) {
        d(view);
        notifyItemInserted(((getHeaderCount() + j()) + k()) - 1);
    }

    public int getHeaderCount() {
        return this.o.size();
    }

    @Override
    public int getItemCount() {
        return getHeaderCount() + j() + k();
    }

    @Override
    public long getItemId(int i) {
        if (u(i)) {
            return (-i) - 1;
        }
        return this.q.getItemId(i - getHeaderCount());
    }

    @Override
    public int getItemViewType(int i) {
        if (t(i)) {
            return this.o.keyAt(i);
        }
        return s(i) ? this.p.keyAt((i - getHeaderCount()) - j()) : this.q.getItemViewType(i - getHeaderCount());
    }

    public void h(View view) {
        this.o.put(getHeaderCount() + AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, view);
    }

    public void i(View view) {
        h(view);
        notifyItemInserted(getHeaderCount() - 1);
    }

    public final int j() {
        return this.q.getItemCount();
    }

    public int k() {
        return this.p.size();
    }

    public RecyclerView.Adapter l() {
        return this.q;
    }

    @Override
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.q.onAttachedToRecyclerView(recyclerView);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new c(gridLayoutManager, gridLayoutManager.getSpanSizeLookup()));
        }
    }

    @Override
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View view = (View) this.o.get(i);
        if (view != null) {
            return new d(view);
        }
        View view2 = (View) this.p.get(i);
        if (view2 != null) {
            return new d(view2);
        }
        RecyclerView.ViewHolder viewHolderOnCreateViewHolder = this.q.onCreateViewHolder(viewGroup, i);
        if (this.u != null) {
            viewHolderOnCreateViewHolder.itemView.setOnClickListener(new a(viewHolderOnCreateViewHolder));
        }
        if (this.v != null) {
            viewHolderOnCreateViewHolder.itemView.setOnLongClickListener(new b(viewHolderOnCreateViewHolder));
        }
        if (this.s == null) {
            return viewHolderOnCreateViewHolder;
        }
        View viewInflate = this.r.inflate(R.layout.x_recycler_view_item, viewGroup, false);
        ((ViewGroup) viewInflate.findViewById(R.id.swipe_content)).addView(viewHolderOnCreateViewHolder.itemView);
        try {
            Field declaredField = r(viewHolderOnCreateViewHolder.getClass()).getDeclaredField("itemView");
            if (!declaredField.isAccessible()) {
                declaredField.setAccessible(true);
            }
            declaredField.set(viewHolderOnCreateViewHolder, viewInflate);
        } catch (Exception unused) {
        }
        return viewHolderOnCreateViewHolder;
    }

    @Override
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.q.onDetachedFromRecyclerView(recyclerView);
    }

    @Override
    public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        if (v(viewHolder)) {
            return false;
        }
        return this.q.onFailedToRecycleView(viewHolder);
    }

    @Override
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        if (!v(viewHolder)) {
            this.q.onViewAttachedToWindow(viewHolder);
            return;
        }
        ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        }
    }

    @Override
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        if (v(viewHolder)) {
            return;
        }
        this.q.onViewDetachedFromWindow(viewHolder);
    }

    @Override
    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        if (v(viewHolder)) {
            return;
        }
        this.q.onViewRecycled(viewHolder);
    }

    public final Class r(Class cls) {
        Class superclass = cls.getSuperclass();
        return (superclass == null || superclass.equals(Object.class)) ? cls : r(superclass);
    }

    @Override
    public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver) {
        super.registerAdapterDataObserver(adapterDataObserver);
    }

    public boolean s(int i) {
        return i >= getHeaderCount() + j();
    }

    @Override
    public final void setHasStableIds(boolean z) {
        super.setHasStableIds(z);
    }

    public void setOnItemClickListener(we7 we7Var) {
        this.u = we7Var;
    }

    public void setOnItemLongClickListener(xe7 xe7Var) {
        this.v = xe7Var;
    }

    public void setOnItemMenuClickListener(ye7 ye7Var) {
        this.t = ye7Var;
    }

    public boolean t(int i) {
        return i >= 0 && i < getHeaderCount();
    }

    public boolean u(int i) {
        return t(i) || s(i);
    }

    @Override
    public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver) {
        super.unregisterAdapterDataObserver(adapterDataObserver);
    }

    public boolean v(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof d) {
            return true;
        }
        return u(viewHolder.getAdapterPosition());
    }

    public void w(View view) {
        int iIndexOfValue = this.p.indexOfValue(view);
        if (iIndexOfValue == -1) {
            return;
        }
        this.p.removeAt(iIndexOfValue);
        notifyItemRemoved(getHeaderCount() + j() + iIndexOfValue);
    }

    public void x(View view) {
        int iIndexOfValue = this.o.indexOfValue(view);
        if (iIndexOfValue == -1) {
            return;
        }
        this.o.removeAt(iIndexOfValue);
        notifyItemRemoved(iIndexOfValue);
    }

    public void y(r7a r7aVar) {
        this.s = r7aVar;
    }

    @Override
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        if (v(viewHolder)) {
            return;
        }
        View view = viewHolder.itemView;
        int headerCount = i - getHeaderCount();
        if ((view instanceof SwipeMenuLayout) && this.s != null) {
            SwipeMenuLayout swipeMenuLayout = (SwipeMenuLayout) view;
            o7a o7aVar = new o7a(swipeMenuLayout);
            o7a o7aVar2 = new o7a(swipeMenuLayout);
            this.s.a(o7aVar, o7aVar2, headerCount);
            SwipeMenuView swipeMenuView = (SwipeMenuView) swipeMenuLayout.getChildAt(0);
            if (o7aVar.d()) {
                swipeMenuView.setOrientation(o7aVar.c());
                swipeMenuView.createMenu(viewHolder, o7aVar, swipeMenuLayout, 1, this.t);
            } else if (swipeMenuView.getChildCount() > 0) {
                swipeMenuView.removeAllViews();
            }
            SwipeMenuView swipeMenuView2 = (SwipeMenuView) swipeMenuLayout.getChildAt(2);
            if (o7aVar2.d()) {
                swipeMenuView2.setOrientation(o7aVar2.c());
                swipeMenuView2.createMenu(viewHolder, o7aVar2, swipeMenuLayout, -1, this.t);
            } else if (swipeMenuView2.getChildCount() > 0) {
                swipeMenuView2.removeAllViews();
            }
        }
        this.q.onBindViewHolder(viewHolder, headerCount, list);
    }
}
