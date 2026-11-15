package com.transsion.cloud_drive.base.api.model;

import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR*\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;", "", "()V", CloudItem.KEY_CATEGORY, "", "getCategory$annotations", "getCategory", "()Ljava/lang/String;", "setCategory", "(Ljava/lang/String;)V", "templateList", "", "Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;", "getTemplateList$annotations", "getTemplateList", "()Ljava/util/List;", "setTemplateList", "(Ljava/util/List;)V", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileVideoPlayInfo {
    private String category = "";
    private List<FileVideoTemplate> templateList = y71.k();

    @v95(name = CloudItem.KEY_CATEGORY)
    public static void getCategory$annotations() {
    }

    @v95(name = "quick_video_list")
    public static void getTemplateList$annotations() {
    }

    public final String getCategory() {
        return this.category;
    }

    public final List<FileVideoTemplate> getTemplateList() {
        return this.templateList;
    }

    public final void setCategory(String str) {
        y45.j(str, "<set-?>");
        this.category = str;
    }

    public final void setTemplateList(List<FileVideoTemplate> list) {
        y45.j(list, "<set-?>");
        this.templateList = list;
    }
}
