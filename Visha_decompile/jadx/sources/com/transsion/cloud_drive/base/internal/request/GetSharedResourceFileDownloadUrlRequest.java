package com.transsion.cloud_drive.base.internal.request;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/GetSharedResourceFileDownloadUrlRequest;", "", "fileId", "", "expireSeconds", "", "(Ljava/lang/String;J)V", "getExpireSeconds", "()J", "getFileId", "()Ljava/lang/String;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetSharedResourceFileDownloadUrlRequest {

    @v95(name = "expire_sec")
    private final long expireSeconds;

    @v95(name = FontsContractCompat.Columns.FILE_ID)
    private final String fileId;

    public GetSharedResourceFileDownloadUrlRequest(String str, long j) {
        y45.j(str, "fileId");
        this.fileId = str;
        this.expireSeconds = j;
    }

    public final long getExpireSeconds() {
        return this.expireSeconds;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public GetSharedResourceFileDownloadUrlRequest(String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? 0L : j);
    }
}
