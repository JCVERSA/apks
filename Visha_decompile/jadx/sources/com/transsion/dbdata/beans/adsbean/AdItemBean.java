package com.transsion.dbdata.beans.adsbean;

import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.ky7;
import defpackage.r0a;
import defpackage.vna;
import defpackage.zu3;
import java.io.File;

public class AdItemBean {
    public static final int AD_SOURCE_TYPE_GIF = 3;
    public static final int AD_SOURCE_TYPE_IMG = 2;
    public static final int AD_SOURCE_TYPE_VIDEO = 1;
    public static final String AD_TYPE_LOCAL_AUDIO_BANNER = "AudioBannerLocalAD";
    public static final String AD_TYPE_LOCAL_LAUNCH = "LaunchLocalAD";
    public static final String AD_TYPE_LOCAL_VIDEO_BANNER = "VideoBannerLocalAD";
    public static final String AD_TYPE_ONLINE_AUDIO_BANNER = "AudioBannerOnlineAD";
    public static final String AD_TYPE_ONLINE_LAUNCH = "LaunchOnlineAD";
    public static final String AD_TYPE_ONLINE_VIDEO_BANNER = "VideoBannerOnlineAD";

    @SerializedName("type")
    int adSourceType;
    private String adType;

    @SerializedName("picUrl")
    String adUrl;

    @SerializedName("closeButtonStatus")
    int closeButtonStatus;

    @SerializedName("duration")
    long duration;

    @SerializedName(TtmlNode.ATTR_ID)
    int id;
    public boolean isLocalAd;

    @SerializedName("jumpLink")
    String jumpLink;

    @SerializedName("jumpStatus")
    int jumpStatus;
    public int localAdResourceId;

    @SerializedName("name")
    String name;

    @SerializedName("onlineEndTime")
    String onlineEndTime;

    @SerializedName("onlineStartTime")
    String onlineStartTime;

    @SerializedName(TypedValues.AttributesType.S_TARGET)
    RouterBean target;

    @SerializedName("ad_local_path")
    String adLocalPath = "";

    @SerializedName("file_name")
    String fileName = "";

    public String getAdLocalPath() {
        if (r0a.g(this.adLocalPath) && !r0a.g(this.adUrl)) {
            this.adLocalPath = ky7.b() + File.separator + getFileName();
        }
        return this.adLocalPath;
    }

    public int getAdSourceType() {
        return this.adSourceType;
    }

    public String getAdType() {
        return this.adType;
    }

    public String getAdTypeTag() {
        return "[" + this.adType + "]";
    }

    public String getAdUrl() {
        return this.adUrl;
    }

    public long getDuration() {
        return this.duration;
    }

    public long getEndTime() {
        if (r0a.g(this.onlineEndTime)) {
            return 0L;
        }
        return vna.a(vna.f(this.onlineEndTime, "yyyy-MM-dd HH:mm:ss"));
    }

    public String getFileName() {
        if (r0a.g(this.fileName) && !r0a.g(this.adUrl)) {
            this.fileName = CacheManager.encryptMD5(this.adUrl) + Consts.DOT + zu3.n(this.adUrl);
        }
        return this.fileName;
    }

    public int getId() {
        return this.id;
    }

    public String getJumpLink() {
        return this.jumpLink;
    }

    public String getName() {
        return this.name;
    }

    public long getStartTime() {
        if (r0a.g(this.onlineStartTime)) {
            return 0L;
        }
        return vna.a(vna.f(this.onlineStartTime, "yyyy-MM-dd HH:mm:ss"));
    }

    public RouterBean getTarget() {
        return this.target;
    }

    public boolean isLocalFileExists() {
        String adLocalPath = getAdLocalPath();
        return !r0a.g(adLocalPath) && zu3.y(adLocalPath);
    }

    public boolean isOnlineTime(long j) {
        return j >= getStartTime() && j <= getEndTime();
    }

    public boolean isSupportJump() {
        return this.jumpStatus == 1;
    }

    public void setAdLocalPath(String str) {
        this.adLocalPath = str;
    }

    public void setAdSourceType(int i) {
        this.adSourceType = i;
    }

    public void setAdType(String str) {
        this.adType = str;
    }

    public void setAdUrl(String str) {
        this.adUrl = str;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setJumpLink(String str) {
        this.jumpLink = str;
    }

    public void setJumpStatus(int i) {
        this.jumpStatus = i;
    }

    public void setTarget(RouterBean routerBean) {
        this.target = routerBean;
    }

    @NonNull
    public String toString() {
        return "AdItem{adtype=" + this.adType + "id=" + this.id + ", isLocalAd=" + this.isLocalAd + ", adSourceType=" + this.adSourceType + ", name='" + this.name + "', picUrl=" + this.adUrl + ", duration=" + this.duration + ", jumpStatus='" + this.jumpStatus + "', jumpLink=" + this.jumpLink + ", closeButtonStatus='" + this.closeButtonStatus + "', onlineStartTime=" + this.onlineStartTime + ", onlineEndTime=" + this.onlineEndTime + ", adLocalPath='" + getAdLocalPath() + "', target=" + getTarget() + "', fileName=" + getFileName() + '}';
    }
}
