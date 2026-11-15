package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Map;

public class z extends androidx.transition.j {

    class a implements ValueAnimator.AnimatorUpdateListener {

        final TextView f28461a;

        a(TextView textView) {
            this.f28461a = textView;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f28461a.setScaleX(fFloatValue);
            this.f28461a.setScaleY(fFloatValue);
        }
    }

    private void f0(androidx.transition.w wVar) {
        View view = wVar.f14781b;
        if (view instanceof TextView) {
            wVar.f14780a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override
    public void g(androidx.transition.w wVar) {
        f0(wVar);
    }

    @Override
    public void j(androidx.transition.w wVar) {
        f0(wVar);
    }

    @Override
    public Animator n(ViewGroup viewGroup, androidx.transition.w wVar, androidx.transition.w wVar2) {
        if (wVar == null || wVar2 == null || !(wVar.f14781b instanceof TextView)) {
            return null;
        }
        View view = wVar2.f14781b;
        if (!(view instanceof TextView)) {
            return null;
        }
        TextView textView = (TextView) view;
        Map map = wVar.f14780a;
        Map map2 = wVar2.f14780a;
        float fFloatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
        float fFloatValue2 = map2.get("android:textscale:scale") != null ? ((Float) map2.get("android:textscale:scale")).floatValue() : 1.0f;
        if (fFloatValue == fFloatValue2) {
            return null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, fFloatValue2);
        valueAnimatorOfFloat.addUpdateListener(new a(textView));
        return valueAnimatorOfFloat;
    }
}
