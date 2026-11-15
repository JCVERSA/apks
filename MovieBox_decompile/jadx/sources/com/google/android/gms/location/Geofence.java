package com.google.android.gms.location;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.identity.zzek;

public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    public static final class Builder {
        private double zze;
        private double zzf;
        private float zzg;
        private String zza = null;

        @TransitionTypes
        private int zzb = 3;
        private long zzc = -1;
        private short zzd = -1;
        private int zzh = 0;
        private int zzi = -1;

        @NonNull
        public Geofence build() {
            if (this.zza == null) {
                throw new IllegalArgumentException("Request ID not set.");
            }
            int i10 = this.zzb;
            if (i10 == 0) {
                throw new IllegalArgumentException("Transitions types not set.");
            }
            if ((i10 & 4) != 0 && this.zzi < 0) {
                throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELL.");
            }
            if (this.zzc == Long.MIN_VALUE) {
                throw new IllegalArgumentException("Expiration not set.");
            }
            if (this.zzd == -1) {
                throw new IllegalArgumentException("Geofence region not set.");
            }
            if (this.zzh >= 0) {
                return new zzek(this.zza, this.zzb, (short) 1, this.zze, this.zzf, this.zzg, this.zzc, this.zzh, this.zzi);
            }
            throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
        }

        @NonNull
        public Builder setCircularRegion(double d10, double d11, float f10) {
            boolean z10 = d10 >= -90.0d && d10 <= 90.0d;
            StringBuilder sb2 = new StringBuilder(String.valueOf(d10).length() + 18);
            sb2.append("Invalid latitude: ");
            sb2.append(d10);
            Preconditions.checkArgument(z10, sb2.toString());
            boolean z11 = d11 >= -180.0d && d11 <= 180.0d;
            StringBuilder sb3 = new StringBuilder(String.valueOf(d11).length() + 19);
            sb3.append("Invalid longitude: ");
            sb3.append(d11);
            Preconditions.checkArgument(z11, sb3.toString());
            boolean z12 = f10 > 0.0f;
            StringBuilder sb4 = new StringBuilder(String.valueOf(f10).length() + 16);
            sb4.append("Invalid radius: ");
            sb4.append(f10);
            Preconditions.checkArgument(z12, sb4.toString());
            this.zzd = (short) 1;
            this.zze = d10;
            this.zzf = d11;
            this.zzg = f10;
            return this;
        }

        @NonNull
        public Builder setExpirationDuration(long j10) {
            if (j10 < 0) {
                this.zzc = -1L;
            } else {
                this.zzc = DefaultClock.getInstance().elapsedRealtime() + j10;
            }
            return this;
        }

        @NonNull
        public Builder setLoiteringDelay(int i10) {
            this.zzi = i10;
            return this;
        }

        @NonNull
        public Builder setNotificationResponsiveness(int i10) {
            this.zzh = i10;
            return this;
        }

        @NonNull
        public Builder setRequestId(@NonNull String str) {
            this.zza = (String) Preconditions.checkNotNull(str, "Request ID can't be set to null");
            return this;
        }

        @NonNull
        public Builder setTransitionTypes(@TransitionTypes int i10) {
            this.zzb = i10;
            return this;
        }
    }

    public @interface GeofenceTransition {
    }

    public @interface TransitionTypes {
    }

    long getExpirationTime();

    double getLatitude();

    int getLoiteringDelay();

    double getLongitude();

    int getNotificationResponsiveness();

    float getRadius();

    @NonNull
    String getRequestId();

    @TransitionTypes
    int getTransitionTypes();
}
