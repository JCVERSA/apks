package com.transsion.cloud_drive.base.internal.request;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0016\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/PageRequest;", "", "()V", "limit", "", "getLimit$annotations", "getLimit", "()I", "setLimit", "(I)V", "marker", "", "getMarker$annotations", "getMarker", "()Ljava/lang/String;", "setMarker", "(Ljava/lang/String;)V", "Companion", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class PageRequest {
    public static final int DEFAULT_LIMIT = 200;
    public static final int SEARCH_LIMIT = 100;
    private int limit = 200;
    private String marker = "";

    @v95(name = "limit")
    public static void getLimit$annotations() {
    }

    @v95(name = "marker")
    public static void getMarker$annotations() {
    }

    public final int getLimit() {
        return this.limit;
    }

    public final String getMarker() {
        return this.marker;
    }

    public final void setLimit(int i) {
        this.limit = i;
    }

    public final void setMarker(String str) {
        y45.j(str, "<set-?>");
        this.marker = str;
    }
}
