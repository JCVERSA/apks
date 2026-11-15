package androidx.media3.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

public class DefaultTimeBar extends View implements y0 {
    public static final int BAR_GRAVITY_BOTTOM = 1;
    public static final int BAR_GRAVITY_CENTER = 0;
    public static final int DEFAULT_AD_MARKER_COLOR = -1291845888;
    public static final int DEFAULT_AD_MARKER_WIDTH_DP = 4;
    public static final int DEFAULT_BAR_HEIGHT_DP = 4;
    public static final int DEFAULT_BUFFERED_COLOR = -855638017;
    public static final int DEFAULT_PLAYED_AD_MARKER_COLOR = 872414976;
    public static final int DEFAULT_PLAYED_COLOR = -1;
    public static final int DEFAULT_SCRUBBER_COLOR = -1;
    public static final int DEFAULT_SCRUBBER_DISABLED_SIZE_DP = 0;
    public static final int DEFAULT_SCRUBBER_DRAGGED_SIZE_DP = 16;
    public static final int DEFAULT_SCRUBBER_ENABLED_SIZE_DP = 12;
    public static final int DEFAULT_TOUCH_TARGET_HEIGHT_DP = 26;
    public static final int DEFAULT_UNPLAYED_COLOR = 872415231;
    private int A;
    private long B;
    private int C;
    private Rect D;
    private ValueAnimator E;
    private float F;
    private boolean G;
    private boolean H;
    private long I;
    private long J;
    private long K;
    private long L;
    private int M;
    private long[] N;
    private boolean[] O;

    private final Rect f13123a;

    private final Rect f13124b;

    private final Rect f13125c;

    private final Rect f13126d;

    private final Paint f13127e;

    private final Paint f13128f;

    private final Paint f13129g;

    private final Paint f13130h;

    private final Paint f13131i;

    private final Paint f13132j;

    private final Drawable f13133k;

    private final int f13134l;

    private final int f13135m;

    private final int f13136n;

    private final int f13137o;

    private final int f13138p;

    private final int f13139q;

    private final int f13140r;

    private final int f13141s;

    private final int f13142t;

    private final StringBuilder f13143u;

    private final Formatter f13144v;

    private final Runnable f13145w;

    private final CopyOnWriteArraySet f13146x;

    private final Point f13147y;

    private final float f13148z;

    public DefaultTimeBar(Context context) {
        this(context, null);
    }

    private static int c(float f10, int i10) {
        return (int) ((i10 * f10) + 0.5f);
    }

    private void d(Canvas canvas) {
        int i10;
        if (this.J <= 0) {
            return;
        }
        Rect rect = this.f13126d;
        int iP = androidx.media3.common.util.a1.p(rect.right, rect.left, this.f13124b.right);
        int iCenterY = this.f13126d.centerY();
        Drawable drawable = this.f13133k;
        if (drawable == null) {
            if (this.H || isFocused()) {
                i10 = this.f13140r;
            } else {
                i10 = isEnabled() ? this.f13138p : this.f13139q;
            }
            canvas.drawCircle(iP, iCenterY, (int) ((i10 * this.F) / 2.0f), this.f13132j);
            return;
        }
        int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.F)) / 2;
        int intrinsicHeight = ((int) (this.f13133k.getIntrinsicHeight() * this.F)) / 2;
        this.f13133k.setBounds(iP - intrinsicWidth, iCenterY - intrinsicHeight, iP + intrinsicWidth, iCenterY + intrinsicHeight);
        this.f13133k.draw(canvas);
    }

    private void e(Canvas canvas) {
        int iHeight = this.f13124b.height();
        int iCenterY = this.f13124b.centerY() - (iHeight / 2);
        int i10 = iHeight + iCenterY;
        if (this.J <= 0) {
            Rect rect = this.f13124b;
            canvas.drawRect(rect.left, iCenterY, rect.right, i10, this.f13129g);
            return;
        }
        Rect rect2 = this.f13125c;
        int i11 = rect2.left;
        int i12 = rect2.right;
        int iMax = Math.max(Math.max(this.f13124b.left, i12), this.f13126d.right);
        int i13 = this.f13124b.right;
        if (iMax < i13) {
            canvas.drawRect(iMax, iCenterY, i13, i10, this.f13129g);
        }
        int iMax2 = Math.max(i11, this.f13126d.right);
        if (i12 > iMax2) {
            canvas.drawRect(iMax2, iCenterY, i12, i10, this.f13128f);
        }
        if (this.f13126d.width() > 0) {
            Rect rect3 = this.f13126d;
            canvas.drawRect(rect3.left, iCenterY, rect3.right, i10, this.f13127e);
        }
        if (this.M == 0) {
            return;
        }
        long[] jArr = (long[]) androidx.media3.common.util.a.e(this.N);
        boolean[] zArr = (boolean[]) androidx.media3.common.util.a.e(this.O);
        int i14 = this.f13137o / 2;
        for (int i15 = 0; i15 < this.M; i15++) {
            int iWidth = ((int) ((((long) this.f13124b.width()) * androidx.media3.common.util.a1.q(jArr[i15], 0L, this.J)) / this.J)) - i14;
            Rect rect4 = this.f13124b;
            int iMin = rect4.left + Math.min(rect4.width() - this.f13137o, Math.max(0, iWidth));
            canvas.drawRect(iMin, iCenterY, iMin + this.f13137o, i10, zArr[i15] ? this.f13131i : this.f13130h);
        }
    }

    private boolean f(float f10, float f11) {
        return this.f13123a.contains((int) f10, (int) f11);
    }

    public void g() {
        q(false);
    }

    private long getPositionIncrement() {
        long j10 = this.B;
        if (j10 != C.TIME_UNSET) {
            return j10;
        }
        long j11 = this.J;
        if (j11 == C.TIME_UNSET) {
            return 0L;
        }
        return j11 / ((long) this.A);
    }

    private String getProgressText() {
        return androidx.media3.common.util.a1.o0(this.f13143u, this.f13144v, this.K);
    }

    private long getScrubberPosition() {
        if (this.f13124b.width() <= 0 || this.J == C.TIME_UNSET) {
            return 0L;
        }
        return (((long) this.f13126d.width()) * this.J) / ((long) this.f13124b.width());
    }

    public void h(ValueAnimator valueAnimator) {
        this.F = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.f13123a);
    }

    private void i(float f10) {
        Rect rect = this.f13126d;
        Rect rect2 = this.f13124b;
        rect.right = androidx.media3.common.util.a1.p((int) f10, rect2.left, rect2.right);
    }

    private static int j(float f10, int i10) {
        return (int) (i10 / f10);
    }

    private Point k(MotionEvent motionEvent) {
        this.f13147y.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return this.f13147y;
    }

    private boolean l(long j10) {
        long j11 = this.J;
        if (j11 <= 0) {
            return false;
        }
        long j12 = this.H ? this.I : this.K;
        long jQ = androidx.media3.common.util.a1.q(j12 + j10, 0L, j11);
        if (jQ == j12) {
            return false;
        }
        if (this.H) {
            t(jQ);
        } else {
            p(jQ);
        }
        r();
        return true;
    }

    private boolean m(Drawable drawable) {
        return androidx.media3.common.util.a1.f10038a >= 23 && n(drawable, getLayoutDirection());
    }

    private static boolean n(Drawable drawable, int i10) {
        return androidx.media3.common.util.a1.f10038a >= 23 && drawable.setLayoutDirection(i10);
    }

    private void o(int i10, int i11) {
        Rect rect = this.D;
        if (rect != null && rect.width() == i10 && this.D.height() == i11) {
            return;
        }
        Rect rect2 = new Rect(0, 0, i10, i11);
        this.D = rect2;
        setSystemGestureExclusionRects(Collections.singletonList(rect2));
    }

    private void p(long j10) {
        this.I = j10;
        this.H = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator it = this.f13146x.iterator();
        while (it.hasNext()) {
            ((y0.a) it.next()).l(this, j10);
        }
    }

    private void q(boolean z10) {
        removeCallbacks(this.f13145w);
        this.H = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator it = this.f13146x.iterator();
        while (it.hasNext()) {
            ((y0.a) it.next()).r(this, this.I, z10);
        }
    }

    private void r() {
        this.f13125c.set(this.f13124b);
        this.f13126d.set(this.f13124b);
        long j10 = this.H ? this.I : this.K;
        if (this.J > 0) {
            int iWidth = (int) ((((long) this.f13124b.width()) * this.L) / this.J);
            Rect rect = this.f13125c;
            Rect rect2 = this.f13124b;
            rect.right = Math.min(rect2.left + iWidth, rect2.right);
            int iWidth2 = (int) ((((long) this.f13124b.width()) * j10) / this.J);
            Rect rect3 = this.f13126d;
            Rect rect4 = this.f13124b;
            rect3.right = Math.min(rect4.left + iWidth2, rect4.right);
        } else {
            Rect rect5 = this.f13125c;
            int i10 = this.f13124b.left;
            rect5.right = i10;
            this.f13126d.right = i10;
        }
        invalidate(this.f13123a);
    }

    private void s() {
        Drawable drawable = this.f13133k;
        if (drawable != null && drawable.isStateful() && this.f13133k.setState(getDrawableState())) {
            invalidate();
        }
    }

    private void t(long j10) {
        if (this.I == j10) {
            return;
        }
        this.I = j10;
        Iterator it = this.f13146x.iterator();
        while (it.hasNext()) {
            ((y0.a) it.next()).p(this, j10);
        }
    }

    @Override
    public void addListener(y0.a aVar) {
        androidx.media3.common.util.a.e(aVar);
        this.f13146x.add(aVar);
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        s();
    }

    @Override
    public long getPreferredUpdateDelay() {
        int iJ = j(this.f13148z, this.f13124b.width());
        if (iJ != 0) {
            long j10 = this.J;
            if (j10 != 0 && j10 != C.TIME_UNSET) {
                return j10 / ((long) iJ);
            }
        }
        return Long.MAX_VALUE;
    }

    public void hideScrubber(boolean z10) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = z10;
        this.F = 0.0f;
        invalidate(this.f13123a);
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f13133k;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        canvas.save();
        e(canvas);
        d(canvas);
        canvas.restore();
    }

    @Override
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (!this.H || z10) {
            return;
        }
        q(false);
    }

    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.J <= 0) {
            return;
        }
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:15:0x002b  */
    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (isEnabled()) {
            long positionIncrement = getPositionIncrement();
            if (i10 != 66) {
                switch (i10) {
                    case 21:
                        positionIncrement = -positionIncrement;
                        if (l(positionIncrement)) {
                            removeCallbacks(this.f13145w);
                            postDelayed(this.f13145w, 1000L);
                            return true;
                        }
                        break;
                    case 22:
                        if (l(positionIncrement)) {
                            removeCallbacks(this.f13145w);
                            postDelayed(this.f13145w, 1000L);
                            return true;
                        }
                        break;
                    case 23:
                        if (this.H) {
                            q(false);
                            return true;
                        }
                        break;
                }
            } else if (this.H) {
                q(false);
                return true;
            }
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int paddingBottom;
        int iMax;
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i14 - getPaddingRight();
        int i16 = this.G ? 0 : this.f13141s;
        if (this.f13136n == 1) {
            paddingBottom = (i15 - getPaddingBottom()) - this.f13135m;
            int paddingBottom2 = i15 - getPaddingBottom();
            int i17 = this.f13134l;
            iMax = (paddingBottom2 - i17) - Math.max(i16 - (i17 / 2), 0);
        } else {
            paddingBottom = (i15 - this.f13135m) / 2;
            iMax = (i15 - this.f13134l) / 2;
        }
        this.f13123a.set(paddingLeft, paddingBottom, paddingRight, this.f13135m + paddingBottom);
        Rect rect = this.f13124b;
        Rect rect2 = this.f13123a;
        rect.set(rect2.left + i16, iMax, rect2.right - i16, this.f13134l + iMax);
        if (androidx.media3.common.util.a1.f10038a >= 29) {
            o(i14, i15);
        }
        r();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == 0) {
            size = this.f13135m;
        } else if (mode != 1073741824) {
            size = Math.min(this.f13135m, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i10), size);
        s();
    }

    @Override
    public void onRtlPropertiesChanged(int i10) {
        Drawable drawable = this.f13133k;
        if (drawable == null || !n(drawable, i10)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0052  */
    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.J > 0) {
            Point pointK = k(motionEvent);
            int i10 = pointK.x;
            int i11 = pointK.y;
            int action = motionEvent.getAction();
            if (action == 0) {
                float f10 = i10;
                if (f(f10, i11)) {
                    i(f10);
                    p(getScrubberPosition());
                    r();
                    invalidate();
                    return true;
                }
            } else if (action == 1) {
                if (this.H) {
                    q(motionEvent.getAction() == 3);
                    return true;
                }
            } else if (action != 2) {
                if (action == 3) {
                    if (this.H) {
                        q(motionEvent.getAction() == 3);
                        return true;
                    }
                }
            } else if (this.H) {
                if (i11 < this.f13142t) {
                    int i12 = this.C;
                    i(i12 + ((i10 - i12) / 3));
                } else {
                    this.C = i10;
                    i(i10);
                }
                t(getScrubberPosition());
                r();
                invalidate();
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean performAccessibilityAction(int i10, @Nullable Bundle bundle) {
        if (super.performAccessibilityAction(i10, bundle)) {
            return true;
        }
        if (this.J <= 0) {
            return false;
        }
        if (i10 == 8192) {
            if (l(-getPositionIncrement())) {
                q(false);
            }
        } else {
            if (i10 != 4096) {
                return false;
            }
            if (l(getPositionIncrement())) {
                q(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void removeListener(y0.a aVar) {
        this.f13146x.remove(aVar);
    }

    @Override
    public void setAdGroupTimesMs(@Nullable long[] jArr, @Nullable boolean[] zArr, int i10) {
        androidx.media3.common.util.a.a(i10 == 0 || !(jArr == null || zArr == null));
        this.M = i10;
        this.N = jArr;
        this.O = zArr;
        r();
    }

    public void setAdMarkerColor(int i10) {
        this.f13130h.setColor(i10);
        invalidate(this.f13123a);
    }

    public void setBufferedColor(int i10) {
        this.f13128f.setColor(i10);
        invalidate(this.f13123a);
    }

    @Override
    public void setBufferedPosition(long j10) {
        if (this.L == j10) {
            return;
        }
        this.L = j10;
        r();
    }

    @Override
    public void setDuration(long j10) {
        if (this.J == j10) {
            return;
        }
        this.J = j10;
        if (this.H && j10 == C.TIME_UNSET) {
            q(true);
        }
        r();
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        if (!this.H || z10) {
            return;
        }
        q(true);
    }

    public void setKeyCountIncrement(int i10) {
        androidx.media3.common.util.a.a(i10 > 0);
        this.A = i10;
        this.B = C.TIME_UNSET;
    }

    public void setKeyTimeIncrement(long j10) {
        androidx.media3.common.util.a.a(j10 > 0);
        this.A = -1;
        this.B = j10;
    }

    public void setPlayedAdMarkerColor(int i10) {
        this.f13131i.setColor(i10);
        invalidate(this.f13123a);
    }

    public void setPlayedColor(int i10) {
        this.f13127e.setColor(i10);
        invalidate(this.f13123a);
    }

    @Override
    public void setPosition(long j10) {
        if (this.K == j10) {
            return;
        }
        this.K = j10;
        setContentDescription(getProgressText());
        r();
    }

    public void setScrubberColor(int i10) {
        this.f13132j.setColor(i10);
        invalidate(this.f13123a);
    }

    public void setUnplayedColor(int i10) {
        this.f13129g.setColor(i10);
        invalidate(this.f13123a);
    }

    public void showScrubber() {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = false;
        this.F = 1.0f;
        invalidate(this.f13123a);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        this(context, attributeSet, i10, attributeSet2, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2, int i11) {
        super(context, attributeSet, i10);
        this.f13123a = new Rect();
        this.f13124b = new Rect();
        this.f13125c = new Rect();
        this.f13126d = new Rect();
        Paint paint = new Paint();
        this.f13127e = paint;
        Paint paint2 = new Paint();
        this.f13128f = paint2;
        Paint paint3 = new Paint();
        this.f13129g = paint3;
        Paint paint4 = new Paint();
        this.f13130h = paint4;
        Paint paint5 = new Paint();
        this.f13131i = paint5;
        Paint paint6 = new Paint();
        this.f13132j = paint6;
        paint6.setAntiAlias(true);
        this.f13146x = new CopyOnWriteArraySet();
        this.f13147y = new Point();
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f13148z = f10;
        this.f13142t = c(f10, -50);
        int iC = c(f10, 4);
        int iC2 = c(f10, 26);
        int iC3 = c(f10, 4);
        int iC4 = c(f10, 12);
        int iC5 = c(f10, 0);
        int iC6 = c(f10, 16);
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.DefaultTimeBar, i10, i11);
            try {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.DefaultTimeBar_scrubber_drawable);
                this.f13133k = drawable;
                if (drawable != null) {
                    m(drawable);
                    iC2 = Math.max(drawable.getMinimumHeight(), iC2);
                }
                this.f13134l = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_bar_height, iC);
                this.f13135m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_touch_target_height, iC2);
                this.f13136n = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_bar_gravity, 0);
                this.f13137o = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_ad_marker_width, iC3);
                this.f13138p = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_enabled_size, iC4);
                this.f13139q = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_disabled_size, iC5);
                this.f13140r = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_dragged_size, iC6);
                int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_played_color, -1);
                int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_scrubber_color, -1);
                int i14 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_buffered_color, -855638017);
                int i15 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_unplayed_color, 872415231);
                int i16 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_ad_marker_color, -1291845888);
                int i17 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_played_ad_marker_color, 872414976);
                paint.setColor(i12);
                paint6.setColor(i13);
                paint2.setColor(i14);
                paint3.setColor(i15);
                paint4.setColor(i16);
                paint5.setColor(i17);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            this.f13134l = iC;
            this.f13135m = iC2;
            this.f13136n = 0;
            this.f13137o = iC3;
            this.f13138p = iC4;
            this.f13139q = iC5;
            this.f13140r = iC6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.f13133k = null;
        }
        StringBuilder sb2 = new StringBuilder();
        this.f13143u = sb2;
        this.f13144v = new Formatter(sb2, Locale.getDefault());
        this.f13145w = new Runnable() {
            @Override
            public final void run() {
                this.f13337a.g();
            }
        };
        Drawable drawable2 = this.f13133k;
        if (drawable2 != null) {
            this.f13141s = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f13141s = (Math.max(this.f13139q, Math.max(this.f13138p, this.f13140r)) + 1) / 2;
        }
        this.F = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.E = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f13339a.h(valueAnimator2);
            }
        });
        this.J = C.TIME_UNSET;
        this.B = C.TIME_UNSET;
        this.A = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public void hideScrubber(long j10) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.E.setFloatValues(this.F, 0.0f);
        this.E.setDuration(j10);
        this.E.start();
    }

    public void showScrubber(long j10) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = false;
        this.E.setFloatValues(this.F, 1.0f);
        this.E.setDuration(j10);
        this.E.start();
    }
}
