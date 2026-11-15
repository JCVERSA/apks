package com.transsion.mediationads.beans;

import defpackage.y45;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u0000 #2\u00020\u0001:\u0001#B9\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u0016\u001a\u00020\u0003H\u0016J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003JG\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000f\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000f¨\u0006$"}, d2 = {"Lcom/transsion/mediationads/beans/TTStrategy;", "Ljava/io/Serializable;", "advertisingId", "", "protectDays", "", "startPosition", "maxAdvertisingCount", "videoIntervalsMin", "videoIntervalsMax", MethodDecl.initName, "(Ljava/lang/String;IIIII)V", "getAdvertisingId", "()Ljava/lang/String;", "getProtectDays", "()I", "getStartPosition", "setStartPosition", "(I)V", "getMaxAdvertisingCount", "getVideoIntervalsMin", "getVideoIntervalsMax", "toString", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "", "hashCode", "Companion", "mediationads-api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TTStrategy implements Serializable {
    private static final long serialVersionUID = 1;
    private final String advertisingId;
    private final int maxAdvertisingCount;
    private final int protectDays;
    private int startPosition;
    private final int videoIntervalsMax;
    private final int videoIntervalsMin;

    public TTStrategy(String str, int i, int i2, int i3, int i4, int i5) {
        this.advertisingId = str;
        this.protectDays = i;
        this.startPosition = i2;
        this.maxAdvertisingCount = i3;
        this.videoIntervalsMin = i4;
        this.videoIntervalsMax = i5;
    }

    public static TTStrategy copy$default(TTStrategy tTStrategy, String str, int i, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            str = tTStrategy.advertisingId;
        }
        if ((i6 & 2) != 0) {
            i = tTStrategy.protectDays;
        }
        int i7 = i;
        if ((i6 & 4) != 0) {
            i2 = tTStrategy.startPosition;
        }
        int i8 = i2;
        if ((i6 & 8) != 0) {
            i3 = tTStrategy.maxAdvertisingCount;
        }
        int i9 = i3;
        if ((i6 & 16) != 0) {
            i4 = tTStrategy.videoIntervalsMin;
        }
        int i10 = i4;
        if ((i6 & 32) != 0) {
            i5 = tTStrategy.videoIntervalsMax;
        }
        return tTStrategy.copy(str, i7, i8, i9, i10, i5);
    }

    public final String getAdvertisingId() {
        return this.advertisingId;
    }

    public final int getProtectDays() {
        return this.protectDays;
    }

    public final int getStartPosition() {
        return this.startPosition;
    }

    public final int getMaxAdvertisingCount() {
        return this.maxAdvertisingCount;
    }

    public final int getVideoIntervalsMin() {
        return this.videoIntervalsMin;
    }

    public final int getVideoIntervalsMax() {
        return this.videoIntervalsMax;
    }

    public final TTStrategy copy(String advertisingId, int protectDays, int startPosition, int maxAdvertisingCount, int videoIntervalsMin, int videoIntervalsMax) {
        return new TTStrategy(advertisingId, protectDays, startPosition, maxAdvertisingCount, videoIntervalsMin, videoIntervalsMax);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TTStrategy)) {
            return false;
        }
        TTStrategy tTStrategy = (TTStrategy) other;
        return y45.e(this.advertisingId, tTStrategy.advertisingId) && this.protectDays == tTStrategy.protectDays && this.startPosition == tTStrategy.startPosition && this.maxAdvertisingCount == tTStrategy.maxAdvertisingCount && this.videoIntervalsMin == tTStrategy.videoIntervalsMin && this.videoIntervalsMax == tTStrategy.videoIntervalsMax;
    }

    public final String getAdvertisingId() {
        return this.advertisingId;
    }

    public final int getMaxAdvertisingCount() {
        return this.maxAdvertisingCount;
    }

    public final int getProtectDays() {
        return this.protectDays;
    }

    public final int getStartPosition() {
        return this.startPosition;
    }

    public final int getVideoIntervalsMax() {
        return this.videoIntervalsMax;
    }

    public final int getVideoIntervalsMin() {
        return this.videoIntervalsMin;
    }

    public int hashCode() {
        String str = this.advertisingId;
        return ((((((((((str == null ? 0 : str.hashCode()) * 31) + Integer.hashCode(this.protectDays)) * 31) + Integer.hashCode(this.startPosition)) * 31) + Integer.hashCode(this.maxAdvertisingCount)) * 31) + Integer.hashCode(this.videoIntervalsMin)) * 31) + Integer.hashCode(this.videoIntervalsMax);
    }

    public final void setStartPosition(int i) {
        this.startPosition = i;
    }

    public String toString() {
        return "TTStrategy(advertisingId=" + this.advertisingId + ", protectDays=" + this.protectDays + ", startPosition=" + this.startPosition + ", maxAdvertisingCount=" + this.maxAdvertisingCount + ", videoIntervalsMin=" + this.videoIntervalsMin + ", videoIntervalsMax=" + this.videoIntervalsMax + ")";
    }
}
