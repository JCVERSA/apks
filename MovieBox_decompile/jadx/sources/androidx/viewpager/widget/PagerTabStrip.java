package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

public class PagerTabStrip extends PagerTitleStrip {
    private boolean A;
    private int B;
    private boolean C;
    private float D;
    private float E;
    private int F;

    private int f14902q;

    private int f14903r;

    private int f14904s;

    private int f14905t;

    private int f14906u;

    private int f14907v;

    private final Paint f14908w;

    private final Rect f14909x;

    private int f14910y;

    private boolean f14911z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.f14916a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.f14916a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    public PagerTabStrip(@NonNull Context context) {
        this(context, null);
    }

    @Override
    void c(int i10, float f10, boolean z10) {
        Rect rect = this.f14909x;
        int height = getHeight();
        int left = this.f14918c.getLeft() - this.f14907v;
        int right = this.f14918c.getRight() + this.f14907v;
        int i11 = height - this.f14903r;
        rect.set(left, i11, right, height);
        super.c(i10, f10, z10);
        this.f14910y = (int) (Math.abs(f10 - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f14918c.getLeft() - this.f14907v, i11, this.f14918c.getRight() + this.f14907v, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.f14911z;
    }

    @Override
    int getMinHeight() {
        return Math.max(super.getMinHeight(), this.f14906u);
    }

    public int getTabIndicatorColor() {
        return this.f14902q;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f14918c.getLeft() - this.f14907v;
        int right = this.f14918c.getRight() + this.f14907v;
        int i10 = height - this.f14903r;
        this.f14908w.setColor((this.f14910y << 24) | (this.f14902q & 16777215));
        float f10 = height;
        canvas.drawRect(left, i10, right, f10, this.f14908w);
        if (this.f14911z) {
            this.f14908w.setColor((this.f14902q & 16777215) | ViewCompat.MEASURED_STATE_MASK);
            canvas.drawRect(getPaddingLeft(), height - this.B, getWidth() - getPaddingRight(), f10, this.f14908w);
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.C) {
            return false;
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (action == 0) {
            this.D = x10;
            this.E = y10;
            this.C = false;
        } else if (action != 1) {
            if (action == 2 && (Math.abs(x10 - this.D) > this.F || Math.abs(y10 - this.E) > this.F)) {
                this.C = true;
            }
        } else if (x10 < this.f14918c.getLeft() - this.f14907v) {
            ViewPager viewPager = this.f14916a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        } else if (x10 > this.f14918c.getRight() + this.f14907v) {
            ViewPager viewPager2 = this.f14916a;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
        }
        return true;
    }

    @Override
    public void setBackgroundColor(int i10) {
        super.setBackgroundColor(i10);
        if (this.A) {
            return;
        }
        this.f14911z = (i10 & ViewCompat.MEASURED_STATE_MASK) == 0;
    }

    @Override
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.A) {
            return;
        }
        this.f14911z = drawable == null;
    }

    @Override
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        if (this.A) {
            return;
        }
        this.f14911z = i10 == 0;
    }

    public void setDrawFullUnderline(boolean z10) {
        this.f14911z = z10;
        this.A = true;
        invalidate();
    }

    @Override
    public void setPadding(int i10, int i11, int i12, int i13) {
        int i14 = this.f14904s;
        if (i13 < i14) {
            i13 = i14;
        }
        super.setPadding(i10, i11, i12, i13);
    }

    public void setTabIndicatorColor(int i10) {
        this.f14902q = i10;
        this.f14908w.setColor(i10);
        invalidate();
    }

    public void setTabIndicatorColorResource(int i10) {
        setTabIndicatorColor(androidx.core.content.b.getColor(getContext(), i10));
    }

    @Override
    public void setTextSpacing(int i10) {
        int i11 = this.f14905t;
        if (i10 < i11) {
            i10 = i11;
        }
        super.setTextSpacing(i10);
    }

    public PagerTabStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f14908w = paint;
        this.f14909x = new Rect();
        this.f14910y = 255;
        this.f14911z = false;
        this.A = false;
        int i10 = this.f14929n;
        this.f14902q = i10;
        paint.setColor(i10);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f14903r = (int) ((3.0f * f10) + 0.5f);
        this.f14904s = (int) ((6.0f * f10) + 0.5f);
        this.f14905t = (int) (64.0f * f10);
        this.f14907v = (int) ((16.0f * f10) + 0.5f);
        this.B = (int) ((1.0f * f10) + 0.5f);
        this.f14906u = (int) ((f10 * 32.0f) + 0.5f);
        this.F = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f14917b.setFocusable(true);
        this.f14917b.setOnClickListener(new a());
        this.f14919d.setFocusable(true);
        this.f14919d.setOnClickListener(new b());
        if (getBackground() == null) {
            this.f14911z = true;
        }
    }
}
