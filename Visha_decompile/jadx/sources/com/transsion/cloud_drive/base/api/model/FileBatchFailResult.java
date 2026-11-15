package com.transsion.cloud_drive.base.api.model;

import androidx.core.provider.FontsContractCompat;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FileBatchFailResult;", "", TrackingKey.CODE, "", "message", "", "fileId", "(ILjava/lang/String;Ljava/lang/String;)V", "getCode", "()I", "getFileId", "()Ljava/lang/String;", "getMessage", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileBatchFailResult {
    private final int code;
    private final String fileId;
    private final String message;

    public FileBatchFailResult() {
        this(0, null, null, 7, null);
    }

    public final int getCode() {
        return this.code;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getMessage() {
        return this.message;
    }

    public FileBatchFailResult(@v95(name = TrackingKey.CODE) int i, @v95(name = "message") String str, @v95(name = FontsContractCompat.Columns.FILE_ID) String str2) {
        y45.j(str, "message");
        y45.j(str2, "fileId");
        this.code = i;
        this.message = str;
        this.fileId = str2;
    }

    public FileBatchFailResult(int i, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? "" : str2);
    }
}
