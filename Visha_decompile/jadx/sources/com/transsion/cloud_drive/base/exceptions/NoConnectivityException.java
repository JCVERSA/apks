package com.transsion.cloud_drive.base.exceptions;

import java.io.IOException;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/transsion/cloud_drive/base/exceptions/NoConnectivityException;", "Ljava/io/IOException;", "()V", "message", "", "getMessage", "()Ljava/lang/String;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NoConnectivityException extends IOException {
    private final String message = "No internet connection";

    @Override
    public String getMessage() {
        return this.message;
    }
}
