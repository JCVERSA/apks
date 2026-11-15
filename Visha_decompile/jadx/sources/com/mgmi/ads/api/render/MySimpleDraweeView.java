package com.mgmi.ads.api.render;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;

public class MySimpleDraweeView extends ImageView {
    private float a;
    private float b;
    private float c;
    private float d;
    private a e;

    public interface a {
        void a(View view, float f, float f2, float f3, float f4, float f5, float f6);
    }

    public MySimpleDraweeView(Context context) {
        super(context);
    }

    private void a(float f, float f2, float f3, float f4) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.a(this, f, f2, f3, f4, getMeasuredWidth(), getMeasuredHeight());
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            float x = motionEvent.getX();
            this.b = x;
            this.a = x;
            float y = motionEvent.getY();
            this.d = y;
            this.c = y;
        } else if (action == 1) {
            this.b = motionEvent.getX();
            this.d = motionEvent.getY();
            if (Math.abs(this.b - this.a) < 5.0f || Math.abs(this.d - this.c) < 5.0f) {
                a(motionEvent.getRawX(), motionEvent.getRawY(), this.b, this.d);
            }
        }
        if (this.e != null) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setTapclickListener(a aVar) {
        this.e = aVar;
    }

    public MySimpleDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MySimpleDraweeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
