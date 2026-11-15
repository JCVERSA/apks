package com.cloud.tmc.integration.invoke;

import com.cloud.tmc.kernel.extension.Extension;
import java.util.List;

public interface ExtensionCallback<T> extends ExtensionInvoker.InvokeCallback<T> {
    void onException(Extension extension, Throwable th2);

    void onInterrupt(Extension extension);

    void onProgress(Extension extension, T t10);

    void onStart(List<Extension> list);
}
