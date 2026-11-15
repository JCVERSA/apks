package com.transsion.dbdata.beans.onlinevideo.tiktok;

import com.google.gson.annotations.SerializedName;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.Serializable;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u001a\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003R&\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR \u0010\u0013\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR \u0010\u0016\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000fR \u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\r\"\u0004\b\u001b\u0010\u000fR \u0010\u001c\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\r\"\u0004\b\u001e\u0010\u000f¨\u0006 "}, d2 = {"Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlRequest;", "Ljava/io/Serializable;", MethodDecl.initName, "()V", "docIds", "", "", "getDocIds", "()Ljava/util/List;", "setDocIds", "(Ljava/util/List;)V", "ac", "getAc", "()Ljava/lang/String;", "setAc", "(Ljava/lang/String;)V", "codecType", "getCodecType", "setCodecType", "os", "getOs", "setOs", "osVersion", "getOsVersion", "setOsVersion", "dt", "getDt", "setDt", "country", "getCountry", "setCountry", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TtPlayUrlRequest implements Serializable {
    private static final long serialVersionUID = 1;

    @SerializedName("ac")
    private String ac;

    @SerializedName("codec_type")
    private String codecType;

    @SerializedName("country")
    private String country;

    @SerializedName("doc_ids")
    private List<String> docIds;

    @SerializedName("dt")
    private String dt;

    @SerializedName("os")
    private String os;

    @SerializedName(CommonUrlParts.OS_VERSION)
    private String osVersion;

    public final String getAc() {
        return this.ac;
    }

    public final String getCodecType() {
        return this.codecType;
    }

    public final String getCountry() {
        return this.country;
    }

    public final List<String> getDocIds() {
        return this.docIds;
    }

    public final String getDt() {
        return this.dt;
    }

    public final String getOs() {
        return this.os;
    }

    public final String getOsVersion() {
        return this.osVersion;
    }

    public final void setAc(String str) {
        this.ac = str;
    }

    public final void setCodecType(String str) {
        this.codecType = str;
    }

    public final void setCountry(String str) {
        this.country = str;
    }

    public final void setDocIds(List<String> list) {
        this.docIds = list;
    }

    public final void setDt(String str) {
        this.dt = str;
    }

    public final void setOs(String str) {
        this.os = str;
    }

    public final void setOsVersion(String str) {
        this.osVersion = str;
    }
}
