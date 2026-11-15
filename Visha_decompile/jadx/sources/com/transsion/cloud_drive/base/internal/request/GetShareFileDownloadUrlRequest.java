package com.transsion.cloud_drive.base.internal.request;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\u00020\u0001B#\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/GetShareFileDownloadUrlRequest;", "", "shareId", "", "fileId", "expireSeconds", "", "(Ljava/lang/String;Ljava/lang/String;J)V", "getExpireSeconds", "()J", "getFileId", "()Ljava/lang/String;", "getShareId", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetShareFileDownloadUrlRequest {
    private final long expireSeconds;
    private final String fileId;
    private final String shareId;

    public GetShareFileDownloadUrlRequest(@v95(name = "share_id") String str, @v95(name = FontsContractCompat.Columns.FILE_ID) String str2, @v95(name = "expire_sec") long j) {
        y45.j(str, "shareId");
        y45.j(str2, "fileId");
        this.shareId = str;
        this.fileId = str2;
        this.expireSeconds = j;
    }

    public final long getExpireSeconds() {
        return this.expireSeconds;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getShareId() {
        return this.shareId;
    }

    public GetShareFileDownloadUrlRequest(String str, String str2, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? 0L : j);
    }
}
