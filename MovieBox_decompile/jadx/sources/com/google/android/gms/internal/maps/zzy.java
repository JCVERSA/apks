package com.google.android.gms.internal.maps;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.ArrayList;
import java.util.List;

public final class zzy extends zza implements zzw {
    zzy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IPolygonDelegate");
    }

    @Override
    public final int getFillColor() throws RemoteException {
        Parcel parcelZza = zza(12, zza());
        int i10 = parcelZza.readInt();
        parcelZza.recycle();
        return i10;
    }

    @Override
    public final List getHoles() throws RemoteException {
        Parcel parcelZza = zza(6, zza());
        ArrayList arrayListZzb = zzc.zzb(parcelZza);
        parcelZza.recycle();
        return arrayListZzb;
    }

    @Override
    public final String getId() throws RemoteException {
        Parcel parcelZza = zza(2, zza());
        String string = parcelZza.readString();
        parcelZza.recycle();
        return string;
    }

    @Override
    public final List<LatLng> getPoints() throws RemoteException {
        Parcel parcelZza = zza(4, zza());
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(LatLng.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override
    public final int getStrokeColor() throws RemoteException {
        Parcel parcelZza = zza(10, zza());
        int i10 = parcelZza.readInt();
        parcelZza.recycle();
        return i10;
    }

    @Override
    public final int getStrokeJointType() throws RemoteException {
        Parcel parcelZza = zza(24, zza());
        int i10 = parcelZza.readInt();
        parcelZza.recycle();
        return i10;
    }

    @Override
    public final List<PatternItem> getStrokePattern() throws RemoteException {
        Parcel parcelZza = zza(26, zza());
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(PatternItem.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override
    public final float getStrokeWidth() throws RemoteException {
        Parcel parcelZza = zza(8, zza());
        float f10 = parcelZza.readFloat();
        parcelZza.recycle();
        return f10;
    }

    @Override
    public final float getZIndex() throws RemoteException {
        Parcel parcelZza = zza(14, zza());
        float f10 = parcelZza.readFloat();
        parcelZza.recycle();
        return f10;
    }

    @Override
    public final boolean isClickable() throws RemoteException {
        Parcel parcelZza = zza(22, zza());
        boolean zZza = zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean isGeodesic() throws RemoteException {
        Parcel parcelZza = zza(18, zza());
        boolean zZza = zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean isVisible() throws RemoteException {
        Parcel parcelZza = zza(16, zza());
        boolean zZza = zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final void remove() throws RemoteException {
        zzb(1, zza());
    }

    @Override
    public final void setClickable(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.writeBoolean(parcelZza, z10);
        zzb(21, parcelZza);
    }

    @Override
    public final void setFillColor(int i10) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i10);
        zzb(11, parcelZza);
    }

    @Override
    public final void setGeodesic(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.writeBoolean(parcelZza, z10);
        zzb(17, parcelZza);
    }

    @Override
    public final void setHoles(List list) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeList(list);
        zzb(5, parcelZza);
    }

    @Override
    public final void setPoints(List<LatLng> list) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeTypedList(list);
        zzb(3, parcelZza);
    }

    @Override
    public final void setStrokeColor(int i10) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i10);
        zzb(9, parcelZza);
    }

    @Override
    public final void setStrokeJointType(int i10) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i10);
        zzb(23, parcelZza);
    }

    @Override
    public final void setStrokePattern(List<PatternItem> list) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeTypedList(list);
        zzb(25, parcelZza);
    }

    @Override
    public final void setStrokeWidth(float f10) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeFloat(f10);
        zzb(7, parcelZza);
    }

    @Override
    public final void setVisible(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.writeBoolean(parcelZza, z10);
        zzb(15, parcelZza);
    }

    @Override
    public final void setZIndex(float f10) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeFloat(f10);
        zzb(13, parcelZza);
    }

    @Override
    public final boolean zzb(zzw zzwVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zza(parcelZza, zzwVar);
        Parcel parcelZza2 = zza(19, parcelZza);
        boolean zZza = zzc.zza(parcelZza2);
        parcelZza2.recycle();
        return zZza;
    }

    @Override
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zza(parcelZza, iObjectWrapper);
        zzb(27, parcelZza);
    }

    @Override
    public final int zzj() throws RemoteException {
        Parcel parcelZza = zza(20, zza());
        int i10 = parcelZza.readInt();
        parcelZza.recycle();
        return i10;
    }

    @Override
    public final IObjectWrapper zzk() throws RemoteException {
        Parcel parcelZza = zza(28, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZza.readStrongBinder());
        parcelZza.recycle();
        return iObjectWrapperAsInterface;
    }
}
