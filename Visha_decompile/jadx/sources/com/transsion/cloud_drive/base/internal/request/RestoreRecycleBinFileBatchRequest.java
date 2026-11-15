package com.transsion.cloud_drive.base.internal.request;

import defpackage.v95;
import defpackage.y45;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\b\u0001\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/RestoreRecycleBinFileBatchRequest;", "", "fileIds", "", "", "(Ljava/util/List;)V", "getFileIds", "()Ljava/util/List;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RestoreRecycleBinFileBatchRequest {
    private final List<String> fileIds;

    public RestoreRecycleBinFileBatchRequest(@v95(name = "file_ids") List<String> list) {
        y45.j(list, "fileIds");
        this.fileIds = list;
    }

    public final List<String> getFileIds() {
        return this.fileIds;
    }
}
