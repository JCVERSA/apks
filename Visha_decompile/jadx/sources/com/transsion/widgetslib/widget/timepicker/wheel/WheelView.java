package com.transsion.widgetslib.widget.timepicker.wheel;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.SoundPool;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.core.content.ContextCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.color.utilities.Contrast;
import com.google.android.material.timepicker.TimeModel;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.f43;
import defpackage.jv9;
import defpackage.kx3;
import defpackage.olb;
import defpackage.s53;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

public class WheelView<T> extends View {
    public static final int CURVED_ARC_DIRECTION_CENTER = 1;
    public static final int CURVED_ARC_DIRECTION_LEFT = 0;
    public static final int CURVED_ARC_DIRECTION_RIGHT = 2;
    public static final float DEFAULT_CURVED_FACTOR = 0.75f;
    public static final int DIVIDER_TYPE_FILL = 0;
    public static final int DIVIDER_TYPE_WRAP = 1;
    public static final int INVALID_INPUT_DAY_RANGE = 1;
    public static final int INVALID_INPUT_YEAR_LENGTH = 3;
    public static final int INVALID_INPUT_YEAR_RANGE = 2;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SCROLLING = 2;
    public static final int TEXT_ALIGN_CENTER = 1;
    public static final int TEXT_ALIGN_LEFT = 0;
    public static final int TEXT_ALIGN_RIGHT = 2;
    public static final float q1 = H(2.0f);
    public static final float r1 = D0(15.0f);
    public static final float s1 = H(1.0f);
    public static boolean t1 = false;
    public int A;
    public boolean A0;
    public int B;
    public boolean B0;
    public int C;
    public boolean C0;
    public float D;
    public boolean D0;
    public Rect E;
    public boolean E0;
    public float F;
    public boolean F0;
    public Camera G;
    public Calendar G0;
    public Matrix H;
    public Calendar H0;
    public boolean I;
    public List I0;
    public int J;
    public boolean J0;
    public float K;
    public int K0;
    public float L;
    public Matrix L0;
    public boolean M;
    public TextPaint M0;
    public Typeface N;
    public float N0;
    public Typeface O;
    public float O0;
    public List P;
    public float P0;
    public boolean Q;
    public int Q0;
    public VelocityTracker R;
    public boolean R0;
    public int S;
    public boolean S0;
    public int T;
    public float T0;
    public kx3 U;
    public float U0;
    public int V;
    public boolean V0;
    public int W;
    public float W0;
    public float X0;
    public AudioManager Y0;
    public float Z0;
    public float a0;
    public int a1;
    public Paint b;
    public float b0;
    public int b1;
    public Paint c;
    public float c0;
    public String c1;
    public Paint d;
    public float d0;
    public InputMethodManager d1;
    public boolean e;
    public float e0;
    public volatile boolean e1;
    public Paint.FontMetrics f;
    public long f0;
    public String f1;
    public int g;
    public int g0;
    public boolean g1;
    public int h;
    public int h0;
    public boolean h1;
    public float i;
    public boolean i0;
    public float i1;
    public boolean j;
    public Typeface j0;
    public float j1;
    public int k;
    public Typeface k0;
    public float k1;
    public boolean l;
    public g l0;
    public float l1;
    public int m;
    public h m0;
    public Runnable m1;
    public boolean mIsTouchStatus;
    public float n;
    public boolean n0;
    public ValueAnimator n1;
    public int o;
    public int o0;
    public d o1;
    public float p;
    public int p0;
    public e p1;
    public Paint.Cap q;
    public int q0;
    public float r;
    public int r0;
    public boolean s;
    public int s0;
    public int t;
    public int t0;
    public int u;
    public int u0;
    public int v;
    public int v0;
    public int w;
    public int w0;
    public int x;
    public int x0;
    public int y;
    public int y0;
    public int z;
    public boolean z0;

    public class a implements f43.r {
        public a() {
        }

        @Override
        public void a(f43 f43Var, float f, float f2) {
            WheelView wheelView = WheelView.this;
            wheelView.a0 = f + wheelView.U.getFixedFlingValue();
            WheelView.this.i0();
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (animatedValue instanceof Float) {
                WheelView.this.a0 = ((Float) animatedValue).floatValue();
                WheelView.this.i0();
            }
        }
    }

    public class c extends BaseInputConnection {
        public c(View view, boolean z) {
            super(view, z);
        }

        @Override
        public boolean commitText(CharSequence charSequence, int i) {
            if (charSequence.length() <= 0 || !Character.isDigit(charSequence.charAt(0))) {
                return super.commitText(charSequence, i);
            }
            WheelView.this.b0(charSequence.charAt(0));
            return true;
        }

        @Override
        public boolean deleteSurroundingText(int i, int i2) {
            if (WheelView.this.f1.length() <= 0) {
                return false;
            }
            WheelView wheelView = WheelView.this;
            wheelView.f1 = wheelView.f1.substring(0, WheelView.this.f1.length() - 1);
            WheelView.this.invalidate();
            return true;
        }

        @Override
        public boolean performEditorAction(int i) {
            if (i != 6) {
                return super.performEditorAction(i);
            }
            WheelView.this.finishEditing();
            return true;
        }
    }

    public interface d {
        void onDialogDismiss();
    }

    public interface e {
        void a(WheelView wheelView, int i, String str);
    }

    public interface f {
    }

    public interface g {
        void a(int i, int i2);

        void b(int i);

        void c(int i);

        void d(int i);
    }

    public static class h {
        public SoundPool a = new SoundPool.Builder().setMaxStreams(1).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(1).build()).build();
        public int b;
        public float c;

        public static h c() {
            return new h();
        }

        public float a() {
            return this.c;
        }

        public void b(Context context, int i) {
            SoundPool soundPool = this.a;
            if (soundPool != null) {
                this.b = soundPool.load(context, i, 1);
            }
        }

        public void d() {
            int i;
            SoundPool soundPool = this.a;
            if (soundPool == null || (i = this.b) == 0) {
                return;
            }
            float f = this.c;
            soundPool.play(i, f, f, 1, 0, 1.0f);
        }

        public void e() {
            SoundPool soundPool = this.a;
            if (soundPool != null) {
                soundPool.release();
                this.a = null;
            }
        }

        public void f(float f) {
            this.c = f;
        }
    }

    public WheelView(Context context) {
        this(context, null);
    }

    public static float D0(float f2) {
        return TypedValue.applyDimension(2, f2, Resources.getSystem().getDisplayMetrics());
    }

    public static float H(float f2) {
        return TypedValue.applyDimension(1, f2, Resources.getSystem().getDisplayMetrics());
    }

    private int getCurrentPosition() {
        float f2;
        int iF;
        if (this.P.isEmpty()) {
            return -1;
        }
        float f3 = this.a0;
        if (f3 < 0.0f) {
            f2 = f3 - (this.y0 / 2);
            iF = F();
        } else {
            f2 = f3 + (this.y0 / 2);
            iF = F();
        }
        int i = (int) (f2 / iF);
        if (this.j) {
            int size = i % this.P.size();
            return size < 0 ? size + this.P.size() : size;
        }
        if (i < 0) {
            return 0;
        }
        return i > this.P.size() + (-1) ? this.P.size() - 1 : i;
    }

    private String getCurrentSelectedValue() {
        int i;
        Object obj;
        List list = this.P;
        if (list == null || (i = this.g0) < 0 || i >= list.size() || (obj = this.P.get(this.g0)) == null) {
            return null;
        }
        return obj.toString();
    }

    public final int A(int i, int i2) {
        if (i == 1) {
            return i2 / 1000;
        }
        if (i == 2) {
            return i2 / 100;
        }
        if (i == 3) {
            return i2 / 10;
        }
        if (i != 4) {
            return Integer.MAX_VALUE;
        }
        return i2;
    }

    public final void A0() {
        AudioManager audioManager = this.Y0;
        if (audioManager == null) {
            this.m0.f(0.3f);
            return;
        }
        int streamVolume = audioManager.getStreamVolume(1);
        int streamMaxVolume = this.Y0.getStreamMaxVolume(1);
        if (streamMaxVolume > 0) {
            this.m0.f((streamVolume * 1.0f) / streamMaxVolume);
        } else {
            this.m0.f(0.3f);
        }
    }

    public final int B(int i, int i2) {
        if (i == 1) {
            return i2 / 1000;
        }
        if (i == 2) {
            return i2 / 100;
        }
        if (i == 3) {
            return i2 / 10;
        }
        if (i != 4) {
            return Integer.MIN_VALUE;
        }
        return i2;
    }

    public final void B0() {
        if (!this.g1 || this.e1 || this.P.isEmpty()) {
            return;
        }
        O();
        this.e1 = true;
        String strR = R(this.P.get(this.g0));
        if (strR != null && strR.matches("\\d+")) {
            this.f1 = strR;
        }
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        C0();
        invalidate();
    }

    public final void C() {
        this.b.setTextSize(this.q0);
        this.f = this.b.getFontMetrics();
    }

    public final void C0() {
        if (t1 && this.h1) {
            return;
        }
        this.h1 = true;
        t1 = true;
        postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.o0();
            }
        }, 50L);
    }

    public final boolean D(int i) {
        return !this.P.isEmpty() && i >= 0 && i <= this.P.size() - 1;
    }

    public final String E(String str) {
        if (this.G0 == null) {
            return null;
        }
        int i = Integer.parseInt(str);
        if (this.H0 == null) {
            this.H0 = Calendar.getInstance();
        }
        this.H0.set(1, this.G0.get(1));
        this.H0.set(6, i);
        int i2 = this.H0.get(2);
        List list = this.I0;
        if (list == null || list.size() <= i2) {
            return "";
        }
        int i3 = this.H0.get(5);
        if (this.J0) {
            return String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i3)) + getContext().getString(R.string.day_time_picker) + " " + ((String) this.I0.get(i2));
        }
        return ((String) this.I0.get(i2)) + " " + String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i3)) + getContext().getString(R.string.day_time_picker);
    }

    public final void E0() {
        if (this.e1) {
            return;
        }
        O();
        this.e1 = true;
        String currentSelectedValue = getCurrentSelectedValue();
        if (currentSelectedValue != null) {
            this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(Integer.parseInt(currentSelectedValue)));
        } else {
            this.f1 = "00";
        }
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        C0();
        invalidate();
    }

    public final int F() {
        int i = this.y0;
        if (i > 0) {
            return i;
        }
        return 1;
    }

    public final void F0(int i) {
        if (this.e1) {
            return;
        }
        O();
        this.e1 = true;
        this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        C0();
        G0();
        invalidate();
    }

    public final void G(float f2) {
        float f3 = this.a0 + f2;
        this.a0 = f3;
        if (this.j) {
            return;
        }
        int i = this.V;
        if (f3 < i) {
            this.a0 = i;
            return;
        }
        int i2 = this.W;
        if (f3 > i2) {
            this.a0 = i2;
        }
    }

    public final void G0() {
        List list;
        int iM;
        if (this.f1.isEmpty() || (list = this.P) == null || list.isEmpty()) {
            return;
        }
        int i = Integer.parseInt(this.f1);
        if (this.A0) {
            iM = T(i);
        } else if (this.B0) {
            iM = U(i);
        } else {
            iM = (this.D0 || this.C0) ? M(i) : S(i);
        }
        K0(iM);
    }

    public int H0(float f2) {
        int i = this.t0;
        int i2 = this.r0;
        if (i == i2) {
            return i2;
        }
        int i3 = (i & (-16777216)) >>> 24;
        int i4 = (i & 16711680) >>> 16;
        int i5 = (i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8;
        int i6 = i & 255;
        return ((int) (i6 + (((i2 & 255) - i6) * f2))) | (((int) (i3 + (((((-16777216) & i2) >>> 24) - i3) * f2))) << 24) | (((int) (i4 + ((((16711680 & i2) >>> 16) - i4) * f2))) << 16) | (((int) (i5 + ((((65280 & i2) >>> 8) - i5) * f2))) << 8);
    }

    public final void I(Canvas canvas, Paint paint, float f2, float f3) {
        char zeroDigit;
        String string = this.f1;
        if (string == null) {
            string = "";
        }
        if (!TextUtils.isEmpty(string) && (zeroDigit = DecimalFormatSymbols.getInstance(Locale.getDefault()).getZeroDigit()) != '0') {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < string.length(); i++) {
                char cCharAt = string.charAt(i);
                if (cCharAt < '0' || cCharAt > '9') {
                    sb.append(cCharAt);
                } else {
                    sb.append((char) ((cCharAt - '0') + zeroDigit));
                }
            }
            string = sb.toString();
        }
        Paint paint2 = new Paint(this.d);
        paint2.setColor(this.r0);
        paint2.setTextSize(this.q0);
        float textSize = paint2.getTextSize();
        float f4 = (f3 - textSize) * 0.5f;
        float width = getWidth() - paint2.measureText(string);
        canvas.drawText(string, width > 0.0f ? width * 0.5f : 0.0f, f2 + f4 + textSize, paint2);
    }

    public void I0() {
        if (this.U.e()) {
            float f2 = this.a0;
            boolean zK = this.U.k();
            float currY = this.U.getCurrY() + this.U.getFixedFlingValue();
            this.a0 = currY;
            if (this.j || !zK) {
                i0();
            } else {
                u(f2, currY);
            }
        }
    }

    public final void J(Canvas canvas, Paint paint, int i, float f2, float f3, int i2, float f4) {
        float fMin;
        String strQ = Q(i);
        if (strQ == null) {
            return;
        }
        float textSize = paint.getTextSize();
        float width = this.D;
        if (width <= 0.0f) {
            width = getWidth();
        }
        float f5 = width;
        float f6 = this.k1;
        float f7 = f6 > 0.0f ? f6 : textSize;
        paint.setTextSize(f7);
        float f8 = f7;
        drawEditBackground(canvas, paint, f2, f3, i2, strQ);
        if (this.e1 && i2 == 0 && i == this.g0) {
            I(canvas, paint, f2, f3);
            if (paint.getTextSize() != textSize) {
                paint.setTextSize(textSize);
                return;
            }
            return;
        }
        this.M0.set(paint);
        this.M0.setTextSize(f8);
        if (f5 > 0.0f && this.M0.measureText(strQ) > f5) {
            strQ = TextUtils.ellipsize(strQ, this.M0, f5, TextUtils.TruncateAt.END).toString();
        }
        float textSize2 = paint.getTextSize();
        float f9 = (f3 - textSize2) * 0.5f;
        float fMeasureText = f5 - paint.measureText(strQ);
        float f10 = fMeasureText > 0.0f ? fMeasureText * 0.5f : 0.0f;
        float f11 = f2 + f9 + textSize2;
        if (this.I) {
            float f12 = this.Z0;
            if (f12 != 0.0f) {
                float f13 = 1.0f - (f4 / f12);
                int iAbs = Math.abs(i2);
                int i3 = this.a1;
                int i4 = i3 / 2;
                if (iAbs == 0) {
                    fMin = (0 - i4) + ((int) (i3 * f13));
                } else if (iAbs == 1) {
                    int i5 = i2 == -1 ? i3 : -i3;
                    int i6 = (int) (i3 * f13);
                    fMin = i2 == -1 ? Math.min(i5 - i6, i4) : Math.max(i5 + i6, -i4);
                } else {
                    fMin = 0.0f;
                }
                float f14 = f11 - fMin;
                float width2 = getWidth() / 2.0f;
                float fDescent = ((paint.descent() + paint.ascent()) / 2.0f) + f14;
                float f15 = iAbs * 0.2f;
                float f16 = i2 <= 0 ? f15 - 0.1f : f15 + 0.1f;
                float f17 = 0.2f * f13;
                float f18 = i2 <= 0 ? f16 + f17 : f16 - f17;
                float fAbs = Math.abs(420.0f * f18);
                float f19 = i2 <= 0 ? 140.0f : -140.0f;
                this.G.save();
                this.G.translate(0.0f, 0.0f, fAbs);
                this.G.rotateX(f18 * f19);
                this.G.getMatrix(this.H);
                this.G.restore();
                this.H.preTranslate((-getWidth()) / 2.0f, -fDescent);
                this.H.postTranslate(width2, fDescent);
                canvas.save();
                canvas.concat(this.H);
                int i7 = iAbs * 84;
                int i8 = i2 <= 0 ? 297 - i7 : 213 - i7;
                int i9 = (int) (f13 * 84.0f);
                int iMin = Math.min(i2 <= 0 ? i8 - i9 : i8 + i9, 255);
                if (iMin <= 75) {
                    iMin = 0;
                }
                int i10 = 255 & this.r0;
                int i11 = i10 - (iAbs * ((i10 - 153) / 2));
                paint.setColor(Color.argb(iMin, i11, i11, i11));
                boolean z = (paint.getColor() & 16777215) == 0;
                if (this.M) {
                    this.c.setFakeBoldText(z);
                }
                this.c.setTypeface(z ? this.N : this.O);
                canvas.drawText(strQ, f10, f14, paint);
                canvas.restore();
                if (paint.getTextSize() != textSize) {
                    paint.setTextSize(textSize);
                    return;
                }
                return;
            }
        }
        canvas.drawText(strQ, f10, f11, paint);
        if (paint.getTextSize() != textSize) {
            paint.setTextSize(textSize);
        }
    }

    public final void J0() {
        int i = this.k;
        if (i == 0) {
            this.b.setTextAlign(Paint.Align.LEFT);
        } else if (i != 2) {
            this.b.setTextAlign(Paint.Align.CENTER);
        } else {
            this.b.setTextAlign(Paint.Align.RIGHT);
        }
    }

    public final void K(float f2) {
        float textSize;
        if (f2 <= 0.0f) {
            return;
        }
        if (this.k1 <= 0.0f || this.l1 != f2) {
            this.l1 = f2;
            List list = this.P;
            if (list == null || list.isEmpty()) {
                this.k1 = -1.0f;
                return;
            }
            TextPaint textPaint = this.M0;
            if (this.I) {
                textPaint.set(this.c);
                Typeface typeface = this.N;
                if (typeface != null) {
                    textPaint.setTypeface(typeface);
                } else {
                    Typeface typeface2 = this.O;
                    if (typeface2 != null) {
                        textPaint.setTypeface(typeface2);
                    }
                }
                textSize = this.c.getTextSize();
            } else {
                textPaint.set(this.d);
                Typeface typeface3 = this.k0;
                if (typeface3 != null) {
                    textPaint.setTypeface(typeface3);
                }
                textSize = this.q0;
            }
            int size = this.P.size();
            float f3 = Float.MAX_VALUE;
            for (int i = 0; i < size; i++) {
                String strQ = Q(i);
                if (strQ != null) {
                    float fV = v(textPaint, strQ, textSize, f2);
                    if (fV >= f3) {
                        continue;
                    } else {
                        if (fV <= 1.0f) {
                            f3 = 1.0f;
                            break;
                        }
                        f3 = fV;
                    }
                }
            }
            this.k1 = f3 != Float.MAX_VALUE ? Math.max(1.0f, f3) : -1.0f;
        }
    }

    public final void K0(int i) {
        if (i < 0 || i >= this.P.size() || i == this.g0) {
            return;
        }
        this.g0 = i;
        this.a0 = i * this.y0;
        invalidate();
        g gVar = this.l0;
        if (gVar != null) {
            gVar.b(this.g0);
            g gVar2 = this.l0;
            int i2 = this.g0;
            gVar2.a(i2, i2);
        }
    }

    public final int L(String str) {
        List list;
        if (str != null && (list = this.P) != null && !list.isEmpty()) {
            for (int i = 0; i < this.P.size(); i++) {
                if (str.equals(R(this.P.get(i)))) {
                    return i;
                }
            }
        }
        return -1;
    }

    public final boolean L0(int i) {
        List list = this.P;
        if (list == null || list.isEmpty() || i <= this.P.size()) {
            return true;
        }
        r0(1, String.valueOf(i));
        return false;
    }

    public final int M(int i) {
        for (int i2 = 0; i2 < this.P.size(); i2++) {
            if (Integer.parseInt(R(this.P.get(i2))) == i) {
                return i2;
            }
        }
        return -1;
    }

    public final boolean M0(String str) {
        try {
            int i = Integer.parseInt(str);
            if (this.C0) {
                return N0(str, i);
            }
            if (this.D0) {
                return L0(i);
            }
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final void N() {
        if (this.e1) {
            clearFocus();
            setFocusableInTouchMode(false);
            this.e1 = false;
            this.f1 = "";
            this.F0 = true;
            invalidate();
        }
    }

    public final boolean N0(String str, int i) {
        int iB = B(str.length(), OSDateTimePicker.START_YEAR);
        int iA = A(str.length(), 2100);
        if (i >= iB && i <= iA) {
            return true;
        }
        r0(2, str);
        return false;
    }

    public final void O() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if ((childAt instanceof WheelView) && childAt != this) {
                    WheelView wheelView = (WheelView) childAt;
                    if (wheelView.e1) {
                        wheelView.N();
                    }
                }
            }
        }
    }

    public void P() {
        if (!this.U.k()) {
            this.U.g(true);
        }
        jv9 jv9Var = this.U.y;
        if (jv9Var == null || !jv9Var.h()) {
            return;
        }
        this.U.y.c();
    }

    public final String Q(int i) {
        int size = this.P.size();
        String strR = null;
        if (size == 0) {
            return null;
        }
        if (this.j) {
            int i2 = i % size;
            if (i2 < 0) {
                i2 += size;
            }
            strR = R(this.P.get(i2));
        } else if (i >= 0 && i < size) {
            strR = R(this.P.get(i));
        }
        return (!this.z0 || TextUtils.isEmpty(strR)) ? strR : E(strR);
    }

    public String R(Object obj) {
        if (obj == null) {
            return "";
        }
        if (!(obj instanceof Integer)) {
            return obj instanceof String ? (String) obj : obj.toString();
        }
        Integer num = (Integer) obj;
        boolean z = this.A0;
        String str = TimeModel.NUMBER_FORMAT;
        if (!z ? this.B0 : this.E0) {
            str = TimeModel.ZERO_LEADING_NUMBER_FORMAT;
        }
        return String.format(Locale.getDefault(), str, num) + "";
    }

    public final int S(int i) {
        if (i < 1 || i > this.P.size()) {
            return -1;
        }
        return i - 1;
    }

    public final int T(int i) {
        String str = String.format(Locale.getDefault(), TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
        String strValueOf = String.valueOf(i);
        int iL = L(str);
        return iL < 0 ? L(strValueOf) : iL;
    }

    public final int U(int i) {
        int iL = L(String.format(Locale.getDefault(), TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i)));
        return iL < 0 ? L(String.valueOf(i)) : iL;
    }

    public final void V(int i) {
        if (this.f1.isEmpty()) {
            if (i <= 1) {
                this.f1 = String.valueOf(i);
                return;
            } else {
                this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
                n0(0, false);
                return;
            }
        }
        if (this.F0 || this.f1.length() != 1) {
            if (i <= 1) {
                this.F0 = false;
                this.f1 = String.valueOf(i);
                return;
            } else {
                this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
                n0(0, false);
                return;
            }
        }
        int i2 = Integer.parseInt(this.f1);
        int i3 = (i2 * 10) + i;
        if (i3 == 0) {
            this.f1 = "12";
            n0(0, false);
        } else if (m0(i3)) {
            this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i3));
            n0(0, false);
        } else {
            this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
            n0(i, true);
        }
    }

    public final void W(int i) {
        if (this.f1.isEmpty()) {
            if (i <= 2) {
                this.f1 = String.valueOf(i);
                return;
            } else {
                this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
                n0(0, false);
                return;
            }
        }
        if (this.f1.length() != 1) {
            if (i <= 2) {
                this.f1 = String.valueOf(i);
                return;
            } else {
                this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
                n0(0, false);
                return;
            }
        }
        int i2 = Integer.parseInt(this.f1);
        int i3 = (i2 * 10) + i;
        if (m0(i3)) {
            this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i3));
            n0(0, false);
        } else {
            this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
            n0(i, true);
        }
    }

    public final void X(int i) {
        if (this.F0) {
            this.f1 = "";
            this.F0 = false;
        }
        if (this.f1.isEmpty()) {
            if (i < 1 || i > 9) {
                return;
            }
            this.f1 = String.valueOf(i);
            return;
        }
        String str = this.f1 + i;
        if (M0(str)) {
            this.f1 = str;
        }
    }

    public final boolean Y(int i, KeyEvent keyEvent) {
        if (i == 67) {
            if (this.f1.length() > 0) {
                String str = this.f1;
                this.f1 = str.substring(0, str.length() - 1);
                invalidate();
            }
            return true;
        }
        if (i < 7 || i > 16) {
            return super.onKeyDown(i, keyEvent);
        }
        b0((char) (i + 41));
        return true;
    }

    public final void Z(int i) {
        if (this.E0) {
            W(i);
        } else {
            V(i);
        }
    }

    public final void a0(int i) {
        if (this.f1.isEmpty()) {
            this.f1 = String.valueOf(i);
            return;
        }
        int i2 = ((Integer.parseInt(this.f1) % 10) * 10) + i;
        if (i2 <= 59) {
            this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i2));
        } else {
            this.f1 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
        }
    }

    public void abortFinishScroll() {
        if (!this.U.k()) {
            this.U.c();
        }
        jv9 jv9Var = this.U.y;
        if (jv9Var == null || !jv9Var.h()) {
            return;
        }
        this.U.y.c();
    }

    public final void b0(char c2) {
        int i = c2 - '0';
        if (this.B0) {
            a0(i);
        } else if (this.D0) {
            X(i);
        } else if (this.C0) {
            c0(i);
        } else if (this.A0) {
            Z(i);
        }
        G0();
        invalidate();
    }

    public final void c0(int i) {
        if (this.F0) {
            this.f1 = "";
            this.F0 = false;
        }
        if (this.f1.isEmpty()) {
            if (M0(String.valueOf(i))) {
                this.f1 = String.valueOf(i);
            }
        } else {
            if (this.f1.length() >= 4) {
                r0(3, this.f1);
                return;
            }
            String str = this.f1 + i;
            if (M0(str)) {
                this.f1 = str;
            }
        }
    }

    public final void d0() {
        InputMethodManager inputMethodManager = this.d1;
        if (inputMethodManager != null && this.h1) {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 2);
        }
        this.h1 = false;
        t1 = false;
    }

    public void drawEditBackground(Canvas canvas, Paint paint, float f2, float f3, int i, String str) {
        if (this.e1 && this.I && i == 0) {
            Paint paint2 = new Paint();
            paint2.setColor(olb.m(getContext(), R.attr.os_platform_basic_color, R.color.os_platform_basic_color_hios));
            paint2.setAlpha(olb.V(getContext()) ? 76 : 38);
            Paint.Style style = Paint.Style.FILL;
            paint2.setStyle(style);
            paint2.setStyle(style);
            if (str != null) {
                float fMeasureText = paint.measureText(str);
                float textSize = paint.getTextSize();
                float f4 = f2 + ((f3 - textSize) * 0.5f) + textSize;
                float fAscent = paint.ascent() + f4;
                float fDescent = f4 + paint.descent();
                float fH = olb.h(getContext(), 2);
                float width = ((getWidth() - fMeasureText) / 2.0f) - fH;
                canvas.drawRect(width, fAscent - fH, fMeasureText + width + (2.0f * fH), fDescent + fH, paint2);
            }
        }
    }

    public final void e0(Context context, AttributeSet attributeSet) {
        this.e = false;
        this.J0 = olb.l0();
        this.k = 1;
        this.F = 0.0f;
        Locale.getDefault();
        Resources resources = context.getResources();
        this.r0 = ContextCompat.getColor(context, R.color.os_wheel_text_select_color);
        this.s0 = ContextCompat.getColor(context, R.color.os_text_quaternary_color);
        int i = R.attr.os_text_info;
        int i2 = R.color.os_text_info_hios;
        this.t0 = olb.m(context, i, i2);
        this.u0 = olb.m(context, i, i2);
        this.K0 = ContextCompat.getColor(context, R.color.os_altitude_secondary_color);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.wheelWidth});
        this.x0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, resources.getDimensionPixelSize(R.dimen.picker_wheel_width_hour));
        int i3 = R.dimen.picker_wheel_item_height;
        this.y0 = resources.getDimensionPixelSize(i3);
        typedArrayObtainStyledAttributes.recycle();
        int i4 = R.dimen.picker_wheel_text_first;
        this.o0 = resources.getDimensionPixelSize(i4);
        this.p0 = resources.getDimensionPixelSize(i4);
        this.q0 = resources.getDimensionPixelSize(R.dimen.picker_wheel_text_select);
        this.v0 = resources.getDimensionPixelSize(i3);
        this.w0 = resources.getDimensionPixelSize(R.dimen.picker_wheel_item_height_select);
        if (this.I) {
            this.c.setTextSize(this.p0 * 1.37f);
        } else {
            this.c.setTextSize(this.p0);
        }
        this.c.setColor(this.t0);
        this.d.setTextSize(this.p0);
        this.i = q1;
        this.h = 5;
        this.h = t(5);
        this.g0 = 0;
        this.h0 = 0;
        this.j = false;
        this.l = false;
        this.o = 0;
        this.n = s1;
        this.m = this.r0;
        this.p = 0.0f;
        this.r = 0.0f;
        this.s = false;
        this.t = 0;
        this.J = 1;
        this.K = 0.75f;
        this.L = 1.0f;
        float f2 = context.getResources().getDisplayMetrics().density;
        this.O0 = 360.0f * f2;
        this.P0 = f2 * 2.0f;
        this.a1 = (int) TypedValue.applyDimension(1, 8.0f, resources.getDisplayMetrics());
    }

    public final void f0(Context context) {
        if (this.Y0 == null) {
            this.Y0 = (AudioManager) context.getSystemService("audio");
        }
        A0();
    }

    public void finishEditing() {
        if (this.e1) {
            d0();
            clearFocus();
            setFocusableInTouchMode(false);
            this.e1 = false;
            this.f1 = "";
            this.F0 = true;
            invalidate();
        }
    }

    public void forceFinishScroll() {
        if (this.U.k()) {
            return;
        }
        this.U.g(true);
    }

    public final void g0(Context context) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.S = viewConfiguration.getScaledMaximumFlingVelocity();
        this.T = viewConfiguration.getScaledMinimumFlingVelocity();
        this.U = new kx3(context, new OvershootInterpolator(2.0f));
        this.E = new Rect();
        this.G = new Camera();
        this.H = new Matrix();
        this.N0 = context.getResources().getDisplayMetrics().density;
        if (this.M0 == null) {
            this.M0 = new TextPaint(1);
        }
        this.i1 = olb.h(context, 4);
        this.j1 = olb.h(context, 2);
        C();
        J0();
        this.d1 = (InputMethodManager) context.getSystemService("input_method");
        post(new Runnable() {
            @Override
            public void run() {
                String strQ;
                if (!WheelView.this.V0 || WheelView.this.j || (strQ = WheelView.this.Q(0)) == null || strQ.isEmpty()) {
                    return;
                }
                Paint.FontMetrics fontMetrics = WheelView.this.d.getFontMetrics();
                float height = WheelView.this.getHeight();
                float f2 = fontMetrics.descent - fontMetrics.ascent;
                WheelView wheelView = WheelView.this;
                wheelView.T0 = (wheelView.y0 * WheelView.this.h * 0.5f) + f2;
                WheelView wheelView2 = WheelView.this;
                wheelView2.U0 = -(((wheelView2.y0 * WheelView.this.h) * 0.5f) - f2);
                WheelView wheelView3 = WheelView.this;
                wheelView3.W0 = ((fontMetrics.ascent + height) / 2.0f) + wheelView3.W;
                WheelView.this.X0 = (-(height - f2)) / 2.0f;
            }
        });
        setFocusable(true);
        this.U.y.b(new a());
    }

    @Override
    @SuppressLint({"GetContentDescriptionOverride"})
    public CharSequence getContentDescription() {
        if (TextUtils.isEmpty(this.c1)) {
            return !D(getSelectedItemPosition()) ? super.getContentDescription() : Q(getSelectedItemPosition());
        }
        return this.c1;
    }

    public int getCurvedArcDirection() {
        return this.J;
    }

    public float getCurvedArcDirectionFactor() {
        return this.K;
    }

    public Typeface getCurvedBoldForSelectedItemTypeface() {
        return this.N;
    }

    public Typeface getCurvedNormalItemTypeface() {
        return this.O;
    }

    @Deprecated
    public float getCurvedRefractRatio() {
        return this.L;
    }

    public String getCustomContentDescription() {
        return this.c1;
    }

    public List<T> getData() {
        return this.P;
    }

    public Paint.Cap getDividerCap() {
        return this.q;
    }

    public int getDividerColor() {
        return this.m;
    }

    public float getDividerHeight() {
        return this.n;
    }

    public float getDividerPaddingForWrap() {
        return this.p;
    }

    public int getDividerType() {
        return this.o;
    }

    @Nullable
    public T getItemData(int i) {
        if (isPositionInRange(i)) {
            return (T) this.P.get(i);
        }
        if (this.P.size() > 0 && i >= this.P.size()) {
            List list = this.P;
            return (T) list.get(list.size() - 1);
        }
        if (this.P.size() <= 0 || i >= 0) {
            return null;
        }
        return (T) this.P.get(0);
    }

    public float getLineSpacing() {
        return this.i;
    }

    public f getOnItemSelectedListener() {
        return null;
    }

    public g getOnWheelChangedListener() {
        return this.l0;
    }

    public float getPlayVolume() {
        h hVar = this.m0;
        if (hVar == null) {
            return 0.0f;
        }
        return hVar.a();
    }

    public float getRefractRatio() {
        return this.L;
    }

    public Paint getSecondPaint() {
        return this.c;
    }

    public T getSelectedItemData() {
        return getItemData(this.g0);
    }

    public int getSelectedItemPosition() {
        return this.g0;
    }

    public Paint getSelectedPaint() {
        return this.d;
    }

    public int getSelectedRectColor() {
        return this.t;
    }

    public int getTextAlign() {
        return this.k;
    }

    public float getTextBoundaryMargin() {
        return this.F;
    }

    public int getTextSecondColor() {
        return this.t0;
    }

    public int getTextSelectColor() {
        return this.r0;
    }

    public int getTextSizeSecond() {
        return this.p0;
    }

    public int getTextSizeSelect() {
        return this.q0;
    }

    public Typeface getTypeface() {
        return this.b.getTypeface();
    }

    public int getVisibleItems() {
        return this.h;
    }

    public int getWheelHeight() {
        return this.y0;
    }

    public final void h0() {
        if (this.R == null) {
            this.R = VelocityTracker.obtain();
        }
    }

    public final void i0() {
        float f2 = this.a0;
        if (f2 != this.b0) {
            this.b0 = f2;
            g gVar = this.l0;
            if (gVar != null) {
                gVar.d((int) f2);
            }
            v0(this.a0);
            s0();
            invalidate();
        }
    }

    public boolean isAutoFitTextSize() {
        return this.e;
    }

    public boolean isCurved() {
        return this.I;
    }

    public boolean isCurvedBoldForSelectedItem() {
        return this.M;
    }

    public boolean isCyclic() {
        return this.j;
    }

    public boolean isDrawSelectedRect() {
        return this.s;
    }

    public boolean isPositionInRange(int i) {
        return i >= 0 && i < this.P.size();
    }

    public boolean isResetSelectedPosition() {
        return this.Q;
    }

    public boolean isShowDivider() {
        return this.l;
    }

    public boolean isSoundEffect() {
        return this.n0;
    }

    public boolean isYearDays() {
        return this.z0;
    }

    public final boolean j0() {
        ValueAnimator valueAnimator = this.n1;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    public final boolean k0() {
        float fAbs = Math.abs(this.a0 % F());
        return fAbs <= 1.0f || ((float) F()) - fAbs <= 1.0f;
    }

    public final boolean l0() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if ((childAt instanceof WheelView) && childAt != this && ((WheelView) childAt).e1) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean m0(int i) {
        if (this.E0) {
            return i >= 0 && i <= 23;
        }
        return i >= 1 && i <= 12;
    }

    public final void n0(int i, boolean z) {
        G0();
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt instanceof WheelView) {
                    WheelView wheelView = (WheelView) childAt;
                    if (wheelView.B0) {
                        t1 = true;
                        this.h1 = true;
                        if (z) {
                            wheelView.F0(i);
                            return;
                        } else {
                            wheelView.E0();
                            return;
                        }
                    }
                }
            }
        }
    }

    public final void o0() {
        if (this.d1 == null || !this.e1) {
            return;
        }
        this.d1.showSoftInput(this, 1);
    }

    @Override
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        editorInfo.inputType = 2;
        editorInfo.imeOptions = 268435462;
        return new c(this, true);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h hVar = this.m0;
        if (hVar != null) {
            hVar.e();
        }
        if (this.e1) {
            finishEditing();
        }
        this.d1 = null;
    }

    @Override
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        float f2;
        super.onDraw(canvas);
        int i3 = this.K0;
        if (i3 != 0) {
            canvas.drawColor(i3);
        }
        int iF = F();
        float f3 = iF;
        int i4 = (int) (this.a0 / f3);
        float height = getHeight();
        float f4 = height * 0.5f;
        int i5 = ((int) (height / f3)) + 4;
        int i6 = i4 - (i5 >> 1);
        float f5 = i5 + i6;
        float f6 = f3 * 0.5f;
        float f7 = (f4 - f6) - this.a0;
        float width = this.D;
        if (width <= 0.0f) {
            width = getWidth();
        }
        K(width);
        if (!this.I) {
            int i7 = i6;
            while (i7 < f5) {
                float f8 = f7 + (i7 * iF);
                float fAbs = Math.abs((f4 - f8) - f6);
                if (fAbs < f6) {
                    float f9 = 1.0f - (fAbs / f6);
                    int i8 = this.q0;
                    int i9 = this.p0;
                    this.d.setTextSize((((((i8 - i9) * 1.0f) / i9) * f9) + 1.0f) * i9);
                    this.d.setColor(H0(f9));
                    i = i7;
                    J(canvas, this.d, i7, f8, f3, 0, 0.0f);
                } else {
                    i = i7;
                    J(canvas, this.c, i, f8, f3, 0, 0.0f);
                }
                i7 = i + 1;
            }
            return;
        }
        int i10 = i6;
        while (true) {
            if (i10 < f5) {
                float f10 = (i10 * iF) + f7;
                if (Math.abs((f4 - f10) - f6) < f6) {
                    if (this.b1 == 0) {
                        this.b1 = (int) (f10 - f6);
                    }
                    int i11 = this.b1;
                    if (i11 != 0) {
                        float f11 = (f10 - i11) / i11;
                        if (this.Z0 == 0.0f) {
                            this.Z0 = 2.0f * f11;
                        }
                        i2 = i10;
                        f2 = f11;
                        break;
                    }
                } else {
                    i10++;
                }
            } else {
                i10 = -1;
            }
            i2 = i10;
            f2 = 0.0f;
            break;
        }
        while (i6 < f5) {
            J(canvas, this.c, i6, f7 + (i6 * iF), f3, i6 - i2, f2);
            i6++;
        }
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.e1 ? Y(i, keyEvent) : super.onKeyDown(i, keyEvent);
    }

    @Override
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() != 0 || !this.e1) {
            return super.onKeyPreIme(i, keyEvent);
        }
        q0();
        finishEditing();
        return true;
    }

    @Override
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(View.resolveSizeAndState((int) (this.x0 + getPaddingLeft() + getPaddingRight() + (this.F * 2.0f)), i, 0), View.resolveSizeAndState((this.y0 * this.h) + getPaddingTop() + getPaddingBottom(), i2, 0));
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.E.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.v = this.E.centerX();
        int iCenterY = this.E.centerY();
        this.w = iCenterY;
        int i5 = this.y0;
        float f2 = this.r;
        this.x = (int) ((iCenterY - (i5 / 2)) - f2);
        this.y = (int) (iCenterY + (i5 / 2) + f2);
        this.z = getPaddingLeft();
        this.A = getPaddingTop();
        this.B = getWidth() - getPaddingRight();
        this.C = getHeight() - getPaddingBottom();
        this.D = (getWidth() - getPaddingLeft()) - getPaddingRight();
        this.k1 = -1.0f;
        this.l1 = -1.0f;
        x();
        z();
        int iY = y(this.g0);
        if (iY > 0) {
            G(iY);
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:71:0x0117  */
    /* JADX WARN: Code duplicated, block: B:73:0x011f  */
    /* JADX WARN: Code duplicated, block: B:75:0x0127  */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0181, code lost:
    
        if (java.lang.Math.abs(r2) > (r18.y0 / 2)) goto L107;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:58:0x00b1, please report this as an issue */
    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float yVelocity;
        int y = 0;
        if (j0()) {
            return false;
        }
        if (!isEnabled() || this.P.isEmpty()) {
            return super.onTouchEvent(motionEvent);
        }
        if (this.e1) {
            return true;
        }
        h0();
        this.R.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mIsTouchStatus = true;
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            P();
            this.c0 = motionEvent.getY();
            this.e0 = this.a0;
            this.f0 = System.currentTimeMillis();
            this.Q0 = (int) (olb.B0(this.c) * this.P.size());
            this.R0 = false;
        } else if (actionMasked == 1) {
            this.mIsTouchStatus = false;
            this.R.computeCurrentVelocity(1000, this.S);
            yVelocity = this.R.getYVelocity();
            if ((l0() || this.S0) && yVelocity != 0.0f && (Math.abs(yVelocity) > this.T || this.R0)) {
                P();
                this.U.f(0, (int) this.a0, 0, (int) (-yVelocity), 0, 0, this.V, this.W, this.y0 * 10);
                float finalY = this.U.getFinalY();
                float f2 = this.a0;
                this.a0 = finalY;
                float fP0 = p0(false, 0.0f);
                this.a0 = f2;
                this.U.setFixedFlingValue(fP0);
                if (this.S0) {
                    kx3 kx3Var = this.U;
                    float f3 = this.a0;
                    kx3Var.m(f3, f3 > 0.0f ? this.y0 : 0.0f, true);
                } else {
                    kx3 kx3Var2 = this.U;
                    kx3Var2.m(this.a0, kx3Var2.getFinalY(), false);
                }
            } else {
                jv9 jv9Var = this.U.y;
                if (jv9Var != null && jv9Var.h()) {
                    this.U.y.c();
                }
                if (System.currentTimeMillis() - this.f0 <= 120) {
                    y = (int) (motionEvent.getY() - this.w);
                    if (Math.abs(y) <= this.y0 / 2 && k0()) {
                        B0();
                        return true;
                    }
                    if (l0()) {
                        if (!this.S0) {
                        }
                    }
                }
                p0(true, y);
                z0();
                if (this.S0) {
                    kx3 kx3Var3 = this.U;
                    float f4 = this.a0;
                    kx3Var3.m(f4, f4 > 0.0f ? this.y0 : 0.0f, true);
                }
            }
            i0();
            y0();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                this.mIsTouchStatus = false;
                this.R.computeCurrentVelocity(1000, this.S);
                yVelocity = this.R.getYVelocity();
                if (l0()) {
                    P();
                    this.U.f(0, (int) this.a0, 0, (int) (-yVelocity), 0, 0, this.V, this.W, this.y0 * 10);
                    float finalY2 = this.U.getFinalY();
                    float f5 = this.a0;
                    this.a0 = finalY2;
                    float fP1 = p0(false, 0.0f);
                    this.a0 = f5;
                    this.U.setFixedFlingValue(fP1);
                    if (this.S0) {
                        kx3 kx3Var4 = this.U;
                        float f6 = this.a0;
                        kx3Var4.m(f6, f6 > 0.0f ? this.y0 : 0.0f, true);
                    } else {
                        kx3 kx3Var5 = this.U;
                        kx3Var5.m(this.a0, kx3Var5.getFinalY(), false);
                    }
                } else {
                    P();
                    this.U.f(0, (int) this.a0, 0, (int) (-yVelocity), 0, 0, this.V, this.W, this.y0 * 10);
                    float finalY3 = this.U.getFinalY();
                    float f7 = this.a0;
                    this.a0 = finalY3;
                    float fP2 = p0(false, 0.0f);
                    this.a0 = f7;
                    this.U.setFixedFlingValue(fP2);
                    if (this.S0) {
                        kx3 kx3Var6 = this.U;
                        float f8 = this.a0;
                        kx3Var6.m(f8, f8 > 0.0f ? this.y0 : 0.0f, true);
                    } else {
                        kx3 kx3Var7 = this.U;
                        kx3Var7.m(this.a0, kx3Var7.getFinalY(), false);
                    }
                }
                i0();
                y0();
            }
        } else if (!l0() || this.S0) {
            this.mIsTouchStatus = true;
            float y2 = motionEvent.getY();
            this.d0 = y2;
            float f9 = this.c0 - y2;
            float f10 = this.a0;
            if (f10 >= this.V && f10 <= this.W) {
                y = 1;
            }
            if (Math.abs(f9) >= this.Q0 || (!this.j && y != 0)) {
                this.R0 = true;
            }
            float f11 = this.e0 + f9;
            this.a0 = f11;
            if (this.V0 && !this.j) {
                boolean z = this.S0;
                float f12 = z ? this.T0 : this.W0;
                float f13 = z ? this.U0 : this.X0;
                if (f11 > f12) {
                    this.a0 = f12;
                }
                if (this.a0 < f13) {
                    this.a0 = f13;
                }
            }
            g gVar = this.l0;
            if (gVar != null) {
                gVar.c(1);
            }
            w0(1);
            i0();
        }
        return true;
    }

    @Override
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            if (olb.S(getContext())) {
                Paint paint = this.c;
                Typeface typeface = Typeface.DEFAULT_BOLD;
                paint.setTypeface(typeface);
                this.d.setTypeface(typeface);
            } else {
                Paint paint2 = this.c;
                Typeface typeface2 = Typeface.DEFAULT;
                paint2.setTypeface(typeface2);
                this.d.setTypeface(typeface2);
            }
            this.k1 = -1.0f;
            this.l1 = -1.0f;
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            return;
        }
        abortFinishScroll();
        setSelectedItemPosition(getSelectedItemPosition());
    }

    public float p0(boolean z, float f2) {
        float fW = f2 + w((this.a0 + f2) % F());
        boolean z2 = false;
        boolean z3 = fW < 0.0f && this.a0 + fW >= ((float) this.V);
        if (fW > 0.0f && this.a0 + fW <= this.W) {
            z2 = true;
        }
        if (!z3 && !z2) {
            return 0.0f;
        }
        if (z) {
            this.U.l(0, (int) this.a0, 0, (int) fW, 350);
        }
        return fW;
    }

    public void playSoundEffect() {
        if (this.m0 == null || !this.n0) {
            return;
        }
        A0();
        this.m0.d();
    }

    public final void q0() {
        d dVar = this.o1;
        if (dVar != null) {
            dVar.onDialogDismiss();
        }
    }

    public final void r0(int i, String str) {
        e eVar = this.p1;
        if (eVar != null) {
            eVar.a(this, i, str);
        }
    }

    public final void s0() {
        int i = this.h0;
        int currentPosition = getCurrentPosition();
        if (i != currentPosition) {
            g gVar = this.l0;
            if (gVar != null) {
                float f2 = this.b0;
                if ((f2 >= this.V && f2 <= this.W) || !this.j) {
                    gVar.a(i, currentPosition);
                }
            }
            u0(i, currentPosition);
            playSoundEffect();
            this.h0 = currentPosition;
            this.g0 = currentPosition;
            setContentDescription(getContentDescription());
            if (this.mIsTouchStatus) {
                announceForAccessibility(getContentDescription());
            }
        }
    }

    public void safeResetScrollOffsetY(boolean z) {
        safeResetScrollOffsetY(z ? 0 : -1);
    }

    public void set24HoursFormat(boolean z) {
        this.E0 = z;
    }

    public void setAmPmWheel(boolean z) {
        this.S0 = z;
        setNeedMaxPullLimit(z);
    }

    public void setAutoFitTextSize(boolean z) {
        this.e = z;
        invalidate();
    }

    public void setBlackMode() {
        this.K0 = ContextCompat.getColor(getContext(), R.color.os_altitude_secondary_black_color);
        this.r0 = ContextCompat.getColor(getContext(), R.color.os_text_primary_ims_color);
    }

    public void setCurved(boolean z) {
        if (this.I == z) {
            return;
        }
        this.I = z;
        C();
        requestLayout();
        invalidate();
    }

    public void setCurvedArcDirection(int i) {
        if (this.J == i) {
            return;
        }
        this.J = i;
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000c A[PHI: r0
      0x000c: PHI (r0v4 float) = (r0v2 float), (r0v3 float) binds: [B:6:0x000a, B:9:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    public void setCurvedArcDirectionFactor(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f2) {
        if (this.K == f2) {
            return;
        }
        float f3 = 0.0f;
        if (f2 < 0.0f) {
            f2 = f3;
        } else {
            f3 = 1.0f;
            if (f2 > 1.0f) {
                f2 = f3;
            }
        }
        this.K = f2;
        invalidate();
    }

    public void setCurvedBoldForSelectedItem(boolean z) {
        this.M = z;
    }

    public void setCurvedBoldForSelectedItemTypeface(Typeface typeface) {
        this.N = typeface;
    }

    public void setCurvedNormalItemTypeface(Typeface typeface) {
        this.O = typeface;
    }

    @Deprecated
    public void setCurvedRefractRatio(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f2) {
        setRefractRatio(f2);
    }

    public void setCustomContentDescription(String str) {
        this.c1 = str;
    }

    public void setCyclic(boolean z) {
        if (this.j == z) {
            return;
        }
        this.j = z;
        forceFinishScroll();
        z();
        this.a0 = this.g0 * this.y0;
        invalidate();
    }

    public void setData(List<T> list) {
        if (list == null) {
            return;
        }
        this.k1 = -1.0f;
        this.l1 = -1.0f;
        if (this.mIsTouchStatus) {
            safeResetScrollOffsetY();
            if (Math.abs((int) ((Math.abs(this.a0) + (this.y0 / 2)) / F())) >= list.size()) {
                safeResetScrollOffsetY(-1);
            }
            this.P = list;
            C();
            z();
            requestLayout();
            invalidate();
            return;
        }
        this.P = list;
        if (this.Q || list.size() <= 0) {
            this.g0 = 0;
            this.h0 = 0;
        } else if (this.g0 >= this.P.size()) {
            int size = this.P.size() - 1;
            this.g0 = size;
            this.h0 = size;
        }
        C();
        z();
        this.a0 = this.g0 * this.y0;
        requestLayout();
        invalidate();
    }

    public void setDayWheel(boolean z) {
        this.D0 = z;
    }

    public void setDividerCap(Paint.Cap cap) {
        if (this.q == cap) {
            return;
        }
        this.q = cap;
        invalidate();
    }

    public void setDividerColor(@ColorInt int i) {
        if (this.m == i) {
            return;
        }
        this.m = i;
        invalidate();
    }

    public void setDividerColorRes(@ColorRes int i) {
        setDividerColor(ContextCompat.getColor(getContext(), i));
    }

    public void setDividerHeight(float f2) {
        setDividerHeight(f2, false);
    }

    public void setDividerPaddingForWrap(float f2) {
        setDividerPaddingForWrap(f2, false);
    }

    public void setDividerType(int i) {
        if (this.o == i) {
            return;
        }
        this.o = i;
        invalidate();
    }

    public void setDrawSelectedRect(boolean z) {
        this.s = z;
        invalidate();
    }

    public void setEditingEnabled(boolean z) {
        this.g1 = z;
    }

    public void setHourWheel(boolean z) {
        this.A0 = z;
    }

    public void setLineSpacing(float f2) {
        setLineSpacing(f2, false);
    }

    public void setMinuteWheel(boolean z) {
        this.B0 = z;
    }

    public void setMonthList(List<String> list) {
        this.I0 = list;
    }

    public void setNeedMaxPullLimit(boolean z) {
        this.V0 = z;
    }

    public void setOnDialogDismissListener(d dVar) {
        this.o1 = dVar;
    }

    public void setOnInputInvalidListener(e eVar) {
        this.p1 = eVar;
    }

    public void setOnItemSelectedListener(f fVar) {
    }

    public void setOnWheelChangedListener(g gVar) {
        this.l0 = gVar;
    }

    public void setPlayVolume(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f2) {
        h hVar = this.m0;
        if (hVar != null) {
            hVar.f(f2);
        }
    }

    public void setRefractRatio(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f2) {
        float f3 = this.L;
        this.L = f2;
        if (f2 > 1.0f || f2 < 0.0f) {
            this.L = 1.0f;
        }
        if (f3 == this.L) {
            return;
        }
        invalidate();
    }

    public void setResetSelectedPosition(boolean z) {
        this.Q = z;
    }

    public void setSelectedItemPosition(int i) {
        setSelectedItemPosition(i, false);
    }

    public void setSelectedRectColor(@ColorInt int i) {
        this.t = i;
        invalidate();
    }

    public void setSelectedRectColorRes(@ColorRes int i) {
        setSelectedRectColor(ContextCompat.getColor(getContext(), i));
    }

    public void setShowDivider(boolean z) {
        if (this.l == z) {
            return;
        }
        this.l = z;
        invalidate();
    }

    public void setSoundEffect(boolean z) {
        if (z && !this.n0 && this.m0 == null) {
            this.m0 = h.c();
            f0(getContext());
        }
        this.n0 = z;
    }

    public void setSoundEffectResource(@RawRes int i) {
        h hVar = this.m0;
        if (hVar != null) {
            hVar.b(getContext(), i);
        }
    }

    public void setTextAlign(int i) {
        if (this.k == i) {
            return;
        }
        this.k = i;
        J0();
        x();
        invalidate();
    }

    public void setTextBoundaryMargin(float f2) {
        setTextBoundaryMargin(f2, false);
    }

    public void setTextSecondColor(int i) {
        this.t0 = i;
        this.c.setColor(i);
        invalidate();
    }

    public void setTextSelectColor(int i) {
        this.r0 = i;
        invalidate();
    }

    public void setTextSizeSecond(int i) {
        this.p0 = i;
        if (this.I) {
            this.c.setTextSize(i * 1.37f);
        } else {
            this.c.setTextSize(i);
        }
        this.k1 = -1.0f;
        this.l1 = -1.0f;
        invalidate();
    }

    public void setTextSizeSelect(int i) {
        this.q0 = i;
        this.d.setTextSize(i);
        this.k1 = -1.0f;
        this.l1 = -1.0f;
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        setTypeface(typeface, false);
    }

    public void setVisibleItems(int i) {
        if (this.h == i) {
            return;
        }
        this.h = t(i);
        this.a0 = 0.0f;
        requestLayout();
        invalidate();
    }

    public void setWheelBackgroundColor(int i) {
        this.K0 = i;
    }

    public void setWheelHeight(int i) {
        this.y0 = i;
        invalidate();
    }

    public void setWheelWidth(int i) {
        this.x0 = i;
        invalidate();
    }

    public void setYearDays(Calendar calendar, boolean z) {
        this.G0 = calendar;
        this.z0 = z;
    }

    public void setYearWheel(boolean z) {
        this.C0 = z;
    }

    public final int t(int i) {
        return Math.abs(((i / 2) * 2) + 1);
    }

    public void t0(Object obj, int i) {
    }

    public final void u(float f2, float f3) {
        if (f2 == f3) {
            return;
        }
        if (this.n1 == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(new float[0]);
            this.n1 = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setInterpolator(new s53(0.25f, 0.0f, 0.0f, 1.0f));
            this.n1.setDuration(200L);
            this.n1.addUpdateListener(new b());
        }
        this.n1.setFloatValues(f2, f3);
        this.n1.start();
    }

    public void u0(int i, int i2) {
    }

    public final float v(TextPaint textPaint, String str, float f2, float f3) {
        if (TextUtils.isEmpty(str) || f3 <= 0.0f) {
            return Math.max(1.0f, f2);
        }
        float fMax = Math.max(1.0f, f2);
        float f4 = this.i1;
        float f5 = f2 - f4;
        float f6 = f2 - (f4 * 2.0f);
        float f7 = (f2 - (f4 * 2.0f)) - this.j1;
        textPaint.setTextSize(fMax);
        if (textPaint.measureText(str) <= f3) {
            return fMax;
        }
        if (f5 > 0.0f) {
            textPaint.setTextSize(f5);
            if (textPaint.measureText(str) <= f3) {
                return f5;
            }
        }
        if (f6 > 0.0f) {
            textPaint.setTextSize(f6);
            if (textPaint.measureText(str) <= f3) {
                return f6;
            }
        }
        return Math.max(f7, 1.0f);
    }

    public void v0(float f2) {
    }

    public final float w(float f2) {
        float fAbs = Math.abs(f2);
        int i = this.y0;
        if (fAbs > i / 2) {
            return (this.a0 < 0.0f ? -i : i) - f2;
        }
        return -f2;
    }

    public void w0(int i) {
    }

    public final void x() {
        int i = this.k;
        if (i == 0) {
            this.u = (int) (getPaddingLeft() + this.F);
        } else if (i != 2) {
            this.u = getWidth() / 2;
        } else {
            this.u = (int) ((getWidth() - getPaddingRight()) - this.F);
        }
        Paint.FontMetrics fontMetrics = this.f;
        float f2 = fontMetrics.ascent;
        this.g = (int) (f2 + ((fontMetrics.descent - f2) / 2.0f));
    }

    public void x0(int i) {
    }

    public final int y(int i) {
        return (int) ((i * this.y0) - this.a0);
    }

    public final void y0() {
        VelocityTracker velocityTracker = this.R;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.R = null;
        }
    }

    public final void z() {
        boolean z = this.j;
        this.V = z ? Integer.MIN_VALUE : 0;
        this.W = z ? Integer.MAX_VALUE : (this.P.size() - 1) * this.y0;
    }

    public void z0() {
        if (this.U.k()) {
            return;
        }
        ViewCompat.postOnAnimation(this, this.m1);
    }

    public WheelView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void safeResetScrollOffsetY(int i) {
        float f2 = this.e0 + (this.c0 - this.d0);
        this.e0 = f2;
        float F = f2 % F();
        this.e0 = F;
        float f3 = F + (F > 0.0f ? -F() : 0.0f);
        this.e0 = f3;
        float F2 = f3 + (F() * i);
        this.e0 = F2;
        this.a0 = F2;
        this.c0 = this.d0;
        this.h0 = getCurrentPosition();
        this.g0 = getCurrentPosition();
        s0();
    }

    public void setDividerHeight(float f2, boolean z) {
        float f3 = this.n;
        if (z) {
            f2 = H(f2);
        }
        this.n = f2;
        if (f3 == f2) {
            return;
        }
        invalidate();
    }

    public void setDividerPaddingForWrap(float f2, boolean z) {
        float f3 = this.p;
        if (z) {
            f2 = H(f2);
        }
        this.p = f2;
        if (f3 == f2) {
            return;
        }
        invalidate();
    }

    public void setLineSpacing(float f2, boolean z) {
        float f3 = this.i;
        if (z) {
            f2 = H(f2);
        }
        this.i = f2;
        if (f3 == f2) {
            return;
        }
        this.a0 = 0.0f;
        C();
        requestLayout();
        invalidate();
    }

    public void setSelectedItemPosition(int i, boolean z) {
        setSelectedItemPosition(i, z, 0);
    }

    public void setTextBoundaryMargin(float f2, boolean z) {
        float f3 = this.F;
        if (z) {
            f2 = H(f2);
        }
        this.F = f2;
        if (f3 == f2) {
            return;
        }
        requestLayout();
        invalidate();
    }

    public void setTypeface(Typeface typeface, boolean z) {
        if (typeface == null || this.b.getTypeface() == typeface) {
            return;
        }
        forceFinishScroll();
        this.i0 = z;
        if (z) {
            if (typeface.isBold()) {
                this.j0 = Typeface.create(typeface, 0);
                this.k0 = typeface;
            } else {
                this.j0 = typeface;
                this.k0 = Typeface.create(typeface, 1);
            }
            this.b.setTypeface(this.k0);
        } else {
            this.b.setTypeface(typeface);
        }
        C();
        x();
        this.a0 = this.g0 * this.y0;
        z();
        requestLayout();
        this.k1 = -1.0f;
        this.l1 = -1.0f;
        invalidate();
    }

    public WheelView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new Paint(1);
        this.c = new Paint(1);
        this.d = new Paint(1);
        this.q = Paint.Cap.ROUND;
        this.D = 0.0f;
        this.I = true;
        this.P = new ArrayList(1);
        this.Q = false;
        this.a0 = 0.0f;
        this.b0 = 0.0f;
        this.i0 = false;
        this.j0 = null;
        this.k0 = null;
        this.n0 = false;
        this.F0 = true;
        this.I0 = new ArrayList();
        this.L0 = new Matrix();
        this.M0 = new TextPaint(1);
        this.O0 = 720.0f;
        this.P0 = 2.0f;
        this.R0 = false;
        this.S0 = false;
        this.Z0 = 0.0f;
        this.a1 = 24;
        this.b1 = 0;
        this.e1 = false;
        this.f1 = "";
        this.g1 = true;
        this.h1 = false;
        this.i1 = 0.0f;
        this.j1 = 0.0f;
        this.k1 = -1.0f;
        this.l1 = -1.0f;
        this.m1 = new Runnable() {
            @Override
            public void run() {
                WheelView.this.I0();
                WheelView.this.z0();
                if (WheelView.this.U.k()) {
                    if (WheelView.this.l0 != null) {
                        WheelView.this.l0.c(0);
                    }
                    WheelView.this.w0(0);
                    WheelView wheelView = WheelView.this;
                    wheelView.announceForAccessibility(wheelView.getContentDescription());
                }
            }
        };
        e0(context, attributeSet);
        g0(context);
    }

    public void setSelectedItemPosition(int i, boolean z, int i2) {
        int iY;
        if (isPositionInRange(i) && (iY = y(i)) != 0) {
            if (!this.mIsTouchStatus) {
                abortFinishScroll();
            }
            if (z) {
                kx3 kx3Var = this.U;
                int i3 = (int) this.a0;
                if (i2 <= 0) {
                    i2 = 250;
                }
                kx3Var.l(0, i3, 0, iY, i2);
                i0();
                return;
            }
            G(iY);
            this.g0 = i;
            t0(this.P.get(i), this.g0);
            g gVar = this.l0;
            if (gVar != null) {
                gVar.b(this.g0);
                g gVar2 = this.l0;
                int i4 = this.g0;
                gVar2.a(i4, i4);
            }
            x0(this.g0);
            i0();
        }
    }

    public void safeResetScrollOffsetY() {
        int size = this.P.size();
        float f2 = this.e0 + (this.c0 - this.d0);
        this.e0 = f2;
        float F = f2 - (F() / 2);
        this.e0 = F;
        float F2 = F % (F() * size);
        this.e0 = F2;
        float F3 = F2 + (F() * size);
        this.e0 = F3;
        float F4 = F3 % (F() * size);
        this.e0 = F4;
        float F5 = F4 + (F() / 2);
        this.e0 = F5;
        this.a0 = F5;
        this.c0 = this.d0;
        this.h0 = getCurrentPosition();
        this.g0 = getCurrentPosition();
        s0();
    }
}
