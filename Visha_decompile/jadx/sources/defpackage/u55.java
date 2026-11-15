package defpackage;

import android.graphics.Canvas;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public class u55 extends ItemTouchHelper.Callback {
    public ze7 a;
    public bf7 b;
    public boolean c;
    public boolean d;

    public void a(boolean z) {
        this.c = z;
    }

    public void b(boolean z) {
        this.d = z;
    }

    @Override
    public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        super.clearView(recyclerView, viewHolder);
        bf7 bf7Var = this.b;
        if (bf7Var != null) {
            bf7Var.a(viewHolder, 0);
        }
    }

    @Override
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((LinearLayoutManager) layoutManager).getOrientation() == 0 ? ItemTouchHelper.Callback.makeMovementFlags(15, 3) : ItemTouchHelper.Callback.makeMovementFlags(15, 12);
        }
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).getOrientation() == 0 ? ItemTouchHelper.Callback.makeMovementFlags(12, 3) : ItemTouchHelper.Callback.makeMovementFlags(3, 12);
        }
        return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
    }

    @Override
    public boolean isItemViewSwipeEnabled() {
        return this.c;
    }

    @Override
    public boolean isLongPressDragEnabled() {
        return this.d;
    }

    @Override
    public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
        float fAbs;
        int width;
        if (i == 1) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            float f3 = 1.0f;
            if (layoutManager instanceof LinearLayoutManager) {
                int orientation = ((LinearLayoutManager) layoutManager).getOrientation();
                if (orientation == 0) {
                    fAbs = Math.abs(f2);
                    width = viewHolder.itemView.getHeight();
                } else if (orientation == 1) {
                    fAbs = Math.abs(f);
                    width = viewHolder.itemView.getWidth();
                }
                f3 = 1.0f - (fAbs / width);
            }
            viewHolder.itemView.setAlpha(f3);
        }
        super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
    }

    @Override
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        ze7 ze7Var = this.a;
        if (ze7Var != null) {
            return ze7Var.onItemMove(viewHolder, viewHolder2);
        }
        return false;
    }

    @Override
    public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
        super.onSelectedChanged(viewHolder, i);
        bf7 bf7Var = this.b;
        if (bf7Var == null || i == 0) {
            return;
        }
        bf7Var.a(viewHolder, i);
    }

    @Override
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        ze7 ze7Var = this.a;
        if (ze7Var != null) {
            ze7Var.onItemDismiss(viewHolder);
        }
    }

    public void setOnItemMoveListener(ze7 ze7Var) {
        this.a = ze7Var;
    }

    public void setOnItemMovementListener(af7 af7Var) {
    }

    public void setOnItemStateChangedListener(bf7 bf7Var) {
        this.b = bf7Var;
    }
}
