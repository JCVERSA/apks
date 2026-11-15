package com.transsion.hubsdk.aosp.app;

import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.app.ITranAlarmManagerAdapter;

public class TranAospAlarmManager implements ITranAlarmManagerAdapter {
    private static final String TAG = "TranAospAlarmManager";
    private static Class<?> sClassName = TranDoorMan.getClass("android.os.ServiceManager");

    @Override
    public void cancelPoweroffAlarm(String str) {
        IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getService", String.class), sClassName, NotificationCompat.CATEGORY_ALARM);
        Class cls = TranDoorMan.getClass("android.app.IAlarmManager$Stub");
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "asInterface", IBinder.class), cls, iBinder);
        if (objInvokeMethod != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "cancelPoweroffAlarm", String.class), objInvokeMethod, str);
        }
    }
}
