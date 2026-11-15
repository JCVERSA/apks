package com.transsion.hubsdk.api.view.inputmethod;

import android.content.Context;
import android.view.KeyEvent;
import android.view.Window;
import com.transsion.hubsdk.aosp.view.inputmethod.TranAospInputMethodManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.inputmethod.TranThubInputMethodManager;
import com.transsion.hubsdk.interfaces.view.inputmethod.ITranInputMethodManagerAdapter;
import java.util.List;

public class TranInputMethodManager {
    private static final String TAG = "TranInputMethodManager";
    private TranAospInputMethodManager mAospService;
    private TranThubInputMethodManager mThubService;

    public void commitConnectKeyAndText(KeyEvent keyEvent, String str) {
        getService(TranVersion.Core.VERSION_33181).commitConnectKeyAndText(keyEvent, str);
    }

    public void freeSoftInputViewsLeaks(Context context, Window window) {
        getService(TranVersion.Core.VERSION_33161).freeSoftInputViewsLeaks(context, window);
    }

    public ITranInputMethodManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubInputMethodManager");
            TranThubInputMethodManager tranThubInputMethodManager = this.mThubService;
            if (tranThubInputMethodManager != null) {
                return tranThubInputMethodManager;
            }
            TranThubInputMethodManager tranThubInputMethodManager2 = new TranThubInputMethodManager();
            this.mThubService = tranThubInputMethodManager2;
            return tranThubInputMethodManager2;
        }
        TranSdkLog.i(TAG, "TranAospInputMethodManager");
        TranAospInputMethodManager tranAospInputMethodManager = this.mAospService;
        if (tranAospInputMethodManager != null) {
            return tranAospInputMethodManager;
        }
        TranAospInputMethodManager tranAospInputMethodManager2 = new TranAospInputMethodManager();
        this.mAospService = tranAospInputMethodManager2;
        return tranAospInputMethodManager2;
    }

    public void hideAllInputMethod(int i, int i2) {
        getService(TranVersion.Core.VERSION_33411).hideAllInputMethod(i, i2);
    }

    public void hideSoftInputMethodByPrivilegeUser() {
        getService(TranVersion.Core.VERSION_33441).hideSoftInputMethodByPrivilegeUser();
    }

    public void registerGlobalWritingListener(ITranGlobalWritingListener iTranGlobalWritingListener) {
        if (iTranGlobalWritingListener == null) {
            throw new NullPointerException("registerGlobalWritingListener() parameter listener must not be null");
        }
        getService(TranVersion.Core.VERSION_33231).registerGlobalWritingListener(iTranGlobalWritingListener);
    }

    public void switchTranInputMethod(boolean z) {
        getService(TranVersion.Core.VERSION_33231).switchTranInputMethod(z);
    }

    public void unregisterGlobalWritingListener(ITranGlobalWritingListener iTranGlobalWritingListener) {
        if (iTranGlobalWritingListener == null) {
            throw new NullPointerException("unregisterGlobalWritingListener() parameter listener must not be null");
        }
        getService(TranVersion.Core.VERSION_33231).unregisterGlobalWritingListener(iTranGlobalWritingListener);
    }

    @TranLevel(level = 1)
    public void updateSecurityInputBlackList(List<String> list) {
        getService(TranVersion.Core.VERSION_33171).updateSecurityInputBlackList(list);
    }
}
