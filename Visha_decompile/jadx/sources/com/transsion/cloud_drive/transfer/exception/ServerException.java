package com.transsion.cloud_drive.transfer.exception;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hisavana.common.tracking.TrackingKey;
import java.io.IOException;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/transsion/cloud_drive/transfer/exception/ServerException;", "Ljava/io/IOException;", TrackingKey.CODE, "", "message", "", TtmlNode.TAG_BODY, "(ILjava/lang/String;Ljava/lang/String;)V", "getBody", "()Ljava/lang/String;", "getCode", "()I", "cloud-drive-transfer_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ServerException extends IOException {
    private final String body;
    private final int code;

    public ServerException(int i, String str, String str2) {
        super(str);
        this.code = i;
        this.body = str2;
    }

    public final String getBody() {
        return this.body;
    }

    public final int getCode() {
        return this.code;
    }
}
