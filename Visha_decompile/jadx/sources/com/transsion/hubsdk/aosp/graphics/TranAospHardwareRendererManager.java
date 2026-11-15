package com.transsion.hubsdk.aosp.graphics;

import android.graphics.Bitmap;
import android.graphics.RenderNode;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.graphics.ITranHardwareRendererManagerAdapter;

public class TranAospHardwareRendererManager implements ITranHardwareRendererManagerAdapter {
    private static final String TAG = "TranAospHardwareRendererManager";

    @Override
    public Bitmap createHardwareBitmap(RenderNode renderNode, int i, int i2) {
        Class cls = TranDoorMan.getClass("android.graphics.HardwareRenderer");
        Class cls2 = Integer.TYPE;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "createHardwareBitmap", RenderNode.class, cls2, cls2), null, renderNode, Integer.valueOf(i), Integer.valueOf(i2));
        if (objInvokeMethod instanceof Bitmap) {
            return (Bitmap) objInvokeMethod;
        }
        return null;
    }
}
