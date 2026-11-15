package com.transsion.cloud_drive.base.internal.request;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/GetShareVideoFilePlayInfoRequest;", "", "shareId", "", "fileId", "templateId", "expireSeconds", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "getExpireSeconds", "()J", "getFileId", "()Ljava/lang/String;", "getShareId", "getTemplateId", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetShareVideoFilePlayInfoRequest {
    private final long expireSeconds;
    private final String fileId;
    private final String shareId;
    private final String templateId;

    public GetShareVideoFilePlayInfoRequest(@v95(name = "share_id") String str, @v95(name = FontsContractCompat.Columns.FILE_ID) String str2, @v95(name = "template_id") String str3, @v95(name = "url_expire_sec") long j) {
        y45.j(str, "shareId");
        y45.j(str2, "fileId");
        y45.j(str3, "templateId");
        this.shareId = str;
        this.fileId = str2;
        this.templateId = str3;
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

    public final String getTemplateId() {
        return this.templateId;
    }

    public GetShareVideoFilePlayInfoRequest(String str, String str2, String str3, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? 0L : j);
    }
}
