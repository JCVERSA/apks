package com.transsion.cloud.data;

import com.mgtv.downloader.free.FreePhoneInfo;
import com.transsion.push.PushConstants;
import defpackage.y45;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b*\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00102\u001a\u00020\u0003HÆ\u0003J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010;\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010)JÈ\u0001\u0010<\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÆ\u0001¢\u0006\u0002\u0010=J\u0013\u0010>\u001a\u00020?2\b\u0010@\u001a\u0004\u0018\u00010AHÖ\u0003J\t\u0010B\u001a\u00020\u0014HÖ\u0001J\t\u0010C\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0018R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0018R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0018R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0018R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0018R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0018R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0018R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0018R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0018R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0018R\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0018R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0018R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0018R\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\n\n\u0002\u0010*\u001a\u0004\b(\u0010)¨\u0006D"}, d2 = {"Lcom/transsion/cloud/data/SpaceBean;", "Ljava/io/Serializable;", PushConstants.PROVIDER_FIELD_APP_ID, "", FreePhoneInfo.KEY_DEVICEID, "tpmsId", "ipMcc", "oobeMcc", "simMcc", "accountMcc", "deviceModel", "deviceBrand", "deviceName", "accessToken", "versionID", "osVersion", "lang", "uniqueId", "openId", "businessType", "", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getAppId", "()Ljava/lang/String;", "getDeviceId", "getTpmsId", "getIpMcc", "getOobeMcc", "getSimMcc", "getAccountMcc", "getDeviceModel", "getDeviceBrand", "getDeviceName", "getAccessToken", "getVersionID", "getOsVersion", "getLang", "getUniqueId", "getOpenId", "getBusinessType", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/cloud/data/SpaceBean;", "equals", "", "other", "", "hashCode", "toString", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SpaceBean implements Serializable {
    private final String accessToken;
    private final String accountMcc;
    private final String appId;
    private final Integer businessType;
    private final String deviceBrand;
    private final String deviceId;
    private final String deviceModel;
    private final String deviceName;
    private final String ipMcc;
    private final String lang;
    private final String oobeMcc;
    private final String openId;
    private final String osVersion;
    private final String simMcc;
    private final String tpmsId;
    private final String uniqueId;
    private final String versionID;

    public SpaceBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, Integer num) {
        y45.j(str, PushConstants.PROVIDER_FIELD_APP_ID);
        y45.j(str2, FreePhoneInfo.KEY_DEVICEID);
        y45.j(str3, "tpmsId");
        y45.j(str8, "deviceModel");
        y45.j(str9, "deviceBrand");
        y45.j(str10, "deviceName");
        y45.j(str12, "versionID");
        y45.j(str13, "osVersion");
        y45.j(str14, "lang");
        this.appId = str;
        this.deviceId = str2;
        this.tpmsId = str3;
        this.ipMcc = str4;
        this.oobeMcc = str5;
        this.simMcc = str6;
        this.accountMcc = str7;
        this.deviceModel = str8;
        this.deviceBrand = str9;
        this.deviceName = str10;
        this.accessToken = str11;
        this.versionID = str12;
        this.osVersion = str13;
        this.lang = str14;
        this.uniqueId = str15;
        this.openId = str16;
        this.businessType = num;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getVersionID() {
        return this.versionID;
    }

    public final String getOsVersion() {
        return this.osVersion;
    }

    public final String getLang() {
        return this.lang;
    }

    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final String getOpenId() {
        return this.openId;
    }

    public final Integer getBusinessType() {
        return this.businessType;
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final String getTpmsId() {
        return this.tpmsId;
    }

    public final String getIpMcc() {
        return this.ipMcc;
    }

    public final String getOobeMcc() {
        return this.oobeMcc;
    }

    public final String getSimMcc() {
        return this.simMcc;
    }

    public final String getAccountMcc() {
        return this.accountMcc;
    }

    public final String getDeviceModel() {
        return this.deviceModel;
    }

    public final String getDeviceBrand() {
        return this.deviceBrand;
    }

    public final SpaceBean copy(String appId, String deviceId, String tpmsId, String ipMcc, String oobeMcc, String simMcc, String accountMcc, String deviceModel, String deviceBrand, String deviceName, String accessToken, String versionID, String osVersion, String lang, String uniqueId, String openId, Integer businessType) {
        y45.j(appId, PushConstants.PROVIDER_FIELD_APP_ID);
        y45.j(deviceId, FreePhoneInfo.KEY_DEVICEID);
        y45.j(tpmsId, "tpmsId");
        y45.j(deviceModel, "deviceModel");
        y45.j(deviceBrand, "deviceBrand");
        y45.j(deviceName, "deviceName");
        y45.j(versionID, "versionID");
        y45.j(osVersion, "osVersion");
        y45.j(lang, "lang");
        return new SpaceBean(appId, deviceId, tpmsId, ipMcc, oobeMcc, simMcc, accountMcc, deviceModel, deviceBrand, deviceName, accessToken, versionID, osVersion, lang, uniqueId, openId, businessType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SpaceBean)) {
            return false;
        }
        SpaceBean spaceBean = (SpaceBean) other;
        return y45.e(this.appId, spaceBean.appId) && y45.e(this.deviceId, spaceBean.deviceId) && y45.e(this.tpmsId, spaceBean.tpmsId) && y45.e(this.ipMcc, spaceBean.ipMcc) && y45.e(this.oobeMcc, spaceBean.oobeMcc) && y45.e(this.simMcc, spaceBean.simMcc) && y45.e(this.accountMcc, spaceBean.accountMcc) && y45.e(this.deviceModel, spaceBean.deviceModel) && y45.e(this.deviceBrand, spaceBean.deviceBrand) && y45.e(this.deviceName, spaceBean.deviceName) && y45.e(this.accessToken, spaceBean.accessToken) && y45.e(this.versionID, spaceBean.versionID) && y45.e(this.osVersion, spaceBean.osVersion) && y45.e(this.lang, spaceBean.lang) && y45.e(this.uniqueId, spaceBean.uniqueId) && y45.e(this.openId, spaceBean.openId) && y45.e(this.businessType, spaceBean.businessType);
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getAccountMcc() {
        return this.accountMcc;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final Integer getBusinessType() {
        return this.businessType;
    }

    public final String getDeviceBrand() {
        return this.deviceBrand;
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final String getDeviceModel() {
        return this.deviceModel;
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public final String getIpMcc() {
        return this.ipMcc;
    }

    public final String getLang() {
        return this.lang;
    }

    public final String getOobeMcc() {
        return this.oobeMcc;
    }

    public final String getOpenId() {
        return this.openId;
    }

    public final String getOsVersion() {
        return this.osVersion;
    }

    public final String getSimMcc() {
        return this.simMcc;
    }

    public final String getTpmsId() {
        return this.tpmsId;
    }

    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final String getVersionID() {
        return this.versionID;
    }

    public int hashCode() {
        int iHashCode = ((((this.appId.hashCode() * 31) + this.deviceId.hashCode()) * 31) + this.tpmsId.hashCode()) * 31;
        String str = this.ipMcc;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.oobeMcc;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.simMcc;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.accountMcc;
        int iHashCode5 = (((((((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.deviceModel.hashCode()) * 31) + this.deviceBrand.hashCode()) * 31) + this.deviceName.hashCode()) * 31;
        String str5 = this.accessToken;
        int iHashCode6 = (((((((iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.versionID.hashCode()) * 31) + this.osVersion.hashCode()) * 31) + this.lang.hashCode()) * 31;
        String str6 = this.uniqueId;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.openId;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num = this.businessType;
        return iHashCode8 + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "SpaceBean(appId=" + this.appId + ", deviceId=" + this.deviceId + ", tpmsId=" + this.tpmsId + ", ipMcc=" + this.ipMcc + ", oobeMcc=" + this.oobeMcc + ", simMcc=" + this.simMcc + ", accountMcc=" + this.accountMcc + ", deviceModel=" + this.deviceModel + ", deviceBrand=" + this.deviceBrand + ", deviceName=" + this.deviceName + ", accessToken=" + this.accessToken + ", versionID=" + this.versionID + ", osVersion=" + this.osVersion + ", lang=" + this.lang + ", uniqueId=" + this.uniqueId + ", openId=" + this.openId + ", businessType=" + this.businessType + ")";
    }
}
