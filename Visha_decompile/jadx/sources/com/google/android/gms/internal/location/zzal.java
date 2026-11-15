package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.location.ActivityTransitionRequest;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.SleepSegmentRequest;
import com.google.android.gms.location.zzbq;
import defpackage.vff;

public final class zzal extends zza implements zzam {
    public zzal(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override
    public final void zzd(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzak zzakVar) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, geofencingRequest);
        vff.c(parcelZza, pendingIntent);
        vff.d(parcelZza, zzakVar);
        zzx(57, parcelZza);
    }

    @Override
    public final void zze(PendingIntent pendingIntent, zzak zzakVar, String str) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, pendingIntent);
        vff.d(parcelZza, zzakVar);
        parcelZza.writeString(str);
        zzx(2, parcelZza);
    }

    @Override
    public final void zzf(String[] strArr, zzak zzakVar, String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeStringArray(strArr);
        vff.d(parcelZza, zzakVar);
        parcelZza.writeString(str);
        zzx(3, parcelZza);
    }

    @Override
    public final void zzg(zzbq zzbqVar, zzak zzakVar) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, zzbqVar);
        vff.d(parcelZza, zzakVar);
        zzx(74, parcelZza);
    }

    @Override
    public final void zzh(long j, boolean z, PendingIntent pendingIntent) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeLong(j);
        vff.a(parcelZza, true);
        vff.c(parcelZza, pendingIntent);
        zzx(5, parcelZza);
    }

    @Override
    public final void zzi(ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent, IStatusCallback iStatusCallback) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, activityTransitionRequest);
        vff.c(parcelZza, pendingIntent);
        vff.d(parcelZza, iStatusCallback);
        zzx(72, parcelZza);
    }

    @Override
    public final void zzj(PendingIntent pendingIntent, IStatusCallback iStatusCallback) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, pendingIntent);
        vff.d(parcelZza, iStatusCallback);
        zzx(73, parcelZza);
    }

    @Override
    public final void zzk(PendingIntent pendingIntent) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, pendingIntent);
        zzx(6, parcelZza);
    }

    @Override
    public final void zzl(PendingIntent pendingIntent, IStatusCallback iStatusCallback) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, pendingIntent);
        vff.d(parcelZza, iStatusCallback);
        zzx(69, parcelZza);
    }

    @Override
    public final Location zzm() throws RemoteException {
        Parcel parcelZzw = zzw(7, zza());
        Location location = (Location) vff.b(parcelZzw, Location.CREATOR);
        parcelZzw.recycle();
        return location;
    }

    @Override
    public final Location zzn(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzw = zzw(80, parcelZza);
        Location location = (Location) vff.b(parcelZzw, Location.CREATOR);
        parcelZzw.recycle();
        return location;
    }

    @Override
    public final void zzo(zzbc zzbcVar) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, zzbcVar);
        zzx(59, parcelZza);
    }

    @Override
    public final void zzp(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        vff.a(parcelZza, z);
        zzx(12, parcelZza);
    }

    @Override
    public final void zzq(Location location) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, location);
        zzx(13, parcelZza);
    }

    @Override
    public final void zzr(zzai zzaiVar) throws RemoteException {
        Parcel parcelZza = zza();
        vff.d(parcelZza, zzaiVar);
        zzx(67, parcelZza);
    }

    @Override
    public final LocationAvailability zzs(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzw = zzw(34, parcelZza);
        LocationAvailability locationAvailability = (LocationAvailability) vff.b(parcelZzw, LocationAvailability.CREATOR);
        parcelZzw.recycle();
        return locationAvailability;
    }

    @Override
    public final void zzt(LocationSettingsRequest locationSettingsRequest, zzao zzaoVar, String str) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, locationSettingsRequest);
        vff.d(parcelZza, zzaoVar);
        parcelZza.writeString(null);
        zzx(63, parcelZza);
    }

    @Override
    public final void zzu(zzl zzlVar) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, zzlVar);
        zzx(75, parcelZza);
    }

    @Override
    public final void zzv(PendingIntent pendingIntent, SleepSegmentRequest sleepSegmentRequest, IStatusCallback iStatusCallback) throws RemoteException {
        Parcel parcelZza = zza();
        vff.c(parcelZza, pendingIntent);
        vff.c(parcelZza, sleepSegmentRequest);
        vff.d(parcelZza, iStatusCallback);
        zzx(79, parcelZza);
    }
}
