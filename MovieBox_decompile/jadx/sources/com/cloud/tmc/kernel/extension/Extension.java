package com.cloud.tmc.kernel.extension;

public interface Extension {
    void onFinalized();

    void onInitialized();
}
