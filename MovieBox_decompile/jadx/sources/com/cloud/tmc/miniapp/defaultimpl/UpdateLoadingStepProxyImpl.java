package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.proxy.IUpdateLoadingStepProxy;
import com.cloud.tmc.integration.proxy.UpdateLoadingStepListener;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

public final class UpdateLoadingStepProxyImpl implements IUpdateLoadingStepProxy {
    public final ConcurrentHashMap<String, UpdateLoadingStepListener> OooO00o = new ConcurrentHashMap<>();

    @Override
    public void addUpdateLoadingListener(String appId, UpdateLoadingStepListener listener) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(listener, "listener");
        if (appId.length() == 0) {
            return;
        }
        this.OooO00o.put(appId, listener);
    }

    public final ConcurrentHashMap<String, UpdateLoadingStepListener> getMap() {
        return this.OooO00o;
    }

    @Override
    public void notifyUpdateLoadingStep(String appId, LoadStepAction step) {
        UpdateLoadingStepListener updateLoadingStepListener;
        Intrinsics.h(appId, "appId");
        Intrinsics.h(step, "step");
        if (appId.length() == 0 || (updateLoadingStepListener = this.OooO00o.get(appId)) == null) {
            return;
        }
        updateLoadingStepListener.onUpdateStep(step);
    }

    @Override
    public void removeUpdateLoadingListener(String appId) {
        Intrinsics.h(appId, "appId");
        if (appId.length() == 0) {
            return;
        }
        this.OooO00o.remove(appId);
    }
}
