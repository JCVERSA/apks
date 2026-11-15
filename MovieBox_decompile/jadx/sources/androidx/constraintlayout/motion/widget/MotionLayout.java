package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import com.tn.lib.view.FlowLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    public static boolean IS_IN_EDIT_MODE = false;
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_NEVER_TO_END = 7;
    public static final int TOUCH_UP_NEVER_TO_START = 6;
    public static final int TOUCH_UP_STOP = 3;
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
    private v0.b A;
    private RectF A0;
    private b B;
    private View B0;
    private androidx.constraintlayout.motion.widget.b C;
    private Matrix C0;
    boolean D;
    ArrayList D0;
    int E;
    int F;
    int G;
    int H;
    boolean I;
    float J;
    float K;
    long L;
    float M;
    private boolean N;
    private ArrayList O;
    private ArrayList P;
    private ArrayList Q;
    private CopyOnWriteArrayList R;
    private int S;
    private long T;
    private float U;
    private int V;
    private float W;

    p f6837a;

    boolean f6838a0;

    Interpolator f6839b;

    protected boolean f6840b0;

    Interpolator f6841c;

    int f6842c0;

    float f6843d;

    int f6844d0;

    private int f6845e;

    int f6846e0;

    int f6847f;

    int f6848f0;

    private int f6849g;

    int f6850g0;

    private int f6851h;

    int f6852h0;

    private int f6853i;

    float f6854i0;

    private boolean f6855j;

    private androidx.constraintlayout.core.motion.utils.d f6856j0;

    HashMap f6857k;

    private boolean f6858k0;

    private long f6859l;

    private g f6860l0;

    private float f6861m;

    private Runnable f6862m0;

    float f6863n;

    private int[] f6864n0;

    float f6865o;

    int f6866o0;

    private long f6867p;

    private boolean f6868p0;

    float f6869q;

    int f6870q0;

    private boolean f6871r;

    HashMap f6872r0;

    boolean f6873s;

    private int f6874s0;

    boolean f6875t;

    private int f6876t0;

    private h f6877u;

    private int f6878u0;

    private float f6879v;

    Rect f6880v0;

    private float f6881w;

    private boolean f6882w0;

    int f6883x;

    TransitionState f6884x0;

    c f6885y;

    d f6886y0;

    private boolean f6887z;

    private boolean f6888z0;

    enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    static class a {

        static final int[] f6889a;

        static {
            int[] iArr = new int[TransitionState.values().length];
            f6889a = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6889a[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6889a[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6889a[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class b extends n {

        float f6890a = 0.0f;

        float f6891b = 0.0f;

        float f6892c;

        b() {
        }

        @Override
        public float a() {
            return MotionLayout.this.f6843d;
        }

        public void b(float f10, float f11, float f12) {
            this.f6890a = f10;
            this.f6891b = f11;
            this.f6892c = f12;
        }

        @Override
        public float getInterpolation(float f10) {
            float f11;
            float f12;
            float f13 = this.f6890a;
            if (f13 > 0.0f) {
                float f14 = this.f6892c;
                if (f13 / f14 < f10) {
                    f10 = f13 / f14;
                }
                MotionLayout.this.f6843d = f13 - (f14 * f10);
                f11 = (f13 * f10) - (((f14 * f10) * f10) / 2.0f);
                f12 = this.f6891b;
            } else {
                float f15 = this.f6892c;
                if ((-f13) / f15 < f10) {
                    f10 = (-f13) / f15;
                }
                MotionLayout.this.f6843d = (f15 * f10) + f13;
                f11 = (f13 * f10) + (((f15 * f10) * f10) / 2.0f);
                f12 = this.f6891b;
            }
            return f11 + f12;
        }
    }

    private class c {

        float[] f6894a;

        int[] f6895b;

        float[] f6896c;

        Path f6897d;

        Paint f6898e;

        Paint f6899f;

        Paint f6900g;

        Paint f6901h;

        Paint f6902i;

        private float[] f6903j;

        DashPathEffect f6909p;

        int f6910q;

        int f6913t;

        final int f6904k = -21965;

        final int f6905l = -2067046;

        final int f6906m = -13391360;

        final int f6907n = 1996488704;

        final int f6908o = 10;

        Rect f6911r = new Rect();

        boolean f6912s = false;

        public c() {
            this.f6913t = 1;
            Paint paint = new Paint();
            this.f6898e = paint;
            paint.setAntiAlias(true);
            this.f6898e.setColor(-21965);
            this.f6898e.setStrokeWidth(2.0f);
            Paint paint2 = this.f6898e;
            Paint.Style style = Paint.Style.STROKE;
            paint2.setStyle(style);
            Paint paint3 = new Paint();
            this.f6899f = paint3;
            paint3.setAntiAlias(true);
            this.f6899f.setColor(-2067046);
            this.f6899f.setStrokeWidth(2.0f);
            this.f6899f.setStyle(style);
            Paint paint4 = new Paint();
            this.f6900g = paint4;
            paint4.setAntiAlias(true);
            this.f6900g.setColor(-13391360);
            this.f6900g.setStrokeWidth(2.0f);
            this.f6900g.setStyle(style);
            Paint paint5 = new Paint();
            this.f6901h = paint5;
            paint5.setAntiAlias(true);
            this.f6901h.setColor(-13391360);
            this.f6901h.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.f6903j = new float[8];
            Paint paint6 = new Paint();
            this.f6902i = paint6;
            paint6.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.f6909p = dashPathEffect;
            this.f6900g.setPathEffect(dashPathEffect);
            this.f6896c = new float[100];
            this.f6895b = new int[50];
            if (this.f6912s) {
                this.f6898e.setStrokeWidth(8.0f);
                this.f6902i.setStrokeWidth(8.0f);
                this.f6899f.setStrokeWidth(8.0f);
                this.f6913t = 4;
            }
        }

        private void c(Canvas canvas) {
            canvas.drawLines(this.f6894a, this.f6898e);
        }

        private void d(Canvas canvas) {
            boolean z10 = false;
            boolean z11 = false;
            for (int i10 = 0; i10 < this.f6910q; i10++) {
                int i11 = this.f6895b[i10];
                if (i11 == 1) {
                    z10 = true;
                }
                if (i11 == 0) {
                    z11 = true;
                }
            }
            if (z10) {
                g(canvas);
            }
            if (z11) {
                e(canvas);
            }
        }

        private void e(Canvas canvas) {
            float[] fArr = this.f6894a;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[fArr.length - 2];
            float f13 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f10, f12), Math.max(f11, f13), Math.max(f10, f12), Math.max(f11, f13), this.f6900g);
            canvas.drawLine(Math.min(f10, f12), Math.min(f11, f13), Math.min(f10, f12), Math.max(f11, f13), this.f6900g);
        }

        private void f(Canvas canvas, float f10, float f11) {
            float[] fArr = this.f6894a;
            float f12 = fArr[0];
            float f13 = fArr[1];
            float f14 = fArr[fArr.length - 2];
            float f15 = fArr[fArr.length - 1];
            float fMin = Math.min(f12, f14);
            float fMax = Math.max(f13, f15);
            float fMin2 = f10 - Math.min(f12, f14);
            float fMax2 = Math.max(f13, f15) - f11;
            String str = "" + (((int) (((double) ((fMin2 * 100.0f) / Math.abs(f14 - f12))) + 0.5d)) / 100.0f);
            l(str, this.f6901h);
            canvas.drawText(str, ((fMin2 / 2.0f) - (this.f6911r.width() / 2)) + fMin, f11 - 20.0f, this.f6901h);
            canvas.drawLine(f10, f11, Math.min(f12, f14), f11, this.f6900g);
            String str2 = "" + (((int) (((double) ((fMax2 * 100.0f) / Math.abs(f15 - f13))) + 0.5d)) / 100.0f);
            l(str2, this.f6901h);
            canvas.drawText(str2, f10 + 5.0f, fMax - ((fMax2 / 2.0f) - (this.f6911r.height() / 2)), this.f6901h);
            canvas.drawLine(f10, f11, f10, Math.max(f13, f15), this.f6900g);
        }

        private void g(Canvas canvas) {
            float[] fArr = this.f6894a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f6900g);
        }

        private void h(Canvas canvas, float f10, float f11) {
            float[] fArr = this.f6894a;
            float f12 = fArr[0];
            float f13 = fArr[1];
            float f14 = fArr[fArr.length - 2];
            float f15 = fArr[fArr.length - 1];
            float fHypot = (float) Math.hypot(f12 - f14, f13 - f15);
            float f16 = f14 - f12;
            float f17 = f15 - f13;
            float f18 = (((f10 - f12) * f16) + ((f11 - f13) * f17)) / (fHypot * fHypot);
            float f19 = f12 + (f16 * f18);
            float f20 = f13 + (f18 * f17);
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f19, f20);
            float fHypot2 = (float) Math.hypot(f19 - f10, f20 - f11);
            String str = "" + (((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
            l(str, this.f6901h);
            canvas.drawTextOnPath(str, path, (fHypot2 / 2.0f) - (this.f6911r.width() / 2), -20.0f, this.f6901h);
            canvas.drawLine(f10, f11, f19, f20, this.f6900g);
        }

        private void i(Canvas canvas, float f10, float f11, int i10, int i11) {
            String str = "" + (((int) (((double) (((f10 - (i10 / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i10))) + 0.5d)) / 100.0f);
            l(str, this.f6901h);
            canvas.drawText(str, ((f10 / 2.0f) - (this.f6911r.width() / 2)) + 0.0f, f11 - 20.0f, this.f6901h);
            canvas.drawLine(f10, f11, Math.min(0.0f, 1.0f), f11, this.f6900g);
            String str2 = "" + (((int) (((double) (((f11 - (i11 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i11))) + 0.5d)) / 100.0f);
            l(str2, this.f6901h);
            canvas.drawText(str2, f10 + 5.0f, 0.0f - ((f11 / 2.0f) - (this.f6911r.height() / 2)), this.f6901h);
            canvas.drawLine(f10, f11, f10, Math.max(0.0f, 1.0f), this.f6900g);
        }

        private void j(Canvas canvas, m mVar) {
            this.f6897d.reset();
            for (int i10 = 0; i10 <= 50; i10++) {
                mVar.e(i10 / 50, this.f6903j, 0);
                Path path = this.f6897d;
                float[] fArr = this.f6903j;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.f6897d;
                float[] fArr2 = this.f6903j;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.f6897d;
                float[] fArr3 = this.f6903j;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.f6897d;
                float[] fArr4 = this.f6903j;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.f6897d.close();
            }
            this.f6898e.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.f6897d, this.f6898e);
            canvas.translate(-2.0f, -2.0f);
            this.f6898e.setColor(FlowLayout.SPACING_AUTO);
            canvas.drawPath(this.f6897d, this.f6898e);
        }

        private void k(Canvas canvas, int i10, int i11, m mVar) {
            int width;
            int height;
            View view = mVar.f7068b;
            if (view != null) {
                width = view.getWidth();
                height = mVar.f7068b.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            for (int i12 = 1; i12 < i11 - 1; i12++) {
                if (i10 != 4 || this.f6895b[i12 - 1] != 0) {
                    float[] fArr = this.f6896c;
                    int i13 = i12 * 2;
                    float f10 = fArr[i13];
                    float f11 = fArr[i13 + 1];
                    this.f6897d.reset();
                    this.f6897d.moveTo(f10, f11 + 10.0f);
                    this.f6897d.lineTo(f10 + 10.0f, f11);
                    this.f6897d.lineTo(f10, f11 - 10.0f);
                    this.f6897d.lineTo(f10 - 10.0f, f11);
                    this.f6897d.close();
                    int i14 = i12 - 1;
                    mVar.q(i14);
                    if (i10 == 4) {
                        int i15 = this.f6895b[i14];
                        if (i15 == 1) {
                            h(canvas, f10 - 0.0f, f11 - 0.0f);
                        } else if (i15 == 0) {
                            f(canvas, f10 - 0.0f, f11 - 0.0f);
                        } else {
                            if (i15 == 2) {
                                i(canvas, f10 - 0.0f, f11 - 0.0f, width, height);
                            }
                            canvas.drawPath(this.f6897d, this.f6902i);
                        }
                        canvas.drawPath(this.f6897d, this.f6902i);
                    } else {
                        f11 = f11;
                        f10 = f10;
                    }
                    if (i10 == 2) {
                        h(canvas, f10 - 0.0f, f11 - 0.0f);
                    }
                    if (i10 == 3) {
                        f(canvas, f10 - 0.0f, f11 - 0.0f);
                    }
                    if (i10 == 6) {
                        i(canvas, f10 - 0.0f, f11 - 0.0f, width, height);
                    }
                    canvas.drawPath(this.f6897d, this.f6902i);
                }
            }
            float[] fArr2 = this.f6894a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f6899f);
                float[] fArr3 = this.f6894a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f6899f);
            }
        }

        public void a(Canvas canvas, HashMap map, int i10, int i11) {
            if (map == null || map.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (i11 & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.f6849g) + ":" + MotionLayout.this.getProgress();
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.f6901h);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.f6898e);
            }
            for (m mVar : map.values()) {
                int iM = mVar.m();
                if (i11 > 0 && iM == 0) {
                    iM = 1;
                }
                if (iM != 0) {
                    this.f6910q = mVar.c(this.f6896c, this.f6895b);
                    if (iM >= 1) {
                        int i12 = i10 / 16;
                        float[] fArr = this.f6894a;
                        if (fArr == null || fArr.length != i12 * 2) {
                            this.f6894a = new float[i12 * 2];
                            this.f6897d = new Path();
                        }
                        int i13 = this.f6913t;
                        canvas.translate(i13, i13);
                        this.f6898e.setColor(1996488704);
                        this.f6902i.setColor(1996488704);
                        this.f6899f.setColor(1996488704);
                        this.f6900g.setColor(1996488704);
                        mVar.d(this.f6894a, i12);
                        b(canvas, iM, this.f6910q, mVar);
                        this.f6898e.setColor(-21965);
                        this.f6899f.setColor(-2067046);
                        this.f6902i.setColor(-2067046);
                        this.f6900g.setColor(-13391360);
                        int i14 = this.f6913t;
                        canvas.translate(-i14, -i14);
                        b(canvas, iM, this.f6910q, mVar);
                        if (iM == 5) {
                            j(canvas, mVar);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void b(Canvas canvas, int i10, int i11, m mVar) {
            if (i10 == 4) {
                d(canvas);
            }
            if (i10 == 2) {
                g(canvas);
            }
            if (i10 == 3) {
                e(canvas);
            }
            c(canvas);
            k(canvas, i10, i11, mVar);
        }

        void l(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.f6911r);
        }
    }

    class d {

        androidx.constraintlayout.core.widgets.d f6915a = new androidx.constraintlayout.core.widgets.d();

        androidx.constraintlayout.core.widgets.d f6916b = new androidx.constraintlayout.core.widgets.d();

        androidx.constraintlayout.widget.b f6917c = null;

        androidx.constraintlayout.widget.b f6918d = null;

        int f6919e;

        int f6920f;

        d() {
        }

        private void b(int i10, int i11) {
            int optimizationLevel = MotionLayout.this.getOptimizationLevel();
            MotionLayout motionLayout = MotionLayout.this;
            if (motionLayout.f6847f == motionLayout.getStartState()) {
                MotionLayout motionLayout2 = MotionLayout.this;
                androidx.constraintlayout.core.widgets.d dVar = this.f6916b;
                androidx.constraintlayout.widget.b bVar = this.f6918d;
                motionLayout2.resolveSystem(dVar, optimizationLevel, (bVar == null || bVar.f7450d == 0) ? i10 : i11, (bVar == null || bVar.f7450d == 0) ? i11 : i10);
                androidx.constraintlayout.widget.b bVar2 = this.f6917c;
                if (bVar2 != null) {
                    MotionLayout motionLayout3 = MotionLayout.this;
                    androidx.constraintlayout.core.widgets.d dVar2 = this.f6915a;
                    int i12 = bVar2.f7450d;
                    int i13 = i12 == 0 ? i10 : i11;
                    if (i12 == 0) {
                        i10 = i11;
                    }
                    motionLayout3.resolveSystem(dVar2, optimizationLevel, i13, i10);
                    return;
                }
                return;
            }
            androidx.constraintlayout.widget.b bVar3 = this.f6917c;
            if (bVar3 != null) {
                MotionLayout motionLayout4 = MotionLayout.this;
                androidx.constraintlayout.core.widgets.d dVar3 = this.f6915a;
                int i14 = bVar3.f7450d;
                motionLayout4.resolveSystem(dVar3, optimizationLevel, i14 == 0 ? i10 : i11, i14 == 0 ? i11 : i10);
            }
            MotionLayout motionLayout5 = MotionLayout.this;
            androidx.constraintlayout.core.widgets.d dVar4 = this.f6916b;
            androidx.constraintlayout.widget.b bVar4 = this.f6918d;
            int i15 = (bVar4 == null || bVar4.f7450d == 0) ? i10 : i11;
            if (bVar4 == null || bVar4.f7450d == 0) {
                i10 = i11;
            }
            motionLayout5.resolveSystem(dVar4, optimizationLevel, i15, i10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void j(androidx.constraintlayout.core.widgets.d dVar, androidx.constraintlayout.widget.b bVar) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.a aVar = new Constraints.a(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, dVar);
            sparseArray.put(MotionLayout.this.getId(), dVar);
            if (bVar != null && bVar.f7450d != 0) {
                MotionLayout motionLayout = MotionLayout.this;
                motionLayout.resolveSystem(this.f6916b, motionLayout.getOptimizationLevel(), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getHeight(), 1073741824), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getWidth(), 1073741824));
            }
            for (ConstraintWidget constraintWidget : dVar.v1()) {
                constraintWidget.D0(true);
                sparseArray.put(((View) constraintWidget.u()).getId(), constraintWidget);
            }
            for (ConstraintWidget constraintWidget2 : dVar.v1()) {
                View view = (View) constraintWidget2.u();
                bVar.l(view.getId(), aVar);
                constraintWidget2.o1(bVar.D(view.getId()));
                constraintWidget2.P0(bVar.y(view.getId()));
                if (view instanceof ConstraintHelper) {
                    bVar.j((ConstraintHelper) view, constraintWidget2, aVar, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).validateParams();
                    }
                }
                aVar.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                MotionLayout.this.applyConstraintsFromLayoutParams(false, view, constraintWidget2, aVar, sparseArray);
                if (bVar.C(view.getId()) == 1) {
                    constraintWidget2.n1(view.getVisibility());
                } else {
                    constraintWidget2.n1(bVar.B(view.getId()));
                }
            }
            for (ConstraintWidget constraintWidget3 : dVar.v1()) {
                if (constraintWidget3 instanceof androidx.constraintlayout.core.widgets.i) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) constraintWidget3.u();
                    t0.a aVar2 = (t0.a) constraintWidget3;
                    constraintHelper.updatePreLayout(dVar, aVar2, sparseArray);
                    ((androidx.constraintlayout.core.widgets.i) aVar2).y1();
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:24:0x00e8  */
        /* JADX WARN: Code duplicated, block: B:26:0x00f0  */
        /* JADX WARN: Code duplicated, block: B:27:0x0108  */
        /* JADX WARN: Code duplicated, block: B:29:0x010e  */
        /* JADX WARN: Code duplicated, block: B:42:0x013c A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:44:0x013c A[SYNTHETIC] */
        /* JADX WARN: Instruction removed from duplicated block: B:29:0x010e, please report this as an issue */
        public void a() {
            ConstraintWidget constraintWidgetD;
            int childCount = MotionLayout.this.getChildCount();
            MotionLayout.this.f6857k.clear();
            SparseArray sparseArray = new SparseArray();
            int[] iArr = new int[childCount];
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = MotionLayout.this.getChildAt(i10);
                m mVar = new m(childAt);
                int id2 = childAt.getId();
                iArr[i10] = id2;
                sparseArray.put(id2, mVar);
                MotionLayout.this.f6857k.put(childAt, mVar);
            }
            int i11 = 0;
            while (i11 < childCount) {
                View childAt2 = MotionLayout.this.getChildAt(i11);
                m mVar2 = (m) MotionLayout.this.f6857k.get(childAt2);
                if (mVar2 == null) {
                    sparseArray = sparseArray;
                } else {
                    if (this.f6917c != null) {
                        ConstraintWidget constraintWidgetD2 = d(this.f6915a, childAt2);
                        if (constraintWidgetD2 != null) {
                            mVar2.F(MotionLayout.this.Y(constraintWidgetD2), this.f6917c, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                        } else if (MotionLayout.this.f6883x != 0) {
                            Log.e("MotionLayout", androidx.constraintlayout.motion.widget.a.b() + "no widget for  " + androidx.constraintlayout.motion.widget.a.d(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    } else {
                        if (MotionLayout.this.f6868p0) {
                            v0.e eVar = (v0.e) MotionLayout.this.f6872r0.get(childAt2);
                            MotionLayout motionLayout = MotionLayout.this;
                            mVar2.G(eVar, childAt2, motionLayout.f6870q0, motionLayout.f6874s0, MotionLayout.this.f6876t0);
                        }
                        if (this.f6918d == null) {
                            constraintWidgetD = d(this.f6916b, childAt2);
                            if (constraintWidgetD != null) {
                                mVar2.C(MotionLayout.this.Y(constraintWidgetD), this.f6918d, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                            } else if (MotionLayout.this.f6883x != 0) {
                                Log.e("MotionLayout", androidx.constraintlayout.motion.widget.a.b() + "no widget for  " + androidx.constraintlayout.motion.widget.a.d(childAt2) + " (" + childAt2.getClass().getName() + ")");
                            }
                        }
                    }
                    if (this.f6918d == null) {
                        constraintWidgetD = d(this.f6916b, childAt2);
                        if (constraintWidgetD != null) {
                            mVar2.C(MotionLayout.this.Y(constraintWidgetD), this.f6918d, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                        } else if (MotionLayout.this.f6883x != 0) {
                            Log.e("MotionLayout", androidx.constraintlayout.motion.widget.a.b() + "no widget for  " + androidx.constraintlayout.motion.widget.a.d(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
                i11++;
                sparseArray = sparseArray;
            }
            SparseArray sparseArray2 = sparseArray;
            int i12 = 0;
            while (i12 < childCount) {
                SparseArray sparseArray3 = sparseArray2;
                m mVar3 = (m) sparseArray3.get(iArr[i12]);
                int iH = mVar3.h();
                if (iH != -1) {
                    mVar3.J((m) sparseArray3.get(iH));
                }
                i12++;
                sparseArray2 = sparseArray3;
            }
        }

        void c(androidx.constraintlayout.core.widgets.d dVar, androidx.constraintlayout.core.widgets.d dVar2) {
            ConstraintWidget bVar;
            ArrayList<ConstraintWidget> arrayListV1 = dVar.v1();
            HashMap map = new HashMap();
            map.put(dVar, dVar2);
            dVar2.v1().clear();
            dVar2.n(dVar, map);
            for (ConstraintWidget constraintWidget : arrayListV1) {
                if (constraintWidget instanceof androidx.constraintlayout.core.widgets.a) {
                    bVar = new androidx.constraintlayout.core.widgets.a();
                } else if (constraintWidget instanceof androidx.constraintlayout.core.widgets.f) {
                    bVar = new androidx.constraintlayout.core.widgets.f();
                } else if (constraintWidget instanceof androidx.constraintlayout.core.widgets.e) {
                    bVar = new androidx.constraintlayout.core.widgets.e();
                } else if (constraintWidget instanceof androidx.constraintlayout.core.widgets.h) {
                    bVar = new androidx.constraintlayout.core.widgets.h();
                } else {
                    bVar = constraintWidget instanceof t0.a ? new t0.b() : new ConstraintWidget();
                }
                dVar2.a(bVar);
                map.put(constraintWidget, bVar);
            }
            for (ConstraintWidget constraintWidget2 : arrayListV1) {
                ((ConstraintWidget) map.get(constraintWidget2)).n(constraintWidget2, map);
            }
        }

        ConstraintWidget d(androidx.constraintlayout.core.widgets.d dVar, View view) {
            if (dVar.u() == view) {
                return dVar;
            }
            ArrayList arrayListV1 = dVar.v1();
            int size = arrayListV1.size();
            for (int i10 = 0; i10 < size; i10++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) arrayListV1.get(i10);
                if (constraintWidget.u() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        void e(androidx.constraintlayout.core.widgets.d dVar, androidx.constraintlayout.widget.b bVar, androidx.constraintlayout.widget.b bVar2) {
            this.f6917c = bVar;
            this.f6918d = bVar2;
            this.f6915a = new androidx.constraintlayout.core.widgets.d();
            this.f6916b = new androidx.constraintlayout.core.widgets.d();
            this.f6915a.a2(((ConstraintLayout) MotionLayout.this).mLayoutWidget.N1());
            this.f6916b.a2(((ConstraintLayout) MotionLayout.this).mLayoutWidget.N1());
            this.f6915a.y1();
            this.f6916b.y1();
            c(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.f6915a);
            c(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.f6916b);
            if (MotionLayout.this.f6865o > 0.5d) {
                if (bVar != null) {
                    j(this.f6915a, bVar);
                }
                j(this.f6916b, bVar2);
            } else {
                j(this.f6916b, bVar2);
                if (bVar != null) {
                    j(this.f6915a, bVar);
                }
            }
            this.f6915a.d2(MotionLayout.this.isRtl());
            this.f6915a.f2();
            this.f6916b.d2(MotionLayout.this.isRtl());
            this.f6916b.f2();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    androidx.constraintlayout.core.widgets.d dVar2 = this.f6915a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    dVar2.T0(dimensionBehaviour);
                    this.f6916b.T0(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    androidx.constraintlayout.core.widgets.d dVar3 = this.f6915a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    dVar3.k1(dimensionBehaviour2);
                    this.f6916b.k1(dimensionBehaviour2);
                }
            }
        }

        public boolean f(int i10, int i11) {
            return (i10 == this.f6919e && i11 == this.f6920f) ? false : true;
        }

        public void g(int i10, int i11) {
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.f6850g0 = mode;
            motionLayout.f6852h0 = mode2;
            motionLayout.getOptimizationLevel();
            b(i10, i11);
            if (!(MotionLayout.this.getParent() instanceof MotionLayout) || mode != 1073741824 || mode2 != 1073741824) {
                b(i10, i11);
                MotionLayout.this.f6842c0 = this.f6915a.Y();
                MotionLayout.this.f6844d0 = this.f6915a.z();
                MotionLayout.this.f6846e0 = this.f6916b.Y();
                MotionLayout.this.f6848f0 = this.f6916b.z();
                MotionLayout motionLayout2 = MotionLayout.this;
                motionLayout2.f6840b0 = (motionLayout2.f6842c0 == motionLayout2.f6846e0 && motionLayout2.f6844d0 == motionLayout2.f6848f0) ? false : true;
            }
            MotionLayout motionLayout3 = MotionLayout.this;
            int i12 = motionLayout3.f6842c0;
            int i13 = motionLayout3.f6844d0;
            int i14 = motionLayout3.f6850g0;
            if (i14 == Integer.MIN_VALUE || i14 == 0) {
                i12 = (int) (i12 + (motionLayout3.f6854i0 * (motionLayout3.f6846e0 - i12)));
            }
            int i15 = i12;
            int i16 = motionLayout3.f6852h0;
            if (i16 == Integer.MIN_VALUE || i16 == 0) {
                i13 = (int) (i13 + (motionLayout3.f6854i0 * (motionLayout3.f6848f0 - i13)));
            }
            MotionLayout.this.resolveMeasuredDimension(i10, i11, i15, i13, this.f6915a.V1() || this.f6916b.V1(), this.f6915a.T1() || this.f6916b.T1());
        }

        public void h() {
            g(MotionLayout.this.f6851h, MotionLayout.this.f6853i);
            MotionLayout.this.X();
        }

        public void i(int i10, int i11) {
            this.f6919e = i10;
            this.f6920f = i11;
        }
    }

    protected interface e {
        void a(MotionEvent motionEvent);

        float b();

        float c();

        void d(int i10);

        void recycle();
    }

    private static class f implements e {

        private static f f6922b = new f();

        VelocityTracker f6923a;

        private f() {
        }

        public static f e() {
            f6922b.f6923a = VelocityTracker.obtain();
            return f6922b;
        }

        @Override
        public void a(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.f6923a;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override
        public float b() {
            VelocityTracker velocityTracker = this.f6923a;
            if (velocityTracker != null) {
                return velocityTracker.getYVelocity();
            }
            return 0.0f;
        }

        @Override
        public float c() {
            VelocityTracker velocityTracker = this.f6923a;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity();
            }
            return 0.0f;
        }

        @Override
        public void d(int i10) {
            VelocityTracker velocityTracker = this.f6923a;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i10);
            }
        }

        @Override
        public void recycle() {
            VelocityTracker velocityTracker = this.f6923a;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f6923a = null;
            }
        }
    }

    class g {

        float f6924a = Float.NaN;

        float f6925b = Float.NaN;

        int f6926c = -1;

        int f6927d = -1;

        final String f6928e = "motion.progress";

        final String f6929f = "motion.velocity";

        final String f6930g = "motion.StartState";

        final String f6931h = "motion.EndState";

        g() {
        }

        void a() {
            int i10 = this.f6926c;
            if (i10 != -1 || this.f6927d != -1) {
                if (i10 == -1) {
                    MotionLayout.this.transitionToState(this.f6927d);
                } else {
                    int i11 = this.f6927d;
                    if (i11 == -1) {
                        MotionLayout.this.setState(i10, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i10, i11);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.f6925b)) {
                if (Float.isNaN(this.f6924a)) {
                    return;
                }
                MotionLayout.this.setProgress(this.f6924a);
            } else {
                MotionLayout.this.setProgress(this.f6924a, this.f6925b);
                this.f6924a = Float.NaN;
                this.f6925b = Float.NaN;
                this.f6926c = -1;
                this.f6927d = -1;
            }
        }

        public Bundle b() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.f6924a);
            bundle.putFloat("motion.velocity", this.f6925b);
            bundle.putInt("motion.StartState", this.f6926c);
            bundle.putInt("motion.EndState", this.f6927d);
            return bundle;
        }

        public void c() {
            this.f6927d = MotionLayout.this.f6849g;
            this.f6926c = MotionLayout.this.f6845e;
            this.f6925b = MotionLayout.this.getVelocity();
            this.f6924a = MotionLayout.this.getProgress();
        }

        public void d(int i10) {
            this.f6927d = i10;
        }

        public void e(float f10) {
            this.f6924a = f10;
        }

        public void f(int i10) {
            this.f6926c = i10;
        }

        public void g(Bundle bundle) {
            this.f6924a = bundle.getFloat("motion.progress");
            this.f6925b = bundle.getFloat("motion.velocity");
            this.f6926c = bundle.getInt("motion.StartState");
            this.f6927d = bundle.getInt("motion.EndState");
        }

        public void h(float f10) {
            this.f6925b = f10;
        }
    }

    public interface h {
        void onTransitionChange(MotionLayout motionLayout, int i10, int i11, float f10);

        void onTransitionCompleted(MotionLayout motionLayout, int i10);

        void onTransitionStarted(MotionLayout motionLayout, int i10, int i11);

        void onTransitionTrigger(MotionLayout motionLayout, int i10, boolean z10, float f10);
    }

    public MotionLayout(@NonNull Context context) {
        super(context);
        this.f6841c = null;
        this.f6843d = 0.0f;
        this.f6845e = -1;
        this.f6847f = -1;
        this.f6849g = -1;
        this.f6851h = 0;
        this.f6853i = 0;
        this.f6855j = true;
        this.f6857k = new HashMap();
        this.f6859l = 0L;
        this.f6861m = 1.0f;
        this.f6863n = 0.0f;
        this.f6865o = 0.0f;
        this.f6869q = 0.0f;
        this.f6873s = false;
        this.f6875t = false;
        this.f6883x = 0;
        this.f6887z = false;
        this.A = new v0.b();
        this.B = new b();
        this.D = true;
        this.I = false;
        this.N = false;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = 0;
        this.T = -1L;
        this.U = 0.0f;
        this.V = 0;
        this.W = 0.0f;
        this.f6838a0 = false;
        this.f6840b0 = false;
        this.f6856j0 = new androidx.constraintlayout.core.motion.utils.d();
        this.f6858k0 = false;
        this.f6862m0 = null;
        this.f6864n0 = null;
        this.f6866o0 = 0;
        this.f6868p0 = false;
        this.f6870q0 = 0;
        this.f6872r0 = new HashMap();
        this.f6880v0 = new Rect();
        this.f6882w0 = false;
        this.f6884x0 = TransitionState.UNDEFINED;
        this.f6886y0 = new d();
        this.f6888z0 = false;
        this.A0 = new RectF();
        this.B0 = null;
        this.C0 = null;
        this.D0 = new ArrayList();
        T(null);
    }

    private boolean G(View view, MotionEvent motionEvent, float f10, float f11) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            motionEvent.offsetLocation(f10, f11);
            boolean zOnTouchEvent = view.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(-f10, -f11);
            return zOnTouchEvent;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(f10, f11);
        if (this.C0 == null) {
            this.C0 = new Matrix();
        }
        matrix.invert(this.C0);
        motionEventObtain.transform(this.C0);
        boolean zOnTouchEvent2 = view.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        return zOnTouchEvent2;
    }

    private void H() {
        p pVar = this.f6837a;
        if (pVar == null) {
            Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int iG = pVar.G();
        p pVar2 = this.f6837a;
        I(iG, pVar2.m(pVar2.G()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        for (p.b bVar : this.f6837a.p()) {
            if (bVar == this.f6837a.f7116c) {
                Log.v("MotionLayout", "CHECK: CURRENT");
            }
            J(bVar);
            int iA = bVar.A();
            int iY = bVar.y();
            String strC = androidx.constraintlayout.motion.widget.a.c(getContext(), iA);
            String strC2 = androidx.constraintlayout.motion.widget.a.c(getContext(), iY);
            if (sparseIntArray.get(iA) == iY) {
                Log.e("MotionLayout", "CHECK: two transitions with the same start and end " + strC + "->" + strC2);
            }
            if (sparseIntArray2.get(iY) == iA) {
                Log.e("MotionLayout", "CHECK: you can't have reverse transitions" + strC + "->" + strC2);
            }
            sparseIntArray.put(iA, iY);
            sparseIntArray2.put(iY, iA);
            if (this.f6837a.m(iA) == null) {
                Log.e("MotionLayout", " no such constraintSetStart " + strC);
            }
            if (this.f6837a.m(iY) == null) {
                Log.e("MotionLayout", " no such constraintSetEnd " + strC);
            }
        }
    }

    private void I(int i10, androidx.constraintlayout.widget.b bVar) {
        String strC = androidx.constraintlayout.motion.widget.a.c(getContext(), i10);
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            int id2 = childAt.getId();
            if (id2 == -1) {
                Log.w("MotionLayout", "CHECK: " + strC + " ALL VIEWS SHOULD HAVE ID's " + childAt.getClass().getName() + " does not!");
            }
            if (bVar.x(id2) == null) {
                Log.w("MotionLayout", "CHECK: " + strC + " NO CONSTRAINTS for " + androidx.constraintlayout.motion.widget.a.d(childAt));
            }
        }
        int[] iArrZ = bVar.z();
        for (int i12 = 0; i12 < iArrZ.length; i12++) {
            int i13 = iArrZ[i12];
            String strC2 = androidx.constraintlayout.motion.widget.a.c(getContext(), i13);
            if (findViewById(iArrZ[i12]) == null) {
                Log.w("MotionLayout", "CHECK: " + strC + " NO View matches id " + strC2);
            }
            if (bVar.y(i13) == -1) {
                Log.w("MotionLayout", "CHECK: " + strC + "(" + strC2 + ") no LAYOUT_HEIGHT");
            }
            if (bVar.D(i13) == -1) {
                Log.w("MotionLayout", "CHECK: " + strC + "(" + strC2 + ") no LAYOUT_HEIGHT");
            }
        }
    }

    private void J(p.b bVar) {
        if (bVar.A() == bVar.y()) {
            Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!");
        }
    }

    private void K() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            m mVar = (m) this.f6857k.get(childAt);
            if (mVar != null) {
                mVar.E(childAt);
            }
        }
    }

    private void N() {
        boolean z10;
        float fSignum = Math.signum(this.f6869q - this.f6865o);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.f6839b;
        float interpolation = this.f6865o + (!(interpolator instanceof v0.b) ? (((nanoTime - this.f6867p) * fSignum) * 1.0E-9f) / this.f6861m : 0.0f);
        if (this.f6871r) {
            interpolation = this.f6869q;
        }
        if ((fSignum <= 0.0f || interpolation < this.f6869q) && (fSignum > 0.0f || interpolation > this.f6869q)) {
            z10 = false;
        } else {
            interpolation = this.f6869q;
            z10 = true;
        }
        if (interpolator != null && !z10) {
            interpolation = this.f6887z ? interpolator.getInterpolation((nanoTime - this.f6859l) * 1.0E-9f) : interpolator.getInterpolation(interpolation);
        }
        if ((fSignum > 0.0f && interpolation >= this.f6869q) || (fSignum <= 0.0f && interpolation <= this.f6869q)) {
            interpolation = this.f6869q;
        }
        this.f6854i0 = interpolation;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.f6841c;
        if (interpolator2 != null) {
            interpolation = interpolator2.getInterpolation(interpolation);
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            m mVar = (m) this.f6857k.get(childAt);
            if (mVar != null) {
                mVar.x(childAt, interpolation, nanoTime2, this.f6856j0);
            }
        }
        if (this.f6840b0) {
            requestLayout();
        }
    }

    private void O() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        if ((this.f6877u == null && ((copyOnWriteArrayList = this.R) == null || copyOnWriteArrayList.isEmpty())) || this.W == this.f6863n) {
            return;
        }
        if (this.V != -1) {
            h hVar = this.f6877u;
            if (hVar != null) {
                hVar.onTransitionStarted(this, this.f6845e, this.f6849g);
            }
            CopyOnWriteArrayList copyOnWriteArrayList2 = this.R;
            if (copyOnWriteArrayList2 != null) {
                Iterator it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    ((h) it.next()).onTransitionStarted(this, this.f6845e, this.f6849g);
                }
            }
            this.f6838a0 = true;
        }
        this.V = -1;
        float f10 = this.f6863n;
        this.W = f10;
        h hVar2 = this.f6877u;
        if (hVar2 != null) {
            hVar2.onTransitionChange(this, this.f6845e, this.f6849g, f10);
        }
        CopyOnWriteArrayList copyOnWriteArrayList3 = this.R;
        if (copyOnWriteArrayList3 != null) {
            Iterator it2 = copyOnWriteArrayList3.iterator();
            while (it2.hasNext()) {
                ((h) it2.next()).onTransitionChange(this, this.f6845e, this.f6849g, this.f6863n);
            }
        }
        this.f6838a0 = true;
    }

    private boolean S(float f10, float f11, View view, MotionEvent motionEvent) {
        boolean z10;
        if (!(view instanceof ViewGroup)) {
            z10 = false;
            break;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                z10 = false;
                break;
            }
            View childAt = viewGroup.getChildAt(childCount);
            if (S((childAt.getLeft() + f10) - view.getScrollX(), (childAt.getTop() + f11) - view.getScrollY(), childAt, motionEvent)) {
                z10 = true;
                break;
            }
            childCount--;
        }
        if (!z10) {
            this.A0.set(f10, f11, (view.getRight() + f10) - view.getLeft(), (view.getBottom() + f11) - view.getTop());
            if ((motionEvent.getAction() != 0 || this.A0.contains(motionEvent.getX(), motionEvent.getY())) && G(view, motionEvent, -f10, -f11)) {
                return true;
            }
        }
        return z10;
    }

    private void T(AttributeSet attributeSet) {
        p pVar;
        IS_IN_EDIT_MODE = isInEditMode();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionLayout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            boolean z10 = true;
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MotionLayout_layoutDescription) {
                    this.f6837a = new p(getContext(), this, typedArrayObtainStyledAttributes.getResourceId(index, -1));
                } else if (index == R$styleable.MotionLayout_currentState) {
                    this.f6847f = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                } else if (index == R$styleable.MotionLayout_motionProgress) {
                    this.f6869q = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    this.f6873s = true;
                } else if (index == R$styleable.MotionLayout_applyMotionScene) {
                    z10 = typedArrayObtainStyledAttributes.getBoolean(index, z10);
                } else if (index == R$styleable.MotionLayout_showPaths) {
                    if (this.f6883x == 0) {
                        this.f6883x = typedArrayObtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == R$styleable.MotionLayout_motionDebug) {
                    this.f6883x = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.f6837a == null) {
                Log.e("MotionLayout", "WARNING NO app:layoutDescription tag");
            }
            if (!z10) {
                this.f6837a = null;
            }
        }
        if (this.f6883x != 0) {
            H();
        }
        if (this.f6847f != -1 || (pVar = this.f6837a) == null) {
            return;
        }
        this.f6847f = pVar.G();
        this.f6845e = this.f6837a.G();
        this.f6849g = this.f6837a.r();
    }

    private void W() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        if (this.f6877u == null && ((copyOnWriteArrayList = this.R) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        this.f6838a0 = false;
        for (Integer num : this.D0) {
            h hVar = this.f6877u;
            if (hVar != null) {
                hVar.onTransitionCompleted(this, num.intValue());
            }
            CopyOnWriteArrayList copyOnWriteArrayList2 = this.R;
            if (copyOnWriteArrayList2 != null) {
                Iterator it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    ((h) it.next()).onTransitionCompleted(this, num.intValue());
                }
            }
        }
        this.D0.clear();
    }

    public void X() {
        int childCount = getChildCount();
        this.f6886y0.a();
        this.f6873s = true;
        SparseArray sparseArray = new SparseArray();
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            sparseArray.put(childAt.getId(), (m) this.f6857k.get(childAt));
        }
        int width = getWidth();
        int height = getHeight();
        int iK = this.f6837a.k();
        if (iK != -1) {
            for (int i12 = 0; i12 < childCount; i12++) {
                m mVar = (m) this.f6857k.get(getChildAt(i12));
                if (mVar != null) {
                    mVar.D(iK);
                }
            }
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = new int[this.f6857k.size()];
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            m mVar2 = (m) this.f6857k.get(getChildAt(i14));
            if (mVar2.h() != -1) {
                sparseBooleanArray.put(mVar2.h(), true);
                iArr[i13] = mVar2.h();
                i13++;
            }
        }
        if (this.Q != null) {
            for (int i15 = 0; i15 < i13; i15++) {
                m mVar3 = (m) this.f6857k.get(findViewById(iArr[i15]));
                if (mVar3 != null) {
                    this.f6837a.u(mVar3);
                }
            }
            Iterator it = this.Q.iterator();
            while (it.hasNext()) {
                ((MotionHelper) it.next()).onPreSetup(this, this.f6857k);
            }
            for (int i16 = 0; i16 < i13; i16++) {
                m mVar4 = (m) this.f6857k.get(findViewById(iArr[i16]));
                if (mVar4 != null) {
                    mVar4.I(width, height, this.f6861m, getNanoTime());
                }
            }
        } else {
            for (int i17 = 0; i17 < i13; i17++) {
                m mVar5 = (m) this.f6857k.get(findViewById(iArr[i17]));
                if (mVar5 != null) {
                    this.f6837a.u(mVar5);
                    mVar5.I(width, height, this.f6861m, getNanoTime());
                }
            }
        }
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt2 = getChildAt(i18);
            m mVar6 = (m) this.f6857k.get(childAt2);
            if (!sparseBooleanArray.get(childAt2.getId()) && mVar6 != null) {
                this.f6837a.u(mVar6);
                mVar6.I(width, height, this.f6861m, getNanoTime());
            }
        }
        float F = this.f6837a.F();
        if (F != 0.0f) {
            boolean z10 = ((double) F) < 0.0d;
            float fAbs = Math.abs(F);
            float fMax = -3.4028235E38f;
            float fMin = Float.MAX_VALUE;
            float fMax2 = -3.4028235E38f;
            float fMin2 = Float.MAX_VALUE;
            for (int i19 = 0; i19 < childCount; i19++) {
                m mVar7 = (m) this.f6857k.get(getChildAt(i19));
                if (!Float.isNaN(mVar7.f7079m)) {
                    for (int i20 = 0; i20 < childCount; i20++) {
                        m mVar8 = (m) this.f6857k.get(getChildAt(i20));
                        if (!Float.isNaN(mVar8.f7079m)) {
                            fMin = Math.min(fMin, mVar8.f7079m);
                            fMax = Math.max(fMax, mVar8.f7079m);
                        }
                    }
                    while (i10 < childCount) {
                        m mVar9 = (m) this.f6857k.get(getChildAt(i10));
                        if (!Float.isNaN(mVar9.f7079m)) {
                            mVar9.f7081o = 1.0f / (1.0f - fAbs);
                            if (z10) {
                                mVar9.f7080n = fAbs - (((fMax - mVar9.f7079m) / (fMax - fMin)) * fAbs);
                            } else {
                                mVar9.f7080n = fAbs - (((mVar9.f7079m - fMin) * fAbs) / (fMax - fMin));
                            }
                        }
                        i10++;
                    }
                    return;
                }
                float fN = mVar7.n();
                float fO = mVar7.o();
                float f10 = z10 ? fO - fN : fO + fN;
                fMin2 = Math.min(fMin2, f10);
                fMax2 = Math.max(fMax2, f10);
            }
            while (i10 < childCount) {
                m mVar10 = (m) this.f6857k.get(getChildAt(i10));
                float fN2 = mVar10.n();
                float fO2 = mVar10.o();
                float f11 = z10 ? fO2 - fN2 : fO2 + fN2;
                mVar10.f7081o = 1.0f / (1.0f - fAbs);
                mVar10.f7080n = fAbs - (((f11 - fMin2) * fAbs) / (fMax2 - fMin2));
                i10++;
            }
        }
    }

    public Rect Y(ConstraintWidget constraintWidget) {
        this.f6880v0.top = constraintWidget.a0();
        this.f6880v0.left = constraintWidget.Z();
        Rect rect = this.f6880v0;
        int iY = constraintWidget.Y();
        Rect rect2 = this.f6880v0;
        rect.right = iY + rect2.left;
        int iZ = constraintWidget.z();
        Rect rect3 = this.f6880v0;
        rect2.bottom = iZ + rect3.top;
        return rect3;
    }

    private static boolean Z(float f10, float f11, float f12) {
        if (f10 > 0.0f) {
            float f13 = f10 / f12;
            return f11 + ((f10 * f13) - (((f12 * f13) * f13) / 2.0f)) > 1.0f;
        }
        float f14 = (-f10) / f12;
        return f11 + ((f10 * f14) + (((f12 * f14) * f14) / 2.0f)) < 0.0f;
    }

    void F(float f10) {
        p pVar = this.f6837a;
        if (pVar == null) {
            return;
        }
        float f11 = this.f6865o;
        float f12 = this.f6863n;
        if (f11 != f12 && this.f6871r) {
            this.f6865o = f12;
        }
        float f13 = this.f6865o;
        if (f13 == f10) {
            return;
        }
        this.f6887z = false;
        this.f6869q = f10;
        this.f6861m = pVar.q() / 1000.0f;
        setProgress(this.f6869q);
        this.f6839b = null;
        this.f6841c = this.f6837a.t();
        this.f6871r = false;
        this.f6859l = getNanoTime();
        this.f6873s = true;
        this.f6863n = f13;
        this.f6865o = f13;
        invalidate();
    }

    void L(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            m mVar = (m) this.f6857k.get(getChildAt(i10));
            if (mVar != null) {
                mVar.f(z10);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x01be  */
    /* JADX WARN: Code duplicated, block: B:127:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:129:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:143:0x0222  */
    /* JADX WARN: Code duplicated, block: B:180:0x0193 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00e2 A[PHI: r3
      0x00e2: PHI (r3v50 float) = (r3v49 float), (r3v51 float), (r3v51 float) binds: [B:47:0x00ab, B:58:0x00d6, B:60:0x00da] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x0111  */
    /* JADX WARN: Code duplicated, block: B:74:0x0118  */
    /* JADX WARN: Code duplicated, block: B:86:0x0138  */
    /* JADX WARN: Code duplicated, block: B:89:0x014f  */
    /* JADX WARN: Code duplicated, block: B:90:0x0151  */
    /* JADX WARN: Code duplicated, block: B:93:0x0159  */
    /* JADX WARN: Code duplicated, block: B:96:0x0170  */
    /* JADX WARN: Code duplicated, block: B:98:0x0180  */
    void M(boolean z10) {
        boolean z11;
        char c10;
        int childCount;
        long nanoTime;
        Interpolator interpolator;
        float interpolation;
        Interpolator interpolator2;
        int i10;
        int i11;
        int i12;
        int i13;
        View childAt;
        m mVar;
        boolean z12;
        if (this.f6867p == -1) {
            this.f6867p = getNanoTime();
        }
        float f10 = this.f6865o;
        if (f10 > 0.0f && f10 < 1.0f) {
            this.f6847f = -1;
        }
        boolean z13 = false;
        if (this.N || (this.f6873s && (z10 || this.f6869q != f10))) {
            float fSignum = Math.signum(this.f6869q - f10);
            long nanoTime2 = getNanoTime();
            Interpolator interpolator3 = this.f6839b;
            float f11 = !(interpolator3 instanceof n) ? (((nanoTime2 - this.f6867p) * fSignum) * 1.0E-9f) / this.f6861m : 0.0f;
            float f12 = this.f6865o + f11;
            if (this.f6871r) {
                f12 = this.f6869q;
            }
            if ((fSignum <= 0.0f || f12 < this.f6869q) && (fSignum > 0.0f || f12 > this.f6869q)) {
                z11 = false;
            } else {
                f12 = this.f6869q;
                this.f6873s = false;
                z11 = true;
            }
            this.f6865o = f12;
            this.f6863n = f12;
            this.f6867p = nanoTime2;
            if (interpolator3 == null || z11) {
                this.f6843d = f11;
            } else {
                if (this.f6887z) {
                    float interpolation2 = interpolator3.getInterpolation((nanoTime2 - this.f6859l) * 1.0E-9f);
                    Interpolator interpolator4 = this.f6839b;
                    v0.b bVar = this.A;
                    c10 = interpolator4 == bVar ? bVar.c() ? (char) 2 : (char) 1 : (char) 0;
                    this.f6865o = interpolation2;
                    this.f6867p = nanoTime2;
                    Interpolator interpolator5 = this.f6839b;
                    if (interpolator5 instanceof n) {
                        float fA = ((n) interpolator5).a();
                        this.f6843d = fA;
                        if (Math.abs(fA) * this.f6861m <= 1.0E-5f && c10 == 2) {
                            this.f6873s = false;
                        }
                        if (fA > 0.0f && interpolation2 >= 1.0f) {
                            this.f6865o = 1.0f;
                            this.f6873s = false;
                            interpolation2 = 1.0f;
                        }
                        if (fA >= 0.0f || interpolation2 > 0.0f) {
                            f12 = interpolation2;
                        } else {
                            this.f6865o = 0.0f;
                            this.f6873s = false;
                            f12 = 0.0f;
                        }
                    } else {
                        f12 = interpolation2;
                    }
                } else {
                    float interpolation3 = interpolator3.getInterpolation(f12);
                    Interpolator interpolator6 = this.f6839b;
                    if (interpolator6 instanceof n) {
                        this.f6843d = ((n) interpolator6).a();
                    } else {
                        this.f6843d = ((interpolator6.getInterpolation(f12 + f11) - interpolation3) * fSignum) / f11;
                    }
                    f12 = interpolation3;
                }
                if (Math.abs(this.f6843d) > 1.0E-5f) {
                    setState(TransitionState.MOVING);
                }
                if (c10 != 1) {
                    if ((fSignum <= 0.0f && f12 >= this.f6869q) || (fSignum <= 0.0f && f12 <= this.f6869q)) {
                        f12 = this.f6869q;
                        this.f6873s = false;
                    }
                    if (f12 < 1.0f || f12 <= 0.0f) {
                        this.f6873s = false;
                        setState(TransitionState.FINISHED);
                    }
                }
                childCount = getChildCount();
                this.N = false;
                nanoTime = getNanoTime();
                this.f6854i0 = f12;
                interpolator = this.f6841c;
                if (interpolator == null) {
                    interpolation = f12;
                } else {
                    interpolation = interpolator.getInterpolation(f12);
                }
                interpolator2 = this.f6841c;
                if (interpolator2 != null) {
                    float interpolation4 = interpolator2.getInterpolation((fSignum / this.f6861m) + f12);
                    this.f6843d = interpolation4;
                    this.f6843d = interpolation4 - this.f6841c.getInterpolation(f12);
                }
                for (i10 = 0; i10 < childCount; i10++) {
                    childAt = getChildAt(i10);
                    mVar = (m) this.f6857k.get(childAt);
                    if (mVar != null) {
                        this.N = mVar.x(childAt, interpolation, nanoTime, this.f6856j0) | this.N;
                    }
                }
                boolean z14 = (fSignum <= 0.0f && f12 >= this.f6869q) || (fSignum <= 0.0f && f12 <= this.f6869q);
                if (!this.N && !this.f6873s && z14) {
                    setState(TransitionState.FINISHED);
                }
                if (this.f6840b0) {
                    requestLayout();
                }
                this.N = (!z14) | this.N;
                if (f12 <= 0.0f && (i13 = this.f6845e) != -1 && this.f6847f != i13) {
                    this.f6847f = i13;
                    this.f6837a.m(i13).g(this);
                    setState(TransitionState.FINISHED);
                    z13 = true;
                }
                if (f12 >= 1.0d) {
                    i11 = this.f6847f;
                    i12 = this.f6849g;
                    if (i11 != i12) {
                        this.f6847f = i12;
                        this.f6837a.m(i12).g(this);
                        setState(TransitionState.FINISHED);
                        z13 = true;
                    }
                }
                if (!this.N || this.f6873s) {
                    invalidate();
                } else if ((fSignum > 0.0f && f12 == 1.0f) || (fSignum < 0.0f && f12 == 0.0f)) {
                    setState(TransitionState.FINISHED);
                }
                if (!this.N && !this.f6873s && ((fSignum > 0.0f && f12 == 1.0f) || (fSignum < 0.0f && f12 == 0.0f))) {
                    V();
                }
            }
            c10 = 0;
            if (Math.abs(this.f6843d) > 1.0E-5f) {
                setState(TransitionState.MOVING);
            }
            if (c10 != 1) {
                if (fSignum <= 0.0f) {
                    f12 = this.f6869q;
                    this.f6873s = false;
                } else {
                    f12 = this.f6869q;
                    this.f6873s = false;
                }
                if (f12 < 1.0f) {
                    this.f6873s = false;
                    setState(TransitionState.FINISHED);
                } else {
                    this.f6873s = false;
                    setState(TransitionState.FINISHED);
                }
            }
            childCount = getChildCount();
            this.N = false;
            nanoTime = getNanoTime();
            this.f6854i0 = f12;
            interpolator = this.f6841c;
            if (interpolator == null) {
                interpolation = f12;
            } else {
                interpolation = interpolator.getInterpolation(f12);
            }
            interpolator2 = this.f6841c;
            if (interpolator2 != null) {
                float interpolation5 = interpolator2.getInterpolation((fSignum / this.f6861m) + f12);
                this.f6843d = interpolation5;
                this.f6843d = interpolation5 - this.f6841c.getInterpolation(f12);
            }
            while (i10 < childCount) {
                childAt = getChildAt(i10);
                mVar = (m) this.f6857k.get(childAt);
                if (mVar != null) {
                    this.N = mVar.x(childAt, interpolation, nanoTime, this.f6856j0) | this.N;
                }
            }
            if (fSignum <= 0.0f) {
            }
            if (!this.N) {
                setState(TransitionState.FINISHED);
            }
            if (this.f6840b0) {
                requestLayout();
            }
            this.N = (!z14) | this.N;
            if (f12 <= 0.0f) {
                this.f6847f = i13;
                this.f6837a.m(i13).g(this);
                setState(TransitionState.FINISHED);
                z13 = true;
            }
            if (f12 >= 1.0d) {
                i11 = this.f6847f;
                i12 = this.f6849g;
                if (i11 != i12) {
                    this.f6847f = i12;
                    this.f6837a.m(i12).g(this);
                    setState(TransitionState.FINISHED);
                    z13 = true;
                }
            }
            if (this.N) {
                invalidate();
            } else {
                invalidate();
            }
            if (!this.N) {
                V();
            }
        }
        float f13 = this.f6865o;
        if (f13 < 1.0f) {
            if (f13 <= 0.0f) {
                int i14 = this.f6847f;
                int i15 = this.f6845e;
                z12 = i14 == i15 ? z13 : true;
                this.f6847f = i15;
            }
            this.f6888z0 |= z13;
            if (z13 && !this.f6858k0) {
                requestLayout();
            }
            this.f6863n = this.f6865o;
        }
        int i16 = this.f6847f;
        int i17 = this.f6849g;
        z12 = i16 == i17 ? z13 : true;
        this.f6847f = i17;
        z13 = z12;
        this.f6888z0 |= z13;
        if (z13) {
            requestLayout();
        }
        this.f6863n = this.f6865o;
    }

    protected void P() {
        int iIntValue;
        CopyOnWriteArrayList copyOnWriteArrayList;
        if ((this.f6877u != null || ((copyOnWriteArrayList = this.R) != null && !copyOnWriteArrayList.isEmpty())) && this.V == -1) {
            this.V = this.f6847f;
            if (this.D0.isEmpty()) {
                iIntValue = -1;
            } else {
                ArrayList arrayList = this.D0;
                iIntValue = ((Integer) arrayList.get(arrayList.size() - 1)).intValue();
            }
            int i10 = this.f6847f;
            if (iIntValue != i10 && i10 != -1) {
                this.D0.add(Integer.valueOf(i10));
            }
        }
        W();
        Runnable runnable = this.f6862m0;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.f6864n0;
        if (iArr == null || this.f6866o0 <= 0) {
            return;
        }
        transitionToState(iArr[0]);
        int[] iArr2 = this.f6864n0;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.f6866o0--;
    }

    void Q(int i10, float f10, float f11, float f12, float[] fArr) {
        String resourceName;
        HashMap map = this.f6857k;
        View viewById = getViewById(i10);
        m mVar = (m) map.get(viewById);
        if (mVar != null) {
            mVar.l(f10, f11, f12, fArr);
            float y10 = viewById.getY();
            this.f6879v = f10;
            this.f6881w = y10;
            return;
        }
        if (viewById == null) {
            resourceName = "" + i10;
        } else {
            resourceName = viewById.getContext().getResources().getResourceName(i10);
        }
        Log.w("MotionLayout", "WARNING could not find view id " + resourceName);
    }

    m R(int i10) {
        return (m) this.f6857k.get(findViewById(i10));
    }

    protected e U() {
        return f.e();
    }

    void V() {
        p pVar = this.f6837a;
        if (pVar == null) {
            return;
        }
        if (pVar.h(this, this.f6847f)) {
            requestLayout();
            return;
        }
        int i10 = this.f6847f;
        if (i10 != -1) {
            this.f6837a.f(this, i10);
        }
        if (this.f6837a.d0()) {
            this.f6837a.b0();
        }
    }

    public void addTransitionListener(h hVar) {
        if (this.R == null) {
            this.R = new CopyOnWriteArrayList();
        }
        this.R.add(hVar);
    }

    public boolean applyViewTransition(int i10, m mVar) {
        p pVar = this.f6837a;
        if (pVar != null) {
            return pVar.g(i10, mVar);
        }
        return false;
    }

    public androidx.constraintlayout.widget.b cloneConstraintSet(int i10) {
        p pVar = this.f6837a;
        if (pVar == null) {
            return null;
        }
        androidx.constraintlayout.widget.b bVarM = pVar.m(i10);
        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
        bVar.q(bVarM);
        return bVar;
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        t tVar;
        ArrayList arrayList = this.Q;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((MotionHelper) it.next()).onPreDraw(canvas);
            }
        }
        M(false);
        p pVar = this.f6837a;
        if (pVar != null && (tVar = pVar.f7132s) != null) {
            tVar.c();
        }
        super.dispatchDraw(canvas);
        if (this.f6837a == null) {
            return;
        }
        if ((this.f6883x & 1) == 1 && !isInEditMode()) {
            this.S++;
            long nanoTime = getNanoTime();
            long j10 = this.T;
            if (j10 != -1) {
                long j11 = nanoTime - j10;
                if (j11 > 200000000) {
                    this.U = ((int) ((this.S / (j11 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.S = 0;
                    this.T = nanoTime;
                }
            } else {
                this.T = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            float progress = ((int) (getProgress() * 1000.0f)) / 10.0f;
            String str = this.U + " fps " + androidx.constraintlayout.motion.widget.a.e(this, this.f6845e) + " -> ";
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(androidx.constraintlayout.motion.widget.a.e(this, this.f6849g));
            sb2.append(" (progress: ");
            sb2.append(progress);
            sb2.append(" ) state=");
            int i10 = this.f6847f;
            sb2.append(i10 == -1 ? "undefined" : androidx.constraintlayout.motion.widget.a.e(this, i10));
            String string = sb2.toString();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawText(string, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(string, 10.0f, getHeight() - 30, paint);
        }
        if (this.f6883x > 1) {
            if (this.f6885y == null) {
                this.f6885y = new c();
            }
            this.f6885y.a(canvas, this.f6857k, this.f6837a.q(), this.f6883x);
        }
        ArrayList arrayList2 = this.Q;
        if (arrayList2 != null) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                ((MotionHelper) it2.next()).onPostDraw(canvas);
            }
        }
    }

    public void enableTransition(int i10, boolean z10) {
        p.b transition = getTransition(i10);
        if (z10) {
            transition.F(true);
            return;
        }
        p pVar = this.f6837a;
        if (transition == pVar.f7116c) {
            for (p.b bVar : pVar.I(this.f6847f)) {
                if (bVar.C()) {
                    this.f6837a.f7116c = bVar;
                    break;
                }
            }
        }
        transition.F(false);
    }

    public void enableViewTransition(int i10, boolean z10) {
        p pVar = this.f6837a;
        if (pVar != null) {
            pVar.j(i10, z10);
        }
    }

    public void fireTrigger(int i10, boolean z10, float f10) {
        h hVar = this.f6877u;
        if (hVar != null) {
            hVar.onTransitionTrigger(this, i10, z10, f10);
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.R;
        if (copyOnWriteArrayList != null) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((h) it.next()).onTransitionTrigger(this, i10, z10, f10);
            }
        }
    }

    public androidx.constraintlayout.widget.b getConstraintSet(int i10) {
        p pVar = this.f6837a;
        if (pVar == null) {
            return null;
        }
        return pVar.m(i10);
    }

    public int[] getConstraintSetIds() {
        p pVar = this.f6837a;
        if (pVar == null) {
            return null;
        }
        return pVar.o();
    }

    public int getCurrentState() {
        return this.f6847f;
    }

    public void getDebugMode(boolean z10) {
        this.f6883x = z10 ? 2 : 1;
        invalidate();
    }

    public ArrayList<p.b> getDefinedTransitions() {
        p pVar = this.f6837a;
        if (pVar == null) {
            return null;
        }
        return pVar.p();
    }

    public androidx.constraintlayout.motion.widget.b getDesignTool() {
        if (this.C == null) {
            this.C = new androidx.constraintlayout.motion.widget.b(this);
        }
        return this.C;
    }

    public int getEndState() {
        return this.f6849g;
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.f6865o;
    }

    public p getScene() {
        return this.f6837a;
    }

    public int getStartState() {
        return this.f6845e;
    }

    public float getTargetPosition() {
        return this.f6869q;
    }

    public p.b getTransition(int i10) {
        return this.f6837a.H(i10);
    }

    public Bundle getTransitionState() {
        if (this.f6860l0 == null) {
            this.f6860l0 = new g();
        }
        this.f6860l0.c();
        return this.f6860l0.b();
    }

    public long getTransitionTimeMs() {
        p pVar = this.f6837a;
        if (pVar != null) {
            this.f6861m = pVar.q() / 1000.0f;
        }
        return (long) (this.f6861m * 1000.0f);
    }

    public float getVelocity() {
        return this.f6843d;
    }

    public void getViewVelocity(View view, float f10, float f11, float[] fArr, int i10) {
        float interpolation;
        float fA = this.f6843d;
        float f12 = this.f6865o;
        if (this.f6839b != null) {
            float fSignum = Math.signum(this.f6869q - f12);
            float interpolation2 = this.f6839b.getInterpolation(this.f6865o + 1.0E-5f);
            interpolation = this.f6839b.getInterpolation(this.f6865o);
            fA = (fSignum * ((interpolation2 - interpolation) / 1.0E-5f)) / this.f6861m;
        } else {
            interpolation = f12;
        }
        Interpolator interpolator = this.f6839b;
        if (interpolator instanceof n) {
            fA = ((n) interpolator).a();
        }
        m mVar = (m) this.f6857k.get(view);
        if ((i10 & 1) == 0) {
            mVar.r(interpolation, view.getWidth(), view.getHeight(), f10, f11, fArr);
        } else {
            mVar.l(interpolation, f10, f11, fArr);
        }
        if (i10 < 2) {
            fArr[0] = fArr[0] * fA;
            fArr[1] = fArr[1] * fA;
        }
    }

    @Override
    public boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    public boolean isDelayedApplicationOfInitialState() {
        return this.f6882w0;
    }

    public boolean isInRotation() {
        return this.f6868p0;
    }

    public boolean isInteractionEnabled() {
        return this.f6855j;
    }

    public boolean isViewTransitionEnabled(int i10) {
        p pVar = this.f6837a;
        if (pVar != null) {
            return pVar.L(i10);
        }
        return false;
    }

    public void jumpToState(int i10) {
        if (!isAttachedToWindow()) {
            this.f6847f = i10;
        }
        if (this.f6845e == i10) {
            setProgress(0.0f);
        } else if (this.f6849g == i10) {
            setProgress(1.0f);
        } else {
            setTransition(i10, i10);
        }
    }

    @Override
    public void loadLayoutDescription(int i10) {
        p.b bVar;
        if (i10 == 0) {
            this.f6837a = null;
            return;
        }
        try {
            p pVar = new p(getContext(), this, i10);
            this.f6837a = pVar;
            if (this.f6847f == -1) {
                this.f6847f = pVar.G();
                this.f6845e = this.f6837a.G();
                this.f6849g = this.f6837a.r();
            }
            if (!isAttachedToWindow()) {
                this.f6837a = null;
                return;
            }
            try {
                Display display = getDisplay();
                this.f6878u0 = display == null ? 0 : display.getRotation();
                p pVar2 = this.f6837a;
                if (pVar2 != null) {
                    androidx.constraintlayout.widget.b bVarM = pVar2.m(this.f6847f);
                    this.f6837a.V(this);
                    ArrayList arrayList = this.Q;
                    if (arrayList != null) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ((MotionHelper) it.next()).onFinishedMotionScene(this);
                        }
                    }
                    if (bVarM != null) {
                        bVarM.i(this);
                    }
                    this.f6845e = this.f6847f;
                }
                V();
                g gVar = this.f6860l0;
                if (gVar != null) {
                    if (this.f6882w0) {
                        post(new Runnable() {
                            @Override
                            public void run() {
                                MotionLayout.this.f6860l0.a();
                            }
                        });
                        return;
                    } else {
                        gVar.a();
                        return;
                    }
                }
                p pVar3 = this.f6837a;
                if (pVar3 == null || (bVar = pVar3.f7116c) == null || bVar.x() != 4) {
                    return;
                }
                transitionToEnd();
                setState(TransitionState.SETUP);
                setState(TransitionState.MOVING);
            } catch (Exception e10) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e10);
            }
        } catch (Exception e11) {
            throw new IllegalArgumentException("unable to parse MotionScene file", e11);
        }
    }

    @Override
    protected void onAttachedToWindow() {
        p.b bVar;
        int i10;
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            this.f6878u0 = display.getRotation();
        }
        p pVar = this.f6837a;
        if (pVar != null && (i10 = this.f6847f) != -1) {
            androidx.constraintlayout.widget.b bVarM = pVar.m(i10);
            this.f6837a.V(this);
            ArrayList arrayList = this.Q;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((MotionHelper) it.next()).onFinishedMotionScene(this);
                }
            }
            if (bVarM != null) {
                bVarM.i(this);
            }
            this.f6845e = this.f6847f;
        }
        V();
        g gVar = this.f6860l0;
        if (gVar != null) {
            if (this.f6882w0) {
                post(new Runnable() {
                    @Override
                    public void run() {
                        MotionLayout.this.f6860l0.a();
                    }
                });
                return;
            } else {
                gVar.a();
                return;
            }
        }
        p pVar2 = this.f6837a;
        if (pVar2 == null || (bVar = pVar2.f7116c) == null || bVar.x() != 4) {
            return;
        }
        transitionToEnd();
        setState(TransitionState.SETUP);
        setState(TransitionState.MOVING);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        q qVarB;
        int iQ;
        RectF rectFP;
        p pVar = this.f6837a;
        if (pVar != null && this.f6855j) {
            t tVar = pVar.f7132s;
            if (tVar != null) {
                tVar.j(motionEvent);
            }
            p.b bVar = this.f6837a.f7116c;
            if (bVar != null && bVar.C() && (qVarB = bVar.B()) != null && ((motionEvent.getAction() != 0 || (rectFP = qVarB.p(this, new RectF())) == null || rectFP.contains(motionEvent.getX(), motionEvent.getY())) && (iQ = qVarB.q()) != -1)) {
                View view = this.B0;
                if (view == null || view.getId() != iQ) {
                    this.B0 = findViewById(iQ);
                }
                View view2 = this.B0;
                if (view2 != null) {
                    this.A0.set(view2.getLeft(), this.B0.getTop(), this.B0.getRight(), this.B0.getBottom());
                    if (this.A0.contains(motionEvent.getX(), motionEvent.getY()) && !S(this.B0.getLeft(), this.B0.getTop(), this.B0, motionEvent)) {
                        return onTouchEvent(motionEvent);
                    }
                }
            }
        }
        return false;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        this.f6858k0 = true;
        try {
            if (this.f6837a == null) {
                super.onLayout(z10, i10, i11, i12, i13);
                return;
            }
            int i14 = i12 - i10;
            int i15 = i13 - i11;
            if (this.G != i14 || this.H != i15) {
                rebuildScene();
                M(true);
            }
            this.G = i14;
            this.H = i15;
            this.E = i14;
            this.F = i15;
        } finally {
            this.f6858k0 = false;
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        if (this.f6837a == null) {
            super.onMeasure(i10, i11);
            return;
        }
        boolean z10 = false;
        boolean z11 = (this.f6851h == i10 && this.f6853i == i11) ? false : true;
        if (this.f6888z0) {
            this.f6888z0 = false;
            V();
            W();
            z11 = true;
        }
        if (this.mDirtyHierarchy) {
            z11 = true;
        }
        this.f6851h = i10;
        this.f6853i = i11;
        int iG = this.f6837a.G();
        int iR = this.f6837a.r();
        if ((z11 || this.f6886y0.f(iG, iR)) && this.f6845e != -1) {
            super.onMeasure(i10, i11);
            this.f6886y0.e(this.mLayoutWidget, this.f6837a.m(iG), this.f6837a.m(iR));
            this.f6886y0.h();
            this.f6886y0.i(iG, iR);
        } else {
            if (z11) {
                super.onMeasure(i10, i11);
            }
            z10 = true;
        }
        if (this.f6840b0 || z10) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int iY = this.mLayoutWidget.Y() + getPaddingLeft() + getPaddingRight();
            int iZ = this.mLayoutWidget.z() + paddingTop;
            int i12 = this.f6850g0;
            if (i12 == Integer.MIN_VALUE || i12 == 0) {
                int i13 = this.f6842c0;
                iY = (int) (i13 + (this.f6854i0 * (this.f6846e0 - i13)));
                requestLayout();
            }
            int i14 = this.f6852h0;
            if (i14 == Integer.MIN_VALUE || i14 == 0) {
                int i15 = this.f6844d0;
                iZ = (int) (i15 + (this.f6854i0 * (this.f6848f0 - i15)));
                requestLayout();
            }
            setMeasuredDimension(iY, iZ);
        }
        N();
    }

    @Override
    public boolean onNestedFling(@NonNull View view, float f10, float f11, boolean z10) {
        return false;
    }

    @Override
    public boolean onNestedPreFling(@NonNull View view, float f10, float f11) {
        return false;
    }

    @Override
    public void onNestedPreScroll(@NonNull final View view, int i10, int i11, @NonNull int[] iArr, int i12) {
        p.b bVar;
        q qVarB;
        int iQ;
        p pVar = this.f6837a;
        if (pVar == null || (bVar = pVar.f7116c) == null || !bVar.C()) {
            return;
        }
        int i13 = -1;
        if (!bVar.C() || (qVarB = bVar.B()) == null || (iQ = qVarB.q()) == -1 || view.getId() == iQ) {
            if (pVar.x()) {
                q qVarB2 = bVar.B();
                if (qVarB2 != null && (qVarB2.e() & 4) != 0) {
                    i13 = i11;
                }
                float f10 = this.f6863n;
                if ((f10 == 1.0f || f10 == 0.0f) && view.canScrollVertically(i13)) {
                    return;
                }
            }
            if (bVar.B() != null && (bVar.B().e() & 1) != 0) {
                float fY = pVar.y(i10, i11);
                float f11 = this.f6865o;
                if ((f11 <= 0.0f && fY < 0.0f) || (f11 >= 1.0f && fY > 0.0f)) {
                    view.setNestedScrollingEnabled(false);
                    view.post(new Runnable(this) {
                        @Override
                        public void run() {
                            view.setNestedScrollingEnabled(true);
                        }
                    });
                    return;
                }
            }
            float f12 = this.f6863n;
            long nanoTime = getNanoTime();
            float f13 = i10;
            this.J = f13;
            float f14 = i11;
            this.K = f14;
            this.M = (float) ((nanoTime - this.L) * 1.0E-9d);
            this.L = nanoTime;
            pVar.R(f13, f14);
            if (f12 != this.f6863n) {
                iArr[0] = i10;
                iArr[1] = i11;
            }
            M(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.I = true;
        }
    }

    @Override
    public void onNestedScroll(@NonNull View view, int i10, int i11, int i12, int i13, int i14) {
    }

    @Override
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i10, int i11) {
        this.L = getNanoTime();
        this.M = 0.0f;
        this.J = 0.0f;
        this.K = 0.0f;
    }

    @Override
    public void onRtlPropertiesChanged(int i10) {
        p pVar = this.f6837a;
        if (pVar != null) {
            pVar.Y(isRtl());
        }
    }

    @Override
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i10, int i11) {
        p.b bVar;
        p pVar = this.f6837a;
        return (pVar == null || (bVar = pVar.f7116c) == null || bVar.B() == null || (this.f6837a.f7116c.B().e() & 2) != 0) ? false : true;
    }

    @Override
    public void onStopNestedScroll(@NonNull View view, int i10) {
        p pVar = this.f6837a;
        if (pVar != null) {
            float f10 = this.M;
            if (f10 == 0.0f) {
                return;
            }
            pVar.S(this.J / f10, this.K / f10);
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        p pVar = this.f6837a;
        if (pVar == null || !this.f6855j || !pVar.d0()) {
            return super.onTouchEvent(motionEvent);
        }
        p.b bVar = this.f6837a.f7116c;
        if (bVar != null && !bVar.C()) {
            return super.onTouchEvent(motionEvent);
        }
        this.f6837a.T(motionEvent, getCurrentState(), this);
        if (this.f6837a.f7116c.D(4)) {
            return this.f6837a.f7116c.B().r();
        }
        return true;
    }

    @Override
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.R == null) {
                this.R = new CopyOnWriteArrayList();
            }
            this.R.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.O == null) {
                    this.O = new ArrayList();
                }
                this.O.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.P == null) {
                    this.P = new ArrayList();
                }
                this.P.add(motionHelper);
            }
            if (motionHelper.isDecorator()) {
                if (this.Q == null) {
                    this.Q = new ArrayList();
                }
                this.Q.add(motionHelper);
            }
        }
    }

    @Override
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList arrayList = this.O;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList arrayList2 = this.P;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override
    protected void parseLayoutDescription(int i10) {
        this.mConstraintLayoutSpec = null;
    }

    @Deprecated
    public void rebuildMotion() {
        Log.e("MotionLayout", "This method is deprecated. Please call rebuildScene() instead.");
        rebuildScene();
    }

    public void rebuildScene() {
        this.f6886y0.h();
        invalidate();
    }

    public boolean removeTransitionListener(h hVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.R;
        if (copyOnWriteArrayList == null) {
            return false;
        }
        return copyOnWriteArrayList.remove(hVar);
    }

    @Override
    public void requestLayout() {
        p pVar;
        p.b bVar;
        if (!this.f6840b0 && this.f6847f == -1 && (pVar = this.f6837a) != null && (bVar = pVar.f7116c) != null) {
            int iZ = bVar.z();
            if (iZ == 0) {
                return;
            }
            if (iZ == 2) {
                int childCount = getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    ((m) this.f6857k.get(getChildAt(i10))).z();
                }
                return;
            }
        }
        super.requestLayout();
    }

    public void rotateTo(int i10, int i11) {
        this.f6868p0 = true;
        this.f6874s0 = getWidth();
        this.f6876t0 = getHeight();
        int rotation = getDisplay().getRotation();
        this.f6870q0 = (rotation + 1) % 4 <= (this.f6878u0 + 1) % 4 ? 2 : 1;
        this.f6878u0 = rotation;
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            v0.e eVar = (v0.e) this.f6872r0.get(childAt);
            if (eVar == null) {
                eVar = new v0.e();
                this.f6872r0.put(childAt, eVar);
            }
            eVar.a(childAt);
        }
        this.f6845e = -1;
        this.f6849g = i10;
        this.f6837a.Z(-1, i10);
        this.f6886y0.e(this.mLayoutWidget, null, this.f6837a.m(this.f6849g));
        this.f6863n = 0.0f;
        this.f6865o = 0.0f;
        invalidate();
        transitionToEnd(new Runnable() {
            @Override
            public void run() {
                MotionLayout.this.f6868p0 = false;
            }
        });
        if (i11 > 0) {
            this.f6861m = i11 / 1000.0f;
        }
    }

    public void scheduleTransitionTo(int i10) {
        if (getCurrentState() == -1) {
            transitionToState(i10);
            return;
        }
        int[] iArr = this.f6864n0;
        if (iArr == null) {
            this.f6864n0 = new int[4];
        } else if (iArr.length <= this.f6866o0) {
            this.f6864n0 = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f6864n0;
        int i11 = this.f6866o0;
        this.f6866o0 = i11 + 1;
        iArr2[i11] = i10;
    }

    public void setDebugMode(int i10) {
        this.f6883x = i10;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z10) {
        this.f6882w0 = z10;
    }

    public void setInteractionEnabled(boolean z10) {
        this.f6855j = z10;
    }

    public void setInterpolatedProgress(float f10) {
        if (this.f6837a != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolatorT = this.f6837a.t();
            if (interpolatorT != null) {
                setProgress(interpolatorT.getInterpolation(f10));
                return;
            }
        }
        setProgress(f10);
    }

    public void setOnHide(float f10) {
        ArrayList arrayList = this.P;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((MotionHelper) this.P.get(i10)).setProgress(f10);
            }
        }
    }

    public void setOnShow(float f10) {
        ArrayList arrayList = this.O;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((MotionHelper) this.O.get(i10)).setProgress(f10);
            }
        }
    }

    public void setProgress(float f10, float f11) {
        if (!isAttachedToWindow()) {
            if (this.f6860l0 == null) {
                this.f6860l0 = new g();
            }
            this.f6860l0.e(f10);
            this.f6860l0.h(f11);
            return;
        }
        setProgress(f10);
        setState(TransitionState.MOVING);
        this.f6843d = f11;
        if (f11 != 0.0f) {
            F(f11 > 0.0f ? 1.0f : 0.0f);
        } else {
            if (f10 == 0.0f || f10 == 1.0f) {
                return;
            }
            F(f10 > 0.5f ? 1.0f : 0.0f);
        }
    }

    public void setScene(p pVar) {
        this.f6837a = pVar;
        pVar.Y(isRtl());
        rebuildScene();
    }

    void setStartState(int i10) {
        if (isAttachedToWindow()) {
            this.f6847f = i10;
            return;
        }
        if (this.f6860l0 == null) {
            this.f6860l0 = new g();
        }
        this.f6860l0.f(i10);
        this.f6860l0.d(i10);
    }

    void setState(TransitionState transitionState) {
        TransitionState transitionState2 = TransitionState.FINISHED;
        if (transitionState == transitionState2 && this.f6847f == -1) {
            return;
        }
        TransitionState transitionState3 = this.f6884x0;
        this.f6884x0 = transitionState;
        TransitionState transitionState4 = TransitionState.MOVING;
        if (transitionState3 == transitionState4 && transitionState == transitionState4) {
            O();
        }
        int i10 = a.f6889a[transitionState3.ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3 && transitionState == transitionState2) {
                P();
                return;
            }
            return;
        }
        if (transitionState == transitionState4) {
            O();
        }
        if (transitionState == transitionState2) {
            P();
        }
    }

    public void setTransition(int i10, int i11) {
        if (!isAttachedToWindow()) {
            if (this.f6860l0 == null) {
                this.f6860l0 = new g();
            }
            this.f6860l0.f(i10);
            this.f6860l0.d(i11);
            return;
        }
        p pVar = this.f6837a;
        if (pVar != null) {
            this.f6845e = i10;
            this.f6849g = i11;
            pVar.Z(i10, i11);
            this.f6886y0.e(this.mLayoutWidget, this.f6837a.m(i10), this.f6837a.m(i11));
            rebuildScene();
            this.f6865o = 0.0f;
            transitionToStart();
        }
    }

    public void setTransitionDuration(int i10) {
        p pVar = this.f6837a;
        if (pVar == null) {
            Log.e("MotionLayout", "MotionScene not defined");
        } else {
            pVar.X(i10);
        }
    }

    public void setTransitionListener(h hVar) {
        this.f6877u = hVar;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.f6860l0 == null) {
            this.f6860l0 = new g();
        }
        this.f6860l0.g(bundle);
        if (isAttachedToWindow()) {
            this.f6860l0.a();
        }
    }

    @Override
    public String toString() {
        Context context = getContext();
        return androidx.constraintlayout.motion.widget.a.c(context, this.f6845e) + "->" + androidx.constraintlayout.motion.widget.a.c(context, this.f6849g) + " (pos:" + this.f6865o + " Dpos/Dt:" + this.f6843d;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0093  */
    /* JADX WARN: Code duplicated, block: B:30:0x009f  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c0  */
    public void touchAnimateTo(int i10, float f10, float f11) {
        if (this.f6837a == null || this.f6865o == f10) {
            return;
        }
        this.f6887z = true;
        this.f6859l = getNanoTime();
        this.f6861m = this.f6837a.q() / 1000.0f;
        this.f6869q = f10;
        this.f6873s = true;
        if (i10 == 0 || i10 == 1 || i10 == 2) {
            if (i10 != 1 || i10 == 7) {
                f10 = 0.0f;
            } else if (i10 == 2 || i10 == 6) {
                f10 = 1.0f;
            }
            if (this.f6837a.l() == 0) {
                this.A.b(this.f6865o, f10, f11, this.f6861m, this.f6837a.v(), this.f6837a.w());
            } else {
                this.A.d(this.f6865o, f10, f11, this.f6837a.C(), this.f6837a.D(), this.f6837a.B(), this.f6837a.E(), this.f6837a.A());
            }
            int i11 = this.f6847f;
            this.f6869q = f10;
            this.f6847f = i11;
            this.f6839b = this.A;
        } else if (i10 == 4) {
            this.B.b(f11, this.f6865o, this.f6837a.v());
            this.f6839b = this.B;
        } else if (i10 != 5) {
            if (i10 == 6 || i10 == 7) {
                if (i10 != 1) {
                    f10 = 0.0f;
                } else {
                    f10 = 0.0f;
                }
                if (this.f6837a.l() == 0) {
                    this.A.b(this.f6865o, f10, f11, this.f6861m, this.f6837a.v(), this.f6837a.w());
                } else {
                    this.A.d(this.f6865o, f10, f11, this.f6837a.C(), this.f6837a.D(), this.f6837a.B(), this.f6837a.E(), this.f6837a.A());
                }
                int i12 = this.f6847f;
                this.f6869q = f10;
                this.f6847f = i12;
                this.f6839b = this.A;
            }
        } else if (Z(f11, this.f6865o, this.f6837a.v())) {
            this.B.b(f11, this.f6865o, this.f6837a.v());
            this.f6839b = this.B;
        } else {
            this.A.b(this.f6865o, f10, f11, this.f6861m, this.f6837a.v(), this.f6837a.w());
            this.f6843d = 0.0f;
            int i13 = this.f6847f;
            this.f6869q = f10;
            this.f6847f = i13;
            this.f6839b = this.A;
        }
        this.f6871r = false;
        this.f6859l = getNanoTime();
        invalidate();
    }

    public void touchSpringTo(float f10, float f11) {
        if (this.f6837a == null || this.f6865o == f10) {
            return;
        }
        this.f6887z = true;
        this.f6859l = getNanoTime();
        this.f6861m = this.f6837a.q() / 1000.0f;
        this.f6869q = f10;
        this.f6873s = true;
        this.A.d(this.f6865o, f10, f11, this.f6837a.C(), this.f6837a.D(), this.f6837a.B(), this.f6837a.E(), this.f6837a.A());
        int i10 = this.f6847f;
        this.f6869q = f10;
        this.f6847f = i10;
        this.f6839b = this.A;
        this.f6871r = false;
        this.f6859l = getNanoTime();
        invalidate();
    }

    public void transitionToEnd() {
        F(1.0f);
        this.f6862m0 = null;
    }

    public void transitionToStart() {
        F(0.0f);
    }

    public void transitionToState(int i10) {
        if (isAttachedToWindow()) {
            transitionToState(i10, -1, -1);
            return;
        }
        if (this.f6860l0 == null) {
            this.f6860l0 = new g();
        }
        this.f6860l0.d(i10);
    }

    public void updateState(int i10, androidx.constraintlayout.widget.b bVar) {
        p pVar = this.f6837a;
        if (pVar != null) {
            pVar.W(i10, bVar);
        }
        updateState();
        if (this.f6847f == i10) {
            bVar.i(this);
        }
    }

    public void updateStateAnimate(int i10, androidx.constraintlayout.widget.b bVar, int i11) {
        if (this.f6837a != null && this.f6847f == i10) {
            updateState(R$id.view_transition, getConstraintSet(i10));
            setState(R$id.view_transition, -1, -1);
            updateState(i10, bVar);
            p.b bVar2 = new p.b(-1, this.f6837a, R$id.view_transition, i10);
            bVar2.E(i11);
            setTransition(bVar2);
            transitionToEnd();
        }
    }

    public void viewTransition(int i10, View... viewArr) {
        p pVar = this.f6837a;
        if (pVar != null) {
            pVar.e0(i10, viewArr);
        } else {
            Log.e("MotionLayout", " no motionScene");
        }
    }

    @Override
    public void onNestedScroll(@NonNull View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        if (this.I || i10 != 0 || i11 != 0) {
            iArr[0] = iArr[0] + i12;
            iArr[1] = iArr[1] + i13;
        }
        this.I = false;
    }

    public void transitionToEnd(Runnable runnable) {
        F(1.0f);
        this.f6862m0 = runnable;
    }

    public void transitionToState(int i10, int i11) {
        if (!isAttachedToWindow()) {
            if (this.f6860l0 == null) {
                this.f6860l0 = new g();
            }
            this.f6860l0.d(i10);
            return;
        }
        transitionToState(i10, -1, -1, i11);
    }

    public void updateState() {
        this.f6886y0.e(this.mLayoutWidget, this.f6837a.m(this.f6845e), this.f6837a.m(this.f6849g));
        rebuildScene();
    }

    @Override
    public void setState(int i10, int i11, int i12) {
        setState(TransitionState.SETUP);
        this.f6847f = i10;
        this.f6845e = -1;
        this.f6849g = -1;
        androidx.constraintlayout.widget.a aVar = this.mConstraintLayoutSpec;
        if (aVar != null) {
            aVar.d(i10, i11, i12);
            return;
        }
        p pVar = this.f6837a;
        if (pVar != null) {
            pVar.m(i10).i(this);
        }
    }

    public void setProgress(float f10) {
        if (f10 < 0.0f || f10 > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.f6860l0 == null) {
                this.f6860l0 = new g();
            }
            this.f6860l0.e(f10);
            return;
        }
        if (f10 <= 0.0f) {
            if (this.f6865o == 1.0f && this.f6847f == this.f6849g) {
                setState(TransitionState.MOVING);
            }
            this.f6847f = this.f6845e;
            if (this.f6865o == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (f10 >= 1.0f) {
            if (this.f6865o == 0.0f && this.f6847f == this.f6845e) {
                setState(TransitionState.MOVING);
            }
            this.f6847f = this.f6849g;
            if (this.f6865o == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.f6847f = -1;
            setState(TransitionState.MOVING);
        }
        if (this.f6837a == null) {
            return;
        }
        this.f6871r = true;
        this.f6869q = f10;
        this.f6863n = f10;
        this.f6867p = -1L;
        this.f6859l = -1L;
        this.f6839b = null;
        this.f6873s = true;
        invalidate();
    }

    public void transitionToState(int i10, int i11, int i12) {
        transitionToState(i10, i11, i12, -1);
    }

    public void transitionToState(int i10, int i11, int i12, int i13) {
        androidx.constraintlayout.widget.e eVar;
        int iA;
        p pVar = this.f6837a;
        if (pVar != null && (eVar = pVar.f7115b) != null && (iA = eVar.a(this.f6847f, i10, i11, i12)) != -1) {
            i10 = iA;
        }
        int i14 = this.f6847f;
        if (i14 == i10) {
            return;
        }
        if (this.f6845e == i10) {
            F(0.0f);
            if (i13 > 0) {
                this.f6861m = i13 / 1000.0f;
                return;
            }
            return;
        }
        if (this.f6849g == i10) {
            F(1.0f);
            if (i13 > 0) {
                this.f6861m = i13 / 1000.0f;
                return;
            }
            return;
        }
        this.f6849g = i10;
        if (i14 != -1) {
            setTransition(i14, i10);
            F(1.0f);
            this.f6865o = 0.0f;
            transitionToEnd();
            if (i13 > 0) {
                this.f6861m = i13 / 1000.0f;
                return;
            }
            return;
        }
        this.f6887z = false;
        this.f6869q = 1.0f;
        this.f6863n = 0.0f;
        this.f6865o = 0.0f;
        this.f6867p = getNanoTime();
        this.f6859l = getNanoTime();
        this.f6871r = false;
        this.f6839b = null;
        if (i13 == -1) {
            this.f6861m = this.f6837a.q() / 1000.0f;
        }
        this.f6845e = -1;
        this.f6837a.Z(-1, this.f6849g);
        SparseArray sparseArray = new SparseArray();
        if (i13 == 0) {
            this.f6861m = this.f6837a.q() / 1000.0f;
        } else if (i13 > 0) {
            this.f6861m = i13 / 1000.0f;
        }
        int childCount = getChildCount();
        this.f6857k.clear();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            this.f6857k.put(childAt, new m(childAt));
            sparseArray.put(childAt.getId(), (m) this.f6857k.get(childAt));
        }
        this.f6873s = true;
        this.f6886y0.e(this.mLayoutWidget, null, this.f6837a.m(i10));
        rebuildScene();
        this.f6886y0.a();
        K();
        int width = getWidth();
        int height = getHeight();
        if (this.Q != null) {
            for (int i16 = 0; i16 < childCount; i16++) {
                m mVar = (m) this.f6857k.get(getChildAt(i16));
                if (mVar != null) {
                    this.f6837a.u(mVar);
                }
            }
            Iterator it = this.Q.iterator();
            while (it.hasNext()) {
                ((MotionHelper) it.next()).onPreSetup(this, this.f6857k);
            }
            for (int i17 = 0; i17 < childCount; i17++) {
                m mVar2 = (m) this.f6857k.get(getChildAt(i17));
                if (mVar2 != null) {
                    mVar2.I(width, height, this.f6861m, getNanoTime());
                }
            }
        } else {
            for (int i18 = 0; i18 < childCount; i18++) {
                m mVar3 = (m) this.f6857k.get(getChildAt(i18));
                if (mVar3 != null) {
                    this.f6837a.u(mVar3);
                    mVar3.I(width, height, this.f6861m, getNanoTime());
                }
            }
        }
        float F = this.f6837a.F();
        if (F != 0.0f) {
            float fMin = Float.MAX_VALUE;
            float fMax = -3.4028235E38f;
            for (int i19 = 0; i19 < childCount; i19++) {
                m mVar4 = (m) this.f6857k.get(getChildAt(i19));
                float fO = mVar4.o() + mVar4.n();
                fMin = Math.min(fMin, fO);
                fMax = Math.max(fMax, fO);
            }
            for (int i20 = 0; i20 < childCount; i20++) {
                m mVar5 = (m) this.f6857k.get(getChildAt(i20));
                float fN = mVar5.n();
                float fO2 = mVar5.o();
                mVar5.f7081o = 1.0f / (1.0f - F);
                mVar5.f7080n = F - ((((fN + fO2) - fMin) * F) / (fMax - fMin));
            }
        }
        this.f6863n = 0.0f;
        this.f6865o = 0.0f;
        this.f6873s = true;
        invalidate();
    }

    public void setTransition(int i10) {
        float f10;
        if (this.f6837a != null) {
            p.b transition = getTransition(i10);
            this.f6845e = transition.A();
            this.f6849g = transition.y();
            if (!isAttachedToWindow()) {
                if (this.f6860l0 == null) {
                    this.f6860l0 = new g();
                }
                this.f6860l0.f(this.f6845e);
                this.f6860l0.d(this.f6849g);
                return;
            }
            int i11 = this.f6847f;
            if (i11 == this.f6845e) {
                f10 = 0.0f;
            } else {
                f10 = i11 == this.f6849g ? 1.0f : Float.NaN;
            }
            this.f6837a.a0(transition);
            this.f6886y0.e(this.mLayoutWidget, this.f6837a.m(this.f6845e), this.f6837a.m(this.f6849g));
            rebuildScene();
            if (this.f6865o != f10) {
                if (f10 == 0.0f) {
                    L(true);
                    this.f6837a.m(this.f6845e).i(this);
                } else if (f10 == 1.0f) {
                    L(false);
                    this.f6837a.m(this.f6849g).i(this);
                }
            }
            this.f6865o = Float.isNaN(f10) ? 0.0f : f10;
            if (Float.isNaN(f10)) {
                Log.v("MotionLayout", androidx.constraintlayout.motion.widget.a.b() + " transitionToStart ");
                transitionToStart();
                return;
            }
            setProgress(f10);
        }
    }

    protected void setTransition(p.b bVar) {
        this.f6837a.a0(bVar);
        setState(TransitionState.SETUP);
        if (this.f6847f == this.f6837a.r()) {
            this.f6865o = 1.0f;
            this.f6863n = 1.0f;
            this.f6869q = 1.0f;
        } else {
            this.f6865o = 0.0f;
            this.f6863n = 0.0f;
            this.f6869q = 0.0f;
        }
        this.f6867p = bVar.D(1) ? -1L : getNanoTime();
        int iG = this.f6837a.G();
        int iR = this.f6837a.r();
        if (iG == this.f6845e && iR == this.f6849g) {
            return;
        }
        this.f6845e = iG;
        this.f6849g = iR;
        this.f6837a.Z(iG, iR);
        this.f6886y0.e(this.mLayoutWidget, this.f6837a.m(this.f6845e), this.f6837a.m(this.f6849g));
        this.f6886y0.i(this.f6845e, this.f6849g);
        this.f6886y0.h();
        rebuildScene();
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6841c = null;
        this.f6843d = 0.0f;
        this.f6845e = -1;
        this.f6847f = -1;
        this.f6849g = -1;
        this.f6851h = 0;
        this.f6853i = 0;
        this.f6855j = true;
        this.f6857k = new HashMap();
        this.f6859l = 0L;
        this.f6861m = 1.0f;
        this.f6863n = 0.0f;
        this.f6865o = 0.0f;
        this.f6869q = 0.0f;
        this.f6873s = false;
        this.f6875t = false;
        this.f6883x = 0;
        this.f6887z = false;
        this.A = new v0.b();
        this.B = new b();
        this.D = true;
        this.I = false;
        this.N = false;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = 0;
        this.T = -1L;
        this.U = 0.0f;
        this.V = 0;
        this.W = 0.0f;
        this.f6838a0 = false;
        this.f6840b0 = false;
        this.f6856j0 = new androidx.constraintlayout.core.motion.utils.d();
        this.f6858k0 = false;
        this.f6862m0 = null;
        this.f6864n0 = null;
        this.f6866o0 = 0;
        this.f6868p0 = false;
        this.f6870q0 = 0;
        this.f6872r0 = new HashMap();
        this.f6880v0 = new Rect();
        this.f6882w0 = false;
        this.f6884x0 = TransitionState.UNDEFINED;
        this.f6886y0 = new d();
        this.f6888z0 = false;
        this.A0 = new RectF();
        this.B0 = null;
        this.C0 = null;
        this.D0 = new ArrayList();
        T(attributeSet);
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f6841c = null;
        this.f6843d = 0.0f;
        this.f6845e = -1;
        this.f6847f = -1;
        this.f6849g = -1;
        this.f6851h = 0;
        this.f6853i = 0;
        this.f6855j = true;
        this.f6857k = new HashMap();
        this.f6859l = 0L;
        this.f6861m = 1.0f;
        this.f6863n = 0.0f;
        this.f6865o = 0.0f;
        this.f6869q = 0.0f;
        this.f6873s = false;
        this.f6875t = false;
        this.f6883x = 0;
        this.f6887z = false;
        this.A = new v0.b();
        this.B = new b();
        this.D = true;
        this.I = false;
        this.N = false;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = 0;
        this.T = -1L;
        this.U = 0.0f;
        this.V = 0;
        this.W = 0.0f;
        this.f6838a0 = false;
        this.f6840b0 = false;
        this.f6856j0 = new androidx.constraintlayout.core.motion.utils.d();
        this.f6858k0 = false;
        this.f6862m0 = null;
        this.f6864n0 = null;
        this.f6866o0 = 0;
        this.f6868p0 = false;
        this.f6870q0 = 0;
        this.f6872r0 = new HashMap();
        this.f6880v0 = new Rect();
        this.f6882w0 = false;
        this.f6884x0 = TransitionState.UNDEFINED;
        this.f6886y0 = new d();
        this.f6888z0 = false;
        this.A0 = new RectF();
        this.B0 = null;
        this.C0 = null;
        this.D0 = new ArrayList();
        T(attributeSet);
    }
}
