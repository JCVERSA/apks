package com.transsion.baselib.db.notification;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b#\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003J[\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0006\u0010'\u001a\u00020\u0003J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020\u0003HÖ\u0001J\t\u0010-\u001a\u00020\u0005HÖ\u0001J\u0016\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R \u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0012\"\u0004\b\u001e\u0010\u0014¨\u00063"}, d2 = {"Lcom/transsion/baselib/db/notification/PermanentMsgBean;", "Landroid/os/Parcelable;", "id", "", "deeplinkList", "", CampaignEx.JSON_KEY_DESC, "imageList", "messageId", TtmlNode.TAG_STYLE, CampaignEx.JSON_KEY_TITLE, "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()I", "setId", "(I)V", "getDeeplinkList", "()Ljava/lang/String;", "setDeeplinkList", "(Ljava/lang/String;)V", "getDesc", "setDesc", "getImageList", "setImageList", "getMessageId", "setMessageId", "getStyle", "setStyle", "getTitle", "setTitle", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PermanentMsgBean implements Parcelable {
    public static final Parcelable.Creator<PermanentMsgBean> CREATOR = new a();
    private String deeplinkList;
    private String desc;
    private int id;
    private String imageList;
    private String messageId;
    private String style;
    private String title;

    public static final class a implements Parcelable.Creator {
        @Override
        public final PermanentMsgBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PermanentMsgBean(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override
        public final PermanentMsgBean[] newArray(int i10) {
            return new PermanentMsgBean[i10];
        }
    }

    public PermanentMsgBean(int i10, String str, String str2, String str3, String str4, String str5, String str6) {
        this.id = i10;
        this.deeplinkList = str;
        this.desc = str2;
        this.imageList = str3;
        this.messageId = str4;
        this.style = str5;
        this.title = str6;
    }

    public static PermanentMsgBean copy$default(PermanentMsgBean permanentMsgBean, int i10, String str, String str2, String str3, String str4, String str5, String str6, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = permanentMsgBean.id;
        }
        if ((i11 & 2) != 0) {
            str = permanentMsgBean.deeplinkList;
        }
        String str7 = str;
        if ((i11 & 4) != 0) {
            str2 = permanentMsgBean.desc;
        }
        String str8 = str2;
        if ((i11 & 8) != 0) {
            str3 = permanentMsgBean.imageList;
        }
        String str9 = str3;
        if ((i11 & 16) != 0) {
            str4 = permanentMsgBean.messageId;
        }
        String str10 = str4;
        if ((i11 & 32) != 0) {
            str5 = permanentMsgBean.style;
        }
        String str11 = str5;
        if ((i11 & 64) != 0) {
            str6 = permanentMsgBean.title;
        }
        return permanentMsgBean.copy(i10, str7, str8, str9, str10, str11, str6);
    }

    public final int getId() {
        return this.id;
    }

    public final String getDeeplinkList() {
        return this.deeplinkList;
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

    public final String getStyle() {
        return this.style;
    }

    public final String getTitle() {
        return this.title;
    }

    public final PermanentMsgBean copy(int id2, String deeplinkList, String desc, String imageList, String messageId, String style, String title) {
        return new PermanentMsgBean(id2, deeplinkList, desc, imageList, messageId, style, title);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PermanentMsgBean)) {
            return false;
        }
        PermanentMsgBean permanentMsgBean = (PermanentMsgBean) other;
        return this.id == permanentMsgBean.id && Intrinsics.c(this.deeplinkList, permanentMsgBean.deeplinkList) && Intrinsics.c(this.desc, permanentMsgBean.desc) && Intrinsics.c(this.imageList, permanentMsgBean.imageList) && Intrinsics.c(this.messageId, permanentMsgBean.messageId) && Intrinsics.c(this.style, permanentMsgBean.style) && Intrinsics.c(this.title, permanentMsgBean.title);
    }

    public final String getDeeplinkList() {
        return this.deeplinkList;
    }

    public final String getDesc() {
        return this.desc;
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

    public final String getStyle() {
        return this.style;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int i10 = this.id * 31;
        String str = this.deeplinkList;
        int iHashCode = (i10 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.desc;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.imageList;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.messageId;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.style;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.title;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public final void setDeeplinkList(String str) {
        this.deeplinkList = str;
    }

    public final void setDesc(String str) {
        this.desc = str;
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

    public final void setStyle(String str) {
        this.style = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "PermanentMsgBean(id=" + this.id + ", deeplinkList=" + this.deeplinkList + ", desc=" + this.desc + ", imageList=" + this.imageList + ", messageId=" + this.messageId + ", style=" + this.style + ", title=" + this.title + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.id);
        dest.writeString(this.deeplinkList);
        dest.writeString(this.desc);
        dest.writeString(this.imageList);
        dest.writeString(this.messageId);
        dest.writeString(this.style);
        dest.writeString(this.title);
    }

    public PermanentMsgBean(int i10, String str, String str2, String str3, String str4, String str5, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10, str, str2, str3, str4, str5, str6);
    }
}
