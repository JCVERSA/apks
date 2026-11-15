package com.transsion.cloud_drive.transfer.exception;

import defpackage.y45;
import java.io.IOException;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/transsion/cloud_drive/transfer/exception/NetworkErrorException;", "Ljava/io/IOException;", "message", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "cloud-drive-transfer_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NetworkErrorException extends IOException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkErrorException(String str, Throwable th) {
        super(str, th);
        y45.j(th, "cause");
    }
}
