package com.transsion.cloud_drive.base.internal.request;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/CompleteUploadFileRequest;", "", "fileId", "", "uploadId", "crc", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCrc", "()Ljava/lang/String;", "getFileId", "getUploadId", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CompleteUploadFileRequest {
    private final String crc;
    private final String fileId;
    private final String uploadId;

    public CompleteUploadFileRequest(@v95(name = FontsContractCompat.Columns.FILE_ID) String str, @v95(name = "upload_id") String str2, @v95(name = "crc64_hash") String str3) {
        y45.j(str, "fileId");
        y45.j(str2, "uploadId");
        this.fileId = str;
        this.uploadId = str2;
        this.crc = str3;
    }

    public final String getCrc() {
        return this.crc;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getUploadId() {
        return this.uploadId;
    }

    public CompleteUploadFileRequest(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3);
    }
}
