package com.google.android.libraries.places.internal;

import java.util.BitSet;
import java.util.Locale;
import java.util.logging.Level;

public abstract class zzbca {
    private static final BitSet zza;
    private final String zzb;
    private final String zzc;
    private final byte[] zzd;
    private final Object zze;

    static {
        BitSet bitSet = new BitSet(127);
        bitSet.set(45);
        bitSet.set(95);
        bitSet.set(46);
        for (char c10 = '0'; c10 <= '9'; c10 = (char) (c10 + 1)) {
            bitSet.set(c10);
        }
        for (char c11 = 'a'; c11 <= 'z'; c11 = (char) (c11 + 1)) {
            bitSet.set(c11);
        }
        zza = bitSet;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0058 A[SYNTHETIC] */
    zzbca(String str, boolean z10, Object obj, zzbbz zzbbzVar) {
        this.zzb = str;
        String lowerCase = str.toLowerCase(Locale.ROOT);
        zzmt.zzc(lowerCase, "name");
        zzmt.zzf(!lowerCase.isEmpty(), "token must have at least 1 tchar");
        if (lowerCase.equals("connection")) {
            zzbcf.zzd.logp(Level.WARNING, "io.grpc.Metadata$Key", "validateName", "Metadata key is 'Connection', which should not be used. That is used by HTTP/1 for connection-specific headers which are not to be forwarded. There is probably an HTTP/1 conversion bug. Simply removing the Connection header is not enough; you should remove all headers it references as well. See RFC 7230 section 6.1", (Throwable) new RuntimeException("exception to show backtrace"));
        }
        int i10 = 0;
        while (i10 < lowerCase.length()) {
            char cCharAt = lowerCase.charAt(i10);
            if (z10 && cCharAt == ':') {
                if (i10 == 0) {
                    i10 = 0;
                } else {
                    cCharAt = ':';
                    if (zza.get(cCharAt)) {
                        throw new IllegalArgumentException(zznb.zzb("Invalid character '%s' in key name '%s'", Character.valueOf(cCharAt), lowerCase));
                    }
                }
            } else if (zza.get(cCharAt)) {
                throw new IllegalArgumentException(zznb.zzb("Invalid character '%s' in key name '%s'", Character.valueOf(cCharAt), lowerCase));
            }
            i10++;
        }
        this.zzc = lowerCase;
        this.zzd = lowerCase.getBytes(zzmb.zza);
        this.zze = obj;
    }

    public static zzbca zzc(String str, zzbbx zzbbxVar) {
        return new zzbbw(str, false, zzbbxVar, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.zzc.equals(((zzbca) obj).zzc);
    }

    public final int hashCode() {
        return this.zzc.hashCode();
    }

    public final String toString() {
        return "Key{name='" + this.zzc + "'}";
    }

    abstract Object zza(byte[] bArr);

    abstract byte[] zzb(Object obj);

    public final String zzd() {
        return this.zzc;
    }

    final byte[] zze() {
        return this.zzd;
    }
}
