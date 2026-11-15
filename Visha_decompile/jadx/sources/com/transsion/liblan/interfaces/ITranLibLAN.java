package com.transsion.liblan.interfaces;

import android.content.Context;

public interface ITranLibLAN extends ITranLANObject<EventTran> {

    public static class EventTran extends TranAbstractLANEvent {
        public EventTran(int i) {
            super(i);
        }
    }

    Context getAppContext();
}
