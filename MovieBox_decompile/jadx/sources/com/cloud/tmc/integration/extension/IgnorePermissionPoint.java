package com.cloud.tmc.integration.extension;

import com.cloud.tmc.kernel.extension.Extension;

public interface IgnorePermissionPoint extends Extension {
    boolean ignoreAppPermission(String str);
}
