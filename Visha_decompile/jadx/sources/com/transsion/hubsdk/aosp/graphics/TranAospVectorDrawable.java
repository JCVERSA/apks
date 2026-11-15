package com.transsion.hubsdk.aosp.graphics;

import android.graphics.drawable.VectorDrawable;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.graphics.ITranVectorDrawableAdapter;
import java.lang.reflect.Method;

public class TranAospVectorDrawable implements ITranVectorDrawableAdapter {
    @Override
    public boolean updateIconColor(VectorDrawable vectorDrawable, int i, int i2, int i3, String str) {
        Boolean bool;
        Class<?> cls = vectorDrawable.getClass();
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "updateIconColor", cls2, cls2, cls2, String.class);
        if (method == null || (bool = (Boolean) TranDoorMan.invokeMethod(method, vectorDrawable, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), str)) == null) {
            return false;
        }
        return bool.booleanValue();
    }
}
