package com.transsion.widgets;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.it1;
import java.util.Date;

public class TimerTextView extends AppCompatTextView {
    Handler handler;
    Runnable runnable;

    public TimerTextView(Context context) {
        super(context);
        this.handler = new Handler();
        this.runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        lambda$new$0();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.handler.removeCallbacks(this.runnable);
    }

    public void lambda$new$0() {
        this.handler.removeCallbacks(this.runnable);
        this.handler.postDelayed(this.runnable, (60 - new Date().getSeconds()) * 1000);
        setText(it1.c(OSDateTimePicker.FORMAT_H_M));
    }

    public TimerTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.handler = new Handler();
        this.runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
    }

    public TimerTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.handler = new Handler();
        this.runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
    }
}
