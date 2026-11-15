package com.transsion.hubsdk.interfaces.widget;

import android.view.WindowManager;
import android.widget.Toast;

public interface ITranToastAdapter {
    WindowManager.LayoutParams getWindowParams(Toast toast);
}
