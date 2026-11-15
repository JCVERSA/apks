package com.transsion.kolun.oxygenbus;

public interface OxygenBusStateChangeListener {
    public static final int STATE_CONNECTED = 2;
    public static final int STATE_CONNECTING = 1;
    public static final int STATE_DISCONNECT = -1;
    public static final int STATE_NONE = 0;

    void onOxygenBusServerStateChange(int i);
}
