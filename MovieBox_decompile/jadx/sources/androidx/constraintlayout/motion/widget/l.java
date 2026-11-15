package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

class l implements Comparable {
    static String[] D = {RequestParameters.POSITION, "x", "y", "width", "height", "pathRotate"};

    int f7043c;

    private androidx.constraintlayout.core.motion.utils.c f7056p;

    private float f7058r;

    private float f7059s;

    private float f7060t;

    private float f7061u;

    private float f7062v;

    private float f7041a = 1.0f;

    int f7042b = 0;

    private boolean f7044d = false;

    private float f7045e = 0.0f;

    private float f7046f = 0.0f;

    private float f7047g = 0.0f;

    public float f7048h = 0.0f;

    private float f7049i = 1.0f;

    private float f7050j = 1.0f;

    private float f7051k = Float.NaN;

    private float f7052l = Float.NaN;

    private float f7053m = 0.0f;

    private float f7054n = 0.0f;

    private float f7055o = 0.0f;

    private int f7057q = 0;

    private float f7063w = Float.NaN;

    private float f7064x = Float.NaN;

    private int f7065y = -1;

    LinkedHashMap f7066z = new LinkedHashMap();
    int A = 0;
    double[] B = new double[18];
    double[] C = new double[18];

    private boolean f(float f10, float f11) {
        if (Float.isNaN(f10) || Float.isNaN(f11)) {
            return Float.isNaN(f10) != Float.isNaN(f11);
        }
        return Math.abs(f10 - f11) > 1.0E-6f;
    }

    public void a(HashMap map, int i10) {
        for (String str : map.keySet()) {
            v0.d dVar = (v0.d) map.get(str);
            str.hashCode();
            switch (str) {
                case "rotationX":
                    dVar.c(i10, Float.isNaN(this.f7047g) ? 0.0f : this.f7047g);
                    break;
                case "rotationY":
                    dVar.c(i10, Float.isNaN(this.f7048h) ? 0.0f : this.f7048h);
                    break;
                case "translationX":
                    dVar.c(i10, Float.isNaN(this.f7053m) ? 0.0f : this.f7053m);
                    break;
                case "translationY":
                    dVar.c(i10, Float.isNaN(this.f7054n) ? 0.0f : this.f7054n);
                    break;
                case "translationZ":
                    dVar.c(i10, Float.isNaN(this.f7055o) ? 0.0f : this.f7055o);
                    break;
                case "progress":
                    dVar.c(i10, Float.isNaN(this.f7064x) ? 0.0f : this.f7064x);
                    break;
                case "scaleX":
                    dVar.c(i10, Float.isNaN(this.f7049i) ? 1.0f : this.f7049i);
                    break;
                case "scaleY":
                    dVar.c(i10, Float.isNaN(this.f7050j) ? 1.0f : this.f7050j);
                    break;
                case "transformPivotX":
                    dVar.c(i10, Float.isNaN(this.f7051k) ? 0.0f : this.f7051k);
                    break;
                case "transformPivotY":
                    dVar.c(i10, Float.isNaN(this.f7052l) ? 0.0f : this.f7052l);
                    break;
                case "rotation":
                    dVar.c(i10, Float.isNaN(this.f7046f) ? 0.0f : this.f7046f);
                    break;
                case "elevation":
                    dVar.c(i10, Float.isNaN(this.f7045e) ? 0.0f : this.f7045e);
                    break;
                case "transitionPathRotate":
                    dVar.c(i10, Float.isNaN(this.f7063w) ? 0.0f : this.f7063w);
                    break;
                case "alpha":
                    dVar.c(i10, Float.isNaN(this.f7041a) ? 1.0f : this.f7041a);
                    break;
                default:
                    if (!str.startsWith("CUSTOM")) {
                        Log.e("MotionPaths", "UNKNOWN spline " + str);
                        break;
                    } else {
                        String str2 = str.split(",")[1];
                        if (this.f7066z.containsKey(str2)) {
                            ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f7066z.get(str2);
                            if (dVar instanceof v0.d.b) {
                                ((v0.d.b) dVar).i(i10, constraintAttribute);
                            } else {
                                Log.e("MotionPaths", str + " ViewSpline not a CustomSet frame = " + i10 + ", value" + constraintAttribute.e() + dVar);
                            }
                        }
                        break;
                    }
                    break;
            }
        }
    }

    public void b(View view) {
        this.f7043c = view.getVisibility();
        this.f7041a = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.f7044d = false;
        this.f7045e = view.getElevation();
        this.f7046f = view.getRotation();
        this.f7047g = view.getRotationX();
        this.f7048h = view.getRotationY();
        this.f7049i = view.getScaleX();
        this.f7050j = view.getScaleY();
        this.f7051k = view.getPivotX();
        this.f7052l = view.getPivotY();
        this.f7053m = view.getTranslationX();
        this.f7054n = view.getTranslationY();
        this.f7055o = view.getTranslationZ();
    }

    public void d(androidx.constraintlayout.widget.b.a aVar) {
        androidx.constraintlayout.widget.b.d dVar = aVar.f7456c;
        int i10 = dVar.f7535c;
        this.f7042b = i10;
        int i11 = dVar.f7534b;
        this.f7043c = i11;
        this.f7041a = (i11 == 0 || i10 != 0) ? dVar.f7536d : 0.0f;
        androidx.constraintlayout.widget.b.e eVar = aVar.f7459f;
        this.f7044d = eVar.f7551m;
        this.f7045e = eVar.f7552n;
        this.f7046f = eVar.f7540b;
        this.f7047g = eVar.f7541c;
        this.f7048h = eVar.f7542d;
        this.f7049i = eVar.f7543e;
        this.f7050j = eVar.f7544f;
        this.f7051k = eVar.f7545g;
        this.f7052l = eVar.f7546h;
        this.f7053m = eVar.f7548j;
        this.f7054n = eVar.f7549k;
        this.f7055o = eVar.f7550l;
        this.f7056p = androidx.constraintlayout.core.motion.utils.c.c(aVar.f7457d.f7522d);
        androidx.constraintlayout.widget.b.c cVar = aVar.f7457d;
        this.f7063w = cVar.f7527i;
        this.f7057q = cVar.f7524f;
        this.f7065y = cVar.f7520b;
        this.f7064x = aVar.f7456c.f7537e;
        for (String str : aVar.f7460g.keySet()) {
            ConstraintAttribute constraintAttribute = (ConstraintAttribute) aVar.f7460g.get(str);
            if (constraintAttribute.g()) {
                this.f7066z.put(str, constraintAttribute);
            }
        }
    }

    @Override
    public int compareTo(l lVar) {
        return Float.compare(this.f7058r, lVar.f7058r);
    }

    void g(l lVar, HashSet hashSet) {
        if (f(this.f7041a, lVar.f7041a)) {
            hashSet.add("alpha");
        }
        if (f(this.f7045e, lVar.f7045e)) {
            hashSet.add("elevation");
        }
        int i10 = this.f7043c;
        int i11 = lVar.f7043c;
        if (i10 != i11 && this.f7042b == 0 && (i10 == 0 || i11 == 0)) {
            hashSet.add("alpha");
        }
        if (f(this.f7046f, lVar.f7046f)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f7063w) || !Float.isNaN(lVar.f7063w)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f7064x) || !Float.isNaN(lVar.f7064x)) {
            hashSet.add(NotificationCompat.CATEGORY_PROGRESS);
        }
        if (f(this.f7047g, lVar.f7047g)) {
            hashSet.add("rotationX");
        }
        if (f(this.f7048h, lVar.f7048h)) {
            hashSet.add("rotationY");
        }
        if (f(this.f7051k, lVar.f7051k)) {
            hashSet.add("transformPivotX");
        }
        if (f(this.f7052l, lVar.f7052l)) {
            hashSet.add("transformPivotY");
        }
        if (f(this.f7049i, lVar.f7049i)) {
            hashSet.add("scaleX");
        }
        if (f(this.f7050j, lVar.f7050j)) {
            hashSet.add("scaleY");
        }
        if (f(this.f7053m, lVar.f7053m)) {
            hashSet.add("translationX");
        }
        if (f(this.f7054n, lVar.f7054n)) {
            hashSet.add("translationY");
        }
        if (f(this.f7055o, lVar.f7055o)) {
            hashSet.add("translationZ");
        }
    }

    void h(float f10, float f11, float f12, float f13) {
        this.f7059s = f10;
        this.f7060t = f11;
        this.f7061u = f12;
        this.f7062v = f13;
    }

    public void i(Rect rect, View view, int i10, float f10) {
        h(rect.left, rect.top, rect.width(), rect.height());
        b(view);
        this.f7051k = Float.NaN;
        this.f7052l = Float.NaN;
        if (i10 == 1) {
            this.f7046f = f10 - 90.0f;
        } else {
            if (i10 != 2) {
                return;
            }
            this.f7046f = f10 + 90.0f;
        }
    }

    public void j(Rect rect, androidx.constraintlayout.widget.b bVar, int i10, int i11) {
        h(rect.left, rect.top, rect.width(), rect.height());
        d(bVar.A(i11));
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return;
                    }
                }
            }
            float f10 = this.f7046f + 90.0f;
            this.f7046f = f10;
            if (f10 > 180.0f) {
                this.f7046f = f10 - 360.0f;
                return;
            }
            return;
        }
        this.f7046f -= 90.0f;
    }

    public void k(View view) {
        h(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        b(view);
    }
}
