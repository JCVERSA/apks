package com.transsion.cloud_drive.base.internal.request;

import defpackage.v95;
import defpackage.y45;
import java.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001BC\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/UpdateFileShareLinkRequest;", "", "shareId", "", "sharePwd", "shareName", "description", "status", "expiration", "Ljava/time/LocalDateTime;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V", "getDescription", "()Ljava/lang/String;", "getExpiration", "()Ljava/time/LocalDateTime;", "getShareId", "getShareName", "getSharePwd", "getStatus", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateFileShareLinkRequest {
    private final String description;
    private final LocalDateTime expiration;
    private final String shareId;
    private final String shareName;
    private final String sharePwd;
    private final String status;

    public UpdateFileShareLinkRequest(@v95(name = "share_id") String str, @v95(name = "share_pwd") String str2, @v95(name = "share_name") String str3, String str4, @v95(name = "status") String str5, @v95(name = "expiration") LocalDateTime localDateTime) {
        y45.j(str, "shareId");
        y45.j(str2, "sharePwd");
        y45.j(str3, "shareName");
        y45.j(str4, "description");
        y45.j(str5, "status");
        this.shareId = str;
        this.sharePwd = str2;
        this.shareName = str3;
        this.description = str4;
        this.status = str5;
        this.expiration = localDateTime;
    }

    public final String getDescription() {
        return this.description;
    }

    public final LocalDateTime getExpiration() {
        return this.expiration;
    }

    public final String getShareId() {
        return this.shareId;
    }

    public final String getShareName() {
        return this.shareName;
    }

    public final String getSharePwd() {
        return this.sharePwd;
    }

    public final String getStatus() {
        return this.status;
    }

    public UpdateFileShareLinkRequest(String str, String str2, String str3, String str4, String str5, LocalDateTime localDateTime, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) == 0 ? str4 : "", (i & 16) != 0 ? "enabled" : str5, (i & 32) != 0 ? null : localDateTime);
    }
}
