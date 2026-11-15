package com.transsion.bean.lottery;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003Jn\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\"J\u0006\u0010#\u001a\u00020\u0006J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020\u0006HÖ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\u0016\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u0006R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000f¨\u0006/"}, d2 = {"Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;", "Landroid/os/Parcelable;", "id", "", "name", NotificationCompat.CATEGORY_STATUS, "", "startTime", "endTime", "attendUserNum", "link", "attendRule", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getName", "getStatus", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStartTime", "getEndTime", "getAttendUserNum", "getLink", "getAttendRule", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LotteryUserActivityInfoActivityBean implements Parcelable {
    public static final Parcelable.Creator<LotteryUserActivityInfoActivityBean> CREATOR = new a();
    private final String attendRule;
    private final String attendUserNum;
    private final String endTime;
    private final String id;
    private final String link;
    private final String name;
    private final String startTime;
    private final Integer status;

    public static final class a implements Parcelable.Creator {
        @Override
        public final LotteryUserActivityInfoActivityBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new LotteryUserActivityInfoActivityBean(parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override
        public final LotteryUserActivityInfoActivityBean[] newArray(int i10) {
            return new LotteryUserActivityInfoActivityBean[i10];
        }
    }

    public LotteryUserActivityInfoActivityBean() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getStatus() {
        return this.status;
    }

    public final String getStartTime() {
        return this.startTime;
    }

    public final String getEndTime() {
        return this.endTime;
    }

    public final String getAttendUserNum() {
        return this.attendUserNum;
    }

    public final String getLink() {
        return this.link;
    }

    public final String getAttendRule() {
        return this.attendRule;
    }

    public final LotteryUserActivityInfoActivityBean copy(String id2, String name, Integer status, String startTime, String endTime, String attendUserNum, String link, String attendRule) {
        return new LotteryUserActivityInfoActivityBean(id2, name, status, startTime, endTime, attendUserNum, link, attendRule);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LotteryUserActivityInfoActivityBean)) {
            return false;
        }
        LotteryUserActivityInfoActivityBean lotteryUserActivityInfoActivityBean = (LotteryUserActivityInfoActivityBean) other;
        return Intrinsics.c(this.id, lotteryUserActivityInfoActivityBean.id) && Intrinsics.c(this.name, lotteryUserActivityInfoActivityBean.name) && Intrinsics.c(this.status, lotteryUserActivityInfoActivityBean.status) && Intrinsics.c(this.startTime, lotteryUserActivityInfoActivityBean.startTime) && Intrinsics.c(this.endTime, lotteryUserActivityInfoActivityBean.endTime) && Intrinsics.c(this.attendUserNum, lotteryUserActivityInfoActivityBean.attendUserNum) && Intrinsics.c(this.link, lotteryUserActivityInfoActivityBean.link) && Intrinsics.c(this.attendRule, lotteryUserActivityInfoActivityBean.attendRule);
    }

    public final String getAttendRule() {
        return this.attendRule;
    }

    public final String getAttendUserNum() {
        return this.attendUserNum;
    }

    public final String getEndTime() {
        return this.endTime;
    }

    public final String getId() {
        return this.id;
    }

    public final String getLink() {
        return this.link;
    }

    public final String getName() {
        return this.name;
    }

    public final String getStartTime() {
        return this.startTime;
    }

    public final Integer getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.status;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.startTime;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.endTime;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.attendUserNum;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.link;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.attendRule;
        return iHashCode7 + (str7 != null ? str7.hashCode() : 0);
    }

    public String toString() {
        return "LotteryUserActivityInfoActivityBean(id=" + this.id + ", name=" + this.name + ", status=" + this.status + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", attendUserNum=" + this.attendUserNum + ", link=" + this.link + ", attendRule=" + this.attendRule + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeString(this.name);
        Integer num = this.status;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
        dest.writeString(this.startTime);
        dest.writeString(this.endTime);
        dest.writeString(this.attendUserNum);
        dest.writeString(this.link);
        dest.writeString(this.attendRule);
    }

    public LotteryUserActivityInfoActivityBean(String str, String str2, Integer num, String str3, String str4, String str5, String str6, String str7) {
        this.id = str;
        this.name = str2;
        this.status = num;
        this.startTime = str3;
        this.endTime = str4;
        this.attendUserNum = str5;
        this.link = str6;
        this.attendRule = str7;
    }

    public LotteryUserActivityInfoActivityBean(String str, String str2, Integer num, String str3, String str4, String str5, String str6, String str7, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : num, (i10 & 8) != 0 ? null : str3, (i10 & 16) != 0 ? null : str4, (i10 & 32) != 0 ? null : str5, (i10 & 64) != 0 ? null : str6, (i10 & 128) == 0 ? str7 : null);
    }
}
