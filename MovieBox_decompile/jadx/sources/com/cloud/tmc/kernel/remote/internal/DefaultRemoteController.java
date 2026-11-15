package com.cloud.tmc.kernel.remote.internal;

import android.os.RemoteException;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.remote.RemoteCallArgs;
import com.cloud.tmc.kernel.remote.RemoteCallResult;
import com.cloud.tmc.kernel.remote.RemoteControlManagement;
import com.cloud.tmc.kernel.remote.RemoteController;
import java.lang.reflect.Method;

public class DefaultRemoteController implements RemoteController {
    private RemoteControlManagement mRemoteControlManagement;

    protected RemoteControlManagement createRemoteControlManagement() {
        return new DefaultRemoteControlManagement();
    }

    @Override
    public synchronized RemoteControlManagement getRemoteControlManagement() {
        try {
            if (this.mRemoteControlManagement == null) {
                this.mRemoteControlManagement = createRemoteControlManagement();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.mRemoteControlManagement;
    }

    @Override
    public boolean isRemoteCallExtension(Extension extension, Method method) {
        return getRemoteControlManagement().isRemoteExtension(extension, method);
    }

    @Override
    public RemoteCallResult remoteCall(RemoteCallArgs remoteCallArgs) throws RemoteException {
        return null;
    }

    @Override
    public synchronized void setRemoteControlManagement(RemoteControlManagement remoteControlManagement) {
        this.mRemoteControlManagement = remoteControlManagement;
    }

    @Override
    public void bindExtensionManager(ExtensionManager extensionManager) {
    }
}
