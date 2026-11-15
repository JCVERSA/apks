package com.transsion.playercommon.stack;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.kf7;
import java.util.List;

public class StackItemTouchHelperCallback<T> extends ItemTouchHelper.Callback {
    public final RecyclerView.Adapter a;
    public List b;

    public final float a(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        return recyclerView.getWidth() * getSwipeThreshold(viewHolder);
    }

    @Override
    public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        super.clearView(recyclerView, viewHolder);
        viewHolder.itemView.setRotation(0.0f);
    }

    @Override
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        return ItemTouchHelper.Callback.makeMovementFlags(0, recyclerView.getLayoutManager() instanceof StackLayoutManager ? 12 : 0);
    }

    @Override
    public boolean isItemViewSwipeEnabled() {
        return false;
    }

    @Override
    public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
        super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
        View view = viewHolder.itemView;
        if (i == 1) {
            float fA = f / a(recyclerView, viewHolder);
            if (fA > 1.0f) {
                fA = 1.0f;
            } else if (fA < -1.0f) {
                fA = -1.0f;
            }
            view.setRotation(15.0f * fA);
            int childCount = recyclerView.getChildCount();
            if (childCount > 3) {
                for (int i2 = 1; i2 < childCount - 1; i2++) {
                    View childAt = recyclerView.getChildAt(i2);
                    float f3 = (childCount - i2) - 1;
                    float f4 = 1.0f - (f3 * 0.0f);
                    childAt.setScaleX((Math.abs(fA) * 0.0f) + f4);
                    childAt.setScaleY(f4 + (Math.abs(fA) * 0.0f));
                    childAt.setTranslationY(((f3 - Math.abs(fA)) * view.getMeasuredHeight()) / 24.0f);
                }
                return;
            }
            for (int i3 = 0; i3 < childCount - 1; i3++) {
                View childAt2 = recyclerView.getChildAt(i3);
                float f5 = (childCount - i3) - 1;
                float f6 = 1.0f - (f5 * 0.0f);
                childAt2.setScaleX((Math.abs(fA) * 0.0f) + f6);
                childAt2.setScaleY(f6 + (Math.abs(fA) * 0.0f));
                childAt2.setTranslationY(((f5 - Math.abs(fA)) * view.getMeasuredHeight()) / 24.0f);
            }
        }
    }

    @Override
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        return false;
    }

    @Override
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        viewHolder.itemView.setOnTouchListener(null);
        this.b.remove(viewHolder.getLayoutPosition());
        this.a.notifyDataSetChanged();
        this.a.getItemCount();
    }

    public void setOnSlidedListener(kf7 kf7Var) {
    }
}
