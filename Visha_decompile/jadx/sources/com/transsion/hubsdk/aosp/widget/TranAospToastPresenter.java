package com.transsion.hubsdk.aosp.widget;

import android.content.Context;
import android.view.View;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.widget.ITranToastPresenterAdapter;

public class TranAospToastPresenter implements ITranToastPresenterAdapter {
    private static Class<?> sClassName = TranDoorMan.getClass("android.widget.ToastPresenter");

    @Override
    public View getTextToastView(Context context, CharSequence charSequence) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getTextToastView", Context.class, CharSequence.class), null, context, charSequence);
        if (objInvokeMethod == null || !(objInvokeMethod instanceof View)) {
            return null;
        }
        return (View) objInvokeMethod;
    }
}
