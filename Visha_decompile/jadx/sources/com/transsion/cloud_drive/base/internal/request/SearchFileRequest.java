package com.transsion.cloud_drive.base.internal.request;

import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R*\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/SearchFileRequest;", "Lcom/transsion/cloud_drive/base/internal/request/PageRequest;", "name", "", CloudItem.KEY_CATEGORY, "(Ljava/lang/String;Ljava/lang/String;)V", "getCategory", "()Ljava/lang/String;", "fields", "", "getFields$annotations", "()V", "getFields", "()Ljava/util/List;", "setFields", "(Ljava/util/List;)V", "getName", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SearchFileRequest extends PageRequest {
    private final String category;
    private List<String> fields;
    private final String name;

    public SearchFileRequest(@v95(name = "name") String str, @v95(name = CloudItem.KEY_CATEGORY) String str2) {
        y45.j(str, "name");
        y45.j(str2, CloudItem.KEY_CATEGORY);
        this.name = str;
        this.category = str2;
        this.fields = y71.n("url", "id_path", "name_path");
    }

    @v95(name = "fields")
    public static void getFields$annotations() {
    }

    public final String getCategory() {
        return this.category;
    }

    public final List<String> getFields() {
        return this.fields;
    }

    public final String getName() {
        return this.name;
    }

    public final void setFields(List<String> list) {
        y45.j(list, "<set-?>");
        this.fields = list;
    }
}
