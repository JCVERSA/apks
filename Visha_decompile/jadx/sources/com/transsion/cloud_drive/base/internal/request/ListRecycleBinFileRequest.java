package com.transsion.cloud_drive.base.internal.request;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R,\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010\u000b\u0012\u0004\b\u0006\u0010\u0002\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/ListRecycleBinFileRequest;", "Lcom/transsion/cloud_drive/base/internal/request/PageRequest;", "()V", "fields", "", "", "getFields$annotations", "getFields", "()[Ljava/lang/String;", "setFields", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ListRecycleBinFileRequest extends PageRequest {
    private String[] fields = {"url"};

    @v95(name = "fields")
    public static void getFields$annotations() {
    }

    public final String[] getFields() {
        return this.fields;
    }

    public final void setFields(String[] strArr) {
        y45.j(strArr, "<set-?>");
        this.fields = strArr;
    }
}
