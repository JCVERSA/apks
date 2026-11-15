package com.transsion.cloud_drive.base.internal.request;

import defpackage.v95;
import defpackage.y45;
import java.time.LocalDateTime;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B?\u0012\u000e\b\u0001\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;", "", "fileIds", "", "", "sharePwd", "shareName", "description", "expiration", "Ljava/time/LocalDateTime;", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V", "getDescription", "()Ljava/lang/String;", "getExpiration", "()Ljava/time/LocalDateTime;", "getFileIds", "()Ljava/util/List;", "getShareName", "getSharePwd", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreateFileShareLinkRequest {
    private final String description;
    private final LocalDateTime expiration;
    private final List<String> fileIds;
    private final String shareName;
    private final String sharePwd;

    public CreateFileShareLinkRequest(@v95(name = "file_id_list") List<String> list, @v95(name = "share_pwd") String str, @v95(name = "share_name") String str2, String str3, @v95(name = "expiration") LocalDateTime localDateTime) {
        y45.j(list, "fileIds");
        y45.j(str, "sharePwd");
        y45.j(str2, "shareName");
        y45.j(str3, "description");
        this.fileIds = list;
        this.sharePwd = str;
        this.shareName = str2;
        this.description = str3;
        this.expiration = localDateTime;
    }

    public final String getDescription() {
        return this.description;
    }

    public final LocalDateTime getExpiration() {
        return this.expiration;
    }

    public final List<String> getFileIds() {
        return this.fileIds;
    }

    public final String getShareName() {
        return this.shareName;
    }

    public final String getSharePwd() {
        return this.sharePwd;
    }

    public CreateFileShareLinkRequest(List list, String str, String str2, String str3, LocalDateTime localDateTime, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? null : localDateTime);
    }
}
