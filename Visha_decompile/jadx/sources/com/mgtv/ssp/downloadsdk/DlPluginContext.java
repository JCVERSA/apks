package com.mgtv.ssp.downloadsdk;

import android.app.Activity;
import android.content.Context;

public interface DlPluginContext {
    Context getAppContext();

    Activity getHostActivity();

    String getLogPath();

    String getSoLibPath();
}
