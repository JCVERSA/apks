package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000b\u0010\u0002\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR$\u0010\u000e\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000f\u0010\u0002\u001a\u0004\b\u0010\u0010\u0007\"\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;", "", "()V", "status", "", "getStatus$annotations", "getStatus", "()Ljava/lang/String;", "setStatus", "(Ljava/lang/String;)V", "templateId", "getTemplateId$annotations", "getTemplateId", "setTemplateId", "url", "getUrl$annotations", "getUrl", "setUrl", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileVideoTemplate {
    private String templateId = "";
    private String url = "";
    private String status = "";

    @v95(name = "status")
    public static void getStatus$annotations() {
    }

    @v95(name = "template_id")
    public static void getTemplateId$annotations() {
    }

    @v95(name = "url")
    public static void getUrl$annotations() {
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getTemplateId() {
        return this.templateId;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setStatus(String str) {
        y45.j(str, "<set-?>");
        this.status = str;
    }

    public final void setTemplateId(String str) {
        y45.j(str, "<set-?>");
        this.templateId = str;
    }

    public final void setUrl(String str) {
        y45.j(str, "<set-?>");
        this.url = str;
    }
}
