package com.google.android.gms.maps.model;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.maps.zzz;
import java.util.List;

public final class Polyline {
    private final zzz zzeb;

    public Polyline(zzz zzzVar) {
        this.zzeb = (zzz) Preconditions.checkNotNull(zzzVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Polyline)) {
            return false;
        }
        try {
            return this.zzeb.zzb(((Polyline) obj).zzeb);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final int getColor() {
        try {
            return this.zzeb.getColor();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    @NonNull
    public final Cap getEndCap() {
        try {
            return this.zzeb.getEndCap().zzh();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final String getId() {
        try {
            return this.zzeb.getId();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final int getJointType() {
        try {
            return this.zzeb.getJointType();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    @Nullable
    public final List<PatternItem> getPattern() {
        try {
            return PatternItem.zza(this.zzeb.getPattern());
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final List<LatLng> getPoints() {
        try {
            return this.zzeb.getPoints();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    @NonNull
    public final Cap getStartCap() {
        try {
            return this.zzeb.getStartCap().zzh();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    @Nullable
    public final Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.zzeb.zzk());
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final float getWidth() {
        try {
            return this.zzeb.getWidth();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzeb.getZIndex();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final int hashCode() {
        try {
            return this.zzeb.zzj();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final boolean isClickable() {
        try {
            return this.zzeb.isClickable();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final boolean isGeodesic() {
        try {
            return this.zzeb.isGeodesic();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzeb.isVisible();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void remove() {
        try {
            this.zzeb.remove();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setClickable(boolean z10) {
        try {
            this.zzeb.setClickable(z10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setColor(int i10) {
        try {
            this.zzeb.setColor(i10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setEndCap(@NonNull Cap cap) {
        Preconditions.checkNotNull(cap, "endCap must not be null");
        try {
            this.zzeb.setEndCap(cap);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setGeodesic(boolean z10) {
        try {
            this.zzeb.setGeodesic(z10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setJointType(int i10) {
        try {
            this.zzeb.setJointType(i10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setPattern(@Nullable List<PatternItem> list) {
        try {
            this.zzeb.setPattern(list);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setPoints(List<LatLng> list) {
        try {
            this.zzeb.setPoints(list);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setStartCap(@NonNull Cap cap) {
        Preconditions.checkNotNull(cap, "startCap must not be null");
        try {
            this.zzeb.setStartCap(cap);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setTag(@Nullable Object obj) {
        try {
            this.zzeb.zze(ObjectWrapper.wrap(obj));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setVisible(boolean z10) {
        try {
            this.zzeb.setVisible(z10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setWidth(float f10) {
        try {
            this.zzeb.setWidth(f10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setZIndex(float f10) {
        try {
            this.zzeb.setZIndex(f10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }
}
