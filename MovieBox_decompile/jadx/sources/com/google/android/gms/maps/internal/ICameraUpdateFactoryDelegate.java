package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public interface ICameraUpdateFactoryDelegate extends IInterface {
    IObjectWrapper newCameraPosition(CameraPosition cameraPosition) throws RemoteException;

    IObjectWrapper newLatLng(LatLng latLng) throws RemoteException;

    IObjectWrapper newLatLngBounds(LatLngBounds latLngBounds, int i10) throws RemoteException;

    IObjectWrapper newLatLngBoundsWithSize(LatLngBounds latLngBounds, int i10, int i11, int i12) throws RemoteException;

    IObjectWrapper newLatLngZoom(LatLng latLng, float f10) throws RemoteException;

    IObjectWrapper scrollBy(float f10, float f11) throws RemoteException;

    IObjectWrapper zoomBy(float f10) throws RemoteException;

    IObjectWrapper zoomByWithFocus(float f10, int i10, int i11) throws RemoteException;

    IObjectWrapper zoomIn() throws RemoteException;

    IObjectWrapper zoomOut() throws RemoteException;

    IObjectWrapper zoomTo(float f10) throws RemoteException;
}
