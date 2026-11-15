package com.transsion.liblan.stubs;

import com.transsion.liblan.interfaces.ITranLANObject;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.TranAbstractLANEvent;

public class StubTranLANObject<T extends TranAbstractLANEvent> implements ITranLANObject<T> {
    @Override
    public ITranLibLAN getTranLibLAN() {
        return null;
    }

    @Override
    public boolean isReleased() {
        return false;
    }

    @Override
    public void release() {
    }

    @Override
    public boolean retain() {
        return false;
    }
}
