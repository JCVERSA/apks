package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.widget.NestedScrollView;
import org.xmlpull.v1.XmlPullParser;

class q {
    private static final float[][] G = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};
    private static final float[][] H = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};

    private float f7174r;

    private float f7175s;

    private final MotionLayout f7176t;

    private int f7157a = 0;

    private int f7158b = 0;

    private int f7159c = 0;

    private int f7160d = -1;

    private int f7161e = -1;

    private int f7162f = -1;

    private float f7163g = 0.5f;

    private float f7164h = 0.5f;

    float f7165i = 0.5f;

    float f7166j = 0.5f;

    private int f7167k = -1;

    boolean f7168l = false;

    private float f7169m = 0.0f;

    private float f7170n = 1.0f;

    private boolean f7171o = false;

    private float[] f7172p = new float[2];

    private int[] f7173q = new int[2];

    private float f7177u = 4.0f;

    private float f7178v = 1.2f;

    private boolean f7179w = true;

    private float f7180x = 1.0f;

    private int f7181y = 0;

    private float f7182z = 10.0f;
    private float A = 10.0f;
    private float B = 1.0f;
    private float C = Float.NaN;
    private float D = Float.NaN;
    private int E = 0;
    private int F = 0;

    class a implements View.OnTouchListener {
        a(q qVar) {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    q(Context context, MotionLayout motionLayout, XmlPullParser xmlPullParser) {
        this.f7176t = motionLayout;
        c(context, Xml.asAttributeSet(xmlPullParser));
    }

    private void b(TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArray.getIndex(i10);
            if (index == R$styleable.OnSwipe_touchAnchorId) {
                this.f7160d = typedArray.getResourceId(index, this.f7160d);
            } else if (index == R$styleable.OnSwipe_touchAnchorSide) {
                int i11 = typedArray.getInt(index, this.f7157a);
                this.f7157a = i11;
                float[] fArr = G[i11];
                this.f7164h = fArr[0];
                this.f7163g = fArr[1];
            } else if (index == R$styleable.OnSwipe_dragDirection) {
                int i12 = typedArray.getInt(index, this.f7158b);
                this.f7158b = i12;
                float[][] fArr2 = H;
                if (i12 < fArr2.length) {
                    float[] fArr3 = fArr2[i12];
                    this.f7169m = fArr3[0];
                    this.f7170n = fArr3[1];
                } else {
                    this.f7170n = Float.NaN;
                    this.f7169m = Float.NaN;
                    this.f7168l = true;
                }
            } else if (index == R$styleable.OnSwipe_maxVelocity) {
                this.f7177u = typedArray.getFloat(index, this.f7177u);
            } else if (index == R$styleable.OnSwipe_maxAcceleration) {
                this.f7178v = typedArray.getFloat(index, this.f7178v);
            } else if (index == R$styleable.OnSwipe_moveWhenScrollAtTop) {
                this.f7179w = typedArray.getBoolean(index, this.f7179w);
            } else if (index == R$styleable.OnSwipe_dragScale) {
                this.f7180x = typedArray.getFloat(index, this.f7180x);
            } else if (index == R$styleable.OnSwipe_dragThreshold) {
                this.f7182z = typedArray.getFloat(index, this.f7182z);
            } else if (index == R$styleable.OnSwipe_touchRegionId) {
                this.f7161e = typedArray.getResourceId(index, this.f7161e);
            } else if (index == R$styleable.OnSwipe_onTouchUp) {
                this.f7159c = typedArray.getInt(index, this.f7159c);
            } else if (index == R$styleable.OnSwipe_nestedScrollFlags) {
                this.f7181y = typedArray.getInteger(index, 0);
            } else if (index == R$styleable.OnSwipe_limitBoundsTo) {
                this.f7162f = typedArray.getResourceId(index, 0);
            } else if (index == R$styleable.OnSwipe_rotationCenterId) {
                this.f7167k = typedArray.getResourceId(index, this.f7167k);
            } else if (index == R$styleable.OnSwipe_springDamping) {
                this.A = typedArray.getFloat(index, this.A);
            } else if (index == R$styleable.OnSwipe_springMass) {
                this.B = typedArray.getFloat(index, this.B);
            } else if (index == R$styleable.OnSwipe_springStiffness) {
                this.C = typedArray.getFloat(index, this.C);
            } else if (index == R$styleable.OnSwipe_springStopThreshold) {
                this.D = typedArray.getFloat(index, this.D);
            } else if (index == R$styleable.OnSwipe_springBoundary) {
                this.E = typedArray.getInt(index, this.E);
            } else if (index == R$styleable.OnSwipe_autoCompleteMode) {
                this.F = typedArray.getInt(index, this.F);
            }
        }
    }

    private void c(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.OnSwipe);
        b(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    void A() {
        View viewFindViewById;
        int i10 = this.f7160d;
        if (i10 != -1) {
            viewFindViewById = this.f7176t.findViewById(i10);
            if (viewFindViewById == null) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + androidx.constraintlayout.motion.widget.a.c(this.f7176t.getContext(), this.f7160d));
            }
        } else {
            viewFindViewById = null;
        }
        if (viewFindViewById instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) viewFindViewById;
            nestedScrollView.setOnTouchListener(new a(this));
            nestedScrollView.setOnScrollChangeListener(new b(this));
        }
    }

    float a(float f10, float f11) {
        return (f10 * this.f7169m) + (f11 * this.f7170n);
    }

    public int d() {
        return this.F;
    }

    public int e() {
        return this.f7181y;
    }

    RectF f(ViewGroup viewGroup, RectF rectF) {
        View viewFindViewById;
        int i10 = this.f7162f;
        if (i10 == -1 || (viewFindViewById = viewGroup.findViewById(i10)) == null) {
            return null;
        }
        rectF.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rectF;
    }

    float g() {
        return this.f7178v;
    }

    public float h() {
        return this.f7177u;
    }

    boolean i() {
        return this.f7179w;
    }

    float j(float f10, float f11) {
        this.f7176t.Q(this.f7160d, this.f7176t.getProgress(), this.f7164h, this.f7163g, this.f7172p);
        float f12 = this.f7169m;
        if (f12 != 0.0f) {
            float[] fArr = this.f7172p;
            if (fArr[0] == 0.0f) {
                fArr[0] = 1.0E-7f;
            }
            return (f10 * f12) / fArr[0];
        }
        float[] fArr2 = this.f7172p;
        if (fArr2[1] == 0.0f) {
            fArr2[1] = 1.0E-7f;
        }
        return (f11 * this.f7170n) / fArr2[1];
    }

    public int k() {
        return this.E;
    }

    public float l() {
        return this.A;
    }

    public float m() {
        return this.B;
    }

    public float n() {
        return this.C;
    }

    public float o() {
        return this.D;
    }

    RectF p(ViewGroup viewGroup, RectF rectF) {
        View viewFindViewById;
        int i10 = this.f7161e;
        if (i10 == -1 || (viewFindViewById = viewGroup.findViewById(i10)) == null) {
            return null;
        }
        rectF.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rectF;
    }

    int q() {
        return this.f7161e;
    }

    boolean r() {
        return this.f7171o;
    }

    void s(MotionEvent motionEvent, MotionLayout.e eVar, int i10, p pVar) {
        int i11;
        if (this.f7168l) {
            t(motionEvent, eVar, i10, pVar);
            return;
        }
        eVar.a(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f7174r = motionEvent.getRawX();
            this.f7175s = motionEvent.getRawY();
            this.f7171o = false;
            return;
        }
        if (action == 1) {
            this.f7171o = false;
            eVar.d(1000);
            float fC = eVar.c();
            float fB = eVar.b();
            float progress = this.f7176t.getProgress();
            int i12 = this.f7160d;
            if (i12 != -1) {
                this.f7176t.Q(i12, progress, this.f7164h, this.f7163g, this.f7172p);
            } else {
                float fMin = Math.min(this.f7176t.getWidth(), this.f7176t.getHeight());
                float[] fArr = this.f7172p;
                fArr[1] = this.f7170n * fMin;
                fArr[0] = fMin * this.f7169m;
            }
            float f10 = this.f7169m;
            float[] fArr2 = this.f7172p;
            float fAbs = f10 != 0.0f ? fC / fArr2[0] : fB / fArr2[1];
            float f11 = !Float.isNaN(fAbs) ? (fAbs / 3.0f) + progress : progress;
            if (f11 == 0.0f || f11 == 1.0f || (i11 = this.f7159c) == 3) {
                if (0.0f >= f11 || 1.0f <= f11) {
                    this.f7176t.setState(MotionLayout.TransitionState.FINISHED);
                    return;
                }
                return;
            }
            float f12 = ((double) f11) < 0.5d ? 0.0f : 1.0f;
            if (i11 == 6) {
                if (progress + fAbs < 0.0f) {
                    fAbs = Math.abs(fAbs);
                }
                f12 = 1.0f;
            }
            if (this.f7159c == 7) {
                if (progress + fAbs > 1.0f) {
                    fAbs = -Math.abs(fAbs);
                }
                f12 = 0.0f;
            }
            this.f7176t.touchAnimateTo(this.f7159c, f12, fAbs);
            if (0.0f >= progress || 1.0f <= progress) {
                this.f7176t.setState(MotionLayout.TransitionState.FINISHED);
                return;
            }
            return;
        }
        if (action != 2) {
            return;
        }
        float rawY = motionEvent.getRawY() - this.f7175s;
        float rawX = motionEvent.getRawX() - this.f7174r;
        if (Math.abs((this.f7169m * rawX) + (this.f7170n * rawY)) > this.f7182z || this.f7171o) {
            float progress2 = this.f7176t.getProgress();
            if (!this.f7171o) {
                this.f7171o = true;
                this.f7176t.setProgress(progress2);
            }
            int i13 = this.f7160d;
            if (i13 != -1) {
                this.f7176t.Q(i13, progress2, this.f7164h, this.f7163g, this.f7172p);
            } else {
                float fMin2 = Math.min(this.f7176t.getWidth(), this.f7176t.getHeight());
                float[] fArr3 = this.f7172p;
                fArr3[1] = this.f7170n * fMin2;
                fArr3[0] = fMin2 * this.f7169m;
            }
            float f13 = this.f7169m;
            float[] fArr4 = this.f7172p;
            if (Math.abs(((f13 * fArr4[0]) + (this.f7170n * fArr4[1])) * this.f7180x) < 0.01d) {
                float[] fArr5 = this.f7172p;
                fArr5[0] = 0.01f;
                fArr5[1] = 0.01f;
            }
            float fMax = Math.max(Math.min(progress2 + (this.f7169m != 0.0f ? rawX / this.f7172p[0] : rawY / this.f7172p[1]), 1.0f), 0.0f);
            if (this.f7159c == 6) {
                fMax = Math.max(fMax, 0.01f);
            }
            if (this.f7159c == 7) {
                fMax = Math.min(fMax, 0.99f);
            }
            float progress3 = this.f7176t.getProgress();
            if (fMax != progress3) {
                if (progress3 == 0.0f || progress3 == 1.0f) {
                    this.f7176t.L(progress3 == 0.0f);
                }
                this.f7176t.setProgress(fMax);
                eVar.d(1000);
                this.f7176t.f6843d = this.f7169m != 0.0f ? eVar.c() / this.f7172p[0] : eVar.b() / this.f7172p[1];
            } else {
                this.f7176t.f6843d = 0.0f;
            }
            this.f7174r = motionEvent.getRawX();
            this.f7175s = motionEvent.getRawY();
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0270  */
    /* JADX WARN: Code duplicated, block: B:58:0x0294  */
    /* JADX WARN: Code duplicated, block: B:61:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:63:0x02be  */
    void t(MotionEvent motionEvent, MotionLayout.e eVar, int i10, p pVar) {
        float left;
        float f10;
        int top;
        int bottom;
        int i11;
        float degrees;
        float f11;
        int i12;
        eVar.a(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f7174r = motionEvent.getRawX();
            this.f7175s = motionEvent.getRawY();
            this.f7171o = false;
            return;
        }
        if (action != 1) {
            if (action != 2) {
                return;
            }
            motionEvent.getRawY();
            motionEvent.getRawX();
            float width = this.f7176t.getWidth() / 2.0f;
            float height = this.f7176t.getHeight() / 2.0f;
            int i13 = this.f7167k;
            if (i13 != -1) {
                View viewFindViewById = this.f7176t.findViewById(i13);
                this.f7176t.getLocationOnScreen(this.f7173q);
                float left2 = this.f7173q[0] + ((viewFindViewById.getLeft() + viewFindViewById.getRight()) / 2.0f);
                height = ((viewFindViewById.getTop() + viewFindViewById.getBottom()) / 2.0f) + this.f7173q[1];
                width = left2;
            } else {
                int i14 = this.f7160d;
                if (i14 != -1) {
                    View viewFindViewById2 = this.f7176t.findViewById(this.f7176t.R(i14).h());
                    if (viewFindViewById2 == null) {
                        Log.e("TouchResponse", "could not find view to animate to");
                    } else {
                        this.f7176t.getLocationOnScreen(this.f7173q);
                        width = this.f7173q[0] + ((viewFindViewById2.getLeft() + viewFindViewById2.getRight()) / 2.0f);
                        height = this.f7173q[1] + ((viewFindViewById2.getTop() + viewFindViewById2.getBottom()) / 2.0f);
                    }
                }
            }
            float rawX = motionEvent.getRawX() - width;
            float rawY = motionEvent.getRawY() - height;
            double dAtan2 = Math.atan2(motionEvent.getRawY() - height, motionEvent.getRawX() - width);
            float fAtan2 = (float) (((dAtan2 - Math.atan2(this.f7175s - height, this.f7174r - width)) * 180.0d) / 3.141592653589793d);
            if (fAtan2 > 330.0f) {
                fAtan2 -= 360.0f;
            } else if (fAtan2 < -330.0f) {
                fAtan2 += 360.0f;
            }
            if (Math.abs(fAtan2) > 0.01d || this.f7171o) {
                float progress = this.f7176t.getProgress();
                if (!this.f7171o) {
                    this.f7171o = true;
                    this.f7176t.setProgress(progress);
                }
                int i15 = this.f7160d;
                if (i15 != -1) {
                    this.f7176t.Q(i15, progress, this.f7164h, this.f7163g, this.f7172p);
                    float[] fArr = this.f7172p;
                    fArr[1] = (float) Math.toDegrees(fArr[1]);
                } else {
                    this.f7172p[1] = 360.0f;
                }
                float fMax = Math.max(Math.min(progress + ((fAtan2 * this.f7180x) / this.f7172p[1]), 1.0f), 0.0f);
                float progress2 = this.f7176t.getProgress();
                if (fMax != progress2) {
                    if (progress2 == 0.0f || progress2 == 1.0f) {
                        this.f7176t.L(progress2 == 0.0f);
                    }
                    this.f7176t.setProgress(fMax);
                    eVar.d(1000);
                    float fC = eVar.c();
                    double dB = eVar.b();
                    double d10 = fC;
                    this.f7176t.f6843d = (float) Math.toDegrees((float) ((Math.hypot(dB, d10) * Math.sin(Math.atan2(dB, d10) - dAtan2)) / Math.hypot(rawX, rawY)));
                } else {
                    this.f7176t.f6843d = 0.0f;
                }
                this.f7174r = motionEvent.getRawX();
                this.f7175s = motionEvent.getRawY();
                return;
            }
            return;
        }
        this.f7171o = false;
        eVar.d(16);
        float fC2 = eVar.c();
        float fB = eVar.b();
        float progress3 = this.f7176t.getProgress();
        float width2 = this.f7176t.getWidth() / 2.0f;
        float height2 = this.f7176t.getHeight() / 2.0f;
        int i16 = this.f7167k;
        if (i16 == -1) {
            int i17 = this.f7160d;
            if (i17 != -1) {
                View viewFindViewById3 = this.f7176t.findViewById(this.f7176t.R(i17).h());
                this.f7176t.getLocationOnScreen(this.f7173q);
                left = this.f7173q[0] + ((viewFindViewById3.getLeft() + viewFindViewById3.getRight()) / 2.0f);
                f10 = this.f7173q[1];
                top = viewFindViewById3.getTop();
                bottom = viewFindViewById3.getBottom();
            }
            float rawX2 = motionEvent.getRawX() - width2;
            float rawY2 = motionEvent.getRawY() - height2;
            double degrees2 = Math.toDegrees(Math.atan2(rawY2, rawX2));
            i11 = this.f7160d;
            if (i11 != -1) {
                this.f7176t.Q(i11, progress3, this.f7164h, this.f7163g, this.f7172p);
                float[] fArr2 = this.f7172p;
                fArr2[1] = (float) Math.toDegrees(fArr2[1]);
            } else {
                this.f7172p[1] = 360.0f;
            }
            degrees = ((float) (Math.toDegrees(Math.atan2(fB + rawY2, fC2 + rawX2)) - degrees2)) * 62.5f;
            if (Float.isNaN(degrees)) {
                f11 = progress3;
            } else {
                f11 = (((degrees * 3.0f) * this.f7180x) / this.f7172p[1]) + progress3;
            }
            if (f11 != 0.0f || f11 == 1.0f || (i12 = this.f7159c) == 3) {
                if (0.0f < f11 || 1.0f <= f11) {
                    this.f7176t.setState(MotionLayout.TransitionState.FINISHED);
                }
                return;
            }
            float fAbs = (degrees * this.f7180x) / this.f7172p[1];
            float f12 = ((double) f11) < 0.5d ? 0.0f : 1.0f;
            if (i12 == 6) {
                if (progress3 + fAbs < 0.0f) {
                    fAbs = Math.abs(fAbs);
                }
                f12 = 1.0f;
            }
            if (this.f7159c == 7) {
                if (progress3 + fAbs > 1.0f) {
                    fAbs = -Math.abs(fAbs);
                }
                f12 = 0.0f;
            }
            this.f7176t.touchAnimateTo(this.f7159c, f12, fAbs * 3.0f);
            if (0.0f >= progress3 || 1.0f <= progress3) {
                this.f7176t.setState(MotionLayout.TransitionState.FINISHED);
                return;
            }
            return;
        }
        View viewFindViewById4 = this.f7176t.findViewById(i16);
        this.f7176t.getLocationOnScreen(this.f7173q);
        left = this.f7173q[0] + ((viewFindViewById4.getLeft() + viewFindViewById4.getRight()) / 2.0f);
        f10 = this.f7173q[1];
        top = viewFindViewById4.getTop();
        bottom = viewFindViewById4.getBottom();
        height2 = f10 + ((top + bottom) / 2.0f);
        width2 = left;
        float rawX3 = motionEvent.getRawX() - width2;
        float rawY3 = motionEvent.getRawY() - height2;
        double degrees3 = Math.toDegrees(Math.atan2(rawY3, rawX3));
        i11 = this.f7160d;
        if (i11 != -1) {
            this.f7176t.Q(i11, progress3, this.f7164h, this.f7163g, this.f7172p);
            float[] fArr3 = this.f7172p;
            fArr3[1] = (float) Math.toDegrees(fArr3[1]);
        } else {
            this.f7172p[1] = 360.0f;
        }
        degrees = ((float) (Math.toDegrees(Math.atan2(fB + rawY3, fC2 + rawX3)) - degrees3)) * 62.5f;
        if (Float.isNaN(degrees)) {
            f11 = (((degrees * 3.0f) * this.f7180x) / this.f7172p[1]) + progress3;
        } else {
            f11 = progress3;
        }
        if (f11 != 0.0f) {
        }
        if (0.0f < f11) {
        }
        this.f7176t.setState(MotionLayout.TransitionState.FINISHED);
    }

    public String toString() {
        if (Float.isNaN(this.f7169m)) {
            return "rotation";
        }
        return this.f7169m + " , " + this.f7170n;
    }

    void u(float f10, float f11) {
        float progress = this.f7176t.getProgress();
        if (!this.f7171o) {
            this.f7171o = true;
            this.f7176t.setProgress(progress);
        }
        this.f7176t.Q(this.f7160d, progress, this.f7164h, this.f7163g, this.f7172p);
        float f12 = this.f7169m;
        float[] fArr = this.f7172p;
        if (Math.abs((f12 * fArr[0]) + (this.f7170n * fArr[1])) < 0.01d) {
            float[] fArr2 = this.f7172p;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f13 = this.f7169m;
        float fMax = Math.max(Math.min(progress + (f13 != 0.0f ? (f10 * f13) / this.f7172p[0] : (f11 * this.f7170n) / this.f7172p[1]), 1.0f), 0.0f);
        if (fMax != this.f7176t.getProgress()) {
            this.f7176t.setProgress(fMax);
        }
    }

    void v(float f10, float f11) {
        this.f7171o = false;
        float progress = this.f7176t.getProgress();
        this.f7176t.Q(this.f7160d, progress, this.f7164h, this.f7163g, this.f7172p);
        float f12 = this.f7169m;
        float[] fArr = this.f7172p;
        float f13 = f12 != 0.0f ? (f10 * f12) / fArr[0] : (f11 * this.f7170n) / fArr[1];
        if (!Float.isNaN(f13)) {
            progress += f13 / 3.0f;
        }
        if (progress != 0.0f) {
            boolean z10 = progress != 1.0f;
            int i10 = this.f7159c;
            if ((i10 != 3) && z10) {
                this.f7176t.touchAnimateTo(i10, ((double) progress) >= 0.5d ? 1.0f : 0.0f, f13);
            }
        }
    }

    void w(float f10, float f11) {
        this.f7174r = f10;
        this.f7175s = f11;
    }

    public void x(boolean z10) {
        if (z10) {
            float[][] fArr = H;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = G;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = H;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = G;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[] fArr5 = G[this.f7157a];
        this.f7164h = fArr5[0];
        this.f7163g = fArr5[1];
        int i10 = this.f7158b;
        float[][] fArr6 = H;
        if (i10 >= fArr6.length) {
            return;
        }
        float[] fArr7 = fArr6[i10];
        this.f7169m = fArr7[0];
        this.f7170n = fArr7[1];
    }

    public void y(int i10) {
        this.f7159c = i10;
    }

    void z(float f10, float f11) {
        this.f7174r = f10;
        this.f7175s = f11;
        this.f7171o = false;
    }

    class b implements NestedScrollView.e {
        b(q qVar) {
        }

        @Override
        public void a(NestedScrollView nestedScrollView, int i10, int i11, int i12, int i13) {
        }
    }
}
