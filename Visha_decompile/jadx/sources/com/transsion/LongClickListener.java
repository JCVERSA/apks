package com.transsion;

import android.view.MotionEvent;
import android.view.View;
import com.blankj.utilcode.util.ThreadUtils;
import defpackage.qua;

public abstract class LongClickListener {
    public static final long CALLBACK_INTERVAL = 100;
    public static final long MIN_LONG_CLICK_INTERVAL = 1000;
    boolean mIsLongClick = false;
    private Runnable mLongClickRunnable = new Runnable() {
        @Override
        public void run() {
            LongClickListener longClickListener = LongClickListener.this;
            longClickListener.mIsLongClick = true;
            longClickListener.longClickCallback();
            ThreadUtils.o().postDelayed(this, 100L);
        }
    };
    long mStartTime;

    public class a extends qua.a {
        public a() {
        }

        @Override
        public boolean a(View view, int i, int i2, MotionEvent motionEvent) {
            LongClickListener.this.mStartTime = System.currentTimeMillis();
            LongClickListener.this.mIsLongClick = false;
            ThreadUtils.o().postDelayed(LongClickListener.this.mLongClickRunnable, 1000L);
            return true;
        }

        @Override
        public boolean b(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, MotionEvent motionEvent) {
            return false;
        }

        @Override
        public boolean c(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, MotionEvent motionEvent) {
            ThreadUtils.o().removeCallbacks(LongClickListener.this.mLongClickRunnable);
            LongClickListener longClickListener = LongClickListener.this;
            if (!longClickListener.mIsLongClick) {
                return true;
            }
            longClickListener.cancelLongClickCallback();
            LongClickListener.this.mIsLongClick = false;
            return true;
        }
    }

    public abstract void cancelLongClickCallback();

    public void init(View view) {
        qua.a(view, new a());
    }

    public abstract void longClickCallback();
}
