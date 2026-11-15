package com.cloud.tmc.integration.defaultImpl;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.proxy.AppFactory;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.structure.VirtualAppManager;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.kernel.proxy.TmcProxy;

@Keep
public class DefaultAppFactoryImpl implements AppFactory {
    @Override
    public AppNode createApp() {
        return new AppNode((AppManager) TmcProxy.get(AppManager.class));
    }

    @Override
    public AppNode createVirtualApp() {
        return new AppNode((AppManager) TmcProxy.get(VirtualAppManager.class));
    }
}
