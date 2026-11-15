package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B%\u0012\u000e\b\u0003\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0003\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/MoveFileBatchResult;", "", "errors", "", "Lcom/transsion/cloud_drive/base/api/model/FileBatchFailResult;", "files", "Lcom/transsion/cloud_drive/base/api/model/FileInfo;", "(Ljava/util/List;Ljava/util/List;)V", "getErrors", "()Ljava/util/List;", "getFiles", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MoveFileBatchResult {
    private final List<FileBatchFailResult> errors;
    private final List<FileInfo> files;

    /* JADX WARN: Multi-variable type inference failed */
    public MoveFileBatchResult() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final List<FileBatchFailResult> getErrors() {
        return this.errors;
    }

    public final List<FileInfo> getFiles() {
        return this.files;
    }

    public MoveFileBatchResult(@v95(name = "errors") List<FileBatchFailResult> list, @v95(name = "files") List<FileInfo> list2) {
        y45.j(list, "errors");
        y45.j(list2, "files");
        this.errors = list;
        this.files = list2;
    }

    public MoveFileBatchResult(List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? y71.k() : list, (i & 2) != 0 ? y71.k() : list2);
    }
}
