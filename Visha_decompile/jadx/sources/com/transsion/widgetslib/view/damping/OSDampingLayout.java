package com.transsion.widgetslib.view.damping;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.OSLoadingView;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;

public class OSDampingLayout extends OverBoundNestedScrollView implements com.transsion.widgetslib.view.damping.a {
    public HeaderHelper E;

    public interface a {
    }

    public OSDampingLayout(Context context) {
        super(context);
        initHeaderHelper();
    }

    public void abortRefreshing() {
        this.E.j();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.E.l(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override
    public HeaderHelper getHeaderHelper() {
        return this.E;
    }

    @Override
    public OSLoadingView getLoadingView() {
        return this.E.getLoadingView();
    }

    public void initHeaderHelper() {
        this.E = new HeaderHelper(getContext());
    }

    public boolean isRefreshing() {
        return this.E.o();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.E.p();
    }

    public void onFinishHeaderInflate(View view) {
        this.E.q(view);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() != 1) {
            return;
        }
        View childAt = getChildAt(0);
        childAt.setNestedScrollingEnabled(false);
        childAt.setVerticalScrollBarEnabled(false);
        setFillViewport(true);
        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
        removeView(childAt);
        View viewInflate = View.inflate(getContext(), R.layout.os_damping_layout_title2, null);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.addView(viewInflate);
        linearLayout.addView(childAt, -1, -1);
        addView(linearLayout, layoutParams);
        onFinishHeaderInflate(viewInflate);
    }

    public void onOverScrollUpdated(float f) {
        this.E.r(f);
    }

    @Override
    public void setOnRefreshListener(a aVar) {
        this.E.setOnRefreshListener(aVar);
    }

    @Override
    public void setRefreshEnabled(boolean z) {
        this.E.setRefreshEnabled(z);
    }

    @Override
    public void setTextColor(int i) {
        this.E.setTextColor(i);
    }

    public OSDampingLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initHeaderHelper();
    }

    public OSDampingLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initHeaderHelper();
    }
}
