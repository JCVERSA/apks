package com.gw.swipeback;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import defpackage.vkb;

public class WxSwipeBackLayout extends SwipeBackLayout {
    public SwipeBackLayout.c b;

    public class a implements SwipeBackLayout.c {
        public a() {
        }

        @Override
        public void a(View view, float f, float f2) {
            WxSwipeBackLayout.this.invalidate();
            vkb.i(f);
        }

        @Override
        public void b(View view, boolean z) {
            if (z) {
                WxSwipeBackLayout.this.finish();
            }
            vkb.h();
        }
    }

    public WxSwipeBackLayout(@NonNull Context context) {
        this(context, null);
    }

    @Override
    public void setDirectionMode(int i) {
        super.setDirectionMode(i);
        if (i != 1) {
            throw new IllegalArgumentException("The direction of WxSwipeBackLayout must be FROM_LEFT");
        }
    }

    public WxSwipeBackLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WxSwipeBackLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a aVar = new a();
        this.b = aVar;
        setSwipeBackListener(aVar);
    }
}
