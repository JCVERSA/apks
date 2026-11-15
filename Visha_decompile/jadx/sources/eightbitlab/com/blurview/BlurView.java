package eightbitlab.com.blurview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import defpackage.a17;
import defpackage.fg0;
import defpackage.hs8;
import defpackage.js8;
import defpackage.sd8;
import defpackage.yf0;
import defpackage.zf0;

public class BlurView extends FrameLayout {
    private static final String TAG = "BlurView";
    zf0 blurController;

    @ColorInt
    private int overlayColor;

    public BlurView(Context context) {
        super(context);
        this.blurController = new a17();
        a(null, 0);
    }

    @NonNull
    @RequiresApi(api = 17)
    private yf0 getBlurAlgorithm() {
        return Build.VERSION.SDK_INT >= 31 ? new hs8() : new js8(getContext());
    }

    public final void a(AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.BlurView, i, 0);
        this.overlayColor = typedArrayObtainStyledAttributes.getColor(R.styleable.BlurView_blurOverlayColor, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.blurController.draw(canvas)) {
            super.draw(canvas);
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isHardwareAccelerated()) {
            this.blurController.e(true);
        } else {
            Log.e(TAG, "BlurView can't be used in not hardware-accelerated window!");
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.blurController.e(false);
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.blurController.b();
    }

    public fg0 setBlurAutoUpdate(boolean z) {
        return this.blurController.e(z);
    }

    public fg0 setBlurEnabled(boolean z) {
        return this.blurController.a(z);
    }

    public fg0 setBlurRadius(float f) {
        return this.blurController.c(f);
    }

    public fg0 setOverlayColor(@ColorInt int i) {
        this.overlayColor = i;
        return this.blurController.d(i);
    }

    public fg0 setupWith(@NonNull ViewGroup viewGroup, yf0 yf0Var) {
        this.blurController.destroy();
        sd8 sd8Var = new sd8(this, viewGroup, this.overlayColor, yf0Var);
        this.blurController = sd8Var;
        return sd8Var;
    }

    public BlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.blurController = new a17();
        a(attributeSet, 0);
    }

    @RequiresApi(api = 17)
    public fg0 setupWith(@NonNull ViewGroup viewGroup) {
        this.blurController.destroy();
        sd8 sd8Var = new sd8(this, viewGroup, this.overlayColor, getBlurAlgorithm());
        this.blurController = sd8Var;
        return sd8Var;
    }

    public BlurView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.blurController = new a17();
        a(attributeSet, i);
    }
}
