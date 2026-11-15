package com.bumptech.glide.integration.cronet;

import androidx.annotation.Nullable;
import org.chromium.net.UrlResponseInfo;

public interface DataLogger {
    void logNetworkData(@Nullable UrlResponseInfo urlResponseInfo, long j10, long j11, long j12);
}
