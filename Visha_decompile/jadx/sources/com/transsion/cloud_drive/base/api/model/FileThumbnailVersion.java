package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;", "", "version", "", "(Ljava/lang/String;)V", "getVersion", "()Ljava/lang/String;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileThumbnailVersion {
    private final String version;

    /* JADX WARN: Multi-variable type inference failed */
    public FileThumbnailVersion() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final String getVersion() {
        return this.version;
    }

    public FileThumbnailVersion(@v95(name = "defaultRule") String str) {
        y45.j(str, "version");
        this.version = str;
    }

    public FileThumbnailVersion(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str);
    }
}
