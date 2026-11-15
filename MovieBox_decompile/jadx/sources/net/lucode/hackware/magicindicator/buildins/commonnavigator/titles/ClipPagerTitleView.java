package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import xy.b;

public class ClipPagerTitleView extends View implements b {

    private String f67252a;

    private int f67253b;

    private int f67254c;

    private boolean f67255d;

    private float f67256e;

    private Paint f67257f;

    private Rect f67258g;

    public ClipPagerTitleView(Context context) {
        super(context);
        this.f67258g = new Rect();
        a(context);
    }

    private void a(Context context) {
        int iA = wy.b.a(context, 16.0d);
        Paint paint = new Paint(1);
        this.f67257f = paint;
        paint.setTextSize(iA);
        int iA2 = wy.b.a(context, 10.0d);
        setPadding(iA2, 0, iA2, 0);
    }

    private int b(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != Integer.MIN_VALUE) {
            return mode != 0 ? size : this.f67258g.height() + getPaddingTop() + getPaddingBottom();
        }
        return Math.min(this.f67258g.height() + getPaddingTop() + getPaddingBottom(), size);
    }

    private void c() {
        Paint paint = this.f67257f;
        String str = this.f67252a;
        paint.getTextBounds(str, 0, str == null ? 0 : str.length(), this.f67258g);
    }

    private int d(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != Integer.MIN_VALUE) {
            return mode != 0 ? size : this.f67258g.width() + getPaddingLeft() + getPaddingRight();
        }
        return Math.min(this.f67258g.width() + getPaddingLeft() + getPaddingRight(), size);
    }

    public int getClipColor() {
        return this.f67254c;
    }

    @Override
    public int getContentBottom() {
        Paint.FontMetrics fontMetrics = this.f67257f.getFontMetrics();
        return (int) ((getHeight() / 2) + ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    @Override
    public int getContentLeft() {
        return (getLeft() + (getWidth() / 2)) - (this.f67258g.width() / 2);
    }

    @Override
    public int getContentRight() {
        return getLeft() + (getWidth() / 2) + (this.f67258g.width() / 2);
    }

    @Override
    public int getContentTop() {
        Paint.FontMetrics fontMetrics = this.f67257f.getFontMetrics();
        return (int) ((getHeight() / 2) - ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    public String getText() {
        return this.f67252a;
    }

    public int getTextColor() {
        return this.f67253b;
    }

    public float getTextSize() {
        return this.f67257f.getTextSize();
    }

    @Override
    public void onDeselected(int i10, int i11) {
    }

    @Override
    protected void onDraw(Canvas canvas) {
        int width = (getWidth() - this.f67258g.width()) / 2;
        Paint.FontMetrics fontMetrics = this.f67257f.getFontMetrics();
        int height = (int) (((getHeight() - fontMetrics.bottom) - fontMetrics.top) / 2.0f);
        this.f67257f.setColor(this.f67253b);
        float f10 = width;
        float f11 = height;
        canvas.drawText(this.f67252a, f10, f11, this.f67257f);
        canvas.save();
        if (this.f67255d) {
            canvas.clipRect(0.0f, 0.0f, getWidth() * this.f67256e, getHeight());
        } else {
            canvas.clipRect(getWidth() * (1.0f - this.f67256e), 0.0f, getWidth(), getHeight());
        }
        this.f67257f.setColor(this.f67254c);
        canvas.drawText(this.f67252a, f10, f11, this.f67257f);
        canvas.restore();
    }

    @Override
    public void onEnter(int i10, int i11, float f10, boolean z10) {
        this.f67255d = z10;
        this.f67256e = f10;
        invalidate();
    }

    @Override
    public void onLeave(int i10, int i11, float f10, boolean z10) {
        this.f67255d = !z10;
        this.f67256e = 1.0f - f10;
        invalidate();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        c();
        setMeasuredDimension(d(i10), b(i11));
    }

    @Override
    public void onSelected(int i10, int i11) {
    }

    public void setClipColor(int i10) {
        this.f67254c = i10;
        invalidate();
    }

    public void setText(String str) {
        this.f67252a = str;
        requestLayout();
    }

    public void setTextColor(int i10) {
        this.f67253b = i10;
        invalidate();
    }

    public void setTextSize(float f10) {
        this.f67257f.setTextSize(f10);
        requestLayout();
    }
}
