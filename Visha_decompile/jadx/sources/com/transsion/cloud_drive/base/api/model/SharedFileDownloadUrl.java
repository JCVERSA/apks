package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import java.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/SharedFileDownloadUrl;", "", "url", "", "cdnUrl", "expiration", "Ljava/time/LocalDateTime;", "(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V", "getCdnUrl", "()Ljava/lang/String;", "getExpiration", "()Ljava/time/LocalDateTime;", "getUrl", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SharedFileDownloadUrl {

    @v95(name = "cdn_url")
    private final String cdnUrl;

    @v95(name = "expiration")
    private final LocalDateTime expiration;

    @v95(name = "url")
    private final String url;

    public SharedFileDownloadUrl(String str, String str2, LocalDateTime localDateTime) {
        y45.j(str, "url");
        y45.j(str2, "cdnUrl");
        this.url = str;
        this.cdnUrl = str2;
        this.expiration = localDateTime;
    }

    public final String getCdnUrl() {
        return this.cdnUrl;
    }

    public final LocalDateTime getExpiration() {
        return this.expiration;
    }

    public final String getUrl() {
        return this.url;
    }

    public SharedFileDownloadUrl(String str, String str2, LocalDateTime localDateTime, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : localDateTime);
    }
}
