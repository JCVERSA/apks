package com.cloud.tmc.kernel.coreimpl;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.bridge.NativeBridge;
import com.cloud.tmc.kernel.engine.EngineInitCallback;
import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.engine.EngineRouterManager;
import com.cloud.tmc.kernel.engine.EngineStack;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.model.InitParams;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.IBridgeFactory;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.service.EnvironmentService;

public abstract class BaseEngineImpl implements IEngine {
    protected InitParams initParams;
    private String mAppId;
    private NativeBridge mEngineBridge;
    private EngineRouter mEngineRouter;
    private Node mNode;
    private boolean mDestroyed = false;
    private Context mContext = ((EnvironmentService) TmcProxy.get(EnvironmentService.class)).getApplicationContext();

    public BaseEngineImpl(String str, Node node) {
        this.mNode = node;
        this.mAppId = str;
        NativeBridge nativeBridgeCreateNativeBridge = createNativeBridge();
        this.mEngineBridge = nativeBridgeCreateNativeBridge;
        nativeBridgeCreateNativeBridge.bindEngineRouter(this.mEngineRouter);
    }

    protected NativeBridge createNativeBridge() {
        return ((IBridgeFactory) TmcProxy.get(IBridgeFactory.class)).createNativeBridge();
    }

    @Override
    public final synchronized void destroy() {
        if (this.mDestroyed) {
            return;
        }
        this.mDestroyed = true;
        onDestroy();
        this.mEngineBridge.release();
        EngineStack.getInstance().removeProxy(this);
    }

    @Override
    public String getAppId() {
        return this.mAppId;
    }

    @Override
    public Context getApplication() {
        return this.mContext;
    }

    @Override
    public NativeBridge getBridge() {
        return this.mEngineBridge;
    }

    @Override
    public EngineRouter getEngineRouter() {
        return this.mEngineRouter;
    }

    @Override
    public String getEngineType() {
        return "WEB";
    }

    @Override
    public Node getNode() {
        return this.mNode;
    }

    @Override
    public Bundle getStartParams() {
        InitParams initParams = this.initParams;
        if (initParams == null) {
            return null;
        }
        return initParams.startParams;
    }

    @Override
    public IRender getTopRender() {
        return this.mEngineRouter.getRenderById(null);
    }

    @Override
    public void init(InitParams initParams, EngineInitCallback engineInitCallback) {
        this.initParams = initParams;
        this.mEngineRouter = ((EngineRouterManager) TmcProxy.get(EngineRouterManager.class)).get(initParams.startToken);
        EngineStack.getInstance().pushEnginePorxy(this);
    }

    @Override
    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    protected void onDestroy() {
        EngineRouter engineRouter = this.mEngineRouter;
        if (engineRouter != null) {
            engineRouter.destroy();
            ((EngineRouterManager) TmcProxy.get(EngineRouterManager.class)).remove(this.mEngineRouter);
        }
    }

    public void setNativeBridge(@NonNull NativeBridge nativeBridge) {
        this.mEngineBridge = nativeBridge;
    }
}
