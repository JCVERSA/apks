package com.transsion.hubsdk.aosp.internal.graphic;

import com.android.internal.graphics.drawable.BackgroundBlurDrawable;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import java.lang.reflect.Method;

public class TranAospDrawableExt {
    public void setBlurSaturation(Object obj, float f) {
        BackgroundBlurDrawable backgroundBlurDrawable;
        Method method;
        if (!(obj instanceof BackgroundBlurDrawable) || (backgroundBlurDrawable = (BackgroundBlurDrawable) obj) == null || (method = TranDoorMan.getMethod(backgroundBlurDrawable.getClass(), "setBlurSaturation", Float.TYPE)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, backgroundBlurDrawable, Float.valueOf(f));
    }
}
