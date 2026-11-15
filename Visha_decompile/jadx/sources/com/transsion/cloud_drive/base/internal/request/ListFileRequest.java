package com.transsion.cloud_drive.base.internal.request;

import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u000e\u0018\u00002\u00020\u0001B7\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR,\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010\u0013\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\nR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\n\"\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;", "Lcom/transsion/cloud_drive/base/internal/request/PageRequest;", "parentId", "", "orderBy", "orderDirection", CloudItem.KEY_CATEGORY, "type", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCategory", "()Ljava/lang/String;", "fields", "", "getFields$annotations", "()V", "getFields", "()[Ljava/lang/String;", "setFields", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "getOrderBy", "getOrderDirection", "getParentId", "getType", "setType", "(Ljava/lang/String;)V", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ListFileRequest extends PageRequest {
    private final String category;
    private String[] fields;
    private final String orderBy;
    private final String orderDirection;
    private final String parentId;
    private String type;

    public ListFileRequest() {
        this(null, null, null, null, null, 31, null);
    }

    @v95(name = "fields")
    public static void getFields$annotations() {
    }

    public final String getCategory() {
        return this.category;
    }

    public final String[] getFields() {
        return this.fields;
    }

    public final String getOrderBy() {
        return this.orderBy;
    }

    public final String getOrderDirection() {
        return this.orderDirection;
    }

    public final String getParentId() {
        return this.parentId;
    }

    public final String getType() {
        return this.type;
    }

    public final void setFields(String[] strArr) {
        y45.j(strArr, "<set-?>");
        this.fields = strArr;
    }

    public final void setType(String str) {
        y45.j(str, "<set-?>");
        this.type = str;
    }

    public ListFileRequest(String str, String str2, String str3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "root" : str, (i & 2) != 0 ? "name" : str2, (i & 4) != 0 ? "DESC" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5);
    }

    public ListFileRequest(@v95(name = "parent_file_id") String str, @v95(name = "order_by") String str2, @v95(name = "order_direction") String str3, @v95(name = CloudItem.KEY_CATEGORY) String str4, @v95(name = "type") String str5) {
        y45.j(str, "parentId");
        y45.j(str2, "orderBy");
        y45.j(str3, "orderDirection");
        y45.j(str4, CloudItem.KEY_CATEGORY);
        y45.j(str5, "type");
        this.parentId = str;
        this.orderBy = str2;
        this.orderDirection = str3;
        this.category = str4;
        this.type = str5;
        this.fields = new String[]{"url", "id_path", "name_path"};
    }
}
