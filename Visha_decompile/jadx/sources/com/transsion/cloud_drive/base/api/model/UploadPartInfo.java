package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R$\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;", "", "partNumber", "", "uploadUrl", "", "(ILjava/lang/String;)V", "contentMd5", "getContentMd5$annotations", "()V", "getContentMd5", "()Ljava/lang/String;", "setContentMd5", "(Ljava/lang/String;)V", "getPartNumber", "()I", "getUploadUrl", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UploadPartInfo {
    private String contentMd5;
    private final int partNumber;
    private final String uploadUrl;

    public UploadPartInfo(@v95(name = "part_number") int i, @v95(name = "upload_url") String str) {
        y45.j(str, "uploadUrl");
        this.partNumber = i;
        this.uploadUrl = str;
        this.contentMd5 = "";
    }

    @v95(name = "content_md5")
    public static void getContentMd5$annotations() {
    }

    public final String getContentMd5() {
        return this.contentMd5;
    }

    public final int getPartNumber() {
        return this.partNumber;
    }

    public final String getUploadUrl() {
        return this.uploadUrl;
    }

    public final void setContentMd5(String str) {
        y45.j(str, "<set-?>");
        this.contentMd5 = str;
    }

    public UploadPartInfo(int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? "" : str);
    }
}
