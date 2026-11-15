package com.transsion.hubsdk.interfaces.appwidget;

import android.appwidget.AppWidgetProviderInfo;
import com.transsion.hubsdk.api.app.ITranAppWidget;
import java.util.List;

public interface ITranAppWidgetManagerAdapter {
    List<AppWidgetProviderInfo> getInstalledProviders(int i);

    void registerAppWidgetListener(ITranAppWidget iTranAppWidget, int i);

    void unregisterAppWidgetListener(ITranAppWidget iTranAppWidget, int i);
}
