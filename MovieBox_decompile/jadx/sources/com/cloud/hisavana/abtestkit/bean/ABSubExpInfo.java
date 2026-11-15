package com.cloud.hisavana.abtestkit.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0002\u0010\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006HÆ\u0003J\u0017\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003JP\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00062\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0018J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\u001aHÖ\u0001J\b\u0010 \u001a\u00020\tH\u0016J\u0019\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001aHÖ\u0001R\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR$\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0012\u0010\u000e¨\u0006&"}, d2 = {"Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;", "Landroid/os/Parcelable;", "varId", "", "expId", "buckets", "", "info", "", "", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/Map;)V", "getBuckets", "()Ljava/util/List;", "getExpId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getInfo", "()Ljava/util/Map;", "getVarId", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/Map;)Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ABSubExpInfo implements Parcelable {
    public static final Parcelable.Creator<ABSubExpInfo> CREATOR = new Creator();

    @SerializedName("buckets")
    private final List<Long> buckets;

    @SerializedName("exp_id")
    private final Long expId;

    @SerializedName("info")
    private final Map<String, String> info;

    @SerializedName("var_id")
    private final Long varId;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<ABSubExpInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABSubExpInfo createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            LinkedHashMap linkedHashMap = null;
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i10 = parcel.readInt();
                arrayList = new ArrayList(i10);
                for (int i11 = 0; i11 != i10; i11++) {
                    arrayList.add(Long.valueOf(parcel.readLong()));
                }
            }
            if (parcel.readInt() != 0) {
                int i12 = parcel.readInt();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(i12);
                for (int i13 = 0; i13 != i12; i13++) {
                    linkedHashMap2.put(parcel.readString(), parcel.readString());
                }
                linkedHashMap = linkedHashMap2;
            }
            return new ABSubExpInfo(lValueOf, lValueOf2, arrayList, linkedHashMap);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABSubExpInfo[] newArray(int i10) {
            return new ABSubExpInfo[i10];
        }
    }

    public ABSubExpInfo(Long l10, Long l11, List<Long> list, Map<String, String> map) {
        this.varId = l10;
        this.expId = l11;
        this.buckets = list;
        this.info = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ABSubExpInfo copy$default(ABSubExpInfo aBSubExpInfo, Long l10, Long l11, List list, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l10 = aBSubExpInfo.varId;
        }
        if ((i10 & 2) != 0) {
            l11 = aBSubExpInfo.expId;
        }
        if ((i10 & 4) != 0) {
            list = aBSubExpInfo.buckets;
        }
        if ((i10 & 8) != 0) {
            map = aBSubExpInfo.info;
        }
        return aBSubExpInfo.copy(l10, l11, list, map);
    }

    public final Long getVarId() {
        return this.varId;
    }

    public final Long getExpId() {
        return this.expId;
    }

    public final List<Long> component3() {
        return this.buckets;
    }

    public final Map<String, String> component4() {
        return this.info;
    }

    public final ABSubExpInfo copy(Long varId, Long expId, List<Long> buckets, Map<String, String> info) {
        return new ABSubExpInfo(varId, expId, buckets, info);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ABSubExpInfo)) {
            return false;
        }
        ABSubExpInfo aBSubExpInfo = (ABSubExpInfo) other;
        return Intrinsics.c(this.varId, aBSubExpInfo.varId) && Intrinsics.c(this.expId, aBSubExpInfo.expId) && Intrinsics.c(this.buckets, aBSubExpInfo.buckets) && Intrinsics.c(this.info, aBSubExpInfo.info);
    }

    public final List<Long> getBuckets() {
        return this.buckets;
    }

    public final Long getExpId() {
        return this.expId;
    }

    public final Map<String, String> getInfo() {
        return this.info;
    }

    public final Long getVarId() {
        return this.varId;
    }

    public int hashCode() {
        Long l10 = this.varId;
        int iHashCode = (l10 == null ? 0 : l10.hashCode()) * 31;
        Long l11 = this.expId;
        int iHashCode2 = (iHashCode + (l11 == null ? 0 : l11.hashCode())) * 31;
        List<Long> list = this.buckets;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        Map<String, String> map = this.info;
        return iHashCode3 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "ABSubExpInfo(varId=" + this.varId + ", expId=" + this.expId + ", buckets=" + this.buckets + ", info=" + this.info + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        Long l10 = this.varId;
        if (l10 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l10.longValue());
        }
        Long l11 = this.expId;
        if (l11 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l11.longValue());
        }
        List<Long> list = this.buckets;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator<Long> it = list.iterator();
            while (it.hasNext()) {
                parcel.writeLong(it.next().longValue());
            }
        }
        Map<String, String> map = this.info;
        if (map == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }
}
