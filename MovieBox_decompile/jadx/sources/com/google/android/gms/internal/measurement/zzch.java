package com.google.android.gms.internal.measurement;

import java.io.File;

final class zzch implements zzci {
    zzch() {
    }

    @Override
    public final String zza(String str, zzcm zzcmVar, zzcj zzcjVar) {
        return str;
    }

    @Override
    public final String zza(String str) {
        return zza(str, zzcm.zza);
    }

    @Override
    public final String zza(File file, String str) {
        return zza(file, str, zzcm.zza);
    }

    @Override
    public final String zza(String str, zzcm zzcmVar) {
        return zza(str, zzcmVar, zzcj.RAW_FILE_IO_TYPE);
    }

    @Override
    public final String zza(File file, String str, zzcm zzcmVar) {
        return zza(new File(file, str).getPath(), zzcmVar);
    }
}
