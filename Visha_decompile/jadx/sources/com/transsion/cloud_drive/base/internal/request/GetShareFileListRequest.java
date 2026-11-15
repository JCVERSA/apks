package com.transsion.cloud_drive.base.internal.request;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R,\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010\u000e\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/GetShareFileListRequest;", "Lcom/transsion/cloud_drive/base/internal/request/PageRequest;", "shareId", "", "parentId", "(Ljava/lang/String;Ljava/lang/String;)V", "fields", "", "getFields$annotations", "()V", "getFields", "()[Ljava/lang/String;", "setFields", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "getParentId", "()Ljava/lang/String;", "getShareId", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetShareFileListRequest extends PageRequest {
    private String[] fields;
    private final String parentId;
    private final String shareId;

    public GetShareFileListRequest(@v95(name = "share_id") String str, @v95(name = "parent_file_id") String str2) {
        y45.j(str, "shareId");
        y45.j(str2, "parentId");
        this.shareId = str;
        this.parentId = str2;
        this.fields = new String[]{"url", "user_tags"};
    }

    @v95(name = "fields")
    public static void getFields$annotations() {
    }

    public final String[] getFields() {
        return this.fields;
    }

    public final String getParentId() {
        return this.parentId;
    }

    public final String getShareId() {
        return this.shareId;
    }

    public final void setFields(String[] strArr) {
        y45.j(strArr, "<set-?>");
        this.fields = strArr;
    }
}
