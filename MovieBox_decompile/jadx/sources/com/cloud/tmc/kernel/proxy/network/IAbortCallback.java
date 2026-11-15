package com.cloud.tmc.kernel.proxy.network;

public interface IAbortCallback {
    void fail(String str);

    void success();
}
