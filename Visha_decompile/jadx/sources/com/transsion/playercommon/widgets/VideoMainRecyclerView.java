package com.transsion.playercommon.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.widgetsrecanimation.animators.SyncAnimator;
import com.yanzhenjie.recyclerview.SwipeRecyclerView;

public class VideoMainRecyclerView extends SwipeRecyclerView {
    public static final int LIST_DEFAULT_CACHE_SIZE = 30;
    public String C;
    public boolean D;

    public VideoMainRecyclerView(@NonNull Context context) {
        this(context, null);
    }

    @Override
    public boolean canScrollVertically(int i) {
        if (this.D) {
            return true;
        }
        return super.canScrollVertically(i);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (Exception e) {
            Log.e("VideoMainRecyclerView", e.getMessage());
            return false;
        }
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        try {
            super.onLayout(z, i, i2, i3, i4);
        } catch (Exception unused) {
        }
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            try {
                if (getAdapter() != null && getAdapter().getItemCount() == 0) {
                    return false;
                }
            } catch (Exception unused) {
            }
            return zOnTouchEvent;
        } catch (Exception unused2) {
            return false;
        }
    }

    public void setAppBarExpand(boolean z) {
        this.D = z;
    }

    @Override
    public void setLayoutManager(@Nullable RecyclerView.LayoutManager layoutManager) {
        super.setLayoutManager(layoutManager);
        if (layoutManager != null) {
            layoutManager.setItemPrefetchEnabled(false);
        }
    }

    public void setRecyclerItemAnimator(boolean z) {
        setItemAnimator(new SyncAnimator(z));
    }

    public void setType(String str) {
        this.C = str;
    }

    public VideoMainRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setMotionEventSplittingEnabled(false);
        setItemViewCacheSize(30);
    }
}
