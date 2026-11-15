package com.transsion.hubsdk.core.app;

import android.os.RemoteException;
import androidx.core.app.NotificationCompat;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.app.ITranAlarmManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranAlarmManagerAdapter;

public class TranThubAlarmManager implements ITranAlarmManagerAdapter {
    private static final String TAG = "TranThubAlarmManager";
    private ITranAlarmManager mService = ITranAlarmManager.Stub.asInterface(TranServiceManager.getServiceIBinder(NotificationCompat.CATEGORY_ALARM));

    @Override
    public void cancelPoweroffAlarm(String str) {
        ITranAlarmManager iTranAlarmManager = this.mService;
        if (iTranAlarmManager == null) {
            return;
        }
        try {
            iTranAlarmManager.cancelPoweroffAlarm(str);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "cancelPoweroffAlarm fail " + e);
        }
    }
}
