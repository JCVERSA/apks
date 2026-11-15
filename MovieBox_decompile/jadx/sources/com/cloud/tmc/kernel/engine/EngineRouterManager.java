package com.cloud.tmc.kernel.engine;

import com.cloud.tmc.kernel.proxy.Proxiable;

public interface EngineRouterManager extends Proxiable {
    EngineRouter get(long j10);

    EngineRouter getByWorkerId(String str);

    EngineRouter remove(EngineRouter engineRouter);
}
