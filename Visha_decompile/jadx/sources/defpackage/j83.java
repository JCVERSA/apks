package defpackage;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import java.util.HashMap;
import java.util.Map;

public class j83 {
    public View a;
    public SpringAnimation b;
    public SpringAnimation c;
    public SpringAnimation d;
    public SpringAnimation e;
    public float f;
    public float g;
    public SpringAnimation h;
    public SpringAnimation i;
    public float j;
    public float k;
    public float l;
    public float m;
    public int o;
    public int p;
    public ElasticTypeConfig q;
    public boolean s;
    public boolean t;
    public float n = 1.05f;
    public final Map r = new HashMap();

    public final void A() {
        int layerType;
        this.s = false;
        this.t = false;
        View view = this.a;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (((childAt instanceof ViewGroup) || (childAt instanceof TextView)) && (layerType = childAt.getLayerType()) != 2) {
                    this.r.put(childAt, Integer.valueOf(layerType));
                    Log.i("MyLog", "setViewLayerType =================== index：" + i + "   originType: " + layerType);
                    childAt.setLayerType(2, null);
                }
            }
        }
    }

    public final void B() {
        this.b.setStartValue(this.a.getScaleX());
        this.b.animateToFinalPosition(1.0f);
        this.c.setStartValue(this.a.getScaleY());
        this.c.animateToFinalPosition(1.0f);
        this.d.setStartValue(this.a.getTranslationX());
        this.d.animateToFinalPosition(0.0f);
        this.e.setStartValue(this.a.getTranslationY());
        this.e.animateToFinalPosition(0.0f);
    }

    public void C(int i, int i2) {
        this.o = i;
        this.p = i2;
        float fMax = Math.max(i, i2);
        if (fMax < 132.0f) {
            this.n = 1.25f;
        } else if (fMax > 984.0f) {
            this.n = 1.05f;
        } else {
            this.n = (((((fMax - 132.0f) / 852.0f) * 12.0f) + 39.0f) + fMax) / fMax;
        }
        ElasticTypeConfig elasticTypeConfig = this.q;
        if (elasticTypeConfig != null && (elasticTypeConfig == ElasticTypeConfig.DIALOG || elasticTypeConfig == ElasticTypeConfig.POPUP_WINDOW || elasticTypeConfig == ElasticTypeConfig.TEXT_SELECTOR_COLLAPSE || elasticTypeConfig == ElasticTypeConfig.TEXT_SELECTOR_EXPAND)) {
            this.n = 1.01f;
        }
        if (elasticTypeConfig == null || elasticTypeConfig != ElasticTypeConfig.DEFAULT) {
            return;
        }
        this.n = 1.0f;
    }

    public final void D(SpringAnimation springAnimation, float f, float f2) {
        if (springAnimation.getSpring() != null) {
            springAnimation.getSpring().setStiffness(f);
            springAnimation.getSpring().setDampingRatio(f2);
        }
    }

    public final void i() {
        float f = this.l + this.j;
        float f2 = this.m + this.k;
        float fM = m(f, 1000.0f);
        float fM2 = m(f2, 1000.0f);
        this.a.setScaleX(fM);
        this.a.setScaleY(fM2);
    }

    public void j(View view) {
        if (this.b == null) {
            SpringAnimation springAnimationK = k(0.002f);
            this.b = springAnimationK;
            springAnimationK.addEndListener(new DynamicAnimation.OnAnimationEndListener() {
                @Override
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                    this.a.n(dynamicAnimation, z, f, f2);
                }
            }).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() {
                @Override
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    this.b.o(dynamicAnimation, f, f2);
                }
            });
        }
        if (this.c == null) {
            SpringAnimation springAnimationK2 = k(0.002f);
            this.c = springAnimationK2;
            springAnimationK2.addEndListener(new DynamicAnimation.OnAnimationEndListener() {
                @Override
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                    this.a.p(dynamicAnimation, z, f, f2);
                }
            }).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() {
                @Override
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    this.b.q(dynamicAnimation, f, f2);
                }
            });
        }
        if (this.d == null) {
            SpringAnimation springAnimationK3 = k(1.0f);
            this.d = springAnimationK3;
            springAnimationK3.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() {
                @Override
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    this.b.r(dynamicAnimation, f, f2);
                }
            });
        }
        if (this.e == null) {
            SpringAnimation springAnimationK4 = k(1.0f);
            this.e = springAnimationK4;
            springAnimationK4.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() {
                @Override
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    this.b.s(dynamicAnimation, f, f2);
                }
            });
        }
        if (this.h == null) {
            this.h = l().addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() {
                @Override
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    this.b.t(dynamicAnimation, f, f2);
                }
            });
        }
        if (this.i == null) {
            this.i = l().addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() {
                @Override
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    this.b.u(dynamicAnimation, f, f2);
                }
            });
        }
        this.a = view;
        if (this.q == null) {
            y(ElasticTypeConfig.DEFAULT);
        }
    }

    public final SpringAnimation k(float f) {
        return new SpringAnimation(new FloatValueHolder()).setSpring(new SpringForce()).setMinimumVisibleChange(f);
    }

    public final SpringAnimation l() {
        return new SpringAnimation(new FloatValueHolder()).setSpring(new SpringForce().setStiffness(250.0f).setDampingRatio(0.99f)).setMinimumVisibleChange(0.002f);
    }

    public final float m(float f, float f2) {
        return Math.round(f * f2) / f2;
    }

    public final void n(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.s = true;
        x();
    }

    public final void o(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.a.setScaleX(m(f, 1000.0f));
    }

    public final void p(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.t = true;
        x();
    }

    public final void q(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.a.setScaleY(m(f, 1000.0f));
    }

    public final void r(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.a.setTranslationX(m(f, 2.0f));
    }

    public final void s(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.a.setTranslationY(m(f, 2.0f));
    }

    public final void t(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.l = f;
        i();
    }

    public final void u(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.m = f;
        i();
    }

    public void v(MotionEvent motionEvent) {
        if (this.a == null) {
            return;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.b.cancel();
            this.c.cancel();
            this.f = motionEvent.getRawX();
            this.g = motionEvent.getRawY();
            this.h.setStartValue(this.a.getScaleX());
            this.i.setStartValue(this.a.getScaleY());
            this.h.animateToFinalPosition(this.n);
            this.i.animateToFinalPosition(this.n);
            A();
            return;
        }
        if (action != 1) {
            if (action == 2) {
                float rawX = motionEvent.getRawX() - this.f;
                float rawY = motionEvent.getRawY() - this.g;
                this.d.cancel();
                this.e.cancel();
                float k1 = this.q.getK1() * rawX;
                float k2 = this.q.getK2() * rawY;
                float fM = m(k1, 2.0f);
                float fM2 = m(k2, 2.0f);
                this.a.setTranslationX(fM);
                this.a.setTranslationY(fM2);
                float fAbs = Math.abs(rawX) * 0.0033f;
                float fAbs2 = Math.abs(rawY) * 0.0033f;
                float k3 = (this.q.getK3() * fAbs) - (this.q.getK4() * fAbs2);
                float k5 = (fAbs2 * this.q.getK5()) - (fAbs * this.q.getK6());
                this.j = k3;
                this.k = k5;
                i();
                return;
            }
            if (action != 3) {
                return;
            }
        }
        this.j = 0.0f;
        this.k = 0.0f;
        this.h.cancel();
        this.i.cancel();
        B();
    }

    public void w() {
        this.h.cancel();
        this.i.cancel();
        this.b.cancel();
        this.c.cancel();
        this.d.cancel();
        this.e.cancel();
        this.r.clear();
        this.a = null;
    }

    public final void x() {
        if (this.s && this.t) {
            for (Map.Entry entry : this.r.entrySet()) {
                View view = (View) entry.getKey();
                int iIntValue = ((Integer) entry.getValue()).intValue();
                Log.i("MyLog", "restoreLayerType =================== index：" + iIntValue);
                view.setLayerType(iIntValue, null);
            }
            this.r.clear();
            this.s = false;
            this.t = false;
        }
    }

    public void y(ElasticTypeConfig elasticTypeConfig) {
        int i;
        this.q = elasticTypeConfig;
        z(elasticTypeConfig.getSpringStiffness(), elasticTypeConfig.getSpringDamping());
        int i2 = this.o;
        if (i2 <= 0 || (i = this.p) <= 0) {
            return;
        }
        C(i2, i);
    }

    public final void z(float f, float f2) {
        D(this.b, f, f2);
        D(this.c, f, f2);
        D(this.d, f, f2);
        D(this.e, f, f2);
    }
}
