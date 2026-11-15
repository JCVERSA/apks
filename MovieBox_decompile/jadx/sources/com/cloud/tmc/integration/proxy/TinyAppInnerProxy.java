package com.cloud.tmc.integration.proxy;

import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.proxy.Proxiable;

public interface TinyAppInnerProxy extends Proxiable {
    boolean isInner(App app);
}
