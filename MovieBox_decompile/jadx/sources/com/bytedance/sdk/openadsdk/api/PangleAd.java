package com.bytedance.sdk.openadsdk.api;

import java.util.Map;

public interface PangleAd {
    Object getExtraInfo(String str);

    @Deprecated
    Map<String, Object> getMediaExtraInfo();
}
