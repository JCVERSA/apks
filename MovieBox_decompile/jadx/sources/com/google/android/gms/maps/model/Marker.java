package com.google.android.gms.maps.model;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

public final class Marker {
    private final com.google.android.gms.internal.maps.zzt zzdm;

    public Marker(com.google.android.gms.internal.maps.zzt zztVar) {
        this.zzdm = (com.google.android.gms.internal.maps.zzt) Preconditions.checkNotNull(zztVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Marker)) {
            return false;
        }
        try {
            return this.zzdm.zzj(((Marker) obj).zzdm);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final float getAlpha() {
        try {
            return this.zzdm.getAlpha();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final String getId() {
        try {
            return this.zzdm.getId();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final LatLng getPosition() {
        try {
            return this.zzdm.getPosition();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final float getRotation() {
        try {
            return this.zzdm.getRotation();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final String getSnippet() {
        try {
            return this.zzdm.getSnippet();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    @Nullable
    public final Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.zzdm.zzk());
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final String getTitle() {
        try {
            return this.zzdm.getTitle();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzdm.getZIndex();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final int hashCode() {
        try {
            return this.zzdm.zzj();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void hideInfoWindow() {
        try {
            this.zzdm.hideInfoWindow();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final boolean isDraggable() {
        try {
            return this.zzdm.isDraggable();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final boolean isFlat() {
        try {
            return this.zzdm.isFlat();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final boolean isInfoWindowShown() {
        try {
            return this.zzdm.isInfoWindowShown();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzdm.isVisible();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void remove() {
        try {
            this.zzdm.remove();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setAlpha(float f10) {
        try {
            this.zzdm.setAlpha(f10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setAnchor(float f10, float f11) {
        try {
            this.zzdm.setAnchor(f10, f11);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setDraggable(boolean z10) {
        try {
            this.zzdm.setDraggable(z10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setFlat(boolean z10) {
        try {
            this.zzdm.setFlat(z10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setIcon(@Nullable BitmapDescriptor bitmapDescriptor) {
        try {
            if (bitmapDescriptor == null) {
                this.zzdm.zzg(null);
            } else {
                this.zzdm.zzg(bitmapDescriptor.zzb());
            }
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setInfoWindowAnchor(float f10, float f11) {
        try {
            this.zzdm.setInfoWindowAnchor(f10, f11);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setPosition(@NonNull LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("latlng cannot be null - a position is required.");
        }
        try {
            this.zzdm.setPosition(latLng);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setRotation(float f10) {
        try {
            this.zzdm.setRotation(f10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setSnippet(@Nullable String str) {
        try {
            this.zzdm.setSnippet(str);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setTag(@Nullable Object obj) {
        try {
            this.zzdm.zze(ObjectWrapper.wrap(obj));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setTitle(@Nullable String str) {
        try {
            this.zzdm.setTitle(str);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setVisible(boolean z10) {
        try {
            this.zzdm.setVisible(z10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void setZIndex(float f10) {
        try {
            this.zzdm.setZIndex(f10);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public final void showInfoWindow() {
        try {
            this.zzdm.showInfoWindow();
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }
}
