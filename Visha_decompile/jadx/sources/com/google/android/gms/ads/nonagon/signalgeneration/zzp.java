package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import defpackage.e0f;
import defpackage.xmg;
import org.apache.commons.lang3.BooleanUtils;

public final class zzp extends QueryInfoGenerationCallback {
    public final zzo a;
    public final xmg b;
    public final boolean c;
    public final int d;
    public final long e = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
    public final Boolean f;

    public zzp(zzo zzoVar, boolean z, int i, @Nullable Boolean bool, xmg xmgVar) {
        this.a = zzoVar;
        this.c = z;
        this.d = i;
        this.f = bool;
        this.b = xmgVar;
    }

    public static long a() {
        return com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() + ((Long) e0f.h.e()).longValue();
    }

    public final long b() {
        return com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - this.e;
    }

    @Override
    public final void onFailure(String str) {
        Pair pair = new Pair("sgf_reason", str);
        Pair pair2 = new Pair("se", "query_g");
        Pair pair3 = new Pair("ad_format", AdFormat.BANNER.name());
        Pair pair4 = new Pair("rtype", Integer.toString(6));
        Pair pair5 = new Pair("scar", BooleanUtils.TRUE);
        Pair pair6 = new Pair("lat_ms", Long.toString(b()));
        int i = this.d;
        Pair pair7 = new Pair("sgpc_rn", Integer.toString(i));
        Pair pair8 = new Pair("sgpc_lsu", String.valueOf(this.f));
        boolean z = this.c;
        zzaa.zzd(this.b, null, "sgpcf", pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, new Pair("tpc", true != z ? "0" : "1"));
        this.a.a(z, new zzq(null, str, a(), i));
    }

    @Override
    public final void onSuccess(QueryInfo queryInfo) {
        Pair pair = new Pair("se", "query_g");
        Pair pair2 = new Pair("ad_format", AdFormat.BANNER.name());
        Pair pair3 = new Pair("rtype", Integer.toString(6));
        Pair pair4 = new Pair("scar", BooleanUtils.TRUE);
        Pair pair5 = new Pair("lat_ms", Long.toString(b()));
        int i = this.d;
        Pair pair6 = new Pair("sgpc_rn", Integer.toString(i));
        Pair pair7 = new Pair("sgpc_lsu", String.valueOf(this.f));
        boolean z = this.c;
        zzaa.zzd(this.b, null, "sgpcs", pair, pair2, pair3, pair4, pair5, pair6, pair7, new Pair("tpc", true != z ? "0" : "1"));
        this.a.a(z, new zzq(queryInfo, "", a(), i));
    }
}
