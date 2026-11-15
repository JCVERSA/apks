package com.transsion.hubsdk.aosp.widget;

import android.view.WindowManager;
import android.widget.Toast;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.widget.ITranToastAdapter;
import java.lang.reflect.Method;

public class TranAospToast implements ITranToastAdapter {
    @Override
    public WindowManager.LayoutParams getWindowParams(Toast toast) {
        Method method = TranDoorMan.getMethod(toast.getClass(), "getWindowParams", new Class[0]);
        if (method != null) {
            return (WindowManager.LayoutParams) TranDoorMan.invokeMethod(method, toast, new Object[0]);
        }
        return null;
    }
}
