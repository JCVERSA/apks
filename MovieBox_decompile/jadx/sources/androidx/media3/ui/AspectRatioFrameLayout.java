package androidx.media3.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;

public final class AspectRatioFrameLayout extends FrameLayout {
    public static final int RESIZE_MODE_FILL = 3;
    public static final int RESIZE_MODE_FIT = 0;
    public static final int RESIZE_MODE_FIXED_HEIGHT = 2;
    public static final int RESIZE_MODE_FIXED_WIDTH = 1;
    public static final int RESIZE_MODE_ZOOM = 4;

    private final AspectRatioUpdateDispatcher f13120a;

    private float f13121b;

    private int f13122c;

    private final class AspectRatioUpdateDispatcher implements Runnable {
        private boolean aspectRatioMismatch;
        private boolean isScheduled;
        private float naturalAspectRatio;
        private float targetAspectRatio;

        private AspectRatioUpdateDispatcher() {
        }

        @Override
        public void run() {
            this.isScheduled = false;
            AspectRatioFrameLayout.a(AspectRatioFrameLayout.this);
        }

        public void scheduleUpdate(float f10, float f11, boolean z10) {
            this.targetAspectRatio = f10;
            this.naturalAspectRatio = f11;
            this.aspectRatioMismatch = z10;
            if (this.isScheduled) {
                return;
            }
            this.isScheduled = true;
            AspectRatioFrameLayout.this.post(this);
        }
    }

    public interface b {
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    static b a(AspectRatioFrameLayout aspectRatioFrameLayout) {
        aspectRatioFrameLayout.getClass();
        return null;
    }

    public int getResizeMode() {
        return this.f13122c;
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        float f10;
        float f11;
        super.onMeasure(i10, i11);
        if (this.f13121b <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f12 = measuredWidth;
        float f13 = measuredHeight;
        float f14 = f12 / f13;
        float f15 = (this.f13121b / f14) - 1.0f;
        if (Math.abs(f15) <= 0.01f) {
            this.f13120a.scheduleUpdate(this.f13121b, f14, false);
            return;
        }
        int i12 = this.f13122c;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 == 2) {
                    f10 = this.f13121b;
                } else if (i12 == 4) {
                    if (f15 > 0.0f) {
                        f10 = this.f13121b;
                    } else {
                        f11 = this.f13121b;
                    }
                }
                measuredWidth = (int) (f13 * f10);
            } else {
                f11 = this.f13121b;
            }
            measuredHeight = (int) (f12 / f11);
        } else if (f15 > 0.0f) {
            f11 = this.f13121b;
            measuredHeight = (int) (f12 / f11);
        } else {
            f10 = this.f13121b;
            measuredWidth = (int) (f13 * f10);
        }
        this.f13120a.scheduleUpdate(this.f13121b, f14, true);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setAspectRatio(float f10) {
        if (this.f13121b != f10) {
            this.f13121b = f10;
            requestLayout();
        }
    }

    public void setResizeMode(int i10) {
        if (this.f13122c != i10) {
            this.f13122c = i10;
            requestLayout();
        }
    }

    public AspectRatioFrameLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13122c = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.AspectRatioFrameLayout, 0, 0);
            try {
                this.f13122c = typedArrayObtainStyledAttributes.getInt(R$styleable.AspectRatioFrameLayout_resize_mode, 0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        }
        this.f13120a = new AspectRatioUpdateDispatcher();
    }

    public void setAspectRatioListener(@Nullable b bVar) {
    }
}
