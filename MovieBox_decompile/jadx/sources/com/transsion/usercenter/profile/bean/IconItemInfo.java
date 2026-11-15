package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b)\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001Bc\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0007HÆ\u0003J\t\u0010,\u001a\u00020\u0007HÆ\u0003J\t\u0010-\u001a\u00020\nHÆ\u0003J\t\u0010.\u001a\u00020\u0007HÆ\u0003J\t\u0010/\u001a\u00020\nHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jk\u00101\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u00102\u001a\u00020\n2\b\u00103\u001a\u0004\u0018\u000104HÖ\u0003J\t\u00105\u001a\u00020\u0007HÖ\u0001J\t\u00106\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0019\"\u0004\b\u001d\u0010\u001bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0019\"\u0004\b#\u0010\u001bR\u001a\u0010\f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001f\"\u0004\b%\u0010!R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0011\"\u0004\b'\u0010\u0013¨\u00067"}, d2 = {"Lcom/transsion/usercenter/profile/bean/IconItemInfo;", "Ljava/io/Serializable;", CampaignEx.JSON_KEY_TITLE, "", "des", "deepLink", "iconRes", "", "bgRes", "divider", "", IntegrationConstants.TAB_BAR_POSITION_TOP, "checkLogin", "moduleName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getDes", "setDes", "getDeepLink", "setDeepLink", "getIconRes", "()I", "setIconRes", "(I)V", "getBgRes", "setBgRes", "getDivider", "()Z", "setDivider", "(Z)V", "getTop", "setTop", "getCheckLogin", "setCheckLogin", "getModuleName", "setModuleName", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class IconItemInfo implements Serializable {
    private int bgRes;
    private boolean checkLogin;
    private String deepLink;
    private String des;
    private boolean divider;
    private int iconRes;
    private String moduleName;
    private String title;
    private int top;

    public IconItemInfo(String str, String str2, String str3, int i10, int i11, boolean z10, int i12, boolean z11, String str4) {
        this.title = str;
        this.des = str2;
        this.deepLink = str3;
        this.iconRes = i10;
        this.bgRes = i11;
        this.divider = z10;
        this.top = i12;
        this.checkLogin = z11;
        this.moduleName = str4;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDes() {
        return this.des;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final int getIconRes() {
        return this.iconRes;
    }

    public final int getBgRes() {
        return this.bgRes;
    }

    public final boolean getDivider() {
        return this.divider;
    }

    public final int getTop() {
        return this.top;
    }

    public final boolean getCheckLogin() {
        return this.checkLogin;
    }

    public final String getModuleName() {
        return this.moduleName;
    }

    public final IconItemInfo copy(String title, String des, String deepLink, int iconRes, int bgRes, boolean divider, int top, boolean checkLogin, String moduleName) {
        return new IconItemInfo(title, des, deepLink, iconRes, bgRes, divider, top, checkLogin, moduleName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IconItemInfo)) {
            return false;
        }
        IconItemInfo iconItemInfo = (IconItemInfo) other;
        return Intrinsics.c(this.title, iconItemInfo.title) && Intrinsics.c(this.des, iconItemInfo.des) && Intrinsics.c(this.deepLink, iconItemInfo.deepLink) && this.iconRes == iconItemInfo.iconRes && this.bgRes == iconItemInfo.bgRes && this.divider == iconItemInfo.divider && this.top == iconItemInfo.top && this.checkLogin == iconItemInfo.checkLogin && Intrinsics.c(this.moduleName, iconItemInfo.moduleName);
    }

    public final int getBgRes() {
        return this.bgRes;
    }

    public final boolean getCheckLogin() {
        return this.checkLogin;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final String getDes() {
        return this.des;
    }

    public final boolean getDivider() {
        return this.divider;
    }

    public final int getIconRes() {
        return this.iconRes;
    }

    public final String getModuleName() {
        return this.moduleName;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getTop() {
        return this.top;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.des;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.deepLink;
        int iHashCode3 = (((((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.iconRes) * 31) + this.bgRes) * 31) + e.a(this.divider)) * 31) + this.top) * 31) + e.a(this.checkLogin)) * 31;
        String str4 = this.moduleName;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final void setBgRes(int i10) {
        this.bgRes = i10;
    }

    public final void setCheckLogin(boolean z10) {
        this.checkLogin = z10;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setDes(String str) {
        this.des = str;
    }

    public final void setDivider(boolean z10) {
        this.divider = z10;
    }

    public final void setIconRes(int i10) {
        this.iconRes = i10;
    }

    public final void setModuleName(String str) {
        this.moduleName = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setTop(int i10) {
        this.top = i10;
    }

    public String toString() {
        return "IconItemInfo(title=" + this.title + ", des=" + this.des + ", deepLink=" + this.deepLink + ", iconRes=" + this.iconRes + ", bgRes=" + this.bgRes + ", divider=" + this.divider + ", top=" + this.top + ", checkLogin=" + this.checkLogin + ", moduleName=" + this.moduleName + ")";
    }

    public IconItemInfo(String str, String str2, String str3, int i10, int i11, boolean z10, int i12, boolean z11, String str4, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i13 & 8) != 0 ? 0 : i10, (i13 & 16) != 0 ? 0 : i11, (i13 & 32) != 0 ? false : z10, (i13 & 64) != 0 ? 0 : i12, (i13 & 128) != 0 ? false : z11, (i13 & 256) != 0 ? null : str4);
    }
}
