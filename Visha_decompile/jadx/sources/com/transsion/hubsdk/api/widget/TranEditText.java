package com.transsion.hubsdk.api.widget;

import android.widget.EditText;
import com.transsion.hubsdk.aosp.widget.TranAospEditText;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.widget.TranThubEditText;
import com.transsion.hubsdk.interfaces.widget.ITranEditTextAdapter;

public class TranEditText {
    private static final String TAG = "TranEditText";
    private TranAospEditText mAospService;
    private TranThubEditText mThubService;

    public ITranEditTextAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubEditText");
            TranThubEditText tranThubEditText = this.mThubService;
            if (tranThubEditText != null) {
                return tranThubEditText;
            }
            TranThubEditText tranThubEditText2 = new TranThubEditText();
            this.mThubService = tranThubEditText2;
            return tranThubEditText2;
        }
        TranSdkLog.i(TAG, "TranThubEditText");
        TranAospEditText tranAospEditText = this.mAospService;
        if (tranAospEditText != null) {
            return tranAospEditText;
        }
        TranAospEditText tranAospEditText2 = new TranAospEditText();
        this.mAospService = tranAospEditText2;
        return tranAospEditText2;
    }

    public void setSupportCommonPhrase(EditText editText, boolean z) {
        if (editText == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        getService(TranVersion.Core.VERSION_33161).setSupportCommonPhrase(editText, z);
    }
}
