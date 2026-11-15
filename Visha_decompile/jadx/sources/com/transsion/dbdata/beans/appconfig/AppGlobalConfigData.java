package com.transsion.dbdata.beans.appconfig;

import androidx.annotation.Keep;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.cloudctrlconfigbean.CloudCtrlConfigBean;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Keep
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\bE\n\u0002\u0010\b\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B¯\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010I\u001a\u00020\u0016H\u0016J\u000b\u0010J\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010L\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0011\u0010O\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007HÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u0010\u0010R\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010;J\u000b\u0010S\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u0010\u0010T\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010;J\u0010\u0010U\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010;J\u0010\u0010V\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010;J¶\u0001\u0010W\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0014HÆ\u0001¢\u0006\u0002\u0010XJ\u0013\u0010Y\u001a\u00020\u00142\b\u0010Z\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010[\u001a\u00020\\HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R&\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R \u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R&\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010%\"\u0004\b1\u0010'R \u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R \u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010>\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R \u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\"\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010>\u001a\u0004\bC\u0010;\"\u0004\bD\u0010=R\"\u0010\u0018\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010>\u001a\u0004\bE\u0010;\"\u0004\bF\u0010=R\"\u0010\u0019\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010>\u001a\u0004\bG\u0010;\"\u0004\bH\u0010=¨\u0006]"}, d2 = {"Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;", "", "playerSpeedConfig", "Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;", "bspPlayerConfigBean", "Lcom/transsion/dbdata/beans/appconfig/BspPlayerConfigBean;", "formatCopyright", "", "Lcom/transsion/dbdata/beans/appconfig/FormatCopyrightBeans;", "localVideoPlayControl", "Lcom/transsion/dbdata/beans/appconfig/YoutubeConfigBean;", "externalJump", "Lcom/transsion/dbdata/beans/appconfig/JumpBean;", "cloudCtrlBean", "Lcom/transsion/dbdata/beans/cloudctrlconfigbean/CloudCtrlConfigBean$CloudCtrl;", "controllerLimitBean", "Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;", "allLayoutBean", "Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;", "smartEditEnable", "", "dataVersion", "", "vishaGiveawayFlag", "ktCloudEnterFlag", "mediaLibraryDataFlag", MethodDecl.initName, "(Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;Lcom/transsion/dbdata/beans/appconfig/BspPlayerConfigBean;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/YoutubeConfigBean;Lcom/transsion/dbdata/beans/appconfig/JumpBean;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getPlayerSpeedConfig", "()Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;", "setPlayerSpeedConfig", "(Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;)V", "getBspPlayerConfigBean", "()Lcom/transsion/dbdata/beans/appconfig/BspPlayerConfigBean;", "setBspPlayerConfigBean", "(Lcom/transsion/dbdata/beans/appconfig/BspPlayerConfigBean;)V", "getFormatCopyright", "()Ljava/util/List;", "setFormatCopyright", "(Ljava/util/List;)V", "getLocalVideoPlayControl", "()Lcom/transsion/dbdata/beans/appconfig/YoutubeConfigBean;", "setLocalVideoPlayControl", "(Lcom/transsion/dbdata/beans/appconfig/YoutubeConfigBean;)V", "getExternalJump", "()Lcom/transsion/dbdata/beans/appconfig/JumpBean;", "setExternalJump", "(Lcom/transsion/dbdata/beans/appconfig/JumpBean;)V", "getCloudCtrlBean", "setCloudCtrlBean", "getControllerLimitBean", "()Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;", "setControllerLimitBean", "(Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;)V", "getAllLayoutBean", "()Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;", "setAllLayoutBean", "(Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;)V", "getSmartEditEnable", "()Ljava/lang/Boolean;", "setSmartEditEnable", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getDataVersion", "()Ljava/lang/String;", "setDataVersion", "(Ljava/lang/String;)V", "getVishaGiveawayFlag", "setVishaGiveawayFlag", "getKtCloudEnterFlag", "setKtCloudEnterFlag", "getMediaLibraryDataFlag", "setMediaLibraryDataFlag", "toString", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "(Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;Lcom/transsion/dbdata/beans/appconfig/BspPlayerConfigBean;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/YoutubeConfigBean;Lcom/transsion/dbdata/beans/appconfig/JumpBean;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/transsion/dbdata/beans/appconfig/AppGlobalConfigData;", "equals", "other", "hashCode", "", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppGlobalConfigData {

    @SerializedName(TtmlNode.TAG_LAYOUT)
    private AllLayoutBean allLayoutBean;

    @SerializedName("univerPlayerCtrl")
    private BspPlayerConfigBean bspPlayerConfigBean;

    @SerializedName("cloudCtrlConfig")
    private List<? extends CloudCtrlConfigBean.CloudCtrl> cloudCtrlBean;

    @SerializedName("univerPlayerPowerLimit")
    private ControllerLimitBean controllerLimitBean;

    @SerializedName("dataVersion")
    private String dataVersion;

    @SerializedName("externalJump")
    private JumpBean externalJump;

    @SerializedName("formatCopyright")
    private List<? extends FormatCopyrightBeans> formatCopyright;

    @SerializedName("ktCloudEnterFlag")
    private Boolean ktCloudEnterFlag;

    @SerializedName("localVideoPlayControl")
    private YoutubeConfigBean localVideoPlayControl;

    @SerializedName("mediaLibraryDataFlag")
    private Boolean mediaLibraryDataFlag;

    @SerializedName("playerSpeed")
    private PlayerSpeedConfigBean playerSpeedConfig;

    @SerializedName("smartEditEnable")
    private Boolean smartEditEnable;

    @SerializedName("vishaGiveawayFlag")
    private Boolean vishaGiveawayFlag;

    public AppGlobalConfigData() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, 8191, null);
    }

    public final PlayerSpeedConfigBean getPlayerSpeedConfig() {
        return this.playerSpeedConfig;
    }

    public final String getDataVersion() {
        return this.dataVersion;
    }

    public final Boolean getVishaGiveawayFlag() {
        return this.vishaGiveawayFlag;
    }

    public final Boolean getKtCloudEnterFlag() {
        return this.ktCloudEnterFlag;
    }

    public final Boolean getMediaLibraryDataFlag() {
        return this.mediaLibraryDataFlag;
    }

    public final BspPlayerConfigBean getBspPlayerConfigBean() {
        return this.bspPlayerConfigBean;
    }

    public final List<FormatCopyrightBeans> component3() {
        return this.formatCopyright;
    }

    public final YoutubeConfigBean getLocalVideoPlayControl() {
        return this.localVideoPlayControl;
    }

    public final JumpBean getExternalJump() {
        return this.externalJump;
    }

    public final List<CloudCtrlConfigBean.CloudCtrl> component6() {
        return this.cloudCtrlBean;
    }

    public final ControllerLimitBean getControllerLimitBean() {
        return this.controllerLimitBean;
    }

    public final AllLayoutBean getAllLayoutBean() {
        return this.allLayoutBean;
    }

    public final Boolean getSmartEditEnable() {
        return this.smartEditEnable;
    }

    public final AppGlobalConfigData copy(PlayerSpeedConfigBean playerSpeedConfig, BspPlayerConfigBean bspPlayerConfigBean, List<? extends FormatCopyrightBeans> formatCopyright, YoutubeConfigBean localVideoPlayControl, JumpBean externalJump, List<? extends CloudCtrlConfigBean.CloudCtrl> cloudCtrlBean, ControllerLimitBean controllerLimitBean, AllLayoutBean allLayoutBean, Boolean smartEditEnable, String dataVersion, Boolean vishaGiveawayFlag, Boolean ktCloudEnterFlag, Boolean mediaLibraryDataFlag) {
        return new AppGlobalConfigData(playerSpeedConfig, bspPlayerConfigBean, formatCopyright, localVideoPlayControl, externalJump, cloudCtrlBean, controllerLimitBean, allLayoutBean, smartEditEnable, dataVersion, vishaGiveawayFlag, ktCloudEnterFlag, mediaLibraryDataFlag);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppGlobalConfigData)) {
            return false;
        }
        AppGlobalConfigData appGlobalConfigData = (AppGlobalConfigData) other;
        return y45.e(this.playerSpeedConfig, appGlobalConfigData.playerSpeedConfig) && y45.e(this.bspPlayerConfigBean, appGlobalConfigData.bspPlayerConfigBean) && y45.e(this.formatCopyright, appGlobalConfigData.formatCopyright) && y45.e(this.localVideoPlayControl, appGlobalConfigData.localVideoPlayControl) && y45.e(this.externalJump, appGlobalConfigData.externalJump) && y45.e(this.cloudCtrlBean, appGlobalConfigData.cloudCtrlBean) && y45.e(this.controllerLimitBean, appGlobalConfigData.controllerLimitBean) && y45.e(this.allLayoutBean, appGlobalConfigData.allLayoutBean) && y45.e(this.smartEditEnable, appGlobalConfigData.smartEditEnable) && y45.e(this.dataVersion, appGlobalConfigData.dataVersion) && y45.e(this.vishaGiveawayFlag, appGlobalConfigData.vishaGiveawayFlag) && y45.e(this.ktCloudEnterFlag, appGlobalConfigData.ktCloudEnterFlag) && y45.e(this.mediaLibraryDataFlag, appGlobalConfigData.mediaLibraryDataFlag);
    }

    public final AllLayoutBean getAllLayoutBean() {
        return this.allLayoutBean;
    }

    public final BspPlayerConfigBean getBspPlayerConfigBean() {
        return this.bspPlayerConfigBean;
    }

    public final List<CloudCtrlConfigBean.CloudCtrl> getCloudCtrlBean() {
        return this.cloudCtrlBean;
    }

    public final ControllerLimitBean getControllerLimitBean() {
        return this.controllerLimitBean;
    }

    public final String getDataVersion() {
        return this.dataVersion;
    }

    public final JumpBean getExternalJump() {
        return this.externalJump;
    }

    public final List<FormatCopyrightBeans> getFormatCopyright() {
        return this.formatCopyright;
    }

    public final Boolean getKtCloudEnterFlag() {
        return this.ktCloudEnterFlag;
    }

    public final YoutubeConfigBean getLocalVideoPlayControl() {
        return this.localVideoPlayControl;
    }

    public final Boolean getMediaLibraryDataFlag() {
        return this.mediaLibraryDataFlag;
    }

    public final PlayerSpeedConfigBean getPlayerSpeedConfig() {
        return this.playerSpeedConfig;
    }

    public final Boolean getSmartEditEnable() {
        return this.smartEditEnable;
    }

    public final Boolean getVishaGiveawayFlag() {
        return this.vishaGiveawayFlag;
    }

    public int hashCode() {
        PlayerSpeedConfigBean playerSpeedConfigBean = this.playerSpeedConfig;
        int iHashCode = (playerSpeedConfigBean == null ? 0 : playerSpeedConfigBean.hashCode()) * 31;
        BspPlayerConfigBean bspPlayerConfigBean = this.bspPlayerConfigBean;
        int iHashCode2 = (iHashCode + (bspPlayerConfigBean == null ? 0 : bspPlayerConfigBean.hashCode())) * 31;
        List<? extends FormatCopyrightBeans> list = this.formatCopyright;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        YoutubeConfigBean youtubeConfigBean = this.localVideoPlayControl;
        int iHashCode4 = (iHashCode3 + (youtubeConfigBean == null ? 0 : youtubeConfigBean.hashCode())) * 31;
        JumpBean jumpBean = this.externalJump;
        int iHashCode5 = (iHashCode4 + (jumpBean == null ? 0 : jumpBean.hashCode())) * 31;
        List<? extends CloudCtrlConfigBean.CloudCtrl> list2 = this.cloudCtrlBean;
        int iHashCode6 = (iHashCode5 + (list2 == null ? 0 : list2.hashCode())) * 31;
        ControllerLimitBean controllerLimitBean = this.controllerLimitBean;
        int iHashCode7 = (iHashCode6 + (controllerLimitBean == null ? 0 : controllerLimitBean.hashCode())) * 31;
        AllLayoutBean allLayoutBean = this.allLayoutBean;
        int iHashCode8 = (iHashCode7 + (allLayoutBean == null ? 0 : allLayoutBean.hashCode())) * 31;
        Boolean bool = this.smartEditEnable;
        int iHashCode9 = (iHashCode8 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.dataVersion;
        int iHashCode10 = (iHashCode9 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool2 = this.vishaGiveawayFlag;
        int iHashCode11 = (iHashCode10 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.ktCloudEnterFlag;
        int iHashCode12 = (iHashCode11 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.mediaLibraryDataFlag;
        return iHashCode12 + (bool4 != null ? bool4.hashCode() : 0);
    }

    public final void setAllLayoutBean(AllLayoutBean allLayoutBean) {
        this.allLayoutBean = allLayoutBean;
    }

    public final void setBspPlayerConfigBean(BspPlayerConfigBean bspPlayerConfigBean) {
        this.bspPlayerConfigBean = bspPlayerConfigBean;
    }

    public final void setCloudCtrlBean(List<? extends CloudCtrlConfigBean.CloudCtrl> list) {
        this.cloudCtrlBean = list;
    }

    public final void setControllerLimitBean(ControllerLimitBean controllerLimitBean) {
        this.controllerLimitBean = controllerLimitBean;
    }

    public final void setDataVersion(String str) {
        this.dataVersion = str;
    }

    public final void setExternalJump(JumpBean jumpBean) {
        this.externalJump = jumpBean;
    }

    public final void setFormatCopyright(List<? extends FormatCopyrightBeans> list) {
        this.formatCopyright = list;
    }

    public final void setKtCloudEnterFlag(Boolean bool) {
        this.ktCloudEnterFlag = bool;
    }

    public final void setLocalVideoPlayControl(YoutubeConfigBean youtubeConfigBean) {
        this.localVideoPlayControl = youtubeConfigBean;
    }

    public final void setMediaLibraryDataFlag(Boolean bool) {
        this.mediaLibraryDataFlag = bool;
    }

    public final void setPlayerSpeedConfig(PlayerSpeedConfigBean playerSpeedConfigBean) {
        this.playerSpeedConfig = playerSpeedConfigBean;
    }

    public final void setSmartEditEnable(Boolean bool) {
        this.smartEditEnable = bool;
    }

    public final void setVishaGiveawayFlag(Boolean bool) {
        this.vishaGiveawayFlag = bool;
    }

    public String toString() {
        return "AppGlobalConfigData(playerSpeedConfig=" + this.playerSpeedConfig + ", bspPlayerConfigBean=" + this.bspPlayerConfigBean + ", formatCopyright=" + this.formatCopyright + ", localVideoPlayControl=" + this.localVideoPlayControl + ", externalJump=" + this.externalJump + ", cloudCtrlBean=" + this.cloudCtrlBean + ", controllerLimitBean=" + this.controllerLimitBean + ", allLayoutBean=" + this.allLayoutBean + ", smartEditEnable=" + this.smartEditEnable + ", dataVersion=" + this.dataVersion + ", vishaGiveawayFlag=" + this.vishaGiveawayFlag + ", ktCloudEnterFlag=" + this.ktCloudEnterFlag + ", mediaLibraryDataFlag=" + this.mediaLibraryDataFlag + ")";
    }

    public AppGlobalConfigData(PlayerSpeedConfigBean playerSpeedConfigBean, BspPlayerConfigBean bspPlayerConfigBean, List<? extends FormatCopyrightBeans> list, YoutubeConfigBean youtubeConfigBean, JumpBean jumpBean, List<? extends CloudCtrlConfigBean.CloudCtrl> list2, ControllerLimitBean controllerLimitBean, AllLayoutBean allLayoutBean, Boolean bool, String str, Boolean bool2, Boolean bool3, Boolean bool4) {
        this.playerSpeedConfig = playerSpeedConfigBean;
        this.bspPlayerConfigBean = bspPlayerConfigBean;
        this.formatCopyright = list;
        this.localVideoPlayControl = youtubeConfigBean;
        this.externalJump = jumpBean;
        this.cloudCtrlBean = list2;
        this.controllerLimitBean = controllerLimitBean;
        this.allLayoutBean = allLayoutBean;
        this.smartEditEnable = bool;
        this.dataVersion = str;
        this.vishaGiveawayFlag = bool2;
        this.ktCloudEnterFlag = bool3;
        this.mediaLibraryDataFlag = bool4;
    }

    public AppGlobalConfigData(PlayerSpeedConfigBean playerSpeedConfigBean, BspPlayerConfigBean bspPlayerConfigBean, List list, YoutubeConfigBean youtubeConfigBean, JumpBean jumpBean, List list2, ControllerLimitBean controllerLimitBean, AllLayoutBean allLayoutBean, Boolean bool, String str, Boolean bool2, Boolean bool3, Boolean bool4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : playerSpeedConfigBean, (i & 2) != 0 ? null : bspPlayerConfigBean, (i & 4) != 0 ? null : list, (i & 8) != 0 ? null : youtubeConfigBean, (i & 16) != 0 ? null : jumpBean, (i & 32) != 0 ? null : list2, (i & 64) != 0 ? null : controllerLimitBean, (i & 128) != 0 ? null : allLayoutBean, (i & 256) != 0 ? null : bool, (i & 512) != 0 ? null : str, (i & 1024) != 0 ? null : bool2, (i & 2048) != 0 ? null : bool3, (i & 4096) == 0 ? bool4 : null);
    }
}
