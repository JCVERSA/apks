package com.transsion.baselib.db.notification;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Settings;

@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\bY\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B»\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010W\u001a\u00020\u0003HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010/J\t\u0010a\u001a\u00020\u0003HÆ\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010/J\t\u0010c\u001a\u00020\u0012HÆ\u0003J\t\u0010d\u001a\u00020\u0012HÆ\u0003J\t\u0010e\u001a\u00020\u0012HÆ\u0003J\t\u0010f\u001a\u00020\u0003HÆ\u0003JÂ\u0001\u0010g\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010hJ\u0006\u0010i\u001a\u00020\u0003J\u0013\u0010j\u001a\u00020\u00122\b\u0010k\u001a\u0004\u0018\u00010lHÖ\u0003J\t\u0010m\u001a\u00020\u0003HÖ\u0001J\t\u0010n\u001a\u00020\u0005HÖ\u0001J\u0016\u0010o\u001a\u00020p2\u0006\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001d\"\u0004\b!\u0010\u001fR \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001d\"\u0004\b#\u0010\u001fR \u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001d\"\u0004\b%\u0010\u001fR \u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001d\"\u0004\b'\u0010\u001fR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001d\"\u0004\b)\u0010\u001fR \u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u001d\"\u0004\b+\u0010\u001fR \u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001d\"\u0004\b-\u0010\u001fR\"\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u00102\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001e\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0019\"\u0004\b4\u0010\u001bR\"\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u00102\u001a\u0004\b5\u0010/\"\u0004\b6\u00101R\u001e\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001e\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00108\"\u0004\b<\u0010:R\u001e\u0010\u0014\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u00108\"\u0004\b>\u0010:R\u001e\u0010\u0015\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u0019\"\u0004\b@\u0010\u001bR$\u0010A\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bB\u0010C\u001a\u0004\bA\u00108\"\u0004\bD\u0010:R$\u0010E\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bF\u0010C\u001a\u0004\bG\u0010\u0019\"\u0004\bH\u0010\u001bR$\u0010I\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bJ\u0010C\u001a\u0004\bK\u0010\u0019\"\u0004\bL\u0010\u001bR$\u0010M\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bN\u0010C\u001a\u0004\bO\u0010\u0019\"\u0004\bP\u0010\u001bR$\u0010Q\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bR\u0010C\u001a\u0004\bQ\u00108\"\u0004\bS\u0010:R$\u0010T\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bU\u0010C\u001a\u0004\bT\u00108\"\u0004\bV\u0010:¨\u0006t"}, d2 = {"Lcom/transsion/baselib/db/notification/MsgBean;", "Landroid/os/Parcelable;", "id", "", "deeplink", "", CampaignEx.JSON_KEY_DESC, "imageList", "messageId", EventConstants.KEY_SOURCE, TtmlNode.TAG_STYLE, CampaignEx.JSON_KEY_TITLE, NativeComponentConstants.KEY_COMPONENT_TYPE, "receiveTime", "", "msgStatus", "showTime", "forceShow", "", "hasScreenOn", "builtIn", "permanentMsgStatus", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZI)V", "getId", "()I", "setId", "(I)V", "getDeeplink", "()Ljava/lang/String;", "setDeeplink", "(Ljava/lang/String;)V", "getDesc", "setDesc", "getImageList", "setImageList", "getMessageId", "setMessageId", "getSource", "setSource", "getStyle", "setStyle", "getTitle", "setTitle", "getType", "setType", "getReceiveTime", "()Ljava/lang/Long;", "setReceiveTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getMsgStatus", "setMsgStatus", "getShowTime", "setShowTime", "getForceShow", "()Z", "setForceShow", "(Z)V", "getHasScreenOn", "setHasScreenOn", "getBuiltIn", "setBuiltIn", "getPermanentMsgStatus", "setPermanentMsgStatus", "isPermanent", "isPermanent$annotations", "()V", "setPermanent", "triggerSource", "getTriggerSource$annotations", "getTriggerSource", "setTriggerSource", "permanentMsgPosition", "getPermanentMsgPosition$annotations", "getPermanentMsgPosition", "setPermanentMsgPosition", "permanentMsgSize", "getPermanentMsgSize$annotations", "getPermanentMsgSize", "setPermanentMsgSize", "isRefresh", "isRefresh$annotations", "setRefresh", "isFloat", "isFloat$annotations", "setFloat", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "copy", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZI)Lcom/transsion/baselib/db/notification/MsgBean;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MsgBean implements Parcelable {
    public static final Parcelable.Creator<MsgBean> CREATOR = new a();
    private boolean builtIn;
    private String deeplink;
    private String desc;
    private boolean forceShow;
    private boolean hasScreenOn;
    private int id;
    private String imageList;
    private boolean isFloat;
    private boolean isPermanent;
    private boolean isRefresh;
    private String messageId;
    private int msgStatus;
    private int permanentMsgPosition;
    private int permanentMsgSize;
    private int permanentMsgStatus;
    private Long receiveTime;
    private Long showTime;
    private String source;
    private String style;
    private String title;
    private int triggerSource;
    private String type;

    public static final class a implements Parcelable.Creator {
        @Override
        public final MsgBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new MsgBean(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt(), parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt());
        }

        @Override
        public final MsgBean[] newArray(int i10) {
            return new MsgBean[i10];
        }
    }

    public MsgBean() {
        this(0, null, null, null, null, null, null, null, null, null, 0, null, false, false, false, 0, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
    }

    public static void getPermanentMsgPosition$annotations() {
    }

    public static void getPermanentMsgSize$annotations() {
    }

    public static void getTriggerSource$annotations() {
    }

    public static void isFloat$annotations() {
    }

    public static void isPermanent$annotations() {
    }

    public static void isRefresh$annotations() {
    }

    public final int getId() {
        return this.id;
    }

    public final Long getReceiveTime() {
        return this.receiveTime;
    }

    public final int getMsgStatus() {
        return this.msgStatus;
    }

    public final Long getShowTime() {
        return this.showTime;
    }

    public final boolean getForceShow() {
        return this.forceShow;
    }

    public final boolean getHasScreenOn() {
        return this.hasScreenOn;
    }

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final int getPermanentMsgStatus() {
        return this.permanentMsgStatus;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getImageList() {
        return this.imageList;
    }

    public final String getMessageId() {
        return this.messageId;
    }

    public final String getSource() {
        return this.source;
    }

    public final String getStyle() {
        return this.style;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getType() {
        return this.type;
    }

    public final MsgBean copy(int id2, String deeplink, String desc, String imageList, String messageId, String source, String style, String title, String type, Long receiveTime, int msgStatus, Long showTime, boolean forceShow, boolean hasScreenOn, boolean builtIn, int permanentMsgStatus) {
        return new MsgBean(id2, deeplink, desc, imageList, messageId, source, style, title, type, receiveTime, msgStatus, showTime, forceShow, hasScreenOn, builtIn, permanentMsgStatus);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MsgBean)) {
            return false;
        }
        MsgBean msgBean = (MsgBean) other;
        return this.id == msgBean.id && Intrinsics.c(this.deeplink, msgBean.deeplink) && Intrinsics.c(this.desc, msgBean.desc) && Intrinsics.c(this.imageList, msgBean.imageList) && Intrinsics.c(this.messageId, msgBean.messageId) && Intrinsics.c(this.source, msgBean.source) && Intrinsics.c(this.style, msgBean.style) && Intrinsics.c(this.title, msgBean.title) && Intrinsics.c(this.type, msgBean.type) && Intrinsics.c(this.receiveTime, msgBean.receiveTime) && this.msgStatus == msgBean.msgStatus && Intrinsics.c(this.showTime, msgBean.showTime) && this.forceShow == msgBean.forceShow && this.hasScreenOn == msgBean.hasScreenOn && this.builtIn == msgBean.builtIn && this.permanentMsgStatus == msgBean.permanentMsgStatus;
    }

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final boolean getForceShow() {
        return this.forceShow;
    }

    public final boolean getHasScreenOn() {
        return this.hasScreenOn;
    }

    public final int getId() {
        return this.id;
    }

    public final String getImageList() {
        return this.imageList;
    }

    public final String getMessageId() {
        return this.messageId;
    }

    public final int getMsgStatus() {
        return this.msgStatus;
    }

    public final int getPermanentMsgPosition() {
        return this.permanentMsgPosition;
    }

    public final int getPermanentMsgSize() {
        return this.permanentMsgSize;
    }

    public final int getPermanentMsgStatus() {
        return this.permanentMsgStatus;
    }

    public final Long getReceiveTime() {
        return this.receiveTime;
    }

    public final Long getShowTime() {
        return this.showTime;
    }

    public final String getSource() {
        return this.source;
    }

    public final String getStyle() {
        return this.style;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getTriggerSource() {
        return this.triggerSource;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        int i10 = this.id * 31;
        String str = this.deeplink;
        int iHashCode = (i10 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.desc;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.imageList;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.messageId;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.source;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.style;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.title;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.type;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Long l10 = this.receiveTime;
        int iHashCode9 = (((iHashCode8 + (l10 == null ? 0 : l10.hashCode())) * 31) + this.msgStatus) * 31;
        Long l11 = this.showTime;
        return ((((((((iHashCode9 + (l11 != null ? l11.hashCode() : 0)) * 31) + e.a(this.forceShow)) * 31) + e.a(this.hasScreenOn)) * 31) + e.a(this.builtIn)) * 31) + this.permanentMsgStatus;
    }

    public final boolean getIsFloat() {
        return this.isFloat;
    }

    public final boolean getIsPermanent() {
        return this.isPermanent;
    }

    public final boolean getIsRefresh() {
        return this.isRefresh;
    }

    public final void setBuiltIn(boolean z10) {
        this.builtIn = z10;
    }

    public final void setDeeplink(String str) {
        this.deeplink = str;
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setFloat(boolean z10) {
        this.isFloat = z10;
    }

    public final void setForceShow(boolean z10) {
        this.forceShow = z10;
    }

    public final void setHasScreenOn(boolean z10) {
        this.hasScreenOn = z10;
    }

    public final void setId(int i10) {
        this.id = i10;
    }

    public final void setImageList(String str) {
        this.imageList = str;
    }

    public final void setMessageId(String str) {
        this.messageId = str;
    }

    public final void setMsgStatus(int i10) {
        this.msgStatus = i10;
    }

    public final void setPermanent(boolean z10) {
        this.isPermanent = z10;
    }

    public final void setPermanentMsgPosition(int i10) {
        this.permanentMsgPosition = i10;
    }

    public final void setPermanentMsgSize(int i10) {
        this.permanentMsgSize = i10;
    }

    public final void setPermanentMsgStatus(int i10) {
        this.permanentMsgStatus = i10;
    }

    public final void setReceiveTime(Long l10) {
        this.receiveTime = l10;
    }

    public final void setRefresh(boolean z10) {
        this.isRefresh = z10;
    }

    public final void setShowTime(Long l10) {
        this.showTime = l10;
    }

    public final void setSource(String str) {
        this.source = str;
    }

    public final void setStyle(String str) {
        this.style = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setTriggerSource(int i10) {
        this.triggerSource = i10;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "MsgBean(id=" + this.id + ", deeplink=" + this.deeplink + ", desc=" + this.desc + ", imageList=" + this.imageList + ", messageId=" + this.messageId + ", source=" + this.source + ", style=" + this.style + ", title=" + this.title + ", type=" + this.type + ", receiveTime=" + this.receiveTime + ", msgStatus=" + this.msgStatus + ", showTime=" + this.showTime + ", forceShow=" + this.forceShow + ", hasScreenOn=" + this.hasScreenOn + ", builtIn=" + this.builtIn + ", permanentMsgStatus=" + this.permanentMsgStatus + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.id);
        dest.writeString(this.deeplink);
        dest.writeString(this.desc);
        dest.writeString(this.imageList);
        dest.writeString(this.messageId);
        dest.writeString(this.source);
        dest.writeString(this.style);
        dest.writeString(this.title);
        dest.writeString(this.type);
        Long l10 = this.receiveTime;
        if (l10 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l10.longValue());
        }
        dest.writeInt(this.msgStatus);
        Long l11 = this.showTime;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        dest.writeInt(this.forceShow ? 1 : 0);
        dest.writeInt(this.hasScreenOn ? 1 : 0);
        dest.writeInt(this.builtIn ? 1 : 0);
        dest.writeInt(this.permanentMsgStatus);
    }

    public MsgBean(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Long l10, int i11, Long l11, boolean z10, boolean z11, boolean z12, int i12) {
        this.id = i10;
        this.deeplink = str;
        this.desc = str2;
        this.imageList = str3;
        this.messageId = str4;
        this.source = str5;
        this.style = str6;
        this.title = str7;
        this.type = str8;
        this.receiveTime = l10;
        this.msgStatus = i11;
        this.showTime = l11;
        this.forceShow = z10;
        this.hasScreenOn = z11;
        this.builtIn = z12;
        this.permanentMsgStatus = i12;
        this.permanentMsgPosition = 1;
        this.permanentMsgSize = 1;
    }

    public MsgBean(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Long l10, int i11, Long l11, boolean z10, boolean z11, boolean z12, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i10, (i13 & 2) != 0 ? null : str, (i13 & 4) != 0 ? null : str2, (i13 & 8) != 0 ? null : str3, (i13 & 16) != 0 ? null : str4, (i13 & 32) != 0 ? null : str5, (i13 & 64) != 0 ? null : str6, (i13 & 128) != 0 ? null : str7, (i13 & 256) == 0 ? str8 : null, (i13 & 512) != 0 ? 0L : l10, (i13 & 1024) != 0 ? 0 : i11, (i13 & 2048) != 0 ? 0L : l11, (i13 & 4096) != 0 ? false : z10, (i13 & 8192) != 0 ? false : z11, (i13 & 16384) != 0 ? false : z12, (i13 & 32768) != 0 ? 0 : i12);
    }
}
