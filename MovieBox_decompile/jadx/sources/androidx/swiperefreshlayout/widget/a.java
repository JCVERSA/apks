package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.animation.Animation;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import androidx.swiperefreshlayout.R$styleable;

class a extends ImageView {

    private Animation.AnimationListener f14616a;

    private int f14617b;

    private int f14618c;

    private static class C0117a extends OvalShape {

        private Paint f14619a = new Paint();

        private int f14620b;

        private a f14621c;

        C0117a(a aVar, int i10) {
            this.f14621c = aVar;
            this.f14620b = i10;
            a((int) rect().width());
        }

        private void a(int i10) {
            float f10 = i10 / 2;
            this.f14619a.setShader(new RadialGradient(f10, f10, this.f14620b, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP));
        }

        @Override
        public void draw(Canvas canvas, Paint paint) {
            int width = this.f14621c.getWidth() / 2;
            float f10 = width;
            float height = this.f14621c.getHeight() / 2;
            canvas.drawCircle(f10, height, f10, this.f14619a);
            canvas.drawCircle(f10, height, width - this.f14620b, paint);
        }

        @Override
        protected void onResize(float f10, float f11) {
            super.onResize(f10, f11);
            a((int) f10);
        }
    }

    a(Context context) {
        ShapeDrawable shapeDrawable;
        super(context);
        float f10 = getContext().getResources().getDisplayMetrics().density;
        int i10 = (int) (1.75f * f10);
        int i11 = (int) (0.0f * f10);
        this.f14617b = (int) (3.5f * f10);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(R$styleable.SwipeRefreshLayout);
        this.f14618c = typedArrayObtainStyledAttributes.getColor(R$styleable.SwipeRefreshLayout_swipeRefreshLayoutProgressSpinnerBackgroundColor, -328966);
        typedArrayObtainStyledAttributes.recycle();
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, f10 * 4.0f);
        } else {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new C0117a(this, this.f14617b));
            setLayerType(1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f14617b, i11, i10, 503316480);
            int i12 = this.f14617b;
            setPadding(i12, i12, i12, i12);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(this.f14618c);
        ViewCompat.setBackground(this, shapeDrawable);
    }

    private boolean a() {
        return true;
    }

    public void b(Animation.AnimationListener animationListener) {
        this.f14616a = animationListener;
    }

    @Override
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f14616a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f14616a;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (a()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth() + (this.f14617b * 2), getMeasuredHeight() + (this.f14617b * 2));
    }

    @Override
    public void setBackgroundColor(int i10) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i10);
            this.f14618c = i10;
        }
    }
}
