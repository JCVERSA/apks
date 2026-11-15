package com.mgadplus.viewgroup.dynamicview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mgmi.R;
import defpackage.w3d;

public class VoteProgressBar extends RelativeLayout {
    public View b;
    public View c;
    public TextView d;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            VoteProgressBar.this.setProgressWithanin(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public VoteProgressBar(Context context) {
        super(context);
    }

    public void setProgressWithanin(int i) {
        if (this.b == null) {
            this.b = findViewById(R.id.progresscolor);
        }
        if (this.c == null) {
            this.c = findViewById(R.id.progressindicator);
        }
        if (this.d == null) {
            this.d = (TextView) findViewById(R.id.progressText);
        }
        this.b.getLayoutParams().width = (int) ((((double) i) / 100.0d) * ((double) getWidth()));
        int left = (getLeft() + this.b.getLayoutParams().width) - (this.c.getWidth() / 2);
        this.d.setText(String.valueOf(i) + "%");
        ((RelativeLayout.LayoutParams) this.c.getLayoutParams()).leftMargin = left;
        ((RelativeLayout.LayoutParams) this.d.getLayoutParams()).leftMargin = left + w3d.a(getContext(), 5.0f);
    }

    public void setProgress(int i) {
        ValueAnimator duration = ValueAnimator.ofInt(0, i).setDuration(200L);
        duration.addUpdateListener(new a());
        duration.start();
    }

    public VoteProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VoteProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
