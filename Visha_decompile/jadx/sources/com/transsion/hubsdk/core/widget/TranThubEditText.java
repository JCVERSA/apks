package com.transsion.hubsdk.core.widget;

import android.widget.EditText;
import com.transsion.hubsdk.interfaces.widget.ITranEditTextAdapter;
import com.transsion.hubsdk.widget.TranEditText;

public class TranThubEditText implements ITranEditTextAdapter {
    private TranEditText mTranEditText = new TranEditText();

    @Override
    public void setSupportCommonPhrase(EditText editText, boolean z) {
        this.mTranEditText.setSupportCommonPhrase(editText, z);
    }
}
