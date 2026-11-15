package com.transsion.hubsdk.aosp.location;

import android.content.Context;
import android.location.LocationManager;
import android.os.UserHandle;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.location.ITranLocationManagerAdapter;

public class TranAospLocationManager implements ITranLocationManagerAdapter {
    private static final String TAG = "TranAospLocationManager";
    private Context mContext;
    private LocationManager mLocationManager;

    public TranAospLocationManager() {
        Context context = TranHubSdkManager.getContext();
        this.mContext = context;
        this.mLocationManager = (LocationManager) context.getSystemService("location");
    }

    @Override
    public void setLocationEnabledForUser(boolean z, UserHandle userHandle) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mLocationManager.getClass(), "setLocationEnabledForUser", Boolean.TYPE, UserHandle.class), this.mLocationManager, Boolean.valueOf(z), userHandle);
    }
}
