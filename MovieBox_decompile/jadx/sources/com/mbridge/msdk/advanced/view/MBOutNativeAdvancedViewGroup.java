package com.mbridge.msdk.advanced.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.mbridge.msdk.advanced.middle.c;

public class MBOutNativeAdvancedViewGroup extends RelativeLayout {

    private c f33424a;

    class a implements Runnable {

        final int f33425a;

        a(int i10) {
            this.f33425a = i10;
        }

        @Override
        public void run() {
            if (MBOutNativeAdvancedViewGroup.this.f33424a != null) {
                MBOutNativeAdvancedViewGroup.this.f33424a.i(this.f33425a);
            }
        }
    }

    public MBOutNativeAdvancedViewGroup(Context context) {
        super(context);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f33424a != null) {
            a(1);
            if (getVisibility() == 0) {
                a(2);
            }
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.f33424a;
        if (cVar != null) {
            cVar.f(1);
        }
    }

    @Override
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 == 0) {
            a(2);
            if (getParent() != null) {
                a(1);
                return;
            }
            return;
        }
        c cVar = this.f33424a;
        if (cVar != null) {
            cVar.f(2);
        }
    }

    public void setProvider(c cVar) {
        this.f33424a = cVar;
    }

    public MBOutNativeAdvancedViewGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(int i10) {
        postDelayed(new a(i10), 200L);
    }

    public MBOutNativeAdvancedViewGroup(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
