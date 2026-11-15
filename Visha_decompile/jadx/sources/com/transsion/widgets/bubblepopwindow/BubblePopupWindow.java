package com.transsion.widgets.bubblepopwindow;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.PopupWindow;

public class BubblePopupWindow extends PopupWindow {
    private BubbleRelativeLayout bubbleView;
    private final Context context;

    public BubblePopupWindow(Context context) {
        this.context = context;
        setWidth(-2);
        setHeight(-2);
        setBackgroundDrawable(new ColorDrawable(0));
    }

    public int getMeasureHeight() {
        getContentView().measure(0, 0);
        return getContentView().getMeasuredHeight();
    }

    public int getMeasuredWidth() {
        getContentView().measure(0, 0);
        return getContentView().getMeasuredWidth();
    }

    public void setBubbleView(View view) {
        setContentView(view);
    }

    public void setParam(int i, int i2) {
        setWidth(i);
        setHeight(i2);
    }

    public void show(View view) {
        show(view, 48, getMeasuredWidth() / 2);
    }

    public void show(View view, int i) {
        show(view, i, getMeasuredWidth() / 2);
    }

    public void show(View view, int i, float f) {
        Activity activity;
        BubbleRelativeLayout.BubbleLegOrientation bubbleLegOrientation = BubbleRelativeLayout.BubbleLegOrientation.LEFT;
        if (!isShowing()) {
            if (i == 3) {
                bubbleLegOrientation = BubbleRelativeLayout.BubbleLegOrientation.RIGHT;
            } else if (i != 5) {
                if (i == 48) {
                    bubbleLegOrientation = BubbleRelativeLayout.BubbleLegOrientation.BOTTOM;
                } else if (i == 80) {
                    bubbleLegOrientation = BubbleRelativeLayout.BubbleLegOrientation.TOP;
                }
            }
            this.bubbleView.setBubbleParams(bubbleLegOrientation, f);
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            if (i == 3) {
                showAtLocation(view, 0, iArr[0] - getMeasuredWidth(), iArr[1] - (view.getHeight() / 2));
                return;
            }
            if (i == 5) {
                showAtLocation(view, 0, iArr[0] + view.getWidth(), iArr[1] - (view.getHeight() / 2));
                return;
            }
            if (i == 48) {
                showAtLocation(view, 0, iArr[0], iArr[1] - getMeasureHeight());
                return;
            }
            if (i != 80) {
                return;
            }
            Context context = this.context;
            if (!(context instanceof Activity) || (activity = (Activity) context) == null || activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
            showAsDropDown(view);
            return;
        }
        dismiss();
    }
}
