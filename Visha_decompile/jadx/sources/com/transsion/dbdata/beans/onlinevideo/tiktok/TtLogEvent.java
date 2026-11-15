package com.transsion.dbdata.beans.onlinevideo.tiktok;

import com.google.gson.annotations.SerializedName;
import defpackage.i81;
import defpackage.y71;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 (2\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010'\u001a\u00020\u0005H\u0016R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR \u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR \u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR \u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\"\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010 \u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006)"}, d2 = {"Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtLogEvent;", "Ljava/io/Serializable;", MethodDecl.initName, "()V", "docId", "", "getDocId", "()Ljava/lang/String;", "setDocId", "(Ljava/lang/String;)V", "reqId", "getReqId", "setReqId", "dt", "getDt", "setDt", "appVersion", "getAppVersion", "setAppVersion", "country", "getCountry", "setCountry", "articleClass", "getArticleClass", "setArticleClass", "duration", "", "getDuration", "()Ljava/lang/Long;", "setDuration", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "percent", "", "getPercent", "()Ljava/lang/Integer;", "setPercent", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "toString", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TtLogEvent implements Serializable {
    private static final long serialVersionUID = 1;

    @SerializedName("app_version")
    private String appVersion;

    @SerializedName("article_class")
    private String articleClass;

    @SerializedName("country")
    private String country;

    @SerializedName("doc_id")
    private String docId;

    @SerializedName("dt")
    private String dt;

    @SerializedName("duration")
    private Long duration;

    @SerializedName("percent")
    private Integer percent;

    @SerializedName("req_id")
    private String reqId;

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final String getArticleClass() {
        return this.articleClass;
    }

    public final String getCountry() {
        return this.country;
    }

    public final String getDocId() {
        return this.docId;
    }

    public final String getDt() {
        return this.dt;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final Integer getPercent() {
        return this.percent;
    }

    public final String getReqId() {
        return this.reqId;
    }

    public final void setAppVersion(String str) {
        this.appVersion = str;
    }

    public final void setArticleClass(String str) {
        this.articleClass = str;
    }

    public final void setCountry(String str) {
        this.country = str;
    }

    public final void setDocId(String str) {
        this.docId = str;
    }

    public final void setDt(String str) {
        this.dt = str;
    }

    public final void setDuration(Long l) {
        this.duration = l;
    }

    public final void setPercent(Integer num) {
        this.percent = num;
    }

    public final void setReqId(String str) {
        this.reqId = str;
    }

    public String toString() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8 = this.docId;
        String str9 = null;
        if (str8 != null) {
            str = "docId=" + str8;
        } else {
            str = null;
        }
        String str10 = this.reqId;
        if (str10 != null) {
            str2 = "reqId=" + str10;
        } else {
            str2 = null;
        }
        String str11 = this.dt;
        if (str11 != null) {
            str3 = "dt=" + str11;
        } else {
            str3 = null;
        }
        String str12 = this.appVersion;
        if (str12 != null) {
            str4 = "appVersion=" + str12;
        } else {
            str4 = null;
        }
        String str13 = this.country;
        if (str13 != null) {
            str5 = "country=" + str13;
        } else {
            str5 = null;
        }
        String str14 = this.articleClass;
        if (str14 != null) {
            str6 = "articleClass=" + str14;
        } else {
            str6 = null;
        }
        Long l = this.duration;
        if (l != null) {
            str7 = "duration=" + l.longValue();
        } else {
            str7 = null;
        }
        Integer num = this.percent;
        if (num != null) {
            str9 = "percent=" + num.intValue();
        }
        return "TtLogEvent(" + i81.y0(y71.p(str, str2, str3, str4, str5, str6, str7, str9), ", ", null, null, 0, null, null, 62, null) + ")";
    }
}
