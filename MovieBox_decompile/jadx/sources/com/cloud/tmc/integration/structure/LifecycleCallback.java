package com.cloud.tmc.integration.structure;

public interface LifecycleCallback {
    void onAppFinish(App app);

    void onAppStart(App app);

    void onPageEnter(Page page);

    void onPageExit(Page page);

    void onPageHide(Page page);

    void onPageShow(Page page);
}
