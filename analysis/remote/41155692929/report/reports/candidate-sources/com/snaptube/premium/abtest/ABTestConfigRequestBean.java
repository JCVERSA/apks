package com.snaptube.premium.abtest;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.MBridgeConstans;
import com.snaptube.ad.guardian.GuardianManager;
import java.util.Map;
import kotlin.Metadata;
import o.k54;
import o.or3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b \b\u0087\b\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0010¢\u0006\u0002\u0010\u0011J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u000eHÆ\u0003J\u0015\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0010HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0006HÆ\u0003J\t\u0010%\u001a\u00020\u0006HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0006HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\u0083\u0001\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u000e2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0010HÆ\u0001J\u0013\u0010,\u001a\u00020\u000e2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\u0006HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\"\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0018R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0013R\u0016\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\n\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0013R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001c¨\u00060"}, d2 = {"Lcom/snaptube/premium/abtest/ABTestConfigRequestBean;", "", MBridgeConstans.DYNAMIC_VIEW_WX_APP, "", "udid", "versionCode", "", "os", "channel", "language", "randomId", "gaid", "manufacturer", "isFirstDay", "", "customProperties", "", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V", "getApp", "()Ljava/lang/String;", "getChannel", "getCustomProperties", "()Ljava/util/Map;", "getGaid", "()Z", "getLanguage", "getManufacturer", "getOs", "()I", "getRandomId", "getUdid", "getVersionCode", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ABTestConfigRequestBean {

    @SerializedName(MBridgeConstans.DYNAMIC_VIEW_WX_APP)
    @NotNull
    private final String app;

    @SerializedName("ch")
    @NotNull
    private final String channel;

    @SerializedName("custom_properties")
    @NotNull
    private final Map<String, String> customProperties;

    @SerializedName("gaid")
    @NotNull
    private final String gaid;

    @SerializedName("is_first_day")
    private final boolean isFirstDay;

    @SerializedName(GuardianManager.LANG)
    @NotNull
    private final String language;

    @SerializedName("manufacturer")
    @NotNull
    private final String manufacturer;

    @SerializedName("os")
    private final int os;

    @SerializedName("random_id")
    private final int randomId;

    @SerializedName("u")
    @NotNull
    private final String udid;

    @SerializedName("vc")
    private final int versionCode;

    public ABTestConfigRequestBean(@NotNull String str, @NotNull String str2, int i, int i2, @NotNull String str3, @NotNull String str4, int i3, @NotNull String str5, @NotNull String str6, boolean z, @NotNull Map<String, String> map) {
        or3.f(str, MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        or3.f(str2, "udid");
        or3.f(str3, "channel");
        or3.f(str4, "language");
        or3.f(str5, "gaid");
        or3.f(str6, "manufacturer");
        or3.f(map, "customProperties");
        this.app = str;
        this.udid = str2;
        this.versionCode = i;
        this.os = i2;
        this.channel = str3;
        this.language = str4;
        this.randomId = i3;
        this.gaid = str5;
        this.manufacturer = str6;
        this.isFirstDay = z;
        this.customProperties = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ABTestConfigRequestBean copy$default(ABTestConfigRequestBean aBTestConfigRequestBean, String str, String str2, int i, int i2, String str3, String str4, int i3, String str5, String str6, boolean z, Map map, int i4, Object obj) {
        return aBTestConfigRequestBean.copy((i4 & 1) != 0 ? aBTestConfigRequestBean.app : str, (i4 & 2) != 0 ? aBTestConfigRequestBean.udid : str2, (i4 & 4) != 0 ? aBTestConfigRequestBean.versionCode : i, (i4 & 8) != 0 ? aBTestConfigRequestBean.os : i2, (i4 & 16) != 0 ? aBTestConfigRequestBean.channel : str3, (i4 & 32) != 0 ? aBTestConfigRequestBean.language : str4, (i4 & 64) != 0 ? aBTestConfigRequestBean.randomId : i3, (i4 & 128) != 0 ? aBTestConfigRequestBean.gaid : str5, (i4 & 256) != 0 ? aBTestConfigRequestBean.manufacturer : str6, (i4 & 512) != 0 ? aBTestConfigRequestBean.isFirstDay : z, (i4 & 1024) != 0 ? aBTestConfigRequestBean.customProperties : map);
    }

    @NotNull
    public final String getApp() {
        return this.app;
    }

    public final boolean getIsFirstDay() {
        return this.isFirstDay;
    }

    @NotNull
    public final Map<String, String> component11() {
        return this.customProperties;
    }

    @NotNull
    public final String getUdid() {
        return this.udid;
    }

    public final int getVersionCode() {
        return this.versionCode;
    }

    public final int getOs() {
        return this.os;
    }

    @NotNull
    public final String getChannel() {
        return this.channel;
    }

    @NotNull
    public final String getLanguage() {
        return this.language;
    }

    public final int getRandomId() {
        return this.randomId;
    }

    @NotNull
    public final String getGaid() {
        return this.gaid;
    }

    @NotNull
    public final String getManufacturer() {
        return this.manufacturer;
    }

    @NotNull
    public final ABTestConfigRequestBean copy(@NotNull String app, @NotNull String udid, int versionCode, int os, @NotNull String channel, @NotNull String language, int randomId, @NotNull String gaid, @NotNull String manufacturer, boolean isFirstDay, @NotNull Map<String, String> customProperties) {
        or3.f(app, MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        or3.f(udid, "udid");
        or3.f(channel, "channel");
        or3.f(language, "language");
        or3.f(gaid, "gaid");
        or3.f(manufacturer, "manufacturer");
        or3.f(customProperties, "customProperties");
        return new ABTestConfigRequestBean(app, udid, versionCode, os, channel, language, randomId, gaid, manufacturer, isFirstDay, customProperties);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ABTestConfigRequestBean)) {
            return false;
        }
        ABTestConfigRequestBean aBTestConfigRequestBean = (ABTestConfigRequestBean) other;
        return or3.a(this.app, aBTestConfigRequestBean.app) && or3.a(this.udid, aBTestConfigRequestBean.udid) && this.versionCode == aBTestConfigRequestBean.versionCode && this.os == aBTestConfigRequestBean.os && or3.a(this.channel, aBTestConfigRequestBean.channel) && or3.a(this.language, aBTestConfigRequestBean.language) && this.randomId == aBTestConfigRequestBean.randomId && or3.a(this.gaid, aBTestConfigRequestBean.gaid) && or3.a(this.manufacturer, aBTestConfigRequestBean.manufacturer) && this.isFirstDay == aBTestConfigRequestBean.isFirstDay && or3.a(this.customProperties, aBTestConfigRequestBean.customProperties);
    }

    @NotNull
    public final String getApp() {
        return this.app;
    }

    @NotNull
    public final String getChannel() {
        return this.channel;
    }

    @NotNull
    public final Map<String, String> getCustomProperties() {
        return this.customProperties;
    }

    @NotNull
    public final String getGaid() {
        return this.gaid;
    }

    @NotNull
    public final String getLanguage() {
        return this.language;
    }

    @NotNull
    public final String getManufacturer() {
        return this.manufacturer;
    }

    public final int getOs() {
        return this.os;
    }

    public final int getRandomId() {
        return this.randomId;
    }

    @NotNull
    public final String getUdid() {
        return this.udid;
    }

    public final int getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        return (((((((((((((((((((this.app.hashCode() * 31) + this.udid.hashCode()) * 31) + this.versionCode) * 31) + this.os) * 31) + this.channel.hashCode()) * 31) + this.language.hashCode()) * 31) + this.randomId) * 31) + this.gaid.hashCode()) * 31) + this.manufacturer.hashCode()) * 31) + k54.a(this.isFirstDay)) * 31) + this.customProperties.hashCode();
    }

    public final boolean isFirstDay() {
        return this.isFirstDay;
    }

    @NotNull
    public String toString() {
        return "ABTestConfigRequestBean(app=" + this.app + ", udid=" + this.udid + ", versionCode=" + this.versionCode + ", os=" + this.os + ", channel=" + this.channel + ", language=" + this.language + ", randomId=" + this.randomId + ", gaid=" + this.gaid + ", manufacturer=" + this.manufacturer + ", isFirstDay=" + this.isFirstDay + ", customProperties=" + this.customProperties + ")";
    }
}
