package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;", "", "thumbnailUrl", "", "previewUrl", "(Ljava/lang/String;Ljava/lang/String;)V", "getPreviewUrl", "()Ljava/lang/String;", "getThumbnailUrl", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileThumbnail {
    private final String previewUrl;
    private final String thumbnailUrl;

    /* JADX WARN: Multi-variable type inference failed */
    public FileThumbnail() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final String getPreviewUrl() {
        return this.previewUrl;
    }

    public final String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public FileThumbnail(@v95(name = "defaultRule") String str, @v95(name = "previewRule") String str2) {
        y45.j(str, "thumbnailUrl");
        y45.j(str2, "previewUrl");
        this.thumbnailUrl = str;
        this.previewUrl = str2;
    }

    public FileThumbnail(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2);
    }
}
