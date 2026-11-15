package com.transsion.hubsdk.aosp.nfc;

import android.content.Context;
import android.nfc.NfcManager;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.nfc.ITranNfcManagerAdapter;

public class TranAospNfcManager implements ITranNfcManagerAdapter {
    private static final String TAG = "TranAospNfcManager";
    private Context mContext;
    private NfcManager mNfcManager;

    public TranAospNfcManager() {
        Context context = TranHubSdkManager.getContext();
        this.mContext = context;
        this.mNfcManager = (NfcManager) context.getSystemService("nfc");
    }

    @Override
    public boolean disable() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mNfcManager.getClass(), "getDefaultAdapter", new Class[0]), this.mNfcManager, new Object[0]);
        if (objInvokeMethod == null) {
            return false;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "disable", new Class[0]), objInvokeMethod, new Object[0]);
        if (objInvokeMethod2 instanceof Boolean) {
            return ((Boolean) objInvokeMethod2).booleanValue();
        }
        return false;
    }

    @Override
    public boolean enable() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mNfcManager.getClass(), "getDefaultAdapter", new Class[0]), this.mNfcManager, new Object[0]);
        if (objInvokeMethod == null) {
            return false;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "enable", new Class[0]), objInvokeMethod, new Object[0]);
        if (objInvokeMethod2 instanceof Boolean) {
            return ((Boolean) objInvokeMethod2).booleanValue();
        }
        return false;
    }
}
