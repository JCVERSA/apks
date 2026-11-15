package com.cloud.tmc.integration.structure.ui;

import com.cloud.tmc.integration.structure.Page;

public interface ErrorView {
    boolean enableShowErrorPage();

    void showErrorView(Page page, String str, int i10, String str2, String str3);
}
