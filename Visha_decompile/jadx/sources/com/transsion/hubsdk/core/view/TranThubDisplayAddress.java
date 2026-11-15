package com.transsion.hubsdk.core.view;

import android.view.Display;
import com.transsion.hubsdk.interfaces.view.ITranDisplayAddressAdapter;
import com.transsion.hubsdk.view.TranDisplayAddress;

public class TranThubDisplayAddress implements ITranDisplayAddressAdapter {
    private TranDisplayAddress mTranDisplayAddress = new TranDisplayAddress();

    @Override
    public long getPhysicalDisplayId(Display display) {
        TranDisplayAddress tranDisplayAddress = this.mTranDisplayAddress;
        if (tranDisplayAddress != null) {
            return tranDisplayAddress.getPhysicalDisplayId(display);
        }
        return 0L;
    }
}
