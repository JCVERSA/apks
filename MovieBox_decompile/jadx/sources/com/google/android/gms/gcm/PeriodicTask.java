package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

public class PeriodicTask extends Task {
    public static final Parcelable.Creator<PeriodicTask> CREATOR = new zzk();
    protected long mFlexInSeconds;
    protected long mIntervalInSeconds;

    public static class Builder extends Task.Builder {
        private long zzao = -1;
        private long zzap = -1;

        public Builder() {
            this.isPersisted = true;
        }

        @Override
        public PeriodicTask build() {
            checkConditions();
            return new PeriodicTask(this, (zzk) null);
        }

        @Override
        protected void checkConditions() {
            super.checkConditions();
            long j10 = this.zzao;
            if (j10 == -1) {
                throw new IllegalArgumentException("Must call setPeriod(long) to establish an execution interval for this periodic task.");
            }
            if (j10 <= 0) {
                long j11 = this.zzao;
                StringBuilder sb2 = new StringBuilder(66);
                sb2.append("Period set cannot be less than or equal to 0: ");
                sb2.append(j11);
                throw new IllegalArgumentException(sb2.toString());
            }
            long j12 = this.zzap;
            if (j12 == -1) {
                this.zzap = (long) (j10 * 0.1f);
            } else if (j12 > j10) {
                this.zzap = j10;
            }
        }

        @Override
        public Builder setExtras(Bundle bundle) {
            this.extras = bundle;
            return this;
        }

        public Builder setFlex(long j10) {
            this.zzap = j10;
            return this;
        }

        public Builder setPeriod(long j10) {
            this.zzao = j10;
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

    private PeriodicTask(Builder builder) {
        super(builder);
        this.mIntervalInSeconds = -1L;
        this.mFlexInSeconds = -1L;
        this.mIntervalInSeconds = builder.zzao;
        this.mFlexInSeconds = Math.min(builder.zzap, this.mIntervalInSeconds);
    }

    public long getFlex() {
        return this.mFlexInSeconds;
    }

    public long getPeriod() {
        return this.mIntervalInSeconds;
    }

    @Override
    public void toBundle(Bundle bundle) {
        super.toBundle(bundle);
        bundle.putLong("period", this.mIntervalInSeconds);
        bundle.putLong("period_flex", this.mFlexInSeconds);
    }

    public String toString() {
        String string = super.toString();
        long period = getPeriod();
        long flex = getFlex();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 54);
        sb2.append(string);
        sb2.append(" period=");
        sb2.append(period);
        sb2.append(" flex=");
        sb2.append(flex);
        return sb2.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeLong(this.mIntervalInSeconds);
        parcel.writeLong(this.mFlexInSeconds);
    }

    @Deprecated
    private PeriodicTask(Parcel parcel) {
        super(parcel);
        this.mIntervalInSeconds = -1L;
        this.mFlexInSeconds = -1L;
        this.mIntervalInSeconds = parcel.readLong();
        this.mFlexInSeconds = Math.min(parcel.readLong(), this.mIntervalInSeconds);
    }

    PeriodicTask(Parcel parcel, zzk zzkVar) {
        this(parcel);
    }

    PeriodicTask(Builder builder, zzk zzkVar) {
        this(builder);
    }
}
