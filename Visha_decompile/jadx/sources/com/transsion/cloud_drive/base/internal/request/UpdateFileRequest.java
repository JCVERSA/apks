package com.transsion.cloud_drive.base.internal.request;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/UpdateFileRequest;", "", "fileId", "", "name", "(Ljava/lang/String;Ljava/lang/String;)V", "getFileId", "()Ljava/lang/String;", "getName", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateFileRequest {
    private final String fileId;
    private final String name;

    public UpdateFileRequest(@v95(name = FontsContractCompat.Columns.FILE_ID) String str, @v95(name = "name") String str2) {
        y45.j(str, "fileId");
        y45.j(str2, "name");
        this.fileId = str;
        this.name = str2;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getName() {
        return this.name;
    }
}
