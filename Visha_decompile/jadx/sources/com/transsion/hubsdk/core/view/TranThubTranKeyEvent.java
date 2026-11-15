package com.transsion.hubsdk.core.view;

import android.view.KeyEvent;
import com.transsion.hubsdk.hardware.input.TranKeyEvent;
import com.transsion.hubsdk.interfaces.view.ITranKeyEventAdapter;

public class TranThubTranKeyEvent implements ITranKeyEventAdapter {
    private static final String TAG = "TranThubTranKeyEvent";

    @Override
    public KeyEvent obtain(long j, long j2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str) {
        return TranKeyEvent.obtain(j, j2, i, i2, i3, i4, i5, i6, i7, i8, i9, str);
    }
}
