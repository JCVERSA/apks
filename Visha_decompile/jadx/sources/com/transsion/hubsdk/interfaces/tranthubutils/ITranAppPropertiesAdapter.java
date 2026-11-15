package com.transsion.hubsdk.interfaces.tranthubutils;

public interface ITranAppPropertiesAdapter {
    String get(String str);

    boolean getBoolean(String str, boolean z);

    void initialize(String str);
}
