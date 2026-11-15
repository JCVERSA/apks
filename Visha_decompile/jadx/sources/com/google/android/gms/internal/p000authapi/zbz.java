package com.google.android.gms.internal.p000authapi;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import defpackage.j3e;

public final class zbz extends zba implements IInterface {
    public zbz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.identity.internal.ICredentialSavingService");
    }

    public final void zbc(zbaf zbafVar, SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) throws RemoteException {
        Parcel parcelZba = zba();
        j3e.d(parcelZba, zbafVar);
        j3e.c(parcelZba, saveAccountLinkingTokenRequest);
        zbb(1, parcelZba);
    }

    public final void zbd(zbah zbahVar, SavePasswordRequest savePasswordRequest) throws RemoteException {
        Parcel parcelZba = zba();
        j3e.d(parcelZba, zbahVar);
        j3e.c(parcelZba, savePasswordRequest);
        zbb(2, parcelZba);
    }
}
