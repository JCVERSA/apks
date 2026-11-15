package com.transsion.dbdata.beans.onlinevideo.tiktok;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0016\u001a\u00020\u000bH\u0016R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;", "Ljava/io/Serializable;", MethodDecl.initName, "()V", "videoDuration", "", "getVideoDuration", "()D", "setVideoDuration", "(D)V", "url", "", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "urlExpire", "", "getUrlExpire", "()J", "setUrlExpire", "(J)V", "toString", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoInfo implements Serializable {
    private static final long serialVersionUID = 1;

    @SerializedName("url")
    private String url;

    @SerializedName("url_expire")
    private long urlExpire;

    @SerializedName("video_duration")
    private double videoDuration;

    public final String getUrl() {
        return this.url;
    }

    public final long getUrlExpire() {
        return this.urlExpire;
    }

    public final double getVideoDuration() {
        return this.videoDuration;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setUrlExpire(long j) {
        this.urlExpire = j;
    }

    public final void setVideoDuration(double d) {
        this.videoDuration = d;
    }

    public String toString() {
        return "VideoInfo(videoDuration=" + this.videoDuration + ", url=" + this.url + ", urlExpire=" + this.urlExpire + ")";
    }
}
