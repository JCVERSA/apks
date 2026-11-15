package com.contrarywind.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.contrarywind.timer.InertiaTimerTask;
import com.contrarywind.timer.SmoothScrollTimerTask;
import com.google.android.material.timepicker.TimeModel;
import com.tn.lib.view.FlowLayout;
import java.text.DateFormatSymbols;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import o7.a;
import p7.b;

public class WheelView extends View {
    private float A;
    private float B;
    private float C;
    private float D;
    private int E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private int M;
    private float N;
    private long O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private float T;
    private final float U;
    private final List V;

    private DividerType f23331a;

    private Context f23332b;

    private Handler f23333c;

    private GestureDetector f23334d;

    private b f23335e;

    private boolean f23336f;

    private boolean f23337g;

    private ScheduledExecutorService f23338h;

    private ScheduledFuture f23339i;

    private Paint f23340j;

    private Paint f23341k;

    private Paint f23342l;

    private a f23343m;

    private String f23344n;

    private Boolean f23345o;

    private int f23346p;

    private int f23347q;

    private int f23348r;

    private int f23349s;

    private float f23350t;

    private Typeface f23351u;

    private int f23352v;

    private int f23353w;

    private int f23354x;

    private float f23355y;

    private boolean f23356z;

    public enum ACTION {
        CLICK,
        FLING,
        DAGGLE
    }

    public enum DividerType {
        FILL,
        WRAP
    }

    public WheelView(Context context) {
        this(context, null);
    }

    private String b(int i10) {
        try {
            return (String) this.V.get(i10 - 1);
        } catch (Exception unused) {
            return String.valueOf(i10);
        }
    }

    private String c(Object obj) {
        if (obj == null) {
            return "";
        }
        return obj instanceof Integer ? String.format(Locale.getDefault(), TimeModel.ZERO_LEADING_NUMBER_FORMAT, (Integer) obj) : obj.toString();
    }

    private int d(int i10) {
        if (i10 < 0) {
            return d(i10 + this.f23343m.a());
        }
        return i10 > this.f23343m.a() + (-1) ? d(i10 - this.f23343m.a()) : i10;
    }

    private String e(String str) {
        try {
            int i10 = Integer.parseInt(str);
            return i10 > 12 ? str : b(i10);
        } catch (Exception unused) {
            return str;
        }
    }

    private void f(Context context) {
        this.f23332b = context;
        this.f23333c = new q7.a(this);
        GestureDetector gestureDetector = new GestureDetector(context, new p7.a(this));
        this.f23334d = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.f23356z = true;
        this.D = 0.0f;
        this.E = -1;
        g();
    }

    private void g() {
        Paint paint = new Paint();
        this.f23340j = paint;
        paint.setColor(this.f23352v);
        this.f23340j.setAntiAlias(true);
        this.f23340j.setTypeface(this.f23351u);
        this.f23340j.setTextSize(this.f23346p);
        Paint paint2 = new Paint();
        this.f23341k = paint2;
        paint2.setColor(this.f23353w);
        this.f23341k.setAntiAlias(true);
        this.f23341k.setTextScaleX(1.1f);
        this.f23341k.setTypeface(this.f23351u);
        this.f23341k.setTextSize(this.f23346p);
        Paint paint3 = new Paint();
        this.f23342l = paint3;
        paint3.setColor(this.f23354x);
        this.f23342l.setAntiAlias(true);
        setLayerType(1, null);
    }

    private void h() {
        float f10 = this.f23355y;
        if (f10 < 1.0f) {
            this.f23355y = 1.0f;
        } else if (f10 > 4.0f) {
            this.f23355y = 4.0f;
        }
    }

    private void i() {
        Rect rect = new Rect();
        for (int i10 = 0; i10 < this.f23343m.a(); i10++) {
            String strC = c(this.f23343m.getItem(i10));
            this.f23341k.getTextBounds(strC, 0, strC.length(), rect);
            int iWidth = rect.width();
            if (iWidth > this.f23347q) {
                this.f23347q = iWidth;
            }
            this.f23341k.getTextBounds("星期", 0, 2, rect);
            this.f23348r = rect.height() + 2;
        }
        this.f23350t = this.f23348r * 3;
    }

    private void j(String str) {
        String str2;
        Rect rect = new Rect();
        this.f23341k.getTextBounds(str, 0, str.length(), rect);
        int i10 = this.Q;
        if (i10 == 3) {
            this.R = 0;
            return;
        }
        if (i10 == 5) {
            this.R = (this.K - rect.width()) - ((int) this.T);
            return;
        }
        if (i10 != 17) {
            return;
        }
        if (this.f23336f || (str2 = this.f23344n) == null || str2.equals("") || !this.f23337g) {
            this.R = (int) (((double) (this.K - rect.width())) * 0.5d);
        } else {
            this.R = (int) (((double) (this.K - rect.width())) * 0.25d);
        }
    }

    private void k(String str) {
        String str2;
        Rect rect = new Rect();
        this.f23340j.getTextBounds(str, 0, str.length(), rect);
        int i10 = this.Q;
        if (i10 == 3) {
            this.S = 0;
            return;
        }
        if (i10 == 5) {
            this.S = (this.K - rect.width()) - ((int) this.T);
            return;
        }
        if (i10 != 17) {
            return;
        }
        if (this.f23336f || (str2 = this.f23344n) == null || str2.equals("") || !this.f23337g) {
            this.S = (int) (((double) (this.K - rect.width())) * 0.5d);
        } else {
            this.S = (int) (((double) (this.K - rect.width())) * 0.25d);
        }
    }

    private void l(String str) {
        Rect rect = new Rect();
        this.f23341k.getTextBounds(str, 0, str.length(), rect);
        int i10 = this.f23346p;
        for (int iWidth = rect.width(); iWidth > this.K; iWidth = rect.width()) {
            i10--;
            this.f23341k.setTextSize(i10);
            this.f23341k.getTextBounds(str, 0, str.length(), rect);
        }
        this.f23340j.setTextSize(i10);
    }

    private void m() {
        if (this.f23343m == null) {
            return;
        }
        i();
        int i10 = (int) (this.f23350t * (this.I - 1));
        this.J = (int) (((double) (i10 * 2)) / 3.141592653589793d);
        this.L = (int) (((double) i10) / 3.141592653589793d);
        this.K = View.MeasureSpec.getSize(this.P);
        int i11 = this.J;
        float f10 = this.f23350t;
        this.A = (i11 - f10) / 2.0f;
        float f11 = (i11 + f10) / 2.0f;
        this.B = f11;
        this.C = (f11 - ((f10 - this.f23348r) / 2.0f)) - this.T;
        if (this.E == -1) {
            if (this.f23356z) {
                this.E = (this.f23343m.a() + 1) / 2;
            } else {
                this.E = 0;
            }
        }
        this.G = this.E;
    }

    public void cancelFuture() {
        ScheduledFuture scheduledFuture = this.f23339i;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.f23339i.cancel(true);
        this.f23339i = null;
    }

    public final a getAdapter() {
        return this.f23343m;
    }

    public final int getCurrentItem() {
        int i10;
        a aVar = this.f23343m;
        if (aVar == null) {
            return 0;
        }
        return (!this.f23356z || ((i10 = this.F) >= 0 && i10 < aVar.a())) ? Math.max(0, Math.min(this.F, this.f23343m.a() - 1)) : Math.max(0, Math.min(Math.abs(Math.abs(this.F) - this.f23343m.a()), this.f23343m.a() - 1));
    }

    @Override
    public Handler getHandler() {
        return this.f23333c;
    }

    public int getInitPosition() {
        return this.E;
    }

    public float getItemHeight() {
        return this.f23350t;
    }

    public int getItemsCount() {
        a aVar = this.f23343m;
        if (aVar != null) {
            return aVar.a();
        }
        return 0;
    }

    public int getTextWidth(Paint paint, String str) {
        if (str == null || str.length() <= 0) {
            return 0;
        }
        int length = str.length();
        float[] fArr = new float[length];
        paint.getTextWidths(str, fArr);
        int iCeil = 0;
        for (int i10 = 0; i10 < length; i10++) {
            iCeil += (int) Math.ceil(fArr[i10]);
        }
        return iCeil;
    }

    public float getTotalScrollY() {
        return this.D;
    }

    public void isCenterLabel(boolean z10) {
        this.f23337g = z10;
    }

    public boolean isLoop() {
        return this.f23356z;
    }

    /* JADX WARN: Code duplicated, block: B:99:0x0303  */
    @Override
    protected void onDraw(Canvas canvas) {
        int i10;
        float f10;
        boolean z10;
        String strC;
        int i11;
        if (this.f23343m == null) {
            return;
        }
        boolean z11 = false;
        int iMin = Math.min(Math.max(0, this.E), this.f23343m.a() - 1);
        this.E = iMin;
        Object[] objArr = new Object[this.I];
        int i12 = (int) (this.D / this.f23350t);
        this.H = i12;
        try {
            this.G = iMin + (i12 % this.f23343m.a());
            while (true) {
                int i13 = this.I;
                if (i10 >= i13) {
                    break;
                }
                int i14 = this.G - ((i13 / 2) - i10);
                if (this.f23356z) {
                    objArr[i10] = this.f23343m.getItem(d(i14));
                } else if (i14 < 0) {
                    objArr[i10] = "";
                } else if (i14 > this.f23343m.a() - 1) {
                    objArr[i10] = "";
                } else {
                    objArr[i10] = this.f23343m.getItem(i14);
                }
                i10++;
            }
        } catch (ArithmeticException unused) {
            Log.e("WheelView", "出错了！adapter.getItemsCount() == 0，联动数据不匹配");
        }
        if (this.f23356z) {
            if (this.G < 0) {
                this.G = this.f23343m.a() + this.G;
            }
            if (this.G > this.f23343m.a() - 1) {
                this.G -= this.f23343m.a();
            }
        } else {
            if (this.G < 0) {
                this.G = 0;
            }
            if (this.G > this.f23343m.a() - 1) {
                this.G = this.f23343m.a() - 1;
            }
        }
        float f11 = this.D % this.f23350t;
        i10 = 0;
        float f12 = 0.0f;
        if (this.f23331a == DividerType.WRAP) {
            float f13 = (TextUtils.isEmpty(this.f23344n) ? (this.K - this.f23347q) / 2 : (this.K - this.f23347q) / 4) - 12;
            if (f13 <= 0.0f) {
                f13 = 10.0f;
            }
            float f14 = f13;
            float f15 = this.K - f14;
            float f16 = this.A;
            canvas.drawLine(f14, f16, f15, f16, this.f23342l);
            float f17 = this.B;
            canvas.drawLine(f14, f17, f15, f17, this.f23342l);
        } else {
            float f18 = this.A;
            canvas.drawLine(0.0f, f18, this.K, f18, this.f23342l);
            float f19 = this.B;
            canvas.drawLine(0.0f, f19, this.K, f19, this.f23342l);
        }
        if (!TextUtils.isEmpty(this.f23344n) && this.f23337g) {
            canvas.drawText(this.f23344n, (this.K - getTextWidth(this.f23341k, this.f23344n)) - this.T, this.C, this.f23341k);
        }
        int i15 = 0;
        while (i15 < this.I) {
            canvas.save();
            double d10 = ((this.f23350t * i15) - f11) / this.L;
            float f20 = (float) (90.0d - ((d10 / 3.141592653589793d) * 180.0d));
            if (f20 >= 90.0f || f20 <= -90.0f) {
                f10 = f12;
                z10 = z11;
                canvas.restore();
            } else {
                float fPow = (float) Math.pow(Math.abs(f20) / 90.0f, 2.2d);
                if (this.f23337g || TextUtils.isEmpty(this.f23344n) || TextUtils.isEmpty(c(objArr[i15]))) {
                    strC = c(objArr[i15]);
                } else {
                    strC = c(objArr[i15]) + this.f23344n;
                }
                if (this.f23345o.booleanValue()) {
                    strC = e(strC);
                }
                l(strC);
                j(strC);
                k(strC);
                float fCos = (float) ((((double) this.L) - (Math.cos(d10) * ((double) this.L))) - ((Math.sin(d10) * ((double) this.f23348r)) / 2.0d));
                canvas.translate(0.0f, fCos);
                float f21 = this.A;
                if (fCos > f21 || this.f23348r + fCos < f21) {
                    float f22 = this.B;
                    if (fCos > f22 || this.f23348r + fCos < f22) {
                        if (fCos >= f21) {
                            int i16 = this.f23348r;
                            if (i16 + fCos <= f22) {
                                canvas.drawText(strC, this.R, i16 - this.T, this.f23341k);
                                this.F = this.G - ((this.I / 2) - i15);
                            }
                            canvas.restore();
                            this.f23341k.setTextSize(this.f23346p);
                        }
                        canvas.save();
                        z10 = false;
                        canvas.clipRect(0, 0, this.K, (int) this.f23350t);
                        canvas.scale(1.0f, ((float) Math.sin(d10)) * 1.0f);
                        Paint paint = this.f23340j;
                        int i17 = this.f23349s;
                        if (i17 == 0) {
                            i11 = 0;
                        } else {
                            if (i17 > 0) {
                                f10 = 0.0f;
                                i11 = 1;
                            } else {
                                i11 = -1;
                            }
                            paint.setTextSkewX(i11 * (f20 <= f10 ? 1 : -1) * 0.5f * fPow);
                            this.f23340j.setAlpha((int) ((1.0f - fPow) * 255.0f));
                            canvas.drawText(strC, this.S + (this.f23349s * fPow), this.f23348r, this.f23340j);
                            canvas.restore();
                            canvas.restore();
                            this.f23341k.setTextSize(this.f23346p);
                        }
                        f10 = 0.0f;
                        paint.setTextSkewX(i11 * (f20 <= f10 ? 1 : -1) * 0.5f * fPow);
                        this.f23340j.setAlpha((int) ((1.0f - fPow) * 255.0f));
                        canvas.drawText(strC, this.S + (this.f23349s * fPow), this.f23348r, this.f23340j);
                        canvas.restore();
                        canvas.restore();
                        this.f23341k.setTextSize(this.f23346p);
                    } else {
                        canvas.save();
                        canvas.clipRect(0.0f, 0.0f, this.K, this.B - fCos);
                        canvas.scale(1.0f, ((float) Math.sin(d10)) * 1.0f);
                        canvas.drawText(strC, this.R, this.f23348r - this.T, this.f23341k);
                        canvas.restore();
                        canvas.save();
                        canvas.clipRect(0.0f, this.B - fCos, this.K, (int) this.f23350t);
                        canvas.scale(1.0f, ((float) Math.sin(d10)) * 1.0f);
                        canvas.drawText(strC, this.S, this.f23348r, this.f23340j);
                        canvas.restore();
                    }
                } else {
                    canvas.save();
                    canvas.clipRect(0.0f, 0.0f, this.K, this.A - fCos);
                    canvas.scale(1.0f, ((float) Math.sin(d10)) * 1.0f);
                    canvas.drawText(strC, this.S, this.f23348r, this.f23340j);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0.0f, this.A - fCos, this.K, (int) this.f23350t);
                    canvas.scale(1.0f, ((float) Math.sin(d10)) * 1.0f);
                    canvas.drawText(strC, this.R, this.f23348r - this.T, this.f23341k);
                    canvas.restore();
                }
                f10 = 0.0f;
                z10 = false;
                canvas.restore();
                this.f23341k.setTextSize(this.f23346p);
            }
            i15++;
            z11 = z10;
            f12 = f10;
        }
    }

    public final void onItemSelected() {
        if (this.f23335e != null) {
            postDelayed(new Runnable() {
                @Override
                public void run() {
                    WheelView.this.f23335e.a(WheelView.this.getCurrentItem());
                }
            }, 200L);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        this.P = i10;
        m();
        setMeasuredDimension(this.K, this.J);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = this.f23334d.onTouchEvent(motionEvent);
        float f10 = (-this.E) * this.f23350t;
        float fA = ((this.f23343m.a() - 1) - this.E) * this.f23350t;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.O = System.currentTimeMillis();
            cancelFuture();
            this.N = motionEvent.getRawY();
        } else {
            if (action == 2) {
                float rawY = this.N - motionEvent.getRawY();
                this.N = motionEvent.getRawY();
                float f11 = this.D + rawY;
                this.D = f11;
                if (!this.f23356z) {
                    float f12 = this.f23350t;
                    if ((f11 - (f12 * 0.25f) < f10 && rawY < 0.0f) || ((f12 * 0.25f) + f11 > fA && rawY > 0.0f)) {
                        this.D = f11 - rawY;
                    }
                }
                return true;
            }
            if (!zOnTouchEvent) {
                float y10 = motionEvent.getY();
                int i10 = this.L;
                double dAcos = Math.acos((i10 - y10) / i10) * ((double) this.L);
                float f13 = this.f23350t;
                this.M = (int) (((((int) ((dAcos + ((double) (f13 / 2.0f))) / ((double) f13))) - (this.I / 2)) * f13) - (((this.D % f13) + f13) % f13));
                if (System.currentTimeMillis() - this.O > 120) {
                    smoothScroll(ACTION.DAGGLE);
                } else {
                    smoothScroll(ACTION.CLICK);
                }
            }
        }
        if (motionEvent.getAction() != 0) {
            invalidate();
        }
        return true;
    }

    public final void scrollBy(float f10) {
        cancelFuture();
        this.f23339i = this.f23338h.scheduleWithFixedDelay(new InertiaTimerTask(this, f10), 0L, 5L, TimeUnit.MILLISECONDS);
    }

    public final void setAdapter(a aVar) {
        this.f23343m = aVar;
        m();
        invalidate();
    }

    public void setConvertMonth(boolean z10) {
        this.f23345o = Boolean.valueOf(z10);
    }

    public final void setCurrentItem(int i10) {
        this.F = i10;
        this.E = i10;
        this.D = 0.0f;
        invalidate();
    }

    public final void setCyclic(boolean z10) {
        this.f23356z = z10;
    }

    public void setDividerColor(int i10) {
        this.f23354x = i10;
        this.f23342l.setColor(i10);
    }

    public void setDividerType(DividerType dividerType) {
        this.f23331a = dividerType;
    }

    public void setGravity(int i10) {
        this.Q = i10;
    }

    public void setIsOptions(boolean z10) {
        this.f23336f = z10;
    }

    public void setLabel(String str) {
        this.f23344n = str;
    }

    public void setLineSpacingMultiplier(float f10) {
        if (f10 != 0.0f) {
            this.f23355y = f10;
            h();
        }
    }

    public final void setOnItemSelectedListener(b bVar) {
        this.f23335e = bVar;
    }

    public void setTextColorCenter(int i10) {
        this.f23353w = i10;
        this.f23341k.setColor(i10);
    }

    public void setTextColorOut(int i10) {
        this.f23352v = i10;
        this.f23340j.setColor(i10);
    }

    public final void setTextSize(float f10) {
        if (f10 > 0.0f) {
            int i10 = (int) (this.f23332b.getResources().getDisplayMetrics().density * f10);
            this.f23346p = i10;
            this.f23340j.setTextSize(i10);
            this.f23341k.setTextSize(this.f23346p);
        }
    }

    public void setTextXOffset(int i10) {
        this.f23349s = i10;
        if (i10 != 0) {
            this.f23341k.setTextScaleX(1.0f);
        }
    }

    public void setTotalScrollY(float f10) {
        this.D = f10;
    }

    public final void setTypeface(Typeface typeface) {
        this.f23351u = typeface;
        this.f23340j.setTypeface(typeface);
        this.f23341k.setTypeface(this.f23351u);
    }

    public void smoothScroll(ACTION action) {
        cancelFuture();
        if (action == ACTION.FLING || action == ACTION.DAGGLE) {
            float f10 = this.D;
            float f11 = this.f23350t;
            int i10 = (int) (((f10 % f11) + f11) % f11);
            this.M = i10;
            if (i10 > f11 / 2.0f) {
                this.M = (int) (f11 - i10);
            } else {
                this.M = -i10;
            }
        }
        this.f23339i = this.f23338h.scheduleWithFixedDelay(new SmoothScrollTimerTask(this, this.M), 0L, 10L, TimeUnit.MILLISECONDS);
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23336f = false;
        this.f23337g = true;
        this.f23338h = Executors.newSingleThreadScheduledExecutor();
        this.f23345o = Boolean.FALSE;
        this.f23351u = Typeface.MONOSPACE;
        this.f23355y = 4.0f;
        this.I = 5;
        this.M = 0;
        this.N = 0.0f;
        this.O = 0L;
        this.Q = 17;
        this.R = 0;
        this.S = 0;
        this.U = 0.5f;
        this.V = Arrays.asList(new DateFormatSymbols(Locale.getDefault()).getShortMonths());
        this.f23346p = getResources().getDimensionPixelSize(R$dimen.pickerview_textsize);
        float f10 = getResources().getDisplayMetrics().density;
        if (f10 < 1.0f) {
            this.T = 2.4f;
        } else if (1.0f <= f10 && f10 < 2.0f) {
            this.T = 3.6f;
        } else if (1.0f <= f10 && f10 < 2.0f) {
            this.T = 4.5f;
        } else if (2.0f <= f10 && f10 < 3.0f) {
            this.T = 6.0f;
        } else if (f10 >= 3.0f) {
            this.T = f10 * 2.5f;
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.pickerview, 0, 0);
            this.Q = typedArrayObtainStyledAttributes.getInt(R$styleable.pickerview_wheelview_gravity, 17);
            this.f23352v = typedArrayObtainStyledAttributes.getColor(R$styleable.pickerview_wheelview_textColorOut, FlowLayout.SPACING_AUTO);
            this.f23353w = typedArrayObtainStyledAttributes.getColor(R$styleable.pickerview_wheelview_textColorCenter, -16711936);
            this.f23354x = typedArrayObtainStyledAttributes.getColor(R$styleable.pickerview_wheelview_dividerColor, 855638016);
            this.f23346p = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.pickerview_wheelview_textSize, this.f23346p);
            this.f23355y = typedArrayObtainStyledAttributes.getFloat(R$styleable.pickerview_wheelview_lineSpacingMultiplier, this.f23355y);
            typedArrayObtainStyledAttributes.recycle();
        }
        h();
        f(context);
    }
}
