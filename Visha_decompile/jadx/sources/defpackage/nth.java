package defpackage;

import android.net.Uri;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzt;
import com.google.android.gms.ads.internal.util.client.zzu;
import com.google.android.gms.ads.internal.util.client.zzx;
import com.google.android.gms.internal.ads.j8;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

public final class nth {
    public final zzx a;
    public final zzu b;
    public final h8i c;
    public final oth d;

    public nth(zzx zzxVar, zzu zzuVar, h8i h8iVar, oth othVar) {
        this.a = zzxVar;
        this.b = zzuVar;
        this.c = h8iVar;
        this.d = othVar;
    }

    public static im5 c(nth nthVar, int i, long j, String str, zzt zztVar) {
        if (zztVar != zzt.RETRIABLE_FAILURE) {
            return j8.h(zztVar);
        }
        zzx zzxVar = nthVar.a;
        long jZzb = zzxVar.zzb();
        if (i != 1) {
            jZzb = (long) (zzxVar.zza() * j);
        }
        return nthVar.e(str, jZzb, i + 1);
    }

    public final im5 d(String str) {
        try {
            return e(str, 0L, 1);
        } catch (NullPointerException | RejectedExecutionException unused) {
            return j8.h(zzt.PERMANENT_FAILURE);
        }
    }

    public final im5 e(final String str, final long j, final int i) {
        final String str2;
        zzx zzxVar = this.a;
        if (i > zzxVar.zzc()) {
            oth othVar = this.d;
            if (othVar == null || !zzxVar.zzd()) {
                return j8.h(zzt.RETRIABLE_FAILURE);
            }
            othVar.a(str, "", 2);
            return j8.h(zzt.BUFFERED);
        }
        if (((Boolean) zzbd.zzc().b(cye.H8)).booleanValue()) {
            Uri uri = Uri.parse(str);
            String encodedQuery = uri.getEncodedQuery();
            Uri.Builder builderClearQuery = uri.buildUpon().clearQuery();
            builderClearQuery.appendQueryParameter("pa", Integer.toString(i));
            str2 = String.valueOf(builderClearQuery.build()) + "&" + encodedQuery;
        } else {
            str2 = str;
        }
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return nth.c(this.a, i, j, str, (zzt) obj);
            }
        };
        if (j == 0) {
            h8i h8iVar = this.c;
            return j8.n(h8iVar.m(new Callable() {
                @Override
                public final Object call() {
                    return this.b.b.zza(str2);
                }
            }), k7iVar, h8iVar);
        }
        h8i h8iVar2 = this.c;
        return j8.n(h8iVar2.schedule(new Callable() {
            @Override
            public final Object call() {
                return this.b.b.zza(str2);
            }
        }, j, TimeUnit.MILLISECONDS), k7iVar, h8iVar2);
    }
}
