package com.google.android.gms.maps.model;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.maps.zzw;
import java.util.List;

public final class Polygon {
    private final zzw zzdw;

    public Polygon(zzw zzwVar) {
        this.zzdw = (zzw) Preconditions.checkNotNull(zzwVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Polygon)) {
            return false;
        }
        try {
            return this.zzdw.zzb(((Polygon) obj).zzdw);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final int getFillColor() {
        try {
            return this.zzdw.getFillColor();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final List<List<LatLng>> getHoles() {
        try {
            return this.zzdw.getHoles();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final String getId() {
        try {
            return this.zzdw.getId();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final List<LatLng> getPoints() {
        try {
            return this.zzdw.getPoints();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final int getStrokeColor() {
        try {
            return this.zzdw.getStrokeColor();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final int getStrokeJointType() {
        try {
            return this.zzdw.getStrokeJointType();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    @Nullable
    public final List<PatternItem> getStrokePattern() {
        try {
            return PatternItem.zza(this.zzdw.getStrokePattern());
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final float getStrokeWidth() {
        try {
            return this.zzdw.getStrokeWidth();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    @Nullable
    public final Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.zzdw.zzk());
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzdw.getZIndex();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final int hashCode() {
        try {
            return this.zzdw.zzj();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final boolean isClickable() {
        try {
            return this.zzdw.isClickable();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final boolean isGeodesic() {
        try {
            return this.zzdw.isGeodesic();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzdw.isVisible();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void remove() {
        try {
            this.zzdw.remove();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setClickable(boolean z10) {
        try {
            this.zzdw.setClickable(z10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setFillColor(int i10) {
        try {
            this.zzdw.setFillColor(i10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setGeodesic(boolean z10) {
        try {
            this.zzdw.setGeodesic(z10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setHoles(List<? extends List<LatLng>> list) {
        try {
            this.zzdw.setHoles(list);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setPoints(List<LatLng> list) {
        try {
            this.zzdw.setPoints(list);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setStrokeColor(int i10) {
        try {
            this.zzdw.setStrokeColor(i10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setStrokeJointType(int i10) {
        try {
            this.zzdw.setStrokeJointType(i10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setStrokePattern(@Nullable List<PatternItem> list) {
        try {
            this.zzdw.setStrokePattern(list);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setStrokeWidth(float f10) {
        try {
            this.zzdw.setStrokeWidth(f10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setTag(@Nullable Object obj) {
        try {
            this.zzdw.zze(ObjectWrapper.wrap(obj));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setVisible(boolean z10) {
        try {
            this.zzdw.setVisible(z10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setZIndex(float f10) {
        try {
            this.zzdw.setZIndex(f10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }
}
