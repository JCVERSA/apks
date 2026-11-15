package com.transsion.cloud_drive.base.internal.request;

import defpackage.v95;
import defpackage.y45;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\u0018\u00002\u00020\u0001B3\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;", "", "shareId", "", "parentId", "fileIds", "", "shareRegion", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getFileIds", "()Ljava/util/List;", "getParentId", "()Ljava/lang/String;", "getShareId", "getShareRegion", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CopyShareFilesRequest {
    private final List<String> fileIds;
    private final String parentId;
    private final String shareId;
    private final String shareRegion;

    public CopyShareFilesRequest(@v95(name = "share_id") String str, @v95(name = "to_parent_file_id") String str2, @v95(name = "file_ids") List<String> list, @v95(name = "share_region") String str3) {
        y45.j(str, "shareId");
        y45.j(str2, "parentId");
        y45.j(list, "fileIds");
        y45.j(str3, "shareRegion");
        this.shareId = str;
        this.parentId = str2;
        this.fileIds = list;
        this.shareRegion = str3;
    }

    public final List<String> getFileIds() {
        return this.fileIds;
    }

    public final String getParentId() {
        return this.parentId;
    }

    public final String getShareId() {
        return this.shareId;
    }

    public final String getShareRegion() {
        return this.shareRegion;
    }
}
