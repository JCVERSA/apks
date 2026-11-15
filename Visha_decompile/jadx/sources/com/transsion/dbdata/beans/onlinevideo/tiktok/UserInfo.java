package com.transsion.dbdata.beans.onlinevideo.tiktok;

import com.google.gson.annotations.SerializedName;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0005H\u0016R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;", "Ljava/io/Serializable;", MethodDecl.initName, "()V", "userId", "", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "name", "getName", "setName", "avatarUrl", "getAvatarUrl", "setAvatarUrl", "toString", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UserInfo implements Serializable {
    private static final long serialVersionUID = 1;

    @SerializedName("avatar_url")
    private String avatarUrl;

    @SerializedName("name")
    private String name;

    @SerializedName(TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID)
    private String userId;

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final String getName() {
        return this.name;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final void setAvatarUrl(String str) {
        this.avatarUrl = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setUserId(String str) {
        this.userId = str;
    }

    public String toString() {
        return "UserInfo(userId=" + this.userId + ", name=" + this.name + ", avatarUrl=" + this.avatarUrl + ")";
    }
}
