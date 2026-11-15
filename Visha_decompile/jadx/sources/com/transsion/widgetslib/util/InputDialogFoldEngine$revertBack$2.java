package com.transsion.widgetslib.util;

import android.animation.ValueAnimator;
import android.view.Window;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import defpackage.bq5;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroid/view/Window;", "Lzfb;", "invoke", "(Landroid/view/Window;)V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class InputDialogFoldEngine$revertBack$2 extends Lambda implements e74 {
    final InputDialogFoldEngine this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InputDialogFoldEngine$revertBack$2(InputDialogFoldEngine inputDialogFoldEngine) {
        super(1);
        this.this$0 = inputDialogFoldEngine;
    }

    public static final void b(InputDialogFoldEngine inputDialogFoldEngine, final ValueAnimator valueAnimator, ValueAnimator valueAnimator2) {
        y45.j(inputDialogFoldEngine, "this$0");
        y45.j(valueAnimator, "$this_run");
        y45.j(valueAnimator2, "it");
        inputDialogFoldEngine.y(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Window) obj);
                return zfb.a;
            }

            public final void invoke(Window window) {
                y45.j(window, "$this$flexWindow");
                Object animatedValue = valueAnimator.getAnimatedValue();
                y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
                int iIntValue = ((Integer) animatedValue).intValue();
                bq5.o("revertBack: animatedValue = " + iIntValue + " attributes.y = " + window.getAttributes().y);
                window.getAttributes().y = iIntValue;
                window.setAttributes(window.getAttributes());
            }
        });
    }

    @Override
    public Object invoke(Object obj) {
        invoke((Window) obj);
        return zfb.a;
    }

    public final void invoke(Window window) {
        y45.j(window, "$this$flexWindow");
        if (window.getAttributes().y == 0) {
            return;
        }
        this.this$0.d = ValueAnimator.ofInt(window.getAttributes().y, 0);
        final ValueAnimator valueAnimator = this.this$0.d;
        if (valueAnimator != null) {
            final InputDialogFoldEngine inputDialogFoldEngine = this.this$0;
            valueAnimator.setDuration(300L);
            valueAnimator.setInterpolator(new FastOutSlowInInterpolator());
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    InputDialogFoldEngine$revertBack$2.b(inputDialogFoldEngine, valueAnimator, valueAnimator2);
                }
            });
            valueAnimator.start();
        }
    }
}
