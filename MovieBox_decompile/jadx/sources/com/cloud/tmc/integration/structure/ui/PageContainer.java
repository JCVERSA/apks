package com.cloud.tmc.integration.structure.ui;

import android.view.View;
import com.cloud.tmc.integration.structure.Page;

public interface PageContainer {
    void attachPage(Page page);

    View getContent();
}
