package com.cloud.tmc.kernel.proxy;

import com.cloud.tmc.kernel.bridge.NativeBridge;

public interface IBridgeFactory extends Proxiable {
    NativeBridge createNativeBridge();
}
