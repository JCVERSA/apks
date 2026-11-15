package com.cloud.tmc.integration.invoke;

import com.cloud.tmc.kernel.security.AccessController;

public class DefaultExtensionInvokerFactory implements ExtensionInvokerFactory {
    @Override
    public ExtensionInvoker createPermissionExtensionInvoker(AccessController accessController, ExtensionInvoker extensionInvoker) {
        return new SecurityExtensionInvoker(accessController, extensionInvoker);
    }

    @Override
    public ExtensionInvoker createScheduleExtensionInvoker(ExtensionInvoker extensionInvoker) {
        return new ScheduleExtensionInvoker(extensionInvoker);
    }
}
