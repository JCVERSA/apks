package com.cloud.tmc.integration.structure.ui;

import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.proxy.Proxiable;

public interface DialogService extends Proxiable {
    void showErrorDialog(App app, boolean z10);
}
