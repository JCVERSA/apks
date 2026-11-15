package com.cloud.tmc.integration.structure.impl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.proxy.AppFactory;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.NodeInstance;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import java.util.Iterator;
import java.util.Stack;

@Keep
public final class AppManagerImpl extends NodeInstance implements AppManager {
    public static final Parcelable.Creator<AppManagerImpl> CREATOR = new Parcelable.Creator<AppManagerImpl>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AppManagerImpl createFromParcel(Parcel parcel) {
            return new AppManagerImpl(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AppManagerImpl[] newArray(int i10) {
            return new AppManagerImpl[i10];
        }
    };
    private final Stack<App> mAppStack;

    public AppManagerImpl() {
        this.mAppStack = new Stack<>();
    }

    @Override
    public synchronized void exitApp(App app) {
        if (app != null) {
            app.exit();
            this.mAppStack.remove(app);
            removeChild(app);
        }
    }

    @Override
    public synchronized App findApp(long j10) {
        return (App) getChild(j10);
    }

    @Override
    public synchronized App findAppByToken(long j10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            App app = (App) getChildAt(i10);
            if (app.getStartToken() == j10) {
                return app;
            }
        }
        return null;
    }

    @Override
    public synchronized Stack<App> getAppStack() {
        Stack<App> stack;
        stack = new Stack<>();
        Iterator<App> it = this.mAppStack.iterator();
        while (it.hasNext()) {
            stack.push(it.next());
        }
        return stack;
    }

    @Override
    public synchronized App startApp(String str, Bundle bundle, Bundle bundle2) {
        AppNode appNodeCreateApp;
        try {
            TmcLogger.printPerformanceLog("App", "Start create app");
            appNodeCreateApp = ((AppFactory) TmcProxy.get(AppFactory.class)).createApp();
            appNodeCreateApp.init(str, bundle, bundle2);
            pushChild(appNodeCreateApp);
            if (this.mAppStack.size() > 1) {
                TmcLogger.e("mAppStack size > 1 !!!");
            }
            this.mAppStack.push(appNodeCreateApp);
        } catch (Throwable th2) {
            throw th2;
        }
        return appNodeCreateApp;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
    }

    @Override
    @Nullable
    public synchronized App findApp(String str) {
        Stack<App> appStack = getAppStack();
        for (int size = appStack.size() - 1; size >= 0; size--) {
            App app = appStack.get(size);
            if (app.getAppId().equals(str)) {
                return app;
            }
        }
        return null;
    }

    public AppManagerImpl(Parcel parcel) {
        super(parcel);
        this.mAppStack = new Stack<>();
    }
}
