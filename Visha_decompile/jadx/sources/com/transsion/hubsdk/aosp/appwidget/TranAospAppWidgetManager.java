package com.transsion.hubsdk.aosp.appwidget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import com.transsion.hubsdk.api.app.ITranAppWidget;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.appwidget.ITranAppWidgetManagerAdapter;
import java.util.List;

public class TranAospAppWidgetManager implements ITranAppWidgetManagerAdapter {
    private final AppWidgetManager mAppWidgetManager = (AppWidgetManager) TranHubSdkManager.getContext().getSystemService("appwidget");

    @Override
    public List<AppWidgetProviderInfo> getInstalledProviders(int i) {
        return (List) TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mAppWidgetManager.getClass(), "getInstalledProviders", Integer.TYPE), this.mAppWidgetManager, Integer.valueOf(i));
    }

    @Override
    public void registerAppWidgetListener(ITranAppWidget iTranAppWidget, int i) {
        TranSdkLog.i("AppWidget", "registerAppWidgetListener: callback = " + iTranAppWidget + " userId = " + i);
    }

    @Override
    public void unregisterAppWidgetListener(ITranAppWidget iTranAppWidget, int i) {
        TranSdkLog.i("AppWidget", "unregisterAppWidgetListener: callback = " + iTranAppWidget + " userId = " + i);
    }
}
