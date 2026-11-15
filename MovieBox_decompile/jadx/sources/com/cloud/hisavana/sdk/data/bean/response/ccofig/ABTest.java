package com.cloud.hisavana.sdk.data.bean.response.ccofig;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BS\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u001c\b\u0002\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\n¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001d\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\nHÆ\u0003J\\\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u001c\b\u0002\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\nHÆ\u0001¢\u0006\u0002\u0010\u001bJ\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u001dHÖ\u0001J\b\u0010#\u001a\u00020\u0003H\u0016J\u0019\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u001dHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\u000fR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR*\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006)"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;", "Landroid/os/Parcelable;", "abName", "", "layerId", "", "reqInterval", ClientABTestDTOKt.SWITCH, ClientABTestDTOKt.TRACK_EVENT, "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)V", "getAbName", "()Ljava/lang/String;", "getLayerId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getReqInterval", "getSwitch", "getTrackEvent", "()Ljava/util/ArrayList;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ABTest implements Parcelable {
    public static final Parcelable.Creator<ABTest> CREATOR = new Creator();

    @SerializedName(ClientABTestDTOKt.AB_NAME)
    private final String abName;

    @SerializedName(ClientABTestDTOKt.LAYER_ID)
    private final Long layerId;

    @SerializedName(ClientABTestDTOKt.REQ_INTERVAL)
    private final Long reqInterval;

    @SerializedName(ClientABTestDTOKt.SWITCH)
    private final String switch;

    @SerializedName(ClientABTestDTOKt.TRACK_EVENT)
    private final ArrayList<String> trackEventList;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<ABTest> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABTest createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ABTest(parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.createStringArrayList());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABTest[] newArray(int i10) {
            return new ABTest[i10];
        }
    }

    public ABTest() {
        this(null, null, null, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ABTest copy$default(ABTest aBTest, String str, Long l10, Long l11, String str2, ArrayList arrayList, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = aBTest.abName;
        }
        if ((i10 & 2) != 0) {
            l10 = aBTest.layerId;
        }
        Long l12 = l10;
        if ((i10 & 4) != 0) {
            l11 = aBTest.reqInterval;
        }
        Long l13 = l11;
        if ((i10 & 8) != 0) {
            str2 = aBTest.switch;
        }
        String str3 = str2;
        if ((i10 & 16) != 0) {
            arrayList = aBTest.trackEventList;
        }
        return aBTest.copy(str, l12, l13, str3, arrayList);
    }

    public final String getAbName() {
        return this.abName;
    }

    public final Long getLayerId() {
        return this.layerId;
    }

    public final Long getReqInterval() {
        return this.reqInterval;
    }

    public final String getSwitch() {
        return this.switch;
    }

    public final ArrayList<String> component5() {
        return this.trackEventList;
    }

    public final ABTest copy(String abName, Long layerId, Long reqInterval, String str, ArrayList<String> trackEvent) {
        return new ABTest(abName, layerId, reqInterval, str, trackEvent);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ABTest)) {
            return false;
        }
        ABTest aBTest = (ABTest) other;
        return Intrinsics.c(this.abName, aBTest.abName) && Intrinsics.c(this.layerId, aBTest.layerId) && Intrinsics.c(this.reqInterval, aBTest.reqInterval) && Intrinsics.c(this.switch, aBTest.switch) && Intrinsics.c(this.trackEventList, aBTest.trackEventList);
    }

    public final String getAbName() {
        return this.abName;
    }

    public final Long getLayerId() {
        return this.layerId;
    }

    public final Long getReqInterval() {
        return this.reqInterval;
    }

    public final String getSwitch() {
        return this.switch;
    }

    public final ArrayList<String> getTrackEvent() {
        return this.trackEventList;
    }

    public int hashCode() {
        String str = this.abName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l10 = this.layerId;
        int iHashCode2 = (iHashCode + (l10 == null ? 0 : l10.hashCode())) * 31;
        Long l11 = this.reqInterval;
        int iHashCode3 = (iHashCode2 + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str2 = this.switch;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        ArrayList<String> arrayList = this.trackEventList;
        return iHashCode4 + (arrayList != null ? arrayList.hashCode() : 0);
    }

    public String toString() {
        return "ABTest(abName=" + this.abName + ", layerId=" + this.layerId + ", reqInterval=" + this.reqInterval + ", switch=" + this.switch + ", trackEventList=" + this.trackEventList + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.abName);
        Long l10 = this.layerId;
        if (l10 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l10.longValue());
        }
        Long l11 = this.reqInterval;
        if (l11 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l11.longValue());
        }
        parcel.writeString(this.switch);
        parcel.writeStringList(this.trackEventList);
    }

    public ABTest(String str, Long l10, Long l11, String str2, ArrayList<String> arrayList) {
        this.abName = str;
        this.layerId = l10;
        this.reqInterval = l11;
        this.switch = str2;
        this.trackEventList = arrayList;
    }

    public ABTest(String str, Long l10, Long l11, String str2, ArrayList arrayList, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : l10, (i10 & 4) != 0 ? null : l11, (i10 & 8) != 0 ? null : str2, (i10 & 16) != 0 ? null : arrayList);
    }
}
