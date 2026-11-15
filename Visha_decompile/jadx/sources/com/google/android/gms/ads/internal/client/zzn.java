package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import com.hisavana.common.constant.ComConstants;
import java.util.ArrayList;
import java.util.List;

public final class zzn {
    public Bundle a = new Bundle();
    public List b = new ArrayList();
    public boolean c = false;
    public int d = -1;
    public final Bundle e = new Bundle();
    public final Bundle f = new Bundle();
    public final List g = new ArrayList();
    public int h = -1;
    public String i = null;
    public final List j = new ArrayList();
    public int k = ComConstants.defScheduleTime;
    public final int l = RequestConfiguration.PublisherPrivacyPersonalizationState.DEFAULT.getValue();
    public long m = 0;

    public final zzm zza() {
        Bundle bundle = this.e;
        Bundle bundle2 = this.a;
        Bundle bundle3 = this.f;
        return new zzm(8, -1L, bundle2, -1, this.b, this.c, this.d, false, null, null, null, null, bundle, bundle3, this.g, null, null, false, null, this.h, this.i, this.j, this.k, null, this.l, this.m);
    }

    public final zzn zzb(Bundle bundle) {
        this.a = bundle;
        return this;
    }

    public final zzn zzc(int i) {
        this.k = i;
        return this;
    }

    public final zzn zzd(boolean z) {
        this.c = z;
        return this;
    }

    public final zzn zze(List list) {
        this.b = list;
        return this;
    }

    public final zzn zzf(String str) {
        this.i = str;
        return this;
    }

    public final zzn zzg(long j) {
        this.m = j;
        return this;
    }

    public final zzn zzh(int i) {
        this.d = i;
        return this;
    }

    public final zzn zzi(int i) {
        this.h = i;
        return this;
    }
}
