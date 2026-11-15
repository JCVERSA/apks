package com.transsion.hubsdk.core.widget;

import android.view.WindowManager;
import android.widget.Toast;
import com.transsion.hubsdk.interfaces.widget.ITranToastAdapter;
import com.transsion.hubsdk.widget.TranToast;

public class TranThubToast implements ITranToastAdapter {
    private TranToast mTranToast = new TranToast();

    @Override
    public WindowManager.LayoutParams getWindowParams(Toast toast) {
        TranToast tranToast = this.mTranToast;
        if (tranToast != null) {
            return tranToast.getWindowParams(toast);
        }
        return null;
    }
}
