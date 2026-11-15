package com.transsion.room.helper;

import android.R;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import com.transsion.room.R$layout;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

public final class n {

    public static final n f49628a = new n();

    private n() {
    }

    private final ObjectAnimator b(View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", 0.0f, -lj.a.b(12));
        objectAnimatorOfFloat.setDuration(500L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        Intrinsics.g(objectAnimatorOfFloat, "apply(...)");
        return objectAnimatorOfFloat;
    }

    public static final void d(ObjectAnimator objectAnimator, FrameLayout frameLayout, View view) {
        try {
            Result.Companion companion = Result.INSTANCE;
            objectAnimator.cancel();
            frameLayout.removeView(view);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final void c(Activity activity) {
        Intrinsics.h(activity, "activity");
        final FrameLayout frameLayout = (FrameLayout) activity.findViewById(R.id.content);
        final View viewInflate = LayoutInflater.from(activity).inflate(R$layout.layout_room_tab_refresh, (ViewGroup) null);
        Intrinsics.e(viewInflate);
        final ObjectAnimator objectAnimatorB = b(viewInflate);
        objectAnimatorB.start();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = lj.a.b(80);
        frameLayout.addView(viewInflate, layoutParams);
        qi.h.f69682a.z("room_home", MapsKt.m(TuplesKt.a("opt_type", "refresh_float")));
        frameLayout.postDelayed(new Runnable() {
            @Override
            public final void run() {
                n.d(objectAnimatorB, frameLayout, viewInflate);
            }
        }, 3000L);
    }
}
