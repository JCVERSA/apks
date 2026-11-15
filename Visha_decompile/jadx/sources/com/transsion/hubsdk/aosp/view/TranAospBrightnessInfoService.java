package com.transsion.hubsdk.aosp.view;

import android.content.Context;
import com.transsion.hubsdk.api.view.TranBrightnessInfo;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranBrightnessInfoAdapter;

public class TranAospBrightnessInfoService implements ITranBrightnessInfoAdapter {
    private static final String TAG = "TranAospBrightnessInfoService";
    private Context mContext = TranHubSdkManager.getContext();
    private static Class<?> sClassName = TranDoorMan.getClass("android.view.Display");
    private static Class<?> sBrightnessInfoClassName = TranDoorMan.getClass("android.hardware.display.BrightnessInfo");

    @Override
    public TranBrightnessInfo getBrightnessInfo() {
        try {
            TranBrightnessInfo tranBrightnessInfo = new TranBrightnessInfo();
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getBrightnessInfo", new Class[0]), null, new Object[0]);
            if (objInvokeMethod == null) {
                return tranBrightnessInfo;
            }
            if (sBrightnessInfoClassName.isInstance(objInvokeMethod)) {
                TranSdkLog.i(TAG, "object :" + objInvokeMethod);
            }
            float f = TranDoorMan.getField(sBrightnessInfoClassName, "brightness").getFloat(objInvokeMethod);
            float f2 = TranDoorMan.getField(sBrightnessInfoClassName, "adjustedBrightness").getFloat(objInvokeMethod);
            float f3 = TranDoorMan.getField(sBrightnessInfoClassName, "brightnessMinimum").getFloat(objInvokeMethod);
            float f4 = TranDoorMan.getField(sBrightnessInfoClassName, "brightnessMaximum").getFloat(objInvokeMethod);
            float f5 = TranDoorMan.getField(sBrightnessInfoClassName, "highBrightnessTransitionPoint").getFloat(objInvokeMethod);
            int i = TranDoorMan.getField(sBrightnessInfoClassName, "highBrightnessMode").getInt(objInvokeMethod);
            int i2 = TranDoorMan.getField(sBrightnessInfoClassName, "brightnessMaxReason").getInt(objInvokeMethod);
            tranBrightnessInfo.mBrightness = f;
            tranBrightnessInfo.mAdjustedBrightness = f2;
            tranBrightnessInfo.mBrightnessMinimum = f3;
            tranBrightnessInfo.mBrightnessMaximum = f4;
            tranBrightnessInfo.mHighBrightnessTransitionPoint = f5;
            tranBrightnessInfo.mHighBrightnessMode = i;
            tranBrightnessInfo.mBrightnessMaxReason = i2;
            return tranBrightnessInfo;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getBrightnessInfo fail " + e);
            return null;
        }
    }
}
