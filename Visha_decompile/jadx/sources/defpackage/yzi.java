package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzif;

public abstract class yzi {
    public static volatile zzif a = zzif.zzc();
    public static final Object b = new Object();

    public static boolean a(Context context, Uri uri) {
        ProviderInfo providerInfoResolveContentProvider;
        String authority = uri.getAuthority();
        boolean z = false;
        if (!"com.google.android.gms.phenotype".equals(authority)) {
            Log.e("PhenotypeClientHelper", String.valueOf(authority).concat(" is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."));
            return false;
        }
        if (a.zzb()) {
            return ((Boolean) a.zza()).booleanValue();
        }
        synchronized (b) {
            try {
                if (a.zzb()) {
                    return ((Boolean) a.zza()).booleanValue();
                }
                if ("com.google.android.gms".equals(context.getPackageName()) || ((providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", 268435456)) != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName))) {
                    try {
                        if ((context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0) {
                            z = true;
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                a = zzif.zzd(Boolean.valueOf(z));
                return ((Boolean) a.zza()).booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
