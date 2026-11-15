package com.cloud.tmc.miniapp.widget.badgeview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.material.card.MaterialCardView;
import java.util.ArrayList;
import java.util.List;

public class OooO0o extends View implements com.cloud.tmc.miniapp.widget.badgeview.OooO00o {
    public float OooO;
    public int OooO00o;
    public int OooO0O0;
    public float OooO0OO;
    public float OooO0Oo;
    public String OooO0o;
    public int OooO0o0;
    public boolean OooO0oO;
    public int OooO0oo;
    public float OooOO0;
    public int OooOO0O;
    public RectF OooOO0o;
    public Path OooOOO;
    public RectF OooOOO0;
    public Paint.FontMetrics OooOOOO;
    public PointF OooOOOo;
    public PointF OooOOo;
    public PointF OooOOo0;
    public PointF OooOOoo;
    public TextPaint OooOo;
    public View OooOo0;
    public List<PointF> OooOo00;
    public int OooOo0O;
    public int OooOo0o;
    public Paint OooOoO;
    public Paint OooOoO0;
    public OooO0O0 OooOoOO;
    public ViewGroup OooOoo0;

    public class OooO00o extends ViewGroup {
        public OooO00o(OooO0o oooO0o, Context context) {
            super(context);
        }

        @Override
        public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
            if (getParent() instanceof RelativeLayout) {
                return;
            }
            super.dispatchRestoreInstanceState(sparseArray);
        }

        @Override
        public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            for (int i14 = 0; i14 < getChildCount(); i14++) {
                View childAt = getChildAt(i14);
                childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
            }
        }

        @Override
        public void onMeasure(int i10, int i11) {
            View view = null;
            View view2 = null;
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                if (childAt instanceof OooO0o) {
                    view2 = childAt;
                } else {
                    view = childAt;
                }
            }
            if (view == null) {
                super.onMeasure(i10, i11);
                return;
            }
            view.measure(i10, i11);
            if (view2 != null) {
                view2.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824));
            }
            setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    public OooO0o(Context context, AttributeSet attributeSet) {
        this(context, null, 0);
    }

    private float getBadgeCircleRadius() {
        float fWidth;
        float f10;
        if (this.OooO0o.isEmpty()) {
            return this.OooO0Oo;
        }
        if (this.OooO0o.length() != 1) {
            return this.OooOOO0.height() / 2.0f;
        }
        if (this.OooOO0o.height() > this.OooOO0o.width()) {
            fWidth = this.OooOO0o.height() / 2.0f;
            f10 = this.OooO0Oo;
        } else {
            fWidth = this.OooOO0o.width() / 2.0f;
            f10 = this.OooO0Oo;
        }
        return (f10 * 0.5f) + fWidth;
    }

    public final void OooO00o() {
        setLayerType(1, null);
        this.OooOO0o = new RectF();
        this.OooOOO0 = new RectF();
        this.OooOOO = new Path();
        this.OooOOOo = new PointF();
        this.OooOOo0 = new PointF();
        this.OooOOo = new PointF();
        this.OooOOoo = new PointF();
        this.OooOo00 = new ArrayList();
        TextPaint textPaint = new TextPaint();
        this.OooOo = textPaint;
        textPaint.setAntiAlias(true);
        this.OooOo.setSubpixelText(true);
        this.OooOo.setFakeBoldText(true);
        this.OooOo.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        Paint paint = new Paint();
        this.OooOoO0 = paint;
        paint.setAntiAlias(true);
        this.OooOoO0.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.OooOoO = paint2;
        paint2.setAntiAlias(true);
        this.OooOoO.setStyle(Paint.Style.STROKE);
        this.OooO00o = -1552832;
        this.OooO0O0 = -1;
        this.OooO0OO = OooO0OO.OooO00o(getContext(), 11.0f);
        this.OooO0Oo = OooO0OO.OooO00o(getContext(), 5.0f);
        this.OooO0o0 = 0;
        this.OooO0oo = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        this.OooO = OooO0OO.OooO00o(getContext(), 1.0f);
        this.OooOO0 = OooO0OO.OooO00o(getContext(), 1.0f);
        OooO0OO.OooO00o(getContext(), 90.0f);
        this.OooO0oO = true;
        setTranslationZ(1000.0f);
    }

    public final void OooO0O0(View view) {
        if (view.getParent() instanceof View) {
            OooO0O0((View) view.getParent());
        } else if (view instanceof ViewGroup) {
            this.OooOoo0 = (ViewGroup) view;
        }
    }

    public final void OooO0OO() {
        RectF rectF = this.OooOO0o;
        rectF.left = 0.0f;
        rectF.top = 0.0f;
        if (TextUtils.isEmpty(this.OooO0o)) {
            RectF rectF2 = this.OooOO0o;
            rectF2.right = 0.0f;
            rectF2.bottom = 0.0f;
            return;
        }
        this.OooOo.setTextSize(this.OooO0OO);
        this.OooOO0o.right = this.OooOo.measureText(this.OooO0o);
        Paint.FontMetrics fontMetrics = this.OooOo.getFontMetrics();
        this.OooOOOO = fontMetrics;
        this.OooOO0o.bottom = fontMetrics.descent - fontMetrics.ascent;
    }

    public Drawable getBadgeBackground() {
        return null;
    }

    public int getBadgeBackgroundColor() {
        return this.OooO00o;
    }

    public int getBadgeGravity() {
        return this.OooO0oo;
    }

    public int getBadgeNumber() {
        return this.OooO0o0;
    }

    public String getBadgeText() {
        return this.OooO0o;
    }

    public int getBadgeTextColor() {
        return this.OooO0O0;
    }

    public PointF getDragCenter() {
        return null;
    }

    public View getTargetView() {
        return this.OooOo0;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.OooOoo0 == null) {
            View view = this.OooOo0;
            ViewGroup viewGroup = (ViewGroup) view.getRootView();
            this.OooOoo0 = viewGroup;
            if (viewGroup == null) {
                OooO0O0(view);
            }
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        OooO0O0 oooO0O0 = this.OooOoOO;
        if (oooO0O0 != null && oooO0O0.isRunning()) {
            OooO0O0 oooO0O1 = this.OooOoOO;
            for (int i10 = 0; i10 < oooO0O1.OooO00o.length; i10++) {
                int i11 = 0;
                while (true) {
                    OooO0O0.OooO00o[] oooO00oArr = oooO0O1.OooO00o[i10];
                    if (i11 < oooO00oArr.length) {
                        OooO0O0.OooO00o oooO00o = oooO00oArr[i11];
                        float f10 = Float.parseFloat(oooO0O1.getAnimatedValue().toString());
                        oooO00o.OooO0oO.setColor(oooO00o.OooO0o0);
                        oooO00o.OooO0O0 = ((oooO00o.OooO00o.nextFloat() - 0.5f) * oooO00o.OooO00o.nextInt(oooO00o.OooO0o) * 0.1f) + oooO00o.OooO0O0;
                        float fNextFloat = ((oooO00o.OooO00o.nextFloat() - 0.5f) * oooO00o.OooO00o.nextInt(oooO00o.OooO0o) * 0.1f) + oooO00o.OooO0OO;
                        oooO00o.OooO0OO = fNextFloat;
                        float f11 = oooO00o.OooO0O0;
                        float f12 = oooO00o.OooO0Oo;
                        canvas.drawCircle(f11, fNextFloat, f12 - (f10 * f12), oooO00o.OooO0oO);
                        i11++;
                    }
                }
            }
            return;
        }
        if (this.OooO0o != null) {
            OooO00o(this.OooO0oO);
            this.OooOoO0.setColor(this.OooO00o);
            this.OooOoO.setColor(0);
            this.OooOoO.setStrokeWidth(0.0f);
            this.OooOo.setColor(this.OooO0O0);
            this.OooOo.setTextAlign(Paint.Align.CENTER);
            float badgeCircleRadius = getBadgeCircleRadius();
            PointF pointF = this.OooOOo;
            PointF pointF2 = this.OooOOo0;
            Math.sqrt(Math.pow(pointF.y - pointF2.y, 2.0d) + Math.pow(pointF.x - pointF2.x, 2.0d));
            float fHeight = this.OooOO0o.height() > this.OooOO0o.width() ? this.OooOO0o.height() : this.OooOO0o.width();
            switch (this.OooO0oo) {
                case 17:
                    PointF pointF3 = this.OooOOOo;
                    pointF3.x = this.OooOo0O / 2.0f;
                    pointF3.y = this.OooOo0o / 2.0f;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    PointF pointF4 = this.OooOOOo;
                    pointF4.x = this.OooOo0O / 2.0f;
                    pointF4.y = (this.OooOO0o.height() / 2.0f) + this.OooOO0 + this.OooO0Oo;
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW:
                    PointF pointF5 = this.OooOOOo;
                    pointF5.x = this.OooOo0O / 2.0f;
                    pointF5.y = this.OooOo0o - ((this.OooOO0o.height() / 2.0f) + (this.OooOO0 + this.OooO0Oo));
                    break;
                case 8388627:
                    PointF pointF6 = this.OooOOOo;
                    pointF6.x = (fHeight / 2.0f) + this.OooO + this.OooO0Oo;
                    pointF6.y = this.OooOo0o / 2.0f;
                    break;
                case 8388629:
                    PointF pointF7 = this.OooOOOo;
                    pointF7.x = this.OooOo0O - ((fHeight / 2.0f) + (this.OooO + this.OooO0Oo));
                    pointF7.y = this.OooOo0o / 2.0f;
                    break;
                case MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START:
                    PointF pointF8 = this.OooOOOo;
                    float f13 = this.OooO;
                    float f14 = this.OooO0Oo;
                    pointF8.x = (fHeight / 2.0f) + f13 + f14;
                    pointF8.y = (this.OooOO0o.height() / 2.0f) + this.OooOO0 + f14;
                    break;
                case MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END:
                    PointF pointF9 = this.OooOOOo;
                    float f15 = this.OooOo0O;
                    float f16 = this.OooO;
                    float f17 = this.OooO0Oo;
                    pointF9.x = f15 - ((fHeight / 2.0f) + (f16 + f17));
                    pointF9.y = (this.OooOO0o.height() / 2.0f) + this.OooOO0 + f17;
                    break;
                case MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START:
                    PointF pointF10 = this.OooOOOo;
                    float f18 = this.OooO;
                    float f19 = this.OooO0Oo;
                    pointF10.x = (fHeight / 2.0f) + f18 + f19;
                    pointF10.y = this.OooOo0o - ((this.OooOO0o.height() / 2.0f) + (this.OooOO0 + f19));
                    break;
                case MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_END:
                    PointF pointF11 = this.OooOOOo;
                    float f20 = this.OooOo0O;
                    float f21 = this.OooO;
                    float f22 = this.OooO0Oo;
                    pointF11.x = f20 - ((fHeight / 2.0f) + (f21 + f22));
                    pointF11.y = this.OooOo0o - ((this.OooOO0o.height() / 2.0f) + (this.OooOO0 + f22));
                    break;
            }
            OooO0O0();
            OooO00o(canvas, this.OooOOOo, badgeCircleRadius);
        }
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.OooOo0O = i10;
        this.OooOo0o = i11;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0013  */
    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            motionEvent.getX();
            motionEvent.getY();
        } else if (actionMasked == 1 || actionMasked == 3) {
            motionEvent.getPointerId(motionEvent.getActionIndex());
        } else if (actionMasked == 5) {
            motionEvent.getX();
            motionEvent.getY();
        } else if (actionMasked == 6) {
            motionEvent.getPointerId(motionEvent.getActionIndex());
        }
        return super.onTouchEvent(motionEvent);
    }

    public OooO0o(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        OooO00o();
    }

    public final void OooO0O0() {
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        PointF pointF = this.OooOOo;
        PointF pointF2 = this.OooOOOo;
        pointF.x = pointF2.x + iArr[0];
        pointF.y = pointF2.y + iArr[1];
    }

    public com.cloud.tmc.miniapp.widget.badgeview.OooO00o OooO00o(View view) {
        if (view != null) {
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                this.OooOo0 = view;
                if (parent instanceof OooO00o) {
                    ((OooO00o) parent).addView(this);
                } else {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    int iIndexOfChild = viewGroup.indexOfChild(view);
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    viewGroup.removeView(view);
                    OooO00o oooO00o = new OooO00o(this, getContext());
                    if (viewGroup instanceof RelativeLayout) {
                        oooO00o.setId(view.getId());
                    }
                    viewGroup.addView(oooO00o, iIndexOfChild, layoutParams);
                    oooO00o.addView(view);
                    oooO00o.addView(this);
                }
                return this;
            }
            throw new IllegalStateException("targetView must have a parent");
        }
        throw new IllegalStateException("targetView can not be null");
    }

    public final void OooO00o(boolean z10) {
        int iOooO00o = OooO0OO.OooO00o(getContext(), 1.0f);
        int iOooO00o2 = OooO0OO.OooO00o(getContext(), 1.5f);
        int i10 = this.OooOO0O;
        if (i10 == 1) {
            iOooO00o = OooO0OO.OooO00o(getContext(), 1.0f);
            iOooO00o2 = OooO0OO.OooO00o(getContext(), -1.5f);
        } else if (i10 == 2) {
            iOooO00o = OooO0OO.OooO00o(getContext(), -1.0f);
            iOooO00o2 = OooO0OO.OooO00o(getContext(), -1.5f);
        } else if (i10 == 3) {
            iOooO00o = OooO0OO.OooO00o(getContext(), -1.0f);
            iOooO00o2 = OooO0OO.OooO00o(getContext(), 1.5f);
        } else if (i10 == 4) {
            iOooO00o = OooO0OO.OooO00o(getContext(), 1.0f);
            iOooO00o2 = OooO0OO.OooO00o(getContext(), 1.5f);
        }
        this.OooOoO0.setShadowLayer(z10 ? OooO0OO.OooO00o(getContext(), 2.0f) : 0.0f, iOooO00o, iOooO00o2, 855638016);
    }

    public final void OooO00o(Canvas canvas, PointF pointF, float f10) {
        if (pointF.x == -1000.0f && pointF.y == -1000.0f) {
            return;
        }
        if (!this.OooO0o.isEmpty() && this.OooO0o.length() != 1) {
            this.OooOOO0.left = pointF.x - ((this.OooOO0o.width() / 2.0f) + this.OooO0Oo);
            this.OooOOO0.top = pointF.y - ((this.OooO0Oo * 0.5f) + (this.OooOO0o.height() / 2.0f));
            this.OooOOO0.right = (this.OooOO0o.width() / 2.0f) + this.OooO0Oo + pointF.x;
            this.OooOOO0.bottom = (this.OooO0Oo * 0.5f) + (this.OooOO0o.height() / 2.0f) + pointF.y;
            float fHeight = this.OooOOO0.height() / 2.0f;
            canvas.drawRoundRect(this.OooOOO0, fHeight, fHeight, this.OooOoO0);
        } else {
            RectF rectF = this.OooOOO0;
            float f11 = pointF.x;
            float f12 = (int) f10;
            rectF.left = f11 - f12;
            float f13 = pointF.y;
            rectF.top = f13 - f12;
            rectF.right = f11 + f12;
            rectF.bottom = f12 + f13;
            canvas.drawCircle(f11, f13, f10, this.OooOoO0);
        }
        if (this.OooO0o.isEmpty()) {
            return;
        }
        String str = this.OooO0o;
        float f14 = pointF.x;
        RectF rectF2 = this.OooOOO0;
        float f15 = rectF2.bottom + rectF2.top;
        Paint.FontMetrics fontMetrics = this.OooOOOO;
        canvas.drawText(str, f14, ((f15 - fontMetrics.bottom) - fontMetrics.top) / 2.0f, this.OooOo);
    }

    public com.cloud.tmc.miniapp.widget.badgeview.OooO00o OooO00o(int i10) {
        this.OooO0o0 = i10;
        if (i10 < 0) {
            this.OooO0o = "";
        } else if (i10 > 99) {
            this.OooO0o = "99+";
        } else if (i10 > 0 && i10 <= 99) {
            this.OooO0o = String.valueOf(i10);
        } else if (i10 == 0) {
            this.OooO0o = null;
        }
        OooO0OO();
        invalidate();
        return this;
    }
}
