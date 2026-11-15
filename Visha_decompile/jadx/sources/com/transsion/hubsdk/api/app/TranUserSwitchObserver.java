package com.transsion.hubsdk.api.app;

public interface TranUserSwitchObserver {
    void onUserSwitchComplete(int i);

    void onUserSwitching(int i);
}
