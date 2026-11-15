package com.cloud.tmc.kernel.proxy.performanceanalyse;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.BuildConfigProxyImp")
public interface BuildConfigProxy extends Proxiable {
    Boolean isDebug();
}
