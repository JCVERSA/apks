package com.transsion.widgetslib.view.damping;

import com.transsion.widgetslib.view.OSLoadingView;

public interface a {
    HeaderHelper getHeaderHelper();

    OSLoadingView getLoadingView();

    void setOnRefreshListener(OSDampingLayout.a aVar);

    void setRefreshEnabled(boolean z);

    void setTextColor(int i);
}
