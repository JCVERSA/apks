package com.transsion.aicore.nexusflow.constant;

import androidx.annotation.Keep;

@Keep
public enum State {
    NONE,
    BOUND,
    CONNECTED,
    INIT,
    STARTING,
    STARTED,
    STOPPING,
    STOPPED,
    RELEASED,
    DISCONNECTED,
    ERROR
}
