package com.cloud.hisavana.abtestkit.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0001$B9\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0017\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003JJ\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0016J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0018HÖ\u0001J\t\u0010\u001e\u001a\u00020\bHÖ\u0001J\u0019\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0018HÖ\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u001f\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u000f\u0010\u000bR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u0010\u0010\u000b¨\u0006%"}, d2 = {"Lcom/cloud/hisavana/abtestkit/bean/ABVariant;", "Landroid/os/Parcelable;", "layerId", "", "expId", "subExpId", "info", "", "", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V", "getExpId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getInfo", "()Ljava/util/Map;", "getLayerId", "getSubExpId", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Lcom/cloud/hisavana/abtestkit/bean/ABVariant;", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Companion", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ABVariant implements Parcelable {
    private final Long expId;
    private final Map<String, String> info;
    private final Long layerId;
    private final Long subExpId;

    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<ABVariant> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;", "", "()V", "initFromSubExpInfo", "Lcom/cloud/hisavana/abtestkit/bean/ABVariant;", "layerId", "", "info", "Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;", "(Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;)Lcom/cloud/hisavana/abtestkit/bean/ABVariant;", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ABVariant initFromSubExpInfo(Long layerId, ABSubExpInfo info) {
            Intrinsics.h(info, "info");
            return new ABVariant(layerId, info.getExpId(), info.getVarId(), info.getInfo());
        }

        private Companion() {
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<ABVariant> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABVariant createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            LinkedHashMap linkedHashMap = null;
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf3 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() != 0) {
                int i10 = parcel.readInt();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(i10);
                for (int i11 = 0; i11 != i10; i11++) {
                    linkedHashMap2.put(parcel.readString(), parcel.readString());
                }
                linkedHashMap = linkedHashMap2;
            }
            return new ABVariant(lValueOf, lValueOf2, lValueOf3, linkedHashMap);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABVariant[] newArray(int i10) {
            return new ABVariant[i10];
        }
    }

    public ABVariant(Long l10, Long l11, Long l12, Map<String, String> map) {
        this.layerId = l10;
        this.expId = l11;
        this.subExpId = l12;
        this.info = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ABVariant copy$default(ABVariant aBVariant, Long l10, Long l11, Long l12, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l10 = aBVariant.layerId;
        }
        if ((i10 & 2) != 0) {
            l11 = aBVariant.expId;
        }
        if ((i10 & 4) != 0) {
            l12 = aBVariant.subExpId;
        }
        if ((i10 & 8) != 0) {
            map = aBVariant.info;
        }
        return aBVariant.copy(l10, l11, l12, map);
    }

    public final Long getLayerId() {
        return this.layerId;
    }

    public final Long getExpId() {
        return this.expId;
    }

    public final Long getSubExpId() {
        return this.subExpId;
    }

    public final Map<String, String> component4() {
        return this.info;
    }

    public final ABVariant copy(Long layerId, Long expId, Long subExpId, Map<String, String> info) {
        return new ABVariant(layerId, expId, subExpId, info);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ABVariant)) {
            return false;
        }
        ABVariant aBVariant = (ABVariant) other;
        return Intrinsics.c(this.layerId, aBVariant.layerId) && Intrinsics.c(this.expId, aBVariant.expId) && Intrinsics.c(this.subExpId, aBVariant.subExpId) && Intrinsics.c(this.info, aBVariant.info);
    }

    public final Long getExpId() {
        return this.expId;
    }

    public final Map<String, String> getInfo() {
        return this.info;
    }

    public final Long getLayerId() {
        return this.layerId;
    }

    public final Long getSubExpId() {
        return this.subExpId;
    }

    public int hashCode() {
        Long l10 = this.layerId;
        int iHashCode = (l10 == null ? 0 : l10.hashCode()) * 31;
        Long l11 = this.expId;
        int iHashCode2 = (iHashCode + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.subExpId;
        int iHashCode3 = (iHashCode2 + (l12 == null ? 0 : l12.hashCode())) * 31;
        Map<String, String> map = this.info;
        return iHashCode3 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "ABVariant(layerId=" + this.layerId + ", expId=" + this.expId + ", subExpId=" + this.subExpId + ", info=" + this.info + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        Long l10 = this.layerId;
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
        Long l12 = this.subExpId;
        if (l12 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l12.longValue());
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
