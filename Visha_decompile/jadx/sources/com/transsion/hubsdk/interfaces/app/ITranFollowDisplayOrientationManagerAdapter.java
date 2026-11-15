package com.transsion.hubsdk.interfaces.app;

public interface ITranFollowDisplayOrientationManagerAdapter {
    void commit();

    int getFollowDisplayOrientionType(String str);

    void init();

    boolean isEnabledPackage(String str);

    Object setEnabledPackage(String str, boolean z);

    Object setFollowDisplayOrientationType(String str, int i);
}
