package com.transsion.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.common.R;

public class MarqueTextView extends AppCompatTextView {
    private volatile boolean firstVisibleOver;
    private Handler handler;
    private int marqueDelay;
    private final Runnable startMarqueeRunnable;

    public MarqueTextView(Context context) {
        super(context);
        this.firstVisibleOver = false;
        this.startMarqueeRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
        init(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MarqueTextView);
            this.marqueDelay = typedArrayObtainStyledAttributes.getInteger(R.styleable.MarqueTextView_marqueDelay, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
        if (needDelay()) {
            this.handler = new Handler(Looper.getMainLooper());
            stopMarquee();
        }
    }

    public void lambda$new$0() {
        setEllipsize(TextUtils.TruncateAt.MARQUEE);
        setSelected(true);
    }

    private boolean needDelay() {
        return this.marqueDelay > 0;
    }

    private void startMarque() {
        if (this.handler == null || !this.firstVisibleOver) {
            return;
        }
        this.handler.removeCallbacks(this.startMarqueeRunnable);
        this.handler.postDelayed(this.startMarqueeRunnable, this.marqueDelay);
    }

    private void stopMarquee() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacks(this.startMarqueeRunnable);
        }
        setSelected(false);
        setEllipsize(null);
    }

    @Override
    public boolean isFocused() {
        return true;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (needDelay()) {
            stopMarquee();
        }
    }

    @Override
    public void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            super.onFocusChanged(z, i, rect);
        }
    }

    @Override
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (needDelay()) {
            if (i != 0) {
                stopMarquee();
            } else {
                this.firstVisibleOver = true;
                startMarque();
            }
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        if (z) {
            super.onWindowFocusChanged(z);
        }
    }

    public void resetMarque() {
        if (needDelay() && this.firstVisibleOver) {
            stopMarquee();
            startMarque();
        }
    }

    public MarqueTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.firstVisibleOver = false;
        this.startMarqueeRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
        init(context, attributeSet);
    }

    public MarqueTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.firstVisibleOver = false;
        this.startMarqueeRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
        init(context, attributeSet);
    }
}
