package com.transsion.onlinevideo.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

public class OnlineTopicRecyclerView extends RecyclerView {
    public int e;
    public int f;
    public int g;
    public int h;

    public OnlineTopicRecyclerView(@NonNull Context context) {
        super(context);
        this.f = 0;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int actionIndex = motionEvent.getActionIndex();
        if (action == 0) {
            this.f = motionEvent.getPointerId(0);
            this.g = (int) (motionEvent.getX() + 0.5f);
            this.h = (int) (motionEvent.getY() + 0.5f);
        } else if (action == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f);
            if (iFindPointerIndex != -1) {
                int x = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                int y = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                if (getScrollState() == 1) {
                    return false;
                }
                int i = x - this.g;
                int i2 = y - this.h;
                if (!getLayoutManager().canScrollVertically() || Math.abs(i2) <= this.e) {
                    return false;
                }
                return (getLayoutManager().canScrollHorizontally() || Math.abs(i2) > Math.abs(i)) && super.onInterceptTouchEvent(motionEvent);
            }
        } else if (action == 5) {
            this.f = motionEvent.getPointerId(actionIndex);
            this.g = (int) (motionEvent.getX() + 0.5f);
            this.h = (int) (motionEvent.getY() + 0.5f);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public OnlineTopicRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = 0;
    }

    public OnlineTopicRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = 0;
        this.e = ViewConfiguration.get(context).getScaledTouchSlop();
    }
}
