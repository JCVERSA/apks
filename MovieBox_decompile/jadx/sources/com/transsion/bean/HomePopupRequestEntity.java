package com.transsion.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J.\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u0006J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\u0016\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006&"}, d2 = {"Lcom/transsion/bean/HomePopupRequestEntity;", "Landroid/os/Parcelable;", "id", "", "ts", "count", "", "<init>", "(JLjava/lang/Long;I)V", "getId", "()J", "getTs", "()Ljava/lang/Long;", "setTs", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getCount", "()I", "setCount", "(I)V", "component1", "component2", "component3", "copy", "(JLjava/lang/Long;I)Lcom/transsion/bean/HomePopupRequestEntity;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HomePopupRequestEntity implements Parcelable {
    public static final Parcelable.Creator<HomePopupRequestEntity> CREATOR = new a();
    private int count;
    private final long id;
    private Long ts;

    public static final class a implements Parcelable.Creator {
        @Override
        public final HomePopupRequestEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new HomePopupRequestEntity(parcel.readLong(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt());
        }

        @Override
        public final HomePopupRequestEntity[] newArray(int i10) {
            return new HomePopupRequestEntity[i10];
        }
    }

    public HomePopupRequestEntity(long j10, Long l10, int i10) {
        this.id = j10;
        this.ts = l10;
        this.count = i10;
    }

    public static HomePopupRequestEntity copy$default(HomePopupRequestEntity homePopupRequestEntity, long j10, Long l10, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j10 = homePopupRequestEntity.id;
        }
        if ((i11 & 2) != 0) {
            l10 = homePopupRequestEntity.ts;
        }
        if ((i11 & 4) != 0) {
            i10 = homePopupRequestEntity.count;
        }
        return homePopupRequestEntity.copy(j10, l10, i10);
    }

    public final long getId() {
        return this.id;
    }

    public final Long getTs() {
        return this.ts;
    }

    public final int getCount() {
        return this.count;
    }

    public final HomePopupRequestEntity copy(long id2, Long ts2, int count) {
        return new HomePopupRequestEntity(id2, ts2, count);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomePopupRequestEntity)) {
            return false;
        }
        HomePopupRequestEntity homePopupRequestEntity = (HomePopupRequestEntity) other;
        return this.id == homePopupRequestEntity.id && Intrinsics.c(this.ts, homePopupRequestEntity.ts) && this.count == homePopupRequestEntity.count;
    }

    public final int getCount() {
        return this.count;
    }

    public final long getId() {
        return this.id;
    }

    public final Long getTs() {
        return this.ts;
    }

    public int hashCode() {
        int iA = s.a(this.id) * 31;
        Long l10 = this.ts;
        return ((iA + (l10 == null ? 0 : l10.hashCode())) * 31) + this.count;
    }

    public final void setCount(int i10) {
        this.count = i10;
    }

    public final void setTs(Long l10) {
        this.ts = l10;
    }

    public String toString() {
        return "HomePopupRequestEntity(id=" + this.id + ", ts=" + this.ts + ", count=" + this.count + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeLong(this.id);
        Long l10 = this.ts;
        if (l10 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l10.longValue());
        }
        dest.writeInt(this.count);
    }
}
