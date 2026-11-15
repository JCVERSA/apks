package com.cloud.tmc.kernel.proxy.network;

import androidx.annotation.Nullable;

public interface IUploadCallback {
    void onFailed(String str, String str2, String str3, String str4);

    void onFinish(@Nullable String str, String str2, String str3);

    void progressUpdate(String str, int i10, String str2, long j10, long j11);
}
