package com.transsion.cloud_drive.base.internal.request;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/RetryVideoTranscodeRequest;", "", "fileId", "", "(Ljava/lang/String;)V", "getFileId", "()Ljava/lang/String;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RetryVideoTranscodeRequest {
    private final String fileId;

    public RetryVideoTranscodeRequest(@v95(name = FontsContractCompat.Columns.FILE_ID) String str) {
        y45.j(str, "fileId");
        this.fileId = str;
    }

    public final String getFileId() {
        return this.fileId;
    }
}
