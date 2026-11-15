package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.zzdo;
import com.google.android.gms.internal.auth.zzdp;

public abstract class zzdo<MessageType extends zzdp<MessageType, BuilderType>, BuilderType extends zzdo<MessageType, BuilderType>> implements zzfv {
    @Override
    public abstract zzdo clone();

    protected abstract zzdo zzb(zzdp zzdpVar);

    @Override
    public final zzfv zzc(zzfw zzfwVar) {
        if (zzh().getClass().isInstance(zzfwVar)) {
            return zzb((zzdp) zzfwVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
