package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public final class CameraUpdateFactory {
    private static ICameraUpdateFactoryDelegate zzf;

    private CameraUpdateFactory() {
    }

    public static CameraUpdate newCameraPosition(CameraPosition cameraPosition) {
        try {
            return new CameraUpdate(zzc().newCameraPosition(cameraPosition));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public static CameraUpdate newLatLng(LatLng latLng) {
        try {
            return new CameraUpdate(zzc().newLatLng(latLng));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, int i10) {
        try {
            return new CameraUpdate(zzc().newLatLngBounds(latLngBounds, i10));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public static CameraUpdate newLatLngZoom(LatLng latLng, float f10) {
        try {
            return new CameraUpdate(zzc().newLatLngZoom(latLng, f10));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public static CameraUpdate scrollBy(float f10, float f11) {
        try {
            return new CameraUpdate(zzc().scrollBy(f10, f11));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public static CameraUpdate zoomBy(float f10) {
        try {
            return new CameraUpdate(zzc().zoomBy(f10));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public static CameraUpdate zoomIn() {
        try {
            return new CameraUpdate(zzc().zoomIn());
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public static CameraUpdate zoomOut() {
        try {
            return new CameraUpdate(zzc().zoomOut());
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public static CameraUpdate zoomTo(float f10) {
        try {
            return new CameraUpdate(zzc().zoomTo(f10));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public static void zza(ICameraUpdateFactoryDelegate iCameraUpdateFactoryDelegate) {
        zzf = (ICameraUpdateFactoryDelegate) Preconditions.checkNotNull(iCameraUpdateFactoryDelegate);
    }

    private static ICameraUpdateFactoryDelegate zzc() {
        return (ICameraUpdateFactoryDelegate) Preconditions.checkNotNull(zzf, "CameraUpdateFactory is not initialized");
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, int i10, int i11, int i12) {
        try {
            return new CameraUpdate(zzc().newLatLngBoundsWithSize(latLngBounds, i10, i11, i12));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }

    public static CameraUpdate zoomBy(float f10, Point point) {
        try {
            return new CameraUpdate(zzc().zoomByWithFocus(f10, point.x, point.y));
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }
}
