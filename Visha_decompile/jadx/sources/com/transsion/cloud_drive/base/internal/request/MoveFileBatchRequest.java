package com.transsion.cloud_drive.base.internal.request;

import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u000e\b\u0003\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/MoveFileBatchRequest;", "", "fileIds", "", "", "toParentFileId", "(Ljava/util/List;Ljava/lang/String;)V", "getFileIds", "()Ljava/util/List;", "getToParentFileId", "()Ljava/lang/String;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MoveFileBatchRequest {
    private final List<String> fileIds;
    private final String toParentFileId;

    public MoveFileBatchRequest(@v95(name = "file_ids") List<String> list, @v95(name = "to_parent_file_id") String str) {
        y45.j(list, "fileIds");
        y45.j(str, "toParentFileId");
        this.fileIds = list;
        this.toParentFileId = str;
    }

    public final List<String> getFileIds() {
        return this.fileIds;
    }

    public final String getToParentFileId() {
        return this.toParentFileId;
    }

    public MoveFileBatchRequest(List list, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? y71.k() : list, str);
    }
}
