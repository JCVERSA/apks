package com.transsion.widgetslistitemlayout;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.transsion.hubsdk.api.graphics.TranCanvas;
import java.util.ArrayList;

public class OSCollapseLinerLayout extends LinearLayout {
    public float b;
    public boolean c;
    public a d;
    public TranCanvas e;

    public OSCollapseLinerLayout(Context context) {
        super(context);
        b();
    }

    public final void b() {
        setClickable(true);
        setOrientation(1);
        this.b = getResources().getDimension(R.dimen.os_radius_l);
        if (this.e == null) {
            this.e = new TranCanvas();
        }
        if (getBackground() == null) {
            this.c = true;
            setBackground(ContextCompat.getDrawable(getContext(), R.drawable.os_list_item_view_bg_corners_normal));
        }
        this.d = new a(getContext());
    }

    public void collapseViews(final View view, final View view2) {
        post(new Runnable() {
            @Override
            public void run() {
                ArrayList arrayList = new ArrayList();
                int iIndexOfChild = OSCollapseLinerLayout.this.indexOfChild(view2);
                for (int iIndexOfChild2 = OSCollapseLinerLayout.this.indexOfChild(view); iIndexOfChild2 <= iIndexOfChild; iIndexOfChild2++) {
                    arrayList.add(OSCollapseLinerLayout.this.getChildAt(iIndexOfChild2));
                }
                OSCollapseLinerLayout.this.d.e(arrayList);
            }
        });
    }

    public void collapseViewsWithAnim(View view, View view2, @Nullable AnimatorListenerAdapter animatorListenerAdapter) {
        int iIndexOfChild = indexOfChild(view2);
        ArrayList arrayList = new ArrayList();
        for (int iIndexOfChild2 = indexOfChild(view); iIndexOfChild2 <= iIndexOfChild; iIndexOfChild2++) {
            arrayList.add(getChildAt(iIndexOfChild2));
        }
        this.d.f(arrayList, animatorListenerAdapter);
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.c && this.e.smoothcornerCubicEdgeEnabled()) {
            this.e.clipRRect(canvas, 0.0f, 0.0f, getWidth(), getHeight(), this.b, TranCanvas.CornerFlag.ALL);
        }
        super.draw(canvas);
    }

    public void expandViewsWithAnim(@Nullable AnimatorListenerAdapter animatorListenerAdapter) {
        this.d.h(animatorListenerAdapter);
    }

    public void collapseViews(View view, int i) {
        collapseViews(view, getChildAt((indexOfChild(view) + i) - 1));
    }

    public OSCollapseLinerLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public OSCollapseLinerLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b();
    }

    public void collapseViewsWithAnim(View view, int i, @Nullable AnimatorListenerAdapter animatorListenerAdapter) {
        collapseViewsWithAnim(view, getChildAt((indexOfChild(view) + i) - 1), animatorListenerAdapter);
    }
}
