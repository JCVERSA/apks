package com.transsion.memberapi;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J;\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\bHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000e\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013¨\u0006 "}, d2 = {"Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;", "Ljava/io/Serializable;", "date", "", "isToday", "", "hasCheckIn", "rewardType", "", "rewardAmount", "<init>", "(Ljava/lang/String;ZZII)V", "getDate", "()Ljava/lang/String;", "()Z", "getHasCheckIn", "setHasCheckIn", "(Z)V", "getRewardType", "()I", "getRewardAmount", "component1", "component2", "component3", "component4", "component5", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MemberTaskItemCheckInInfo implements Serializable {
    private final String date;
    private boolean hasCheckIn;
    private final boolean isToday;
    private final int rewardAmount;
    private final int rewardType;

    public MemberTaskItemCheckInInfo(String date, boolean z10, boolean z11, int i10, int i11) {
        Intrinsics.h(date, "date");
        this.date = date;
        this.isToday = z10;
        this.hasCheckIn = z11;
        this.rewardType = i10;
        this.rewardAmount = i11;
    }

    public static MemberTaskItemCheckInInfo copy$default(MemberTaskItemCheckInInfo memberTaskItemCheckInInfo, String str, boolean z10, boolean z11, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = memberTaskItemCheckInInfo.date;
        }
        if ((i12 & 2) != 0) {
            z10 = memberTaskItemCheckInInfo.isToday;
        }
        boolean z12 = z10;
        if ((i12 & 4) != 0) {
            z11 = memberTaskItemCheckInInfo.hasCheckIn;
        }
        boolean z13 = z11;
        if ((i12 & 8) != 0) {
            i10 = memberTaskItemCheckInInfo.rewardType;
        }
        int i13 = i10;
        if ((i12 & 16) != 0) {
            i11 = memberTaskItemCheckInInfo.rewardAmount;
        }
        return memberTaskItemCheckInInfo.copy(str, z12, z13, i13, i11);
    }

    public final String getDate() {
        return this.date;
    }

    public final boolean getIsToday() {
        return this.isToday;
    }

    public final boolean getHasCheckIn() {
        return this.hasCheckIn;
    }

    public final int getRewardType() {
        return this.rewardType;
    }

    public final int getRewardAmount() {
        return this.rewardAmount;
    }

    public final MemberTaskItemCheckInInfo copy(String date, boolean isToday, boolean hasCheckIn, int rewardType, int rewardAmount) {
        Intrinsics.h(date, "date");
        return new MemberTaskItemCheckInInfo(date, isToday, hasCheckIn, rewardType, rewardAmount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberTaskItemCheckInInfo)) {
            return false;
        }
        MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = (MemberTaskItemCheckInInfo) other;
        return Intrinsics.c(this.date, memberTaskItemCheckInInfo.date) && this.isToday == memberTaskItemCheckInInfo.isToday && this.hasCheckIn == memberTaskItemCheckInInfo.hasCheckIn && this.rewardType == memberTaskItemCheckInInfo.rewardType && this.rewardAmount == memberTaskItemCheckInInfo.rewardAmount;
    }

    public final String getDate() {
        return this.date;
    }

    public final boolean getHasCheckIn() {
        return this.hasCheckIn;
    }

    public final int getRewardAmount() {
        return this.rewardAmount;
    }

    public final int getRewardType() {
        return this.rewardType;
    }

    public int hashCode() {
        return (((((((this.date.hashCode() * 31) + e.a(this.isToday)) * 31) + e.a(this.hasCheckIn)) * 31) + this.rewardType) * 31) + this.rewardAmount;
    }

    public final boolean isToday() {
        return this.isToday;
    }

    public final void setHasCheckIn(boolean z10) {
        this.hasCheckIn = z10;
    }

    public String toString() {
        return "MemberTaskItemCheckInInfo(date=" + this.date + ", isToday=" + this.isToday + ", hasCheckIn=" + this.hasCheckIn + ", rewardType=" + this.rewardType + ", rewardAmount=" + this.rewardAmount + ")";
    }
}
