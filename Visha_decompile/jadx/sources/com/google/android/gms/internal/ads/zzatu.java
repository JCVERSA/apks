package com.google.android.gms.internal.ads;

import defpackage.eqe;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;

final class zzatu implements Runnable {
    private zzatu() {
        throw null;
    }

    @Override
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            b0.b = MessageDigest.getInstance("MD5");
            countDownLatch = b0.e;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = b0.e;
        } catch (Throwable th) {
            b0.e.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }

    public zzatu(eqe eqeVar) {
    }
}
