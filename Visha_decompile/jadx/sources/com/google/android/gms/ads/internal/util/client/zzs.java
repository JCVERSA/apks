package com.google.android.gms.ads.internal.util.client;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

public final class zzs {
    public static DynamiteModule a(Context context) throws zzr {
        try {
            return DynamiteModule.e(context, DynamiteModule.b, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new zzr(e);
        }
    }

    public static Context zza(Context context) throws zzr {
        return a(context).b();
    }

    public static Object zzb(Context context, String str, zzq zzqVar) throws zzr {
        try {
            return zzqVar.zza(a(context).d(str));
        } catch (Exception e) {
            throw new zzr(e);
        }
    }
}
