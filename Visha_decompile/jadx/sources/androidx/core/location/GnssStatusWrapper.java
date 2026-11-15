package androidx.core.location;

import android.location.GnssStatus;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;

@RequiresApi(24)
@RestrictTo({RestrictTo.Scope.LIBRARY})
class GnssStatusWrapper extends GnssStatusCompat {
    private final GnssStatus mWrapped;

    @RequiresApi(26)
    public static class Api26Impl {
        private Api26Impl() {
        }

        public static float getCarrierFrequencyHz(GnssStatus gnssStatus, int i) {
            return gnssStatus.getCarrierFrequencyHz(i);
        }

        public static boolean hasCarrierFrequencyHz(GnssStatus gnssStatus, int i) {
            return gnssStatus.hasCarrierFrequencyHz(i);
        }
    }

    @RequiresApi(30)
    public static class Api30Impl {
        private Api30Impl() {
        }

        public static float getBasebandCn0DbHz(GnssStatus gnssStatus, int i) {
            return gnssStatus.getBasebandCn0DbHz(i);
        }

        public static boolean hasBasebandCn0DbHz(GnssStatus gnssStatus, int i) {
            return gnssStatus.hasBasebandCn0DbHz(i);
        }
    }

    public GnssStatusWrapper(Object obj) {
        this.mWrapped = (GnssStatus) Preconditions.checkNotNull((GnssStatus) obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GnssStatusWrapper) {
            return this.mWrapped.equals(((GnssStatusWrapper) obj).mWrapped);
        }
        return false;
    }

    @Override
    public float getAzimuthDegrees(int i) {
        return this.mWrapped.getAzimuthDegrees(i);
    }

    @Override
    public float getBasebandCn0DbHz(int i) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getBasebandCn0DbHz(this.mWrapped, i);
        }
        throw new UnsupportedOperationException();
    }

    @Override
    public float getCarrierFrequencyHz(int i) {
        return Api26Impl.getCarrierFrequencyHz(this.mWrapped, i);
    }

    @Override
    public float getCn0DbHz(int i) {
        return this.mWrapped.getCn0DbHz(i);
    }

    @Override
    public int getConstellationType(int i) {
        return this.mWrapped.getConstellationType(i);
    }

    @Override
    public float getElevationDegrees(int i) {
        return this.mWrapped.getElevationDegrees(i);
    }

    @Override
    public int getSatelliteCount() {
        return this.mWrapped.getSatelliteCount();
    }

    @Override
    public int getSvid(int i) {
        return this.mWrapped.getSvid(i);
    }

    @Override
    public boolean hasAlmanacData(int i) {
        return this.mWrapped.hasAlmanacData(i);
    }

    @Override
    public boolean hasBasebandCn0DbHz(int i) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.hasBasebandCn0DbHz(this.mWrapped, i);
        }
        return false;
    }

    @Override
    public boolean hasCarrierFrequencyHz(int i) {
        return Api26Impl.hasCarrierFrequencyHz(this.mWrapped, i);
    }

    @Override
    public boolean hasEphemerisData(int i) {
        return this.mWrapped.hasEphemerisData(i);
    }

    public int hashCode() {
        return this.mWrapped.hashCode();
    }

    @Override
    public boolean usedInFix(int i) {
        return this.mWrapped.usedInFix(i);
    }
}
