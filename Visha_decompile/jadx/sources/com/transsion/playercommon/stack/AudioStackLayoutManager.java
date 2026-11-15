package com.transsion.playercommon.stack;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;

public class AudioStackLayoutManager extends RecyclerView.LayoutManager {
    public RecyclerView e;
    public ItemTouchHelper f;
    public Context g;
    public View.OnTouchListener h = new a();

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            RecyclerView.ViewHolder childViewHolder = AudioStackLayoutManager.this.e.getChildViewHolder(view);
            if (MotionEventCompat.getActionMasked(motionEvent) != 0) {
                return false;
            }
            AudioStackLayoutManager.this.f.startSwipe(childViewHolder);
            return false;
        }
    }

    public AudioStackLayoutManager(Context context, RecyclerView recyclerView) {
        this.e = (RecyclerView) i(recyclerView);
        this.g = context;
    }

    @Override
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public final Object i(Object obj) {
        obj.getClass();
        return obj;
    }

    @Override
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        detachAndScrapAttachedViews(recycler);
        int itemCount = getItemCount();
        if (itemCount <= 3) {
            for (int i = itemCount - 1; i >= 0; i--) {
                View viewForPosition = recycler.getViewForPosition(i);
                addView(viewForPosition);
                measureChildWithMargins(viewForPosition, 0, 0);
                int width = (getWidth() - getDecoratedMeasuredWidth(viewForPosition)) / 2;
                int height = (getHeight() - getDecoratedMeasuredHeight(viewForPosition)) / 2;
                layoutDecoratedWithMargins(viewForPosition, width, height, width + getDecoratedMeasuredWidth(viewForPosition), height + getDecoratedMeasuredHeight(viewForPosition));
                if (i > 0) {
                    float f = 1.0f - (i * 0.1f);
                    viewForPosition.setScaleX(f);
                    viewForPosition.setScaleY(f);
                    viewForPosition.setTranslationX((viewForPosition.getMeasuredWidth() * i) / 16);
                }
            }
            return;
        }
        for (int i2 = 3; i2 >= 0; i2--) {
            View viewForPosition2 = recycler.getViewForPosition(i2);
            addView(viewForPosition2);
            measureChildWithMargins(viewForPosition2, 0, 0);
            int width2 = (getWidth() - getDecoratedMeasuredWidth(viewForPosition2)) / 2;
            int height2 = (getHeight() - getDecoratedMeasuredHeight(viewForPosition2)) / 2;
            layoutDecoratedWithMargins(viewForPosition2, width2, height2, width2 + getDecoratedMeasuredWidth(viewForPosition2), height2 + getDecoratedMeasuredHeight(viewForPosition2));
            if (i2 == 3) {
                int i3 = i2 - 1;
                float f2 = 1.0f - (i3 * 0.1f);
                viewForPosition2.setScaleX(f2);
                viewForPosition2.setScaleY(f2);
                viewForPosition2.setTranslationX((i3 * viewForPosition2.getMeasuredWidth()) / 16);
            } else if (i2 > 0) {
                float f3 = 1.0f - (i2 * 0.1f);
                viewForPosition2.setScaleX(f3);
                viewForPosition2.setScaleY(f3);
                viewForPosition2.setTranslationX((viewForPosition2.getMeasuredWidth() * i2) / 16);
            }
        }
    }
}
