package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.wd8;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import org.apache.commons.lang3.CharEncoding;

abstract class zzj extends zzw {
    private final int zza;

    public zzj(byte[] bArr) {
        wd8.a(bArr.length == 25);
        this.zza = Arrays.hashCode(bArr);
    }

    public static byte[] zzf(String str) {
        try {
            return str.getBytes(CharEncoding.ISO_8859_1);
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(@Nullable Object obj) {
        IObjectWrapper iObjectWrapperZzd;
        if (!(obj instanceof zzx)) {
            return false;
        }
        try {
            zzx zzxVar = (zzx) obj;
            if (zzxVar.zze() == this.zza && (iObjectWrapperZzd = zzxVar.zzd()) != null) {
                return Arrays.equals(zzc(), (byte[]) ObjectWrapper.unwrap(iObjectWrapperZzd));
            }
            return false;
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public final int hashCode() {
        return this.zza;
    }

    public abstract byte[] zzc();

    @Override
    public final IObjectWrapper zzd() {
        return ObjectWrapper.wrap(zzc());
    }

    @Override
    public final int zze() {
        return this.zza;
    }
}
