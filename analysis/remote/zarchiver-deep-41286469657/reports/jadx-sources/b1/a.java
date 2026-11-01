package b1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import ru.zdevs.zarchiver.R;
import z0.f;

public final class a extends ImageButton {

    public static final int f284l;

    public static final int f285m;

    public static final int f286n;

    public static final PorterDuffXfermode f287o;

    public int f288a;

    public final boolean f289b;

    public int f290c;

    public int f291d;

    public int f292e;

    public Drawable f293f;

    public final int f294g;

    public Animation f295h;

    public Animation f296i;

    public View.OnClickListener f297j;

    public Drawable f298k;

    public class C0001a extends ViewOutlineProvider {
        @Override
        public final void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    }

    public class b extends ShapeDrawable {

        public final int f299a;

        public final int f300b;

        public b(OvalShape ovalShape) {
            int iAbs;
            super(ovalShape);
            int iAbs2 = 0;
            if (a.this.f289b) {
                iAbs = Math.abs(a.f284l) + a.f286n;
            } else {
                iAbs = 0;
            }
            this.f299a = iAbs;
            if (a.this.f289b) {
                iAbs2 = Math.abs(a.f285m) + a.f286n;
            }
            this.f300b = iAbs2;
        }

        @Override
        public final void draw(Canvas canvas) {
            a aVar = a.this;
            int iC = aVar.c();
            int i2 = this.f299a;
            int iB = aVar.b();
            int i3 = this.f300b;
            setBounds(i2, i3, iC - i2, iB - i3);
            super.draw(canvas);
        }
    }

    public class c extends Drawable {

        public final Paint f302a;

        public final Paint f303b;

        public int f304c;

        public c() {
            Paint paint = new Paint(1);
            this.f302a = paint;
            Paint paint2 = new Paint(1);
            this.f303b = paint2;
            a.this.setLayerType(1, null);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(a.this.f290c);
            paint2.setXfermode(a.f287o);
            if (!a.this.isInEditMode()) {
                paint.setShadowLayer(a.f286n, a.f284l, a.f285m, 1711276032);
            }
            this.f304c = a.a(a.this) / 2;
        }

        @Override
        public final void draw(Canvas canvas) {
            a aVar = a.this;
            canvas.drawCircle(aVar.getMeasuredWidth() / 2, aVar.getMeasuredHeight() / 2, this.f304c, this.f302a);
            canvas.drawCircle(aVar.getMeasuredWidth() / 2, aVar.getMeasuredHeight() / 2, this.f304c, this.f303b);
        }

        @Override
        public final int getOpacity() {
            return 0;
        }

        @Override
        public final void setAlpha(int i2) {
        }

        @Override
        public final void setColorFilter(ColorFilter colorFilter) {
        }
    }

    static {
        int iA = z0.c.a(1);
        f284l = iA;
        f285m = iA * 3;
        f286n = iA * 4;
        f287o = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
    }

    public a(Context context, boolean z2) {
        super(context, null, 0);
        this.f294g = z0.c.a(24);
        this.f289b = z2;
        this.f290c = z0.c.c(context, R.attr.colorPrimary);
        this.f291d = z0.c.c(context, R.attr.colorPrimaryLight);
        this.f292e = -1711276033;
        this.f288a = 0;
        this.f295h = AnimationUtils.loadAnimation(context, R.anim.fab_scale_up);
        this.f296i = AnimationUtils.loadAnimation(context, R.anim.fab_scale_down);
        g();
        setClickable(true);
    }

    public static int a(a aVar) {
        return aVar.getCircleSize();
    }

    private int getCircleSize() {
        return getResources().getDimensionPixelSize(this.f288a == 0 ? R.dimen.floating_action_button_size : R.dimen.floating_action_button_size_small);
    }

    private int getShadowX() {
        return Math.abs(f284l) + f286n;
    }

    private int getShadowY() {
        return Math.abs(f285m) + f286n;
    }

    public final int b() {
        return getCircleSize() + (this.f289b ? getShadowY() * 2 : 0);
    }

    public final int c() {
        return getCircleSize() + (this.f289b ? getShadowX() * 2 : 0);
    }

    public final b d(int i2) {
        b bVar = new b(new OvalShape());
        bVar.getPaint().setColor(i2);
        return bVar;
    }

    public final Drawable e() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, d(-5592406));
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, d(this.f291d));
        stateListDrawable.addState(new int[0], d(this.f290c));
        if (Build.VERSION.SDK_INT < 21 || t0.b.k(1536)) {
            this.f298k = stateListDrawable;
            return stateListDrawable;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{this.f292e}), stateListDrawable, null);
        setOutlineProvider(new C0001a());
        setClipToOutline(true);
        this.f298k = rippleDrawable;
        return rippleDrawable;
    }

    public final void f(boolean z2, boolean z3) {
        if ((getVisibility() == 4) == z2) {
            if (z3) {
                this.f296i.cancel();
                this.f295h.cancel();
                startAnimation(z2 ? this.f295h : this.f296i);
            }
            setVisibility(z2 ? 0 : 4);
        }
    }

    public final void g() {
        Drawable iconDrawable = getIconDrawable();
        boolean z2 = this.f289b;
        LayerDrawable layerDrawable = z2 ? new LayerDrawable(new Drawable[]{new c(), e(), iconDrawable}) : new LayerDrawable(new Drawable[]{e(), iconDrawable});
        int iMax = iconDrawable != null ? Math.max(iconDrawable.getIntrinsicWidth(), iconDrawable.getIntrinsicHeight()) : -1;
        int circleSize = getCircleSize();
        if (iMax <= 0) {
            iMax = this.f294g;
        }
        int i2 = (circleSize - iMax) / 2;
        int i3 = f286n;
        int iAbs = z2 ? Math.abs(f284l) + i3 : 0;
        int i4 = iAbs + i2;
        int iAbs2 = (z2 ? Math.abs(f285m) + i3 : 0) + i2;
        layerDrawable.setLayerInset(z2 ? 2 : 1, i4, iAbs2, i4, iAbs2);
        f.f(this, layerDrawable);
    }

    public Drawable getIconDrawable() {
        Drawable drawable = this.f293f;
        return drawable != null ? drawable : new ColorDrawable(0);
    }

    @Override
    public final void onMeasure(int i2, int i3) {
        setMeasuredDimension(c(), b());
    }

    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f297j != null && isEnabled()) {
            int action = motionEvent.getAction();
            if (action == 0) {
                Drawable drawable = this.f298k;
                if (drawable instanceof StateListDrawable) {
                    ((StateListDrawable) drawable).setState(new int[]{android.R.attr.state_enabled, android.R.attr.state_pressed});
                } else if (Build.VERSION.SDK_INT >= 21) {
                    RippleDrawable rippleDrawable = (RippleDrawable) drawable;
                    rippleDrawable.setState(new int[]{android.R.attr.state_enabled, android.R.attr.state_pressed});
                    rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
                    rippleDrawable.setVisible(true, true);
                }
            } else if (action == 1 || action == 3) {
                Drawable drawable2 = this.f298k;
                if (drawable2 instanceof StateListDrawable) {
                    ((StateListDrawable) drawable2).setState(new int[]{android.R.attr.state_enabled});
                } else if (Build.VERSION.SDK_INT >= 21) {
                    RippleDrawable rippleDrawable2 = (RippleDrawable) drawable2;
                    rippleDrawable2.setState(new int[]{android.R.attr.state_enabled});
                    rippleDrawable2.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
                    rippleDrawable2.setVisible(true, true);
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        if (this.f293f != drawable) {
            this.f293f = drawable;
            g();
        }
    }

    @Override
    public void setImageResource(int i2) {
        Resources.Theme themeNewTheme = getResources().newTheme();
        themeNewTheme.applyStyle(R.style.AppTheme_Dark, true);
        Drawable drawableI = z0.c.i(getResources(), themeNewTheme, i2);
        if (this.f293f != drawableI) {
            this.f293f = drawableI;
            g();
        }
    }

    @Override
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.f297j = onClickListener;
    }
}
