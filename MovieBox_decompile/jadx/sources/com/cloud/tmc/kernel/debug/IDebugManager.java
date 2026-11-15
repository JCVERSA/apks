package com.cloud.tmc.kernel.debug;

import com.cloud.tmc.kernel.proxy.Proxiable;

public interface IDebugManager extends Proxiable {
    void addObserver(Object obj, DebugCallback debugCallback);

    void notifyObserver();

    void removeObserver(Object obj);
}
