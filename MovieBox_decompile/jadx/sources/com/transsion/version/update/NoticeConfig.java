package com.transsion.version.update;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÆ\u0003JO\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0007HÆ\u0001J\u0006\u0010 \u001a\u00020\u0003J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020\u0003HÖ\u0001J\t\u0010&\u001a\u00020\u0007HÖ\u0001J\u0016\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013¨\u0006,"}, d2 = {"Lcom/transsion/version/update/NoticeConfig;", "Landroid/os/Parcelable;", "notifyTimes", "", "notifyInterval", "", "silentPolicy", "", "updateDesc", "updateTitle", "updateVersionCode", "updateVersionName", "<init>", "(IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "getNotifyTimes", "()I", "getNotifyInterval", "()F", "getSilentPolicy", "()Ljava/lang/String;", "getUpdateDesc", "getUpdateTitle", "getUpdateVersionCode", "getUpdateVersionName", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Update_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NoticeConfig implements Parcelable {
    public static final Parcelable.Creator<NoticeConfig> CREATOR = new a();
    private final float notifyInterval;
    private final int notifyTimes;
    private final String silentPolicy;
    private final String updateDesc;
    private final String updateTitle;
    private final int updateVersionCode;
    private final String updateVersionName;

    public static final class a implements Parcelable.Creator {
        @Override
        public final NoticeConfig createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new NoticeConfig(parcel.readInt(), parcel.readFloat(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString());
        }

        @Override
        public final NoticeConfig[] newArray(int i10) {
            return new NoticeConfig[i10];
        }
    }

    public NoticeConfig(int i10, float f10, String silentPolicy, String updateDesc, String updateTitle, int i11, String updateVersionName) {
        Intrinsics.h(silentPolicy, "silentPolicy");
        Intrinsics.h(updateDesc, "updateDesc");
        Intrinsics.h(updateTitle, "updateTitle");
        Intrinsics.h(updateVersionName, "updateVersionName");
        this.notifyTimes = i10;
        this.notifyInterval = f10;
        this.silentPolicy = silentPolicy;
        this.updateDesc = updateDesc;
        this.updateTitle = updateTitle;
        this.updateVersionCode = i11;
        this.updateVersionName = updateVersionName;
    }

    public static NoticeConfig copy$default(NoticeConfig noticeConfig, int i10, float f10, String str, String str2, String str3, int i11, String str4, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = noticeConfig.notifyTimes;
        }
        if ((i12 & 2) != 0) {
            f10 = noticeConfig.notifyInterval;
        }
        float f11 = f10;
        if ((i12 & 4) != 0) {
            str = noticeConfig.silentPolicy;
        }
        String str5 = str;
        if ((i12 & 8) != 0) {
            str2 = noticeConfig.updateDesc;
        }
        String str6 = str2;
        if ((i12 & 16) != 0) {
            str3 = noticeConfig.updateTitle;
        }
        String str7 = str3;
        if ((i12 & 32) != 0) {
            i11 = noticeConfig.updateVersionCode;
        }
        int i13 = i11;
        if ((i12 & 64) != 0) {
            str4 = noticeConfig.updateVersionName;
        }
        return noticeConfig.copy(i10, f11, str5, str6, str7, i13, str4);
    }

    public final int getNotifyTimes() {
        return this.notifyTimes;
    }

    public final float getNotifyInterval() {
        return this.notifyInterval;
    }

    public final String getSilentPolicy() {
        return this.silentPolicy;
    }

    public final String getUpdateDesc() {
        return this.updateDesc;
    }

    public final String getUpdateTitle() {
        return this.updateTitle;
    }

    public final int getUpdateVersionCode() {
        return this.updateVersionCode;
    }

    public final String getUpdateVersionName() {
        return this.updateVersionName;
    }

    public final NoticeConfig copy(int notifyTimes, float notifyInterval, String silentPolicy, String updateDesc, String updateTitle, int updateVersionCode, String updateVersionName) {
        Intrinsics.h(silentPolicy, "silentPolicy");
        Intrinsics.h(updateDesc, "updateDesc");
        Intrinsics.h(updateTitle, "updateTitle");
        Intrinsics.h(updateVersionName, "updateVersionName");
        return new NoticeConfig(notifyTimes, notifyInterval, silentPolicy, updateDesc, updateTitle, updateVersionCode, updateVersionName);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NoticeConfig)) {
            return false;
        }
        NoticeConfig noticeConfig = (NoticeConfig) other;
        return this.notifyTimes == noticeConfig.notifyTimes && Float.compare(this.notifyInterval, noticeConfig.notifyInterval) == 0 && Intrinsics.c(this.silentPolicy, noticeConfig.silentPolicy) && Intrinsics.c(this.updateDesc, noticeConfig.updateDesc) && Intrinsics.c(this.updateTitle, noticeConfig.updateTitle) && this.updateVersionCode == noticeConfig.updateVersionCode && Intrinsics.c(this.updateVersionName, noticeConfig.updateVersionName);
    }

    public final float getNotifyInterval() {
        return this.notifyInterval;
    }

    public final int getNotifyTimes() {
        return this.notifyTimes;
    }

    public final String getSilentPolicy() {
        return this.silentPolicy;
    }

    public final String getUpdateDesc() {
        return this.updateDesc;
    }

    public final String getUpdateTitle() {
        return this.updateTitle;
    }

    public final int getUpdateVersionCode() {
        return this.updateVersionCode;
    }

    public final String getUpdateVersionName() {
        return this.updateVersionName;
    }

    public int hashCode() {
        return (((((((((((this.notifyTimes * 31) + Float.floatToIntBits(this.notifyInterval)) * 31) + this.silentPolicy.hashCode()) * 31) + this.updateDesc.hashCode()) * 31) + this.updateTitle.hashCode()) * 31) + this.updateVersionCode) * 31) + this.updateVersionName.hashCode();
    }

    public String toString() {
        return "NoticeConfig(notifyTimes=" + this.notifyTimes + ", notifyInterval=" + this.notifyInterval + ", silentPolicy=" + this.silentPolicy + ", updateDesc=" + this.updateDesc + ", updateTitle=" + this.updateTitle + ", updateVersionCode=" + this.updateVersionCode + ", updateVersionName=" + this.updateVersionName + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.notifyTimes);
        dest.writeFloat(this.notifyInterval);
        dest.writeString(this.silentPolicy);
        dest.writeString(this.updateDesc);
        dest.writeString(this.updateTitle);
        dest.writeInt(this.updateVersionCode);
        dest.writeString(this.updateVersionName);
    }

    public NoticeConfig(int i10, float f10, String str, String str2, String str3, int i11, String str4, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 3 : i10, f10, str, str2, str3, i11, str4);
    }
}
