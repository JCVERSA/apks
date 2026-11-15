package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

public class OneoffTask extends Task {
    public static final Parcelable.Creator<OneoffTask> CREATOR = new zzi();
    private final long zzal;
    private final long zzam;

    public static class Builder extends Task.Builder {
        private long zzal = -1;
        private long zzam = -1;

        public Builder() {
            this.isPersisted = false;
        }

        @Override
        public OneoffTask build() {
            checkConditions();
            return new OneoffTask(this, (zzi) null);
        }

        @Override
        protected void checkConditions() {
            super.checkConditions();
            long j10 = this.zzal;
            if (j10 != -1) {
                long j11 = this.zzam;
                if (j11 != -1) {
                    if (j10 >= j11) {
                        throw new IllegalArgumentException("Window start must be shorter than window end.");
                    }
                    return;
                }
            }
            throw new IllegalArgumentException("Must specify an execution window using setExecutionWindow.");
        }

        public Builder setExecutionWindow(long j10, long j11) {
            this.zzal = j10;
            this.zzam = j11;
            return this;
        }

        @Override
        public Builder setExtras(Bundle bundle) {
            this.extras = bundle;
            return this;
        }

        @Override
        public Builder setPersisted(boolean z10) {
            this.isPersisted = z10;
            return this;
        }

        @Override
        public Builder setRequiredNetwork(int i10) {
            this.requiredNetworkState = i10;
            return this;
        }

        @Override
        public Builder setRequiresCharging(boolean z10) {
            this.requiresCharging = z10;
            return this;
        }

        @Override
        public Builder setService(Class<? extends GcmTaskService> cls) {
            this.gcmTaskService = cls.getName();
            return this;
        }

        @Override
        public Builder setTag(String str) {
            this.tag = str;
            return this;
        }

        @Override
        public Builder setUpdateCurrent(boolean z10) {
            this.updateCurrent = z10;
            return this;
        }

        @Override
        public Task.Builder setService(Class cls) {
            return setService((Class<? extends GcmTaskService>) cls);
        }
    }

    private OneoffTask(Builder builder) {
        super(builder);
        this.zzal = builder.zzal;
        this.zzam = builder.zzam;
    }

    public long getWindowEnd() {
        return this.zzam;
    }

    public long getWindowStart() {
        return this.zzal;
    }

    @Override
    public void toBundle(Bundle bundle) {
        super.toBundle(bundle);
        bundle.putLong("window_start", this.zzal);
        bundle.putLong("window_end", this.zzam);
    }

    public String toString() {
        String string = super.toString();
        long windowStart = getWindowStart();
        long windowEnd = getWindowEnd();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 64);
        sb2.append(string);
        sb2.append(" windowStart=");
        sb2.append(windowStart);
        sb2.append(" windowEnd=");
        sb2.append(windowEnd);
        return sb2.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeLong(this.zzal);
        parcel.writeLong(this.zzam);
    }

    @Deprecated
    private OneoffTask(Parcel parcel) {
        super(parcel);
        this.zzal = parcel.readLong();
        this.zzam = parcel.readLong();
    }

    OneoffTask(Parcel parcel, zzi zziVar) {
        this(parcel);
    }

    OneoffTask(Builder builder, zzi zziVar) {
        this(builder);
    }
}
