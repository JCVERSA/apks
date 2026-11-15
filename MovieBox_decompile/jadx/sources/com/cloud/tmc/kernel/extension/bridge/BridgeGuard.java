package com.cloud.tmc.kernel.extension.bridge;

import com.cloud.tmc.kernel.security.Guard;
import com.cloud.tmc.kernel.security.Permission;

public class BridgeGuard implements Guard {
    private Permission permission;

    public BridgeGuard(Permission permission) {
        this.permission = permission;
    }

    @Override
    public Permission permit() {
        return this.permission;
    }
}
