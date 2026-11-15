package com.yandex.mobile.ads.video.playback.model;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0018\u0018\u00002\u00020\u0001BC\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0007R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0007R\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0013\u0010\r\u001a\u0004\b\u0014\u0010\u0007R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0016\u0010\r\u001a\u0004\b\u0017\u0010\u0007R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0019\u0010\r\u001a\u0004\b\u001a\u0010\u0007R\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u001c\u0010\r\u001a\u0004\b\u001d\u0010\u0007¨\u0006!"}, d2 = {"Lcom/yandex/mobile/ads/video/playback/model/VideoAdInfo;", "", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "other", "", "equals", "(Ljava/lang/Object;)Z", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "getAdId", "adId", "b", "getCreativeId", "creativeId", "c", "getBannerId", "bannerId", "d", "getData", "data", "e", "getAdvertiserInfo", "advertiserInfo", "f", "getAdParameters", "adParameters", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class VideoAdInfo {

    private final String adId;

    private final String creativeId;

    private final String bannerId;

    private final String data;

    private final String advertiserInfo;

    private final String adParameters;

    public VideoAdInfo(String str, String str2, String str3, String str4, String str5, String str6) {
        this.adId = str;
        this.creativeId = str2;
        this.bannerId = str3;
        this.data = str4;
        this.advertiserInfo = str5;
        this.adParameters = str6;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(VideoAdInfo.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type com.yandex.mobile.ads.video.playback.model.VideoAdInfo");
        VideoAdInfo videoAdInfo = (VideoAdInfo) other;
        return y45.e(this.adId, videoAdInfo.adId) && y45.e(this.creativeId, videoAdInfo.creativeId) && y45.e(this.bannerId, videoAdInfo.bannerId) && y45.e(this.data, videoAdInfo.data) && y45.e(this.advertiserInfo, videoAdInfo.advertiserInfo) && y45.e(this.adParameters, videoAdInfo.adParameters);
    }

    public final String getAdId() {
        return this.adId;
    }

    public final String getAdParameters() {
        return this.adParameters;
    }

    public final String getAdvertiserInfo() {
        return this.advertiserInfo;
    }

    public final String getBannerId() {
        return this.bannerId;
    }

    public final String getCreativeId() {
        return this.creativeId;
    }

    public final String getData() {
        return this.data;
    }

    public int hashCode() {
        String str = this.adId;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.creativeId;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.bannerId;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.data;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.advertiserInfo;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.adParameters;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public String toString() {
        String str = this.adId;
        if (str == null) {
            str = "";
        }
        String str2 = this.creativeId;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = this.bannerId;
        if (str3 == null) {
            str3 = "";
        }
        String str4 = this.data;
        if (str4 == null) {
            str4 = "";
        }
        String str5 = this.advertiserInfo;
        if (str5 == null) {
            str5 = "";
        }
        String str6 = this.adParameters;
        return "VideoAdInfo (adId: " + str + ", creativeId: " + str2 + ", bannerId: " + str3 + ", data: " + str4 + ", advertiserInfo: " + str5 + ", adParameters: " + (str6 != null ? str6 : "") + ")";
    }
}
