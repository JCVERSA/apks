package com.yanzhenjie.recyclerview;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.yanzhenjie.recyclerview.ExpandableAdapter.ViewHolder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public abstract class ExpandableAdapter<VH extends ViewHolder> extends RecyclerView.Adapter<VH> {
    public final SparseBooleanArray o = new SparseBooleanArray();
    public final List p = new ArrayList();

    public static abstract class ViewHolder extends RecyclerView.ViewHolder {
    }

    public class a extends GridLayoutManager.SpanSizeLookup {
        public final GridLayoutManager a;
        public final GridLayoutManager.SpanSizeLookup b;

        public a(GridLayoutManager gridLayoutManager, GridLayoutManager.SpanSizeLookup spanSizeLookup) {
            this.a = gridLayoutManager;
            this.b = spanSizeLookup;
        }

        @Override
        public int getSpanSize(int i) {
            if (ExpandableAdapter.this.y(i)) {
                return this.a.getSpanCount();
            }
            GridLayoutManager.SpanSizeLookup spanSizeLookup = this.b;
            if (spanSizeLookup != null) {
                return spanSizeLookup.getSpanSize(i);
            }
            return 1;
        }
    }

    @Override
    public final void onBindViewHolder(ViewHolder viewHolder, int i, List list) {
        int iE = E(i);
        if (y(i)) {
            g(viewHolder, iE, list);
        } else {
            c(viewHolder, iE, t(i), list);
        }
    }

    @Override
    public final ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return this.p.contains(Integer.valueOf(i)) ? w(viewGroup, i) : v(viewGroup, i);
    }

    @Override
    public void onViewAttachedToWindow(ViewHolder viewHolder) {
        if (y(viewHolder.getAdapterPosition())) {
            ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
            if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
            }
        }
    }

    public abstract int D();

    public final int E(int i) {
        int iS = 0;
        for (int i2 = 0; i2 < D(); i2++) {
            iS++;
            if (x(i2)) {
                iS += s(i2);
            }
            if (i < iS) {
                return i2;
            }
        }
        throw new IllegalStateException("The adapter position is not a parent type: " + i);
    }

    public int F(int i) {
        return 1;
    }

    public abstract void b(ViewHolder viewHolder, int i, int i2);

    public void c(ViewHolder viewHolder, int i, int i2, List list) {
        b(viewHolder, i, i2);
    }

    public abstract void d(ViewHolder viewHolder, int i);

    public void g(ViewHolder viewHolder, int i, List list) {
        d(viewHolder, i);
    }

    @Override
    public final int getItemCount() {
        int iD = D();
        for (int i = 0; i < iD; i++) {
            if (x(i)) {
                iD += s(i);
            }
        }
        return iD;
    }

    @Override
    public final int getItemViewType(int i) {
        int iE = E(i);
        if (!y(i)) {
            int iU = u(iE, t(i));
            r(iU);
            return iU;
        }
        int iF = F(iE);
        r(iF);
        if (!this.p.contains(Integer.valueOf(iF))) {
            this.p.add(Integer.valueOf(iF));
        }
        return iF;
    }

    @Override
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new a(gridLayoutManager, gridLayoutManager.getSpanSizeLookup()));
        }
    }

    public final void r(int i) {
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException(String.format(Locale.US, "The value [%d] is reserved, please replace it with other values.", Integer.valueOf(i)));
        }
    }

    public abstract int s(int i);

    public final int t(int i) {
        int iS;
        int iD = D();
        int iS2 = 0;
        for (int i2 = 0; i2 < iD; i2++) {
            iS2++;
            if (x(i2) && i < (iS2 = iS2 + (iS = s(i2)))) {
                return iS - (iS2 - i);
            }
        }
        throw new IllegalStateException("The adapter position is invalid: " + i);
    }

    public int u(int i, int i2) {
        return 2;
    }

    public abstract ViewHolder v(ViewGroup viewGroup, int i);

    public abstract ViewHolder w(ViewGroup viewGroup, int i);

    public final boolean x(int i) {
        return this.o.get(i, false);
    }

    public final boolean y(int i) {
        int iD = D();
        int iS = 0;
        for (int i2 = 0; i2 < iD; i2++) {
            if (iS == i) {
                return true;
            }
            iS++;
            if (x(i2)) {
                iS += s(i2);
            }
        }
        return false;
    }

    @Override
    public final void onBindViewHolder(ViewHolder viewHolder, int i) {
    }
}
