package com.vungle.ads.internal.protos;

import com.google.protobuf.s0;
import com.google.protobuf.t0;
import java.util.List;

public interface c extends t0 {
    @Override
    s0 getDefaultInstanceForType();

    Sdk$SDKError getErrors(int i10);

    int getErrorsCount();

    List<Sdk$SDKError> getErrorsList();

    @Override
    boolean isInitialized();
}
