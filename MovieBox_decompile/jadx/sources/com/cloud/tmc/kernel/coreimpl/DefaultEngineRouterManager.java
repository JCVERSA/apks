package com.cloud.tmc.kernel.coreimpl;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.engine.EngineRouterManager;
import java.util.HashMap;
import java.util.Map;

public class DefaultEngineRouterManager implements EngineRouterManager {
    Map<Long, EngineRouter> routerMap = new HashMap(16);

    @Override
    public EngineRouter get(long j10) {
        EngineRouter defaultEngineRouter = this.routerMap.containsKey(Long.valueOf(j10)) ? this.routerMap.get(Long.valueOf(j10)) : new DefaultEngineRouter();
        this.routerMap.put(Long.valueOf(j10), defaultEngineRouter);
        return defaultEngineRouter;
    }

    @Override
    @Nullable
    public EngineRouter getByWorkerId(String str) {
        for (Long l10 : this.routerMap.keySet()) {
            l10.longValue();
            EngineRouter engineRouter = this.routerMap.get(l10);
            if (engineRouter.getWorkerById(str) != null) {
                return engineRouter;
            }
        }
        return null;
    }

    @Override
    @Nullable
    public EngineRouter remove(EngineRouter engineRouter) {
        try {
            this.routerMap.remove(-1L);
        } catch (Throwable unused) {
        }
        for (Long l10 : this.routerMap.keySet()) {
            l10.longValue();
            if (engineRouter == this.routerMap.get(l10)) {
                return this.routerMap.remove(l10);
            }
        }
        return null;
    }
}
