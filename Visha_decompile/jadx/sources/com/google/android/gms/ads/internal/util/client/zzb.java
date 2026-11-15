package com.google.android.gms.ads.internal.util.client;

import defpackage.j5e;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class zzb {
    public static final ThreadPoolExecutor zza = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10, TimeUnit.SECONDS, new SynchronousQueue(), new j5e("ClientDefault"));
    public static final ExecutorService zzb = Executors.newSingleThreadExecutor(new j5e("ClientSingle"));
}
