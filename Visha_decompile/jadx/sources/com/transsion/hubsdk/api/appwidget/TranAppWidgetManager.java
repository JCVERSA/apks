package com.transsion.hubsdk.api.appwidget;

import android.appwidget.AppWidgetProviderInfo;
import com.transsion.hubsdk.aosp.appwidget.TranAospAppWidgetManager;
import com.transsion.hubsdk.api.app.ITranAppWidget;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.appwidget.TranThubAppWidgetManager;
import com.transsion.hubsdk.interfaces.appwidget.ITranAppWidgetManagerAdapter;
import java.util.List;

public class TranAppWidgetManager {
    private static final String TAG = "TranAppWidgetManager";
    private TranAospAppWidgetManager mAospService;
    private TranThubAppWidgetManager mThubService;

    public List<AppWidgetProviderInfo> getInstalledProviders(int i) {
        return getService(TranVersion.Core.VERSION_33171).getInstalledProviders(i);
    }

    public ITranAppWidgetManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranAppWidgetManager");
            TranThubAppWidgetManager tranThubAppWidgetManager = this.mThubService;
            if (tranThubAppWidgetManager != null) {
                return tranThubAppWidgetManager;
            }
            TranThubAppWidgetManager tranThubAppWidgetManager2 = new TranThubAppWidgetManager();
            this.mThubService = tranThubAppWidgetManager2;
            return tranThubAppWidgetManager2;
        }
        TranSdkLog.i(TAG, "TranAospAppWidgetManager");
        TranAospAppWidgetManager tranAospAppWidgetManager = this.mAospService;
        if (tranAospAppWidgetManager != null) {
            return tranAospAppWidgetManager;
        }
        TranAospAppWidgetManager tranAospAppWidgetManager2 = new TranAospAppWidgetManager();
        this.mAospService = tranAospAppWidgetManager2;
        return tranAospAppWidgetManager2;
    }

    public void registerAppWidgetListener(ITranAppWidget iTranAppWidget, int i) {
        getService(TranVersion.Core.VERSION_33451).registerAppWidgetListener(iTranAppWidget, i);
    }

    public void unregisterAppWidgetListener(ITranAppWidget iTranAppWidget, int i) {
        getService(TranVersion.Core.VERSION_33451).unregisterAppWidgetListener(iTranAppWidget, i);
    }
}
