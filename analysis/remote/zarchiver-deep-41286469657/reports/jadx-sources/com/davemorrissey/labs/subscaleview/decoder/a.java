package com.davemorrissey.labs.subscaleview.decoder;

import android.app.ActivityManager;

public final class a extends Thread {

    public final SkiaPooledImageRegionDecoder f480a;

    public a(SkiaPooledImageRegionDecoder skiaPooledImageRegionDecoder) {
        this.f480a = skiaPooledImageRegionDecoder;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004e  */
    @Override
    public final void run() {
        int size;
        boolean z2;
        boolean z3;
        while (true) {
            SkiaPooledImageRegionDecoder skiaPooledImageRegionDecoder = this.f480a;
            SkiaPooledImageRegionDecoder.a aVar = skiaPooledImageRegionDecoder.f470a;
            if (aVar == null) {
                return;
            }
            synchronized (aVar) {
                size = aVar.f479b.size();
            }
            long j2 = this.f480a.f475f;
            if (size >= 4) {
                z2 = false;
            } else {
                long j3 = ((long) size) * j2;
                if (j3 <= 20971520) {
                    if (size >= Runtime.getRuntime().availableProcessors()) {
                        Runtime.getRuntime().availableProcessors();
                    } else {
                        ActivityManager activityManager = (ActivityManager) skiaPooledImageRegionDecoder.f473d.getSystemService("activity");
                        z2 = true;
                        if (activityManager != null) {
                            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                            activityManager.getMemoryInfo(memoryInfo);
                            z3 = memoryInfo.lowMemory;
                        } else {
                            z3 = true;
                        }
                        if (!z3) {
                            long j4 = j3 / 1048576;
                        }
                    }
                    z2 = false;
                } else {
                    z2 = false;
                }
            }
            if (!z2) {
                return;
            }
            try {
                if (this.f480a.f470a != null) {
                    System.currentTimeMillis();
                    this.f480a.e();
                    System.currentTimeMillis();
                }
            } catch (Exception e2) {
                e2.getMessage();
            }
        }
    }
}
