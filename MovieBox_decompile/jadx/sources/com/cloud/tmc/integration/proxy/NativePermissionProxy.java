package com.cloud.tmc.integration.proxy;

import android.content.Context;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.callback.NativePermissionCallback;
import com.cloud.tmc.kernel.proxy.Proxiable;

public interface NativePermissionProxy extends Proxiable {
    void requestStoragePermission(@NonNull Context context, @NonNull NativePermissionCallback nativePermissionCallback);
}
