package com.cloud.hisavana.sdk.data.bean.response.ccofig;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import defpackage.y45;
import java.util.ArrayList;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u001c\b\u0002\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u000eJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0011J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u000eJ$\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\tHÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J^\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u001c\b\u0002\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\tHÆ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0019\u001a\u00020\u0018HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u001a\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bHÖ\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0018HÖ\u0001¢\u0006\u0004\b \u0010\u001aJ \u0010%\u001a\u00020$2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u0018HÖ\u0001¢\u0006\u0004\b%\u0010&R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010'\u001a\u0004\b(\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u0010)\u001a\u0004\b*\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010)\u001a\u0004\b+\u0010\u0011R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010'\u001a\u0004\b,\u0010\u000eR.\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\t8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010-\u001a\u0004\b.\u0010\u0015¨\u0006/"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;", "Landroid/os/Parcelable;", "", "abName", "", "layerId", "reqInterval", ClientABTestDTOKt.SWITCH, "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", ClientABTestDTOKt.TRACK_EVENT, MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)V", "toString", "()Ljava/lang/String;", "component1", "component2", "()Ljava/lang/Long;", "component3", "component4", "component5", "()Ljava/util/ArrayList;", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getAbName", "Ljava/lang/Long;", "getLayerId", "getReqInterval", "getSwitch", "Ljava/util/ArrayList;", "getTrackEvent", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ABTest> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABTest createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new ABTest(parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.createStringArrayList());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABTest[] newArray(int i) {
            return new ABTest[i];
        }
    }

    public ABTest() {
        this(null, null, null, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ABTest copy$default(ABTest aBTest, String str, Long l, Long l2, String str2, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            str = aBTest.abName;
        }
        if ((i & 2) != 0) {
            l = aBTest.layerId;
        }
        Long l3 = l;
        if ((i & 4) != 0) {
            l2 = aBTest.reqInterval;
        }
        Long l4 = l2;
        if ((i & 8) != 0) {
            str2 = aBTest.switch;
        }
        String str3 = str2;
        if ((i & 16) != 0) {
            arrayList = aBTest.trackEventList;
        }
        return aBTest.copy(str, l3, l4, str3, arrayList);
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
        return y45.e(this.abName, aBTest.abName) && y45.e(this.layerId, aBTest.layerId) && y45.e(this.reqInterval, aBTest.reqInterval) && y45.e(this.switch, aBTest.switch) && y45.e(this.trackEventList, aBTest.trackEventList);
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
        Long l = this.layerId;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.reqInterval;
        int iHashCode3 = (iHashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31;
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
        y45.j(parcel, "out");
        parcel.writeString(this.abName);
        Long l = this.layerId;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l.longValue());
        }
        Long l2 = this.reqInterval;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l2.longValue());
        }
        parcel.writeString(this.switch);
        parcel.writeStringList(this.trackEventList);
    }

    public ABTest(String str, Long l, Long l2, String str2, ArrayList<String> arrayList) {
        this.abName = str;
        this.layerId = l;
        this.reqInterval = l2;
        this.switch = str2;
        this.trackEventList = arrayList;
    }

    public ABTest(String str, Long l, Long l2, String str2, ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : l2, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : arrayList);
    }
}
