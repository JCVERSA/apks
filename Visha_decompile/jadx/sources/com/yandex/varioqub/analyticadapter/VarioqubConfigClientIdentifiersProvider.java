package com.yandex.varioqub.analyticadapter;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/yandex/varioqub/analyticadapter/VarioqubConfigClientIdentifiersProvider;", "", "Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;", "callback", "Lzfb;", "requestDeviceId", "(Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V", "requestUserId", "analytic-adapter_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public interface VarioqubConfigClientIdentifiersProvider {
    void requestDeviceId(AdapterIdentifiersCallback callback);

    void requestUserId(AdapterIdentifiersCallback callback);
}
