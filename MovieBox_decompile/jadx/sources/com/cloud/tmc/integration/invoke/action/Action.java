package com.cloud.tmc.integration.invoke.action;

import com.cloud.tmc.kernel.extension.Extension;
import java.util.List;

public interface Action {

    public interface Complete<T> extends Action {
        void onComplete(T t10);
    }

    public interface Exception extends Action {
        void onException(Extension extension, Throwable th2);
    }

    public interface Interrupt extends Action {
        void onInterrupt(Extension extension);
    }

    public interface Progress<T> extends Action {
        void onProgress(Extension extension, T t10);
    }

    public interface Start extends Action {
        void onStart(List<Extension> list);
    }
}
