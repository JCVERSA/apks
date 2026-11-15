package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.HorizontalScrollView;

public class ParentClickHorizontalScrollView extends HorizontalScrollView {
    public View b;

    public ParentClickHorizontalScrollView(Context context) {
        super(context);
    }

    public View getParentView() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003a  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.b == null && getParent() != null && (getParent() instanceof View)) {
            this.b = (View) getParent();
        }
        if (this.b != null) {
            int action = motionEvent.getAction();
            if (action == 0 || action == 1) {
                this.b.onTouchEvent(motionEvent);
            } else if (action == 2) {
                motionEvent.setAction(3);
                this.b.onTouchEvent(motionEvent);
                motionEvent.setAction(2);
            } else if (action == 3) {
                this.b.onTouchEvent(motionEvent);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setParentView(View view) {
        this.b = view;
    }

    public ParentClickHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ParentClickHorizontalScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
