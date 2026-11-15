package com.transsion.effectengine.bounceeffect;

import android.util.Log;
import android.view.View;
import java.lang.reflect.Method;

public final class z1OoOint implements z1OoOfor {
    public final View z1OoOdo;
    public final Method z1OoOfor;
    public final Class z1OoOif;

    public z1OoOint(Class cls, View view) {
        this.z1OoOdo = view;
        this.z1OoOif = cls;
        try {
            this.z1OoOfor = cls.getMethod("isBounceEdgeAnimRunning", BounceEdgeEffect.class);
        } catch (Exception unused) {
            Log.e("NativeBounceEdgeEffect", "isBounceEdgeAnimRunning not found." + this.z1OoOif.toString());
        }
    }

    @Override
    public final void z1OoOdo() {
        try {
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "cancelTranBounceAnimation called " + this.z1OoOif.toString());
            this.z1OoOif.getMethod("cancelTranBounceAnimation", null).invoke(this.z1OoOdo, null);
        } catch (Throwable unused) {
            Log.e(OverScrollBounceEffectDecoratorBase.TAG, "cancelTranBounceAnimation not found." + this.z1OoOif.toString());
        }
    }

    @Override
    public final boolean z1OoOdo(BounceEdgeEffect bounceEdgeEffect) {
        try {
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "isBounceEdgeAnimRunning called " + this.z1OoOif.toString());
            Method method = this.z1OoOfor;
            if (method != null) {
                return ((Boolean) method.invoke(this.z1OoOdo, bounceEdgeEffect)).booleanValue();
            }
        } catch (Throwable unused) {
            Log.e(OverScrollBounceEffectDecoratorBase.TAG, "isBounceEdgeAnimRunning not found." + this.z1OoOif.toString());
        }
        return false;
    }
}
