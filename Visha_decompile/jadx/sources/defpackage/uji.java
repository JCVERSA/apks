package defpackage;

import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgwn;
import java.security.GeneralSecurityException;

public final class uji implements yji {
    public final String a;
    public final eri b;
    public final zzgwn c;
    public final zzgsn d;
    public final zzgtt e;
    public final Integer f;

    public uji(String str, eri eriVar, zzgwn zzgwnVar, zzgsn zzgsnVar, zzgtt zzgttVar, Integer num) {
        this.a = str;
        this.b = eriVar;
        this.c = zzgwnVar;
        this.d = zzgsnVar;
        this.e = zzgttVar;
        this.f = num;
    }

    public static uji a(String str, zzgwn zzgwnVar, zzgsn zzgsnVar, zzgtt zzgttVar, Integer num) {
        if (zzgttVar == zzgtt.RAW) {
            if (num != null) {
                throw new GeneralSecurityException("Keys with output prefix type raw should not have an id requirement.");
            }
        } else if (num == null) {
            throw new GeneralSecurityException("Keys with output prefix type different from raw should have an id requirement.");
        }
        return new uji(str, fki.a(str), zzgwnVar, zzgsnVar, zzgttVar, num);
    }

    public final zzgsn b() {
        return this.d;
    }

    public final zzgtt c() {
        return this.e;
    }

    public final zzgwn d() {
        return this.c;
    }

    public final Integer e() {
        return this.f;
    }

    public final String f() {
        return this.a;
    }

    @Override
    public final eri zzd() {
        return this.b;
    }
}
