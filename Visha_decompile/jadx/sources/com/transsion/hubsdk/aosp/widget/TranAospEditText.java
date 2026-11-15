package com.transsion.hubsdk.aosp.widget;

import android.widget.EditText;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.widget.ITranEditTextAdapter;

public class TranAospEditText implements ITranEditTextAdapter {
    @Override
    public void setSupportCommonPhrase(EditText editText, boolean z) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(editText.getClass(), "setSupportCommonPhrase", Boolean.TYPE), Boolean.valueOf(z), new Object[0]);
    }
}
