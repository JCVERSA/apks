package com.transsion.widgetslib.view.indicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import com.transsion.widgetslib.R;

public class PageIndicatorWrapper extends FrameLayout {
    public static final int DEFAULT_PADDING = 40;
    public SpringPageIndicator b;
    public int c;
    public int d;
    public boolean e;
    public boolean f;
    public boolean g;

    public interface a {
    }

    public PageIndicatorWrapper(Context context) {
        this(context, null);
    }

    public void addMarker() {
        this.b.addMarker();
    }

    public void addMarkers(int i, boolean z) {
        for (int i2 = 0; i2 < i; i2++) {
            this.b.addMarker();
        }
    }

    public boolean isSpringPageIndicator() {
        return this.e;
    }

    public void onCreateMinusOne(boolean z, int i) {
        setSearchVisible(z);
        setActiveMarker(i);
        updateProgress(0.0f);
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void removeAllMarkers(boolean z) {
        if (this.e) {
            this.b.removeAllMarkers();
        }
    }

    public void removeMarker(int i, boolean z) {
        if (this.e) {
            if (this.g && this.f) {
                i++;
            }
            this.b.removeMarker(i);
        }
    }

    public void setActiveMarker(int i) {
        if (this.e) {
            if (this.g) {
                this.b.setCurrentMarker(this.f ? i + 1 : i);
            } else {
                this.b.setCurrentMarker(i);
            }
        }
        this.c = i;
    }

    public void setNormalColor(@ColorInt int i) {
        this.b.setNormalColor(i);
    }

    public void setPageIndicatorMarkerClickListener(a aVar) {
        if (this.e) {
            this.b.setMarkerClickListener(aVar);
        }
    }

    public void setSearchVisible(boolean z) {
        if (!this.g) {
            this.f = false;
            return;
        }
        if (z != this.f) {
            this.f = z;
            if (z) {
                addMarker();
                setActiveMarker(this.c);
            } else {
                removeMarker(0, false);
            }
        }
        invalidate();
    }

    public void setSelectedColor(@ColorInt int i) {
        this.b.setSelectedColor(i);
    }

    public void updateProgress(float f) {
        if (this.e) {
            this.b.update(f);
        }
    }

    public PageIndicatorWrapper(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PageIndicatorWrapper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = -1;
        this.d = -1;
        this.f = false;
        this.g = false;
        this.e = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PageIndicatorWrapper, i, 0);
        this.d = typedArrayObtainStyledAttributes.getInteger(R.styleable.PageIndicatorWrapper_maxMarkerNum, 9);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
        layoutParams.leftMargin = 40;
        layoutParams.rightMargin = 40;
        layoutParams.gravity = 17;
        if (this.e) {
            SpringPageIndicator springPageIndicator = new SpringPageIndicator(context, attributeSet);
            this.b = springPageIndicator;
            springPageIndicator.setLayoutParams(layoutParams);
            this.b.setMaxMarkerNum(this.d);
            addView(this.b);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
