package com.transsion.base.report.athena.sampler;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.Charsets;

public final class b {

    public static final b f41884a = new b();

    private b() {
    }

    public final boolean a(double d10, String deviceId, String batchKey, int i10) throws NoSuchAlgorithmException {
        Intrinsics.h(deviceId, "deviceId");
        Intrinsics.h(batchKey, "batchKey");
        if (d10 <= 0.0d) {
            return false;
        }
        if (d10 >= 100.0d) {
            return true;
        }
        String str = deviceId + '-' + batchKey;
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "getBytes(...)");
        byte[] bArrDigest = messageDigest.digest(bytes);
        return (((bArrDigest[3] & 255) | ((((bArrDigest[0] & 255) << 24) | ((bArrDigest[1] & 255) << 16)) | ((bArrDigest[2] & 255) << 8))) & Integer.MAX_VALUE) % i10 < MathKt.c((d10 / 100.0d) * ((double) i10));
    }
}
