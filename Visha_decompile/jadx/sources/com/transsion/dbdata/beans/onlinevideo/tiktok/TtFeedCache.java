package com.transsion.dbdata.beans.onlinevideo.tiktok;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR&\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtFeedCache;", "Ljava/io/Serializable;", MethodDecl.initName, "()V", "reqId", "", "getReqId", "()Ljava/lang/String;", "setReqId", "(Ljava/lang/String;)V", "data", "", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;", "getData", "()Ljava/util/List;", "setData", "(Ljava/util/List;)V", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TtFeedCache implements Serializable {
    private static final long serialVersionUID = 1;

    @SerializedName("data")
    private List<ArticleData> data;

    @SerializedName("req_id")
    private String reqId;

    public final List<ArticleData> getData() {
        return this.data;
    }

    public final String getReqId() {
        return this.reqId;
    }

    public final void setData(List<ArticleData> list) {
        this.data = list;
    }

    public final void setReqId(String str) {
        this.reqId = str;
    }
}
