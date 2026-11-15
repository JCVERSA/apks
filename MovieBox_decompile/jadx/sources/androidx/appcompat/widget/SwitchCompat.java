package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class SwitchCompat extends CompoundButton {
    private static final Property S = new a(Float.class, "thumbPos");
    private static final int[] T = {R.attr.state_checked};
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private boolean H;
    private final TextPaint I;
    private ColorStateList J;
    private Layout K;
    private Layout L;
    private TransformationMethod M;
    ObjectAnimator N;
    private final AppCompatTextHelper O;
    private h P;
    private b Q;
    private final Rect R;

    private Drawable f1577a;

    private ColorStateList f1578b;

    private PorterDuff.Mode f1579c;

    private boolean f1580d;

    private boolean f1581e;

    private Drawable f1582f;

    private ColorStateList f1583g;

    private PorterDuff.Mode f1584h;

    private boolean f1585i;

    private boolean f1586j;

    private int f1587k;

    private int f1588l;

    private int f1589m;

    private boolean f1590n;

    private CharSequence f1591o;

    private CharSequence f1592p;

    private CharSequence f1593q;

    private CharSequence f1594r;

    private boolean f1595s;

    private int f1596t;

    private int f1597u;

    private float f1598v;

    private float f1599w;

    private VelocityTracker f1600x;

    private int f1601y;

    float f1602z;

    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f1602z);
        }

        @Override
        public void set(SwitchCompat switchCompat, Float f10) {
            switchCompat.setThumbPosition(f10.floatValue());
        }
    }

    static class b extends EmojiCompat.f {

        private final Reference f1603a;

        b(SwitchCompat switchCompat) {
            this.f1603a = new WeakReference(switchCompat);
        }

        @Override
        public void a(Throwable th2) {
            SwitchCompat switchCompat = (SwitchCompat) this.f1603a.get();
            if (switchCompat != null) {
                switchCompat.j();
            }
        }

        @Override
        public void b() {
            SwitchCompat switchCompat = (SwitchCompat) this.f1603a.get();
            if (switchCompat != null) {
                switchCompat.j();
            }
        }
    }

    public SwitchCompat(@NonNull Context context) {
        this(context, null);
    }

    private void a(boolean z10) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<SwitchCompat, Float>) S, z10 ? 1.0f : 0.0f);
        this.N = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(250L);
        this.N.setAutoCancel(true);
        this.N.start();
    }

    private void b() {
        Drawable drawable = this.f1577a;
        if (drawable != null) {
            if (this.f1580d || this.f1581e) {
                Drawable drawableMutate = a1.a.r(drawable).mutate();
                this.f1577a = drawableMutate;
                if (this.f1580d) {
                    a1.a.o(drawableMutate, this.f1578b);
                }
                if (this.f1581e) {
                    a1.a.p(this.f1577a, this.f1579c);
                }
                if (this.f1577a.isStateful()) {
                    this.f1577a.setState(getDrawableState());
                }
            }
        }
    }

    private void c() {
        Drawable drawable = this.f1582f;
        if (drawable != null) {
            if (this.f1585i || this.f1586j) {
                Drawable drawableMutate = a1.a.r(drawable).mutate();
                this.f1582f = drawableMutate;
                if (this.f1585i) {
                    a1.a.o(drawableMutate, this.f1583g);
                }
                if (this.f1586j) {
                    a1.a.p(this.f1582f, this.f1584h);
                }
                if (this.f1582f.isStateful()) {
                    this.f1582f.setState(getDrawableState());
                }
            }
        }
    }

    private void d() {
        ObjectAnimator objectAnimator = this.N;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private void e(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setAction(3);
        super.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    private static float f(float f10, float f11, float f12) {
        if (f10 < f11) {
            return f11;
        }
        return f10 > f12 ? f12 : f10;
    }

    private CharSequence g(CharSequence charSequence) {
        TransformationMethod transformationMethodF = getEmojiTextViewHelper().f(this.M);
        return transformationMethodF != null ? transformationMethodF.getTransformation(charSequence, this) : charSequence;
    }

    @NonNull
    private h getEmojiTextViewHelper() {
        if (this.P == null) {
            this.P = new h(this);
        }
        return this.P;
    }

    private boolean getTargetCheckedState() {
        return this.f1602z > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((u0.b(this) ? 1.0f - this.f1602z : this.f1602z) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f1582f;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.R;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f1577a;
        Rect rectD = drawable2 != null ? y.d(drawable2) : y.f1817c;
        return ((((this.A - this.C) - rect.left) - rect.right) - rectD.left) - rectD.right;
    }

    private boolean h(float f10, float f11) {
        if (this.f1577a == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f1577a.getPadding(this.R);
        int i10 = this.E;
        int i11 = this.f1597u;
        int i12 = i10 - i11;
        int i13 = (this.D + thumbOffset) - i11;
        int i14 = this.C + i13;
        Rect rect = this.R;
        return f10 > ((float) i13) && f10 < ((float) (((i14 + rect.left) + rect.right) + i11)) && f11 > ((float) i12) && f11 < ((float) (this.G + i11));
    }

    private Layout i(CharSequence charSequence) {
        TextPaint textPaint = this.I;
        return new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    private void k() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence string = this.f1593q;
            if (string == null) {
                string = getResources().getString(R$string.abc_capital_off);
            }
            ViewCompat.setStateDescription(this, string);
        }
    }

    private void l() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence string = this.f1591o;
            if (string == null) {
                string = getResources().getString(R$string.abc_capital_on);
            }
            ViewCompat.setStateDescription(this, string);
        }
    }

    private void m(int i10, int i11) {
        Typeface typeface;
        if (i10 == 1) {
            typeface = Typeface.SANS_SERIF;
        } else if (i10 != 2) {
            typeface = i10 != 3 ? null : Typeface.MONOSPACE;
        } else {
            typeface = Typeface.SERIF;
        }
        setSwitchTypeface(typeface, i11);
    }

    private void n() {
        if (this.Q == null && this.P.b() && EmojiCompat.i()) {
            EmojiCompat emojiCompatC = EmojiCompat.c();
            int iE = emojiCompatC.e();
            if (iE == 3 || iE == 0) {
                b bVar = new b(this);
                this.Q = bVar;
                emojiCompatC.t(bVar);
            }
        }
    }

    private void o(MotionEvent motionEvent) {
        this.f1596t = 0;
        boolean targetCheckedState = true;
        boolean z10 = motionEvent.getAction() == 1 && isEnabled();
        boolean zIsChecked = isChecked();
        if (z10) {
            this.f1600x.computeCurrentVelocity(1000);
            float xVelocity = this.f1600x.getXVelocity();
            if (Math.abs(xVelocity) <= this.f1601y) {
                targetCheckedState = getTargetCheckedState();
            } else if (!u0.b(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                targetCheckedState = false;
            }
        } else {
            targetCheckedState = zIsChecked;
        }
        if (targetCheckedState != zIsChecked) {
            playSoundEffect(0);
        }
        setChecked(targetCheckedState);
        e(motionEvent);
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f1593q = charSequence;
        this.f1594r = g(charSequence);
        this.L = null;
        if (this.f1595s) {
            n();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f1591o = charSequence;
        this.f1592p = g(charSequence);
        this.K = null;
        if (this.f1595s) {
            n();
        }
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        int i10;
        int i11;
        Rect rect = this.R;
        int i12 = this.D;
        int i13 = this.E;
        int i14 = this.F;
        int i15 = this.G;
        int thumbOffset = getThumbOffset() + i12;
        Drawable drawable = this.f1577a;
        Rect rectD = drawable != null ? y.d(drawable) : y.f1817c;
        Drawable drawable2 = this.f1582f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i16 = rect.left;
            thumbOffset += i16;
            if (rectD != null) {
                int i17 = rectD.left;
                if (i17 > i16) {
                    i12 += i17 - i16;
                }
                int i18 = rectD.top;
                int i19 = rect.top;
                i10 = i18 > i19 ? (i18 - i19) + i13 : i13;
                int i20 = rectD.right;
                int i21 = rect.right;
                if (i20 > i21) {
                    i14 -= i20 - i21;
                }
                int i22 = rectD.bottom;
                int i23 = rect.bottom;
                if (i22 > i23) {
                    i11 = i15 - (i22 - i23);
                }
                this.f1582f.setBounds(i12, i10, i14, i11);
            } else {
                i10 = i13;
            }
            i11 = i15;
            this.f1582f.setBounds(i12, i10, i14, i11);
        }
        Drawable drawable3 = this.f1577a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i24 = thumbOffset - rect.left;
            int i25 = thumbOffset + this.C + rect.right;
            this.f1577a.setBounds(i24, i13, i25, i15);
            Drawable background = getBackground();
            if (background != null) {
                a1.a.l(background, i24, i13, i25, i15);
            }
        }
        super.draw(canvas);
    }

    @Override
    public void drawableHotspotChanged(float f10, float f11) {
        super.drawableHotspotChanged(f10, f11);
        Drawable drawable = this.f1577a;
        if (drawable != null) {
            a1.a.k(drawable, f10, f11);
        }
        Drawable drawable2 = this.f1582f;
        if (drawable2 != null) {
            a1.a.k(drawable2, f10, f11);
        }
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1577a;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f1582f;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override
    public int getCompoundPaddingLeft() {
        if (!u0.b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f1589m : compoundPaddingLeft;
    }

    @Override
    public int getCompoundPaddingRight() {
        if (u0.b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f1589m : compoundPaddingRight;
    }

    @Override
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.l.r(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f1595s;
    }

    public boolean getSplitTrack() {
        return this.f1590n;
    }

    public int getSwitchMinWidth() {
        return this.f1588l;
    }

    public int getSwitchPadding() {
        return this.f1589m;
    }

    public CharSequence getTextOff() {
        return this.f1593q;
    }

    public CharSequence getTextOn() {
        return this.f1591o;
    }

    public Drawable getThumbDrawable() {
        return this.f1577a;
    }

    protected final float getThumbPosition() {
        return this.f1602z;
    }

    public int getThumbTextPadding() {
        return this.f1587k;
    }

    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f1578b;
    }

    @Nullable
    public PorterDuff.Mode getThumbTintMode() {
        return this.f1579c;
    }

    public Drawable getTrackDrawable() {
        return this.f1582f;
    }

    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f1583g;
    }

    @Nullable
    public PorterDuff.Mode getTrackTintMode() {
        return this.f1584h;
    }

    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().b();
    }

    void j() {
        setTextOnInternal(this.f1591o);
        setTextOffInternal(this.f1593q);
        requestLayout();
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1577a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1582f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.N;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.N.end();
        this.N = null;
    }

    @Override
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, T);
        }
        return iArrOnCreateDrawableState;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.R;
        Drawable drawable = this.f1582f;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i10 = this.E;
        int i11 = this.G;
        int i12 = i10 + rect.top;
        int i13 = i11 - rect.bottom;
        Drawable drawable2 = this.f1577a;
        if (drawable != null) {
            if (!this.f1590n || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectD = y.d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectD.left;
                rect.right -= rectD.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.K : this.L;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.J;
            if (colorStateList != null) {
                this.I.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.I.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i12 + i13) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f1591o : this.f1593q;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(text);
            sb2.append(' ');
            sb2.append(charSequence);
            accessibilityNodeInfo.setText(sb2);
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int iMax;
        int width;
        int paddingLeft;
        int i14;
        int paddingTop;
        int height;
        super.onLayout(z10, i10, i11, i12, i13);
        int iMax2 = 0;
        if (this.f1577a != null) {
            Rect rect = this.R;
            Drawable drawable = this.f1582f;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectD = y.d(this.f1577a);
            iMax = Math.max(0, rectD.left - rect.left);
            iMax2 = Math.max(0, rectD.right - rect.right);
        } else {
            iMax = 0;
        }
        if (u0.b(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.A + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.A) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity != 16) {
            if (gravity != 80) {
                paddingTop = getPaddingTop();
                i14 = this.B;
            } else {
                height = getHeight() - getPaddingBottom();
                paddingTop = height - this.B;
            }
            this.D = paddingLeft;
            this.E = paddingTop;
            this.G = height;
            this.F = width;
        }
        int paddingTop2 = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
        i14 = this.B;
        paddingTop = paddingTop2 - (i14 / 2);
        height = i14 + paddingTop;
        this.D = paddingLeft;
        this.E = paddingTop;
        this.G = height;
        this.F = width;
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int intrinsicWidth;
        int intrinsicHeight;
        if (this.f1595s) {
            if (this.K == null) {
                this.K = i(this.f1592p);
            }
            if (this.L == null) {
                this.L = i(this.f1594r);
            }
        }
        Rect rect = this.R;
        Drawable drawable = this.f1577a;
        int intrinsicHeight2 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f1577a.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f1577a.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        this.C = Math.max(this.f1595s ? Math.max(this.K.getWidth(), this.L.getWidth()) + (this.f1587k * 2) : 0, intrinsicWidth);
        Drawable drawable2 = this.f1582f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f1582f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax = rect.left;
        int iMax2 = rect.right;
        Drawable drawable3 = this.f1577a;
        if (drawable3 != null) {
            Rect rectD = y.d(drawable3);
            iMax = Math.max(iMax, rectD.left);
            iMax2 = Math.max(iMax2, rectD.right);
        }
        int iMax3 = this.H ? Math.max(this.f1588l, (this.C * 2) + iMax + iMax2) : this.f1588l;
        int iMax4 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.A = iMax3;
        this.B = iMax4;
        super.onMeasure(i10, i11);
        if (getMeasuredHeight() < iMax4) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax4);
        }
    }

    @Override
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f1591o : this.f1593q;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0089  */
    /* JADX WARN: Code duplicated, block: B:36:0x008d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0094  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f10;
        this.f1600x.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (isEnabled() && h(x10, y10)) {
                this.f1596t = 1;
                this.f1598v = x10;
                this.f1599w = y10;
            }
        } else if (actionMasked == 1) {
            if (this.f1596t == 2) {
                o(motionEvent);
                super.onTouchEvent(motionEvent);
                return true;
            }
            this.f1596t = 0;
            this.f1600x.clear();
        } else if (actionMasked == 2) {
            int i10 = this.f1596t;
            if (i10 == 1) {
                float x11 = motionEvent.getX();
                float y11 = motionEvent.getY();
                if (Math.abs(x11 - this.f1598v) > this.f1597u || Math.abs(y11 - this.f1599w) > this.f1597u) {
                    this.f1596t = 2;
                    getParent().requestDisallowInterceptTouchEvent(true);
                    this.f1598v = x11;
                    this.f1599w = y11;
                    return true;
                }
            } else if (i10 == 2) {
                float x12 = motionEvent.getX();
                int thumbScrollRange = getThumbScrollRange();
                float f11 = x12 - this.f1598v;
                if (thumbScrollRange != 0) {
                    f10 = f11 / thumbScrollRange;
                } else {
                    f10 = f11 > 0.0f ? 1.0f : -1.0f;
                }
                if (u0.b(this)) {
                    f10 = -f10;
                }
                float f12 = f(this.f1602z + f10, 0.0f, 1.0f);
                if (f12 != this.f1602z) {
                    this.f1598v = x12;
                    setThumbPosition(f12);
                }
                return true;
            }
        } else if (actionMasked == 3) {
            if (this.f1596t == 2) {
                o(motionEvent);
                super.onTouchEvent(motionEvent);
                return true;
            }
            this.f1596t = 0;
            this.f1600x.clear();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override
    public void setChecked(boolean z10) {
        super.setChecked(z10);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            l();
        } else {
            k();
        }
        if (getWindowToken() != null && isLaidOut()) {
            a(zIsChecked);
        } else {
            d();
            setThumbPosition(zIsChecked ? 1.0f : 0.0f);
        }
    }

    @Override
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.l.s(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
        setTextOnInternal(this.f1591o);
        setTextOffInternal(this.f1593q);
        requestLayout();
    }

    protected final void setEnforceSwitchWidth(boolean z10) {
        this.H = z10;
        invalidate();
    }

    @Override
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setShowText(boolean z10) {
        if (this.f1595s != z10) {
            this.f1595s = z10;
            requestLayout();
            if (z10) {
                n();
            }
        }
    }

    public void setSplitTrack(boolean z10) {
        this.f1590n = z10;
        invalidate();
    }

    public void setSwitchMinWidth(int i10) {
        this.f1588l = i10;
        requestLayout();
    }

    public void setSwitchPadding(int i10) {
        this.f1589m = i10;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i10) {
        j0 j0VarT = j0.t(context, i10, R$styleable.TextAppearance);
        ColorStateList colorStateListC = j0VarT.c(R$styleable.TextAppearance_android_textColor);
        if (colorStateListC != null) {
            this.J = colorStateListC;
        } else {
            this.J = getTextColors();
        }
        int iF = j0VarT.f(R$styleable.TextAppearance_android_textSize, 0);
        if (iF != 0) {
            float f10 = iF;
            if (f10 != this.I.getTextSize()) {
                this.I.setTextSize(f10);
                requestLayout();
            }
        }
        m(j0VarT.k(R$styleable.TextAppearance_android_typeface, -1), j0VarT.k(R$styleable.TextAppearance_android_textStyle, -1));
        if (j0VarT.a(R$styleable.TextAppearance_textAllCaps, false)) {
            this.M = new i.a(getContext());
        } else {
            this.M = null;
        }
        setTextOnInternal(this.f1591o);
        setTextOffInternal(this.f1593q);
        j0VarT.x();
    }

    public void setSwitchTypeface(Typeface typeface, int i10) {
        if (i10 <= 0) {
            this.I.setFakeBoldText(false);
            this.I.setTextSkewX(0.0f);
            setSwitchTypeface(typeface);
        } else {
            Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i10) : Typeface.create(typeface, i10);
            setSwitchTypeface(typefaceDefaultFromStyle);
            int i11 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i10;
            this.I.setFakeBoldText((i11 & 1) != 0);
            this.I.setTextSkewX((i11 & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            return;
        }
        k();
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            l();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1577a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1577a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f10) {
        this.f1602z = f10;
        invalidate();
    }

    public void setThumbResource(int i10) {
        setThumbDrawable(g.a.b(getContext(), i10));
    }

    public void setThumbTextPadding(int i10) {
        this.f1587k = i10;
        requestLayout();
    }

    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f1578b = colorStateList;
        this.f1580d = true;
        b();
    }

    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1579c = mode;
        this.f1581e = true;
        b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1582f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1582f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i10) {
        setTrackDrawable(g.a.b(getContext(), i10));
    }

    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f1583g = colorStateList;
        this.f1585i = true;
        c();
    }

    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1584h = mode;
        this.f1586j = true;
        c();
    }

    @Override
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1577a || drawable == this.f1582f;
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.switchStyle);
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1578b = null;
        this.f1579c = null;
        this.f1580d = false;
        this.f1581e = false;
        this.f1583g = null;
        this.f1584h = null;
        this.f1585i = false;
        this.f1586j = false;
        this.f1600x = VelocityTracker.obtain();
        this.H = true;
        this.R = new Rect();
        f0.a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.I = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.SwitchCompat, i10, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.SwitchCompat, attributeSet, j0VarV.r(), i10, 0);
        Drawable drawableG = j0VarV.g(R$styleable.SwitchCompat_android_thumb);
        this.f1577a = drawableG;
        if (drawableG != null) {
            drawableG.setCallback(this);
        }
        Drawable drawableG2 = j0VarV.g(R$styleable.SwitchCompat_track);
        this.f1582f = drawableG2;
        if (drawableG2 != null) {
            drawableG2.setCallback(this);
        }
        setTextOnInternal(j0VarV.p(R$styleable.SwitchCompat_android_textOn));
        setTextOffInternal(j0VarV.p(R$styleable.SwitchCompat_android_textOff));
        this.f1595s = j0VarV.a(R$styleable.SwitchCompat_showText, true);
        this.f1587k = j0VarV.f(R$styleable.SwitchCompat_thumbTextPadding, 0);
        this.f1588l = j0VarV.f(R$styleable.SwitchCompat_switchMinWidth, 0);
        this.f1589m = j0VarV.f(R$styleable.SwitchCompat_switchPadding, 0);
        this.f1590n = j0VarV.a(R$styleable.SwitchCompat_splitTrack, false);
        ColorStateList colorStateListC = j0VarV.c(R$styleable.SwitchCompat_thumbTint);
        if (colorStateListC != null) {
            this.f1578b = colorStateListC;
            this.f1580d = true;
        }
        PorterDuff.Mode modeE = y.e(j0VarV.k(R$styleable.SwitchCompat_thumbTintMode, -1), null);
        if (this.f1579c != modeE) {
            this.f1579c = modeE;
            this.f1581e = true;
        }
        if (this.f1580d || this.f1581e) {
            b();
        }
        ColorStateList colorStateListC2 = j0VarV.c(R$styleable.SwitchCompat_trackTint);
        if (colorStateListC2 != null) {
            this.f1583g = colorStateListC2;
            this.f1585i = true;
        }
        PorterDuff.Mode modeE2 = y.e(j0VarV.k(R$styleable.SwitchCompat_trackTintMode, -1), null);
        if (this.f1584h != modeE2) {
            this.f1584h = modeE2;
            this.f1586j = true;
        }
        if (this.f1585i || this.f1586j) {
            c();
        }
        int iN = j0VarV.n(R$styleable.SwitchCompat_switchTextAppearance, 0);
        if (iN != 0) {
            setSwitchTextAppearance(context, iN);
        }
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.O = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i10);
        j0VarV.x();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1597u = viewConfiguration.getScaledTouchSlop();
        this.f1601y = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().c(attributeSet, i10);
        refreshDrawableState();
        setChecked(isChecked());
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.I.getTypeface() == null || this.I.getTypeface().equals(typeface)) && (this.I.getTypeface() != null || typeface == null)) {
            return;
        }
        this.I.setTypeface(typeface);
        requestLayout();
        invalidate();
    }
}
