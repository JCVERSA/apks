package com.transsion.hubsdk.aosp.media.projection;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.media.projection.ITranMediaProjectionManagerAdapter;

public class TranAospMediaProjectionManager implements ITranMediaProjectionManagerAdapter {
    private static final String TAG = "TranAospMediaProjectionManager";
    private Context mContext;

    public TranAospMediaProjectionManager() {
        if (this.mContext == null) {
            this.mContext = TranHubSdkManager.getContext();
        }
    }

    @Override
    public Intent getPutIBindIntent(int i, String str, int i2, boolean z) {
        try {
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(Class.forName("android.app.role.IRoleManager$Stub"), "asInterface", IBinder.class), null, (IBinder) TranDoorMan.invokeMethod(TranDoorMan.getMethod(Class.forName("android.os.ServiceManager"), "getService", String.class), null, "media_projection"));
            Class<?> cls = objInvokeMethod.getClass();
            Class cls2 = Integer.TYPE;
            Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "createProjection", cls2, String.class, cls2, Boolean.TYPE), objInvokeMethod, Integer.valueOf(i), str, Integer.valueOf(i2), Boolean.valueOf(z));
            IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod2.getClass(), "asBinder", new Class[0]), objInvokeMethod2, new Object[0]);
            Intent intent = new Intent();
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(intent.getClass(), "putExtra", String.class, IBinder.class), intent, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION", iBinder);
            return intent;
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getPutIBindIntent fail: " + e);
            return new Intent();
        }
    }
}
