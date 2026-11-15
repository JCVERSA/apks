package com.cloud.hisavana.sdk.common.bean;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.gw5;
import defpackage.y45;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000f\u001a\u0004\b\u0010\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010 \u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u000f\u001a\u0004\b!\u0010\u000e\"\u0004\b\"\u0010\u0005R$\u0010#\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u000f\u001a\u0004\b$\u0010\u000e\"\u0004\b%\u0010\u0005R$\u0010&\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u000f\u001a\u0004\b'\u0010\u000e\"\u0004\b(\u0010\u0005R$\u0010)\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\u000f\u001a\u0004\b*\u0010\u000e\"\u0004\b+\u0010\u0005R$\u0010,\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\u000f\u001a\u0004\b-\u0010\u000e\"\u0004\b.\u0010\u0005R$\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\u000f\u001a\u0004\b0\u0010\u000e\"\u0004\b1\u0010\u0005R$\u00102\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010\u000f\u001a\u0004\b3\u0010\u000e\"\u0004\b4\u0010\u0005R$\u00105\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010\u000f\u001a\u0004\b6\u0010\u000e\"\u0004\b7\u0010\u0005R$\u00108\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010\u000f\u001a\u0004\b9\u0010\u000e\"\u0004\b:\u0010\u0005R\"\u0010<\u001a\u00020;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010A¨\u0006B"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;", "", "", "trackingUrl", MethodDecl.initName, "(Ljava/lang/String;)V", "Lzfb;", "createMd5", "()V", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "ad", "setData", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V", "toString", "()Ljava/lang/String;", "Ljava/lang/String;", "getTrackingUrl", AbstractID3v1Tag.TAG, "", "createTime", "J", "getCreateTime", "()J", "setCreateTime", "(J)V", "Ljava/util/concurrent/atomic/AtomicInteger;", "retryTimes", "Ljava/util/concurrent/atomic/AtomicInteger;", "getRetryTimes", "()Ljava/util/concurrent/atomic/AtomicInteger;", "setRetryTimes", "(Ljava/util/concurrent/atomic/AtomicInteger;)V", "uuid", "getUuid", "setUuid", "md5", "getMd5", "setMd5", "showId", "getShowId", "setShowId", "triggerId", "getTriggerId", "setTriggerId", "requestId", "getRequestId", "setRequestId", "advertiserId", "getAdvertiserId", "setAdvertiserId", "codeSeatId", "getCodeSeatId", "setCodeSeatId", "adCreativeId", "getAdCreativeId", "setAdCreativeId", "packageName", "getPackageName", "setPackageName", "", "showTrackingUrlsLogEnable", "Z", "getShowTrackingUrlsLogEnable", "()Z", "setShowTrackingUrlsLogEnable", "(Z)V", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DiskTrackingBean {
    private String adCreativeId;
    private String advertiserId;
    private String codeSeatId;
    private long createTime;
    private String md5;
    private String packageName;
    private String requestId;
    private String showId;
    private boolean showTrackingUrlsLogEnable;
    private final String trackingUrl;
    private String triggerId;
    private final transient String TAG = "DiskTrackingBean";
    private AtomicInteger retryTimes = new AtomicInteger(0);
    private String uuid = "";

    public DiskTrackingBean(String str) {
        this.trackingUrl = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        createMd5();
        this.createTime = System.currentTimeMillis();
        this.retryTimes.set(0);
    }

    private final void createMd5() {
        String str = this.trackingUrl;
        if (str != null) {
            this.md5 = gw5.c(str);
        }
    }

    public final String getAdCreativeId() {
        return this.adCreativeId;
    }

    public final String getAdvertiserId() {
        return this.advertiserId;
    }

    public final String getCodeSeatId() {
        return this.codeSeatId;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    public final String getMd5() {
        return this.md5;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final AtomicInteger getRetryTimes() {
        return this.retryTimes;
    }

    public final String getShowId() {
        return this.showId;
    }

    public final boolean getShowTrackingUrlsLogEnable() {
        return this.showTrackingUrlsLogEnable;
    }

    public final String getTrackingUrl() {
        return this.trackingUrl;
    }

    public final String getTriggerId() {
        return this.triggerId;
    }

    public final String getUuid() {
        return this.uuid;
    }

    public final void setAdCreativeId(String str) {
        this.adCreativeId = str;
    }

    public final void setAdvertiserId(String str) {
        this.advertiserId = str;
    }

    public final void setCodeSeatId(String str) {
        this.codeSeatId = str;
    }

    public final void setCreateTime(long j) {
        this.createTime = j;
    }

    public final void setData(AdsDTO ad) {
        List<String> logEnable;
        y45.j(ad, "ad");
        this.uuid = ad.getUuid() + this.md5;
        this.showId = ad.getUuid();
        AdxImpBean impBeanRequest = ad.getImpBeanRequest();
        this.triggerId = impBeanRequest != null ? impBeanRequest.triggerId : null;
        AdxImpBean impBeanRequest2 = ad.getImpBeanRequest();
        this.requestId = impBeanRequest2 != null ? impBeanRequest2.requestId : null;
        this.advertiserId = ad.getAdvertiserId();
        AdxImpBean impBeanRequest3 = ad.getImpBeanRequest();
        this.codeSeatId = impBeanRequest3 != null ? impBeanRequest3.pmid : null;
        this.adCreativeId = ad.getAdCreativeId();
        String packageName = ad.getPackageName();
        this.packageName = (packageName == null || packageName.length() == 0) ? ad.getPackageName() : ad.getPsPackageName();
        AdsProtocolBean.Ext ext = ad.getExt();
        this.showTrackingUrlsLogEnable = (ext == null || (logEnable = ext.getLogEnable()) == null) ? false : logEnable.contains("showTrackingUrlsLogEnable");
    }

    public final void setMd5(String str) {
        this.md5 = str;
    }

    public final void setPackageName(String str) {
        this.packageName = str;
    }

    public final void setRequestId(String str) {
        this.requestId = str;
    }

    public final void setRetryTimes(AtomicInteger atomicInteger) {
        y45.j(atomicInteger, "<set-?>");
        this.retryTimes = atomicInteger;
    }

    public final void setShowId(String str) {
        this.showId = str;
    }

    public final void setShowTrackingUrlsLogEnable(boolean z) {
        this.showTrackingUrlsLogEnable = z;
    }

    public final void setTriggerId(String str) {
        this.triggerId = str;
    }

    public final void setUuid(String str) {
        y45.j(str, "<set-?>");
        this.uuid = str;
    }

    public String toString() {
        return "uuid:" + this.uuid + ",urls:" + this.trackingUrl;
    }
}
