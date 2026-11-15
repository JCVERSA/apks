package com.transsion.liblan.interfaces;

import com.transsion.liblan.interfaces.TranAbstractLANEvent;

public interface ITranLANObject<T extends TranAbstractLANEvent> {
    ITranLibLAN getTranLibLAN();

    boolean isReleased();

    void release();

    boolean retain();
}
