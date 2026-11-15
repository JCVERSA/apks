package com.transsion.hubsdk.core.internal.view;

import android.content.Context;
import com.transsion.hubsdk.interfaces.internal.view.ITranRotationPolicyAdapter;
import com.transsion.hubsdk.internal.view.TranRotationPolicyBridge;

public class TranThubRotationPolicy implements ITranRotationPolicyAdapter {
    @Override
    public boolean isRotationLocked(Context context) {
        return TranRotationPolicyBridge.isRotationLocked(context);
    }
}
