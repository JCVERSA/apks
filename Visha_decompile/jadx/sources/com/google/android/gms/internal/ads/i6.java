package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import defpackage.iyh;

public final class i6 {
    public final zzfou a;
    public final boolean b;

    public i6(zzfou zzfouVar) {
        this.a = zzfouVar;
        this.b = zzfouVar != null;
    }

    public static i6 b(Context context, String str, String str2) {
        zzfou zzfosVar;
        try {
            try {
                try {
                    IBinder iBinderD = DynamiteModule.e(context, DynamiteModule.b, ModuleDescriptor.MODULE_ID).d("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (iBinderD == null) {
                        zzfosVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinderD.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        zzfosVar = iInterfaceQueryLocalInterface instanceof zzfou ? (zzfou) iInterfaceQueryLocalInterface : new zzfos(iBinderD);
                    }
                    zzfosVar.zze(ObjectWrapper.wrap(context), str, null);
                    Log.i("GASS", "GassClearcutLogger Initialized.");
                    return new i6(zzfosVar);
                } catch (RemoteException | zzfnt | NullPointerException | SecurityException unused) {
                    Log.d("GASS", "Cannot dynamite load clearcut");
                    return new i6(new zzfov());
                }
            } catch (Exception e) {
                throw new zzfnt(e);
            }
        } catch (Exception e2) {
            throw new zzfnt(e2);
        }
    }

    public static i6 c() {
        zzfov zzfovVar = new zzfov();
        Log.d("GASS", "Clearcut logging disabled");
        return new i6(zzfovVar);
    }

    public final iyh a(byte[] bArr) {
        return new iyh(this, bArr, null);
    }
}
