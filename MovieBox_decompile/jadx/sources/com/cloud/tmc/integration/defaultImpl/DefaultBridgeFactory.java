package com.cloud.tmc.integration.defaultImpl;

import com.cloud.tmc.integration.structure.impl.DefaultNativeBridge;
import com.cloud.tmc.kernel.bridge.NativeBridge;
import com.cloud.tmc.kernel.proxy.IBridgeFactory;

public class DefaultBridgeFactory implements IBridgeFactory {
    @Override
    public NativeBridge createNativeBridge() {
        return new DefaultNativeBridge();
    }
}
