package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;

public class ScrimInsetsFrameLayout extends FrameLayout {

    Drawable f28287a;

    Rect f28288b;

    private Rect f28289c;

    private boolean f28290d;

    private boolean f28291e;

    private boolean f28292f;

    private boolean f28293g;

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.f28288b == null) {
                scrimInsetsFrameLayout.f28288b = new Rect();
            }
            ScrimInsetsFrameLayout.this.f28288b.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            ScrimInsetsFrameLayout.this.a(windowInsetsCompat);
            ScrimInsetsFrameLayout.this.setWillNotDraw(!windowInsetsCompat.hasSystemWindowInsets() || ScrimInsetsFrameLayout.this.f28287a == null);
            ViewCompat.postInvalidateOnAnimation(ScrimInsetsFrameLayout.this);
            return windowInsetsCompat.consumeSystemWindowInsets();
        }
    }

    public ScrimInsetsFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    protected void a(WindowInsetsCompat windowInsetsCompat) {
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f28288b == null || this.f28287a == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.f28290d) {
            this.f28289c.set(0, 0, width, this.f28288b.top);
            this.f28287a.setBounds(this.f28289c);
            this.f28287a.draw(canvas);
        }
        if (this.f28291e) {
            this.f28289c.set(0, height - this.f28288b.bottom, width, height);
            this.f28287a.setBounds(this.f28289c);
            this.f28287a.draw(canvas);
        }
        if (this.f28292f) {
            Rect rect = this.f28289c;
            Rect rect2 = this.f28288b;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.f28287a.setBounds(this.f28289c);
            this.f28287a.draw(canvas);
        }
        if (this.f28293g) {
            Rect rect3 = this.f28289c;
            Rect rect4 = this.f28288b;
            rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
            this.f28287a.setBounds(this.f28289c);
            this.f28287a.draw(canvas);
        }
        canvas.restoreToCount(iSave);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f28287a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f28287a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z10) {
        this.f28291e = z10;
    }

    public void setDrawLeftInsetForeground(boolean z10) {
        this.f28292f = z10;
    }

    public void setDrawRightInsetForeground(boolean z10) {
        this.f28293g = z10;
    }

    public void setDrawTopInsetForeground(boolean z10) {
        this.f28290d = z10;
    }

    public void setScrimInsetForeground(@Nullable Drawable drawable) {
        this.f28287a = drawable;
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f28289c = new Rect();
        this.f28290d = true;
        this.f28291e = true;
        this.f28292f = true;
        this.f28293g = true;
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.ScrimInsetsFrameLayout, i10, R$style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f28287a = typedArrayI.getDrawable(R$styleable.ScrimInsetsFrameLayout_insetForeground);
        typedArrayI.recycle();
        setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new a());
    }
}
