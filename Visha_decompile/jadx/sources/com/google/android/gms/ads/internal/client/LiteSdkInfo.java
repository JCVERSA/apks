package com.google.android.gms.ads.internal.client;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbou;
import com.google.android.gms.internal.ads.zzboy;

public class LiteSdkInfo extends zzcu {
    public LiteSdkInfo(@NonNull Context context) {
    }

    @Override
    public zzboy getAdapterCreator() {
        return new zzbou();
    }

    @Override
    public zzex getLiteSdkVersion() {
        return new zzex(ModuleDescriptor.MODULE_VERSION, 251410000, "24.2.0");
    }
}
