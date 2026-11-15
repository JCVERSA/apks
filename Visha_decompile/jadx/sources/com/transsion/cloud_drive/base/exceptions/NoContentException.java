package com.transsion.cloud_drive.base.exceptions;

import com.hisavana.common.tracking.TrackingKey;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/cloud_drive/base/exceptions/NoContentException;", "", TrackingKey.CODE, "", "message", "", "(ILjava/lang/String;)V", "getCode", "()I", "getMessage", "()Ljava/lang/String;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NoContentException extends Throwable {
    private final int code;
    private final String message;

    /* JADX WARN: Illegal instructions before constructor call */
    public NoContentException(int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            str = "The server has successfully fulfilled the request with the code (" + i + ") and that there is no additional content to send in the response payload body.";
        }
        this(i, str);
    }

    public final int getCode() {
        return this.code;
    }

    @Override
    public String getMessage() {
        return this.message;
    }

    public NoContentException(int i, String str) {
        super(str);
        this.code = i;
        this.message = str;
    }
}
