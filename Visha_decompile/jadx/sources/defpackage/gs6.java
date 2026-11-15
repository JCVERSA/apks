package defpackage;

import android.animation.ValueAnimator;
import android.util.Property;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.ArrayList;
import java.util.Arrays;

public final class gs6 {
    public static final gs6 a = new gs6();
    public static final Interpolator b = new LinearInterpolator();

    public static final class a {
        public final View a;
        public final Property b;
        public final float c;
        public float d;
        public final float e;
        public final float f;
        public final float g;
        public final Interpolator h;

        public a(View view, Property property, float f, float f2, float f3, float f4, Interpolator interpolator) {
            y45.j(view, "mTarget");
            y45.j(property, "mProperty");
            y45.j(interpolator, CmcdData.OBJECT_TYPE_INIT_SEGMENT);
            this.a = view;
            this.b = property;
            this.c = f;
            this.d = f;
            this.e = f2;
            this.f = f3;
            this.g = f4;
            this.h = interpolator;
        }

        public final float a() {
            return this.f;
        }

        public final float b() {
            return this.g;
        }

        public final float c() {
            return this.e;
        }

        public final Interpolator d() {
            return this.h;
        }

        public final Property e() {
            return this.b;
        }

        public final float f() {
            return this.c;
        }

        public final View g() {
            return this.a;
        }

        public final float h() {
            return this.d;
        }

        public final void i(float f) {
            this.d = f;
        }
    }

    public static final class b implements ValueAnimator.AnimatorUpdateListener {
        public final ArrayList b;

        public b(a... aVarArr) {
            y45.j(aVarArr, "floatProp");
            ArrayList arrayList = new ArrayList();
            this.b = arrayList;
            arrayList.addAll(hi.c1(aVarArr));
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            y45.j(valueAnimator, "animator");
            float animatedFraction = valueAnimator.getAnimatedFraction() * valueAnimator.getDuration();
            int size = this.b.size() - 1;
            if (size < 0) {
                return;
            }
            while (true) {
                int i = size - 1;
                Object obj = this.b.get(size);
                y45.i(obj, "mFloatProps[i]");
                a aVar = (a) obj;
                float interpolation = aVar.d().getInterpolation(Math.min(1.0f, Math.max(0.0f, animatedFraction - aVar.a()) / aVar.b()));
                aVar.i((aVar.c() * interpolation) + (aVar.f() * (1 - interpolation)));
                aVar.e().set(aVar.g(), Float.valueOf(aVar.h()));
                if (i < 0) {
                    return;
                } else {
                    size = i;
                }
            }
        }
    }

    public final ValueAnimator a(long j, a... aVarArr) {
        y45.j(aVarArr, "floatProp");
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.setInterpolator(b);
        valueAnimatorOfFloat.addUpdateListener(new b((a[]) Arrays.copyOf(aVarArr, aVarArr.length)));
        y45.i(valueAnimatorOfFloat, "animator");
        return valueAnimatorOfFloat;
    }
}
