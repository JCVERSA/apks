package com.transsion.dbdata.beans.onlinevideo.tiktok;

import androidx.core.app.NotificationCompat;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import defpackage.y45;
import java.io.Serializable;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010 \u001a\u00020\u0011H\u0016R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8G@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R \u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R&\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;", "Ljava/io/Serializable;", MethodDecl.initName, "()V", "ret", "", "getRet", "()I", "setRet", "(I)V", "hasMore", "", "isHasMore", "()Z", "setHasMore", "(Z)V", NotificationCompat.CATEGORY_MESSAGE, "", "getMsg", "()Ljava/lang/String;", "setMsg", "(Ljava/lang/String;)V", "reqId", "getReqId", "setReqId", "data", "", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;", "getData", "()Ljava/util/List;", "setData", "(Ljava/util/List;)V", "toString", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TtStreamResponse implements Serializable {
    private static final Gson GSON = new Gson();
    private static final long serialVersionUID = 1;

    @SerializedName("data")
    private List<ArticleData> data;

    @SerializedName("has_more")
    private boolean hasMore;

    @SerializedName(NotificationCompat.CATEGORY_MESSAGE)
    private String msg;

    @SerializedName("req_id")
    private String reqId;

    @SerializedName("ret")
    private int ret;

    public final List<ArticleData> getData() {
        return this.data;
    }

    public final String getMsg() {
        return this.msg;
    }

    public final String getReqId() {
        return this.reqId;
    }

    public final int getRet() {
        return this.ret;
    }

    public final boolean getHasMore() {
        return this.hasMore;
    }

    public final void setData(List<ArticleData> list) {
        this.data = list;
    }

    public final void setHasMore(boolean z) {
        this.hasMore = z;
    }

    public final void setMsg(String str) {
        this.msg = str;
    }

    public final void setReqId(String str) {
        this.reqId = str;
    }

    public final void setRet(int i) {
        this.ret = i;
    }

    public String toString() {
        String json = GSON.toJson(this);
        y45.i(json, "toJson(...)");
        return json;
    }
}
