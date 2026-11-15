package y4;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.airbnb.lottie.h;

public class a {

    private final h f76134a;

    public final Object f76135b;

    public Object f76136c;

    public final Interpolator f76137d;

    public final Interpolator f76138e;

    public final Interpolator f76139f;

    public final float f76140g;

    public Float f76141h;

    private float f76142i;

    private float f76143j;

    private int f76144k;

    private int f76145l;

    private float f76146m;

    private float f76147n;

    public PointF f76148o;

    public PointF f76149p;

    public a(h hVar, Object obj, Object obj2, Interpolator interpolator, float f10, Float f11) {
        this.f76142i = -3987645.8f;
        this.f76143j = -3987645.8f;
        this.f76144k = 784923401;
        this.f76145l = 784923401;
        this.f76146m = Float.MIN_VALUE;
        this.f76147n = Float.MIN_VALUE;
        this.f76148o = null;
        this.f76149p = null;
        this.f76134a = hVar;
        this.f76135b = obj;
        this.f76136c = obj2;
        this.f76137d = interpolator;
        this.f76138e = null;
        this.f76139f = null;
        this.f76140g = f10;
        this.f76141h = f11;
    }

    public boolean a(float f10) {
        return f10 >= f() && f10 < c();
    }

    public a b(Object obj, Object obj2) {
        return new a(obj, obj2);
    }

    public float c() {
        if (this.f76134a == null) {
            return 1.0f;
        }
        if (this.f76147n == Float.MIN_VALUE) {
            if (this.f76141h == null) {
                this.f76147n = 1.0f;
            } else {
                this.f76147n = f() + ((this.f76141h.floatValue() - this.f76140g) / this.f76134a.e());
            }
        }
        return this.f76147n;
    }

    public float d() {
        if (this.f76143j == -3987645.8f) {
            this.f76143j = ((Float) this.f76136c).floatValue();
        }
        return this.f76143j;
    }

    public int e() {
        if (this.f76145l == 784923401) {
            this.f76145l = ((Integer) this.f76136c).intValue();
        }
        return this.f76145l;
    }

    public float f() {
        h hVar = this.f76134a;
        if (hVar == null) {
            return 0.0f;
        }
        if (this.f76146m == Float.MIN_VALUE) {
            this.f76146m = (this.f76140g - hVar.p()) / this.f76134a.e();
        }
        return this.f76146m;
    }

    public float g() {
        if (this.f76142i == -3987645.8f) {
            this.f76142i = ((Float) this.f76135b).floatValue();
        }
        return this.f76142i;
    }

    public int h() {
        if (this.f76144k == 784923401) {
            this.f76144k = ((Integer) this.f76135b).intValue();
        }
        return this.f76144k;
    }

    public boolean i() {
        return this.f76137d == null && this.f76138e == null && this.f76139f == null;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f76135b + ", endValue=" + this.f76136c + ", startFrame=" + this.f76140g + ", endFrame=" + this.f76141h + ", interpolator=" + this.f76137d + '}';
    }

    public a(h hVar, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, float f10, Float f11) {
        this.f76142i = -3987645.8f;
        this.f76143j = -3987645.8f;
        this.f76144k = 784923401;
        this.f76145l = 784923401;
        this.f76146m = Float.MIN_VALUE;
        this.f76147n = Float.MIN_VALUE;
        this.f76148o = null;
        this.f76149p = null;
        this.f76134a = hVar;
        this.f76135b = obj;
        this.f76136c = obj2;
        this.f76137d = null;
        this.f76138e = interpolator;
        this.f76139f = interpolator2;
        this.f76140g = f10;
        this.f76141h = f11;
    }

    protected a(h hVar, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f10, Float f11) {
        this.f76142i = -3987645.8f;
        this.f76143j = -3987645.8f;
        this.f76144k = 784923401;
        this.f76145l = 784923401;
        this.f76146m = Float.MIN_VALUE;
        this.f76147n = Float.MIN_VALUE;
        this.f76148o = null;
        this.f76149p = null;
        this.f76134a = hVar;
        this.f76135b = obj;
        this.f76136c = obj2;
        this.f76137d = interpolator;
        this.f76138e = interpolator2;
        this.f76139f = interpolator3;
        this.f76140g = f10;
        this.f76141h = f11;
    }

    public a(Object obj) {
        this.f76142i = -3987645.8f;
        this.f76143j = -3987645.8f;
        this.f76144k = 784923401;
        this.f76145l = 784923401;
        this.f76146m = Float.MIN_VALUE;
        this.f76147n = Float.MIN_VALUE;
        this.f76148o = null;
        this.f76149p = null;
        this.f76134a = null;
        this.f76135b = obj;
        this.f76136c = obj;
        this.f76137d = null;
        this.f76138e = null;
        this.f76139f = null;
        this.f76140g = Float.MIN_VALUE;
        this.f76141h = Float.valueOf(Float.MAX_VALUE);
    }

    private a(Object obj, Object obj2) {
        this.f76142i = -3987645.8f;
        this.f76143j = -3987645.8f;
        this.f76144k = 784923401;
        this.f76145l = 784923401;
        this.f76146m = Float.MIN_VALUE;
        this.f76147n = Float.MIN_VALUE;
        this.f76148o = null;
        this.f76149p = null;
        this.f76134a = null;
        this.f76135b = obj;
        this.f76136c = obj2;
        this.f76137d = null;
        this.f76138e = null;
        this.f76139f = null;
        this.f76140g = Float.MIN_VALUE;
        this.f76141h = Float.valueOf(Float.MAX_VALUE);
    }
}
