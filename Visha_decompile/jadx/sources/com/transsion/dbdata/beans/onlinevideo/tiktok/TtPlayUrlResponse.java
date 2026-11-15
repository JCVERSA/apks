package com.transsion.dbdata.beans.onlinevideo.tiktok;

import androidx.core.app.NotificationCompat;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR,\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;", "Ljava/io/Serializable;", MethodDecl.initName, "()V", "ret", "", "getRet", "()I", "setRet", "(I)V", NotificationCompat.CATEGORY_MESSAGE, "", "getMsg", "()Ljava/lang/String;", "setMsg", "(Ljava/lang/String;)V", "reqId", "getReqId", "setReqId", "data", "", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;", "getData", "()Ljava/util/Map;", "setData", "(Ljava/util/Map;)V", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TtPlayUrlResponse implements Serializable {
    private static final long serialVersionUID = 1;

    @SerializedName("data")
    private Map<String, VideoInfo> data;

    @SerializedName(NotificationCompat.CATEGORY_MESSAGE)
    private String msg;

    @SerializedName("req_id")
    private String reqId;

    @SerializedName("ret")
    private int ret;

    public final Map<String, VideoInfo> getData() {
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

    public final void setData(Map<String, VideoInfo> map) {
        this.data = map;
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
}
