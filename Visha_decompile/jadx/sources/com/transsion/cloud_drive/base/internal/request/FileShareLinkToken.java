package com.transsion.cloud_drive.base.internal.request;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;", "", "shareToken", "", "expiresIn", "", "(Ljava/lang/String;J)V", "getExpiresIn", "()J", "getShareToken", "()Ljava/lang/String;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileShareLinkToken {
    private final long expiresIn;
    private final String shareToken;

    public FileShareLinkToken() {
        this(null, 0L, 3, null);
    }

    public final long getExpiresIn() {
        return this.expiresIn;
    }

    public final String getShareToken() {
        return this.shareToken;
    }

    public FileShareLinkToken(@v95(name = "share_token") String str, @v95(name = "expires_in") long j) {
        y45.j(str, "shareToken");
        this.shareToken = str;
        this.expiresIn = j;
    }

    public FileShareLinkToken(String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j);
    }
}
