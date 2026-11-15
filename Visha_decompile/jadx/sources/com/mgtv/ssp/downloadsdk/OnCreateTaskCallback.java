package com.mgtv.ssp.downloadsdk;

public interface OnCreateTaskCallback {
    @Deprecated
    void createTaskResult(String str, String str2);

    void createTaskResult(String str, String str2, String str3);

    void onOver(String str, String str2);

    void onStatusChanged(String str, int i);
}
