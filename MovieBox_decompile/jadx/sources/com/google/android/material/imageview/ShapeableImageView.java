package com.google.android.material.imageview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import cb.i;
import cb.n;
import cb.o;
import cb.q;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import za.c;

public class ShapeableImageView extends AppCompatImageView implements q {

    private static final int f28234v = R$style.Widget_MaterialComponents_ShapeableImageView;

    private final o f28235d;

    private final RectF f28236e;

    private final RectF f28237f;

    private final Paint f28238g;

    private final Paint f28239h;

    private final Path f28240i;

    private ColorStateList f28241j;

    private i f28242k;

    private n f28243l;

    private float f28244m;

    private Path f28245n;

    private int f28246o;

    private int f28247p;

    private int f28248q;

    private int f28249r;

    private int f28250s;

    private int f28251t;

    private boolean f28252u;

    class a extends ViewOutlineProvider {

        private final Rect f28253a = new Rect();

        a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            if (ShapeableImageView.this.f28243l == null) {
                return;
            }
            if (ShapeableImageView.this.f28242k == null) {
                ShapeableImageView.this.f28242k = new i(ShapeableImageView.this.f28243l);
            }
            ShapeableImageView.this.f28236e.round(this.f28253a);
            ShapeableImageView.this.f28242k.setBounds(this.f28253a);
            ShapeableImageView.this.f28242k.getOutline(outline);
        }
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }

    private void e(Canvas canvas) {
        if (this.f28241j == null) {
            return;
        }
        this.f28238g.setStrokeWidth(this.f28244m);
        int colorForState = this.f28241j.getColorForState(getDrawableState(), this.f28241j.getDefaultColor());
        if (this.f28244m <= 0.0f || colorForState == 0) {
            return;
        }
        this.f28238g.setColor(colorForState);
        canvas.drawPath(this.f28240i, this.f28238g);
    }

    private boolean f() {
        return (this.f28250s == Integer.MIN_VALUE && this.f28251t == Integer.MIN_VALUE) ? false : true;
    }

    private boolean g() {
        return getLayoutDirection() == 1;
    }

    private void h(int i10, int i11) {
        this.f28236e.set(getPaddingLeft(), getPaddingTop(), i10 - getPaddingRight(), i11 - getPaddingBottom());
        this.f28235d.d(this.f28243l, 1.0f, this.f28236e, this.f28240i);
        this.f28245n.rewind();
        this.f28245n.addPath(this.f28240i);
        this.f28237f.set(0.0f, 0.0f, i10, i11);
        this.f28245n.addRect(this.f28237f, Path.Direction.CCW);
    }

    public int getContentPaddingBottom() {
        return this.f28249r;
    }

    public final int getContentPaddingEnd() {
        int i10 = this.f28251t;
        if (i10 != Integer.MIN_VALUE) {
            return i10;
        }
        return g() ? this.f28246o : this.f28248q;
    }

    public int getContentPaddingLeft() {
        int i10;
        int i11;
        if (f()) {
            if (g() && (i11 = this.f28251t) != Integer.MIN_VALUE) {
                return i11;
            }
            if (!g() && (i10 = this.f28250s) != Integer.MIN_VALUE) {
                return i10;
            }
        }
        return this.f28246o;
    }

    public int getContentPaddingRight() {
        int i10;
        int i11;
        if (f()) {
            if (g() && (i11 = this.f28250s) != Integer.MIN_VALUE) {
                return i11;
            }
            if (!g() && (i10 = this.f28251t) != Integer.MIN_VALUE) {
                return i10;
            }
        }
        return this.f28248q;
    }

    public final int getContentPaddingStart() {
        int i10 = this.f28250s;
        if (i10 != Integer.MIN_VALUE) {
            return i10;
        }
        return g() ? this.f28248q : this.f28246o;
    }

    public int getContentPaddingTop() {
        return this.f28247p;
    }

    @Override
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    @NonNull
    public n getShapeAppearanceModel() {
        return this.f28243l;
    }

    @Nullable
    public ColorStateList getStrokeColor() {
        return this.f28241j;
    }

    public float getStrokeWidth() {
        return this.f28244m;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f28245n, this.f28239h);
        e(canvas);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!this.f28252u && isLayoutDirectionResolved()) {
            this.f28252u = true;
            if (isPaddingRelative() || f()) {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            } else {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            }
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        h(i10, i11);
    }

    public void setContentPadding(int i10, int i11, int i12, int i13) {
        this.f28250s = Integer.MIN_VALUE;
        this.f28251t = Integer.MIN_VALUE;
        super.setPadding((super.getPaddingLeft() - this.f28246o) + i10, (super.getPaddingTop() - this.f28247p) + i11, (super.getPaddingRight() - this.f28248q) + i12, (super.getPaddingBottom() - this.f28249r) + i13);
        this.f28246o = i10;
        this.f28247p = i11;
        this.f28248q = i12;
        this.f28249r = i13;
    }

    public void setContentPaddingRelative(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative((super.getPaddingStart() - getContentPaddingStart()) + i10, (super.getPaddingTop() - this.f28247p) + i11, (super.getPaddingEnd() - getContentPaddingEnd()) + i12, (super.getPaddingBottom() - this.f28249r) + i13);
        this.f28246o = g() ? i12 : i10;
        this.f28247p = i11;
        if (!g()) {
            i10 = i12;
        }
        this.f28248q = i10;
        this.f28249r = i13;
    }

    @Override
    public void setPadding(int i10, int i11, int i12, int i13) {
        super.setPadding(i10 + getContentPaddingLeft(), i11 + getContentPaddingTop(), i12 + getContentPaddingRight(), i13 + getContentPaddingBottom());
    }

    @Override
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10 + getContentPaddingStart(), i11 + getContentPaddingTop(), i12 + getContentPaddingEnd(), i13 + getContentPaddingBottom());
    }

    @Override
    public void setShapeAppearanceModel(@NonNull n nVar) {
        this.f28243l = nVar;
        i iVar = this.f28242k;
        if (iVar != null) {
            iVar.setShapeAppearanceModel(nVar);
        }
        h(getWidth(), getHeight());
        invalidate();
        invalidateOutline();
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f28241j = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(int i10) {
        setStrokeColor(g.a.a(getContext(), i10));
    }

    public void setStrokeWidth(float f10) {
        if (this.f28244m != f10) {
            this.f28244m = f10;
            invalidate();
        }
    }

    public void setStrokeWidthResource(int i10) {
        setStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f28234v;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f28235d = o.k();
        this.f28240i = new Path();
        this.f28252u = false;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f28239h = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f28236e = new RectF();
        this.f28237f = new RectF();
        this.f28245n = new Path();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.ShapeableImageView, i10, i11);
        setLayerType(2, null);
        this.f28241j = c.a(context2, typedArrayObtainStyledAttributes, R$styleable.ShapeableImageView_strokeColor);
        this.f28244m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_strokeWidth, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPadding, 0);
        this.f28246o = dimensionPixelSize;
        this.f28247p = dimensionPixelSize;
        this.f28248q = dimensionPixelSize;
        this.f28249r = dimensionPixelSize;
        this.f28246o = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingLeft, dimensionPixelSize);
        this.f28247p = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingTop, dimensionPixelSize);
        this.f28248q = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingRight, dimensionPixelSize);
        this.f28249r = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingBottom, dimensionPixelSize);
        this.f28250s = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingStart, Integer.MIN_VALUE);
        this.f28251t = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingEnd, Integer.MIN_VALUE);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint2 = new Paint();
        this.f28238g = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.f28243l = n.e(context2, attributeSet, i10, i11).m();
        setOutlineProvider(new a());
    }
}
