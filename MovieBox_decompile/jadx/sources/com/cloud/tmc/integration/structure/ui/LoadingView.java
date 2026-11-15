package com.cloud.tmc.integration.structure.ui;

public interface LoadingView {
    boolean backPressed();

    void dismiss();

    void show(String str, int i10, boolean z10);
}
