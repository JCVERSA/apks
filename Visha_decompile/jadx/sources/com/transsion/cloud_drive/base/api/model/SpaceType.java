package com.transsion.cloud_drive.base.api.model;

import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.v95;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/SpaceType;", "", "type", "", PlayAudioData.TAG_SIZE, "", "expirationTime", "(IJJ)V", "getExpirationTime", "()J", "getSize", "getType", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SpaceType {
    private final long expirationTime;
    private final long size;
    private final int type;

    public SpaceType(@v95(name = "spaceType") int i, @v95(name = "spaceSize") long j, @v95(name = "expirationTime") long j2) {
        this.type = i;
        this.size = j;
        this.expirationTime = j2;
    }

    public static SpaceType copy$default(SpaceType spaceType, int i, long j, long j2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = spaceType.type;
        }
        if ((i2 & 2) != 0) {
            j = spaceType.size;
        }
        long j3 = j;
        if ((i2 & 4) != 0) {
            j2 = spaceType.expirationTime;
        }
        return spaceType.copy(i, j3, j2);
    }

    public final int getType() {
        return this.type;
    }

    public final long getSize() {
        return this.size;
    }

    public final long getExpirationTime() {
        return this.expirationTime;
    }

    public final SpaceType copy(@v95(name = "spaceType") int type, @v95(name = "spaceSize") long size, @v95(name = "expirationTime") long expirationTime) {
        return new SpaceType(type, size, expirationTime);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SpaceType)) {
            return false;
        }
        SpaceType spaceType = (SpaceType) other;
        return this.type == spaceType.type && this.size == spaceType.size && this.expirationTime == spaceType.expirationTime;
    }

    public final long getExpirationTime() {
        return this.expirationTime;
    }

    public final long getSize() {
        return this.size;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.type) * 31) + Long.hashCode(this.size)) * 31) + Long.hashCode(this.expirationTime);
    }

    public String toString() {
        return "SpaceType(type=" + this.type + ", size=" + this.size + ", expirationTime=" + this.expirationTime + ")";
    }

    public SpaceType(int i, long j, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? 0L : j, (i2 & 4) != 0 ? 0L : j2);
    }
}
