package com.yandex.mobile.ads.impl;

import android.media.MediaCodec;
import android.media.MediaDrmResetException;
import android.media.ResourceBusyException;
import defpackage.y45;
import javax.net.ssl.SSLHandshakeException;

public final class ra1 {
    /* JADX WARN: Code duplicated, block: B:44:0x008e  */
    private static xc2.a a(Throwable th) {
        xc2.a aVar;
        xc2.a aVar2;
        boolean z;
        if (th instanceof yh1) {
            Throwable cause = th.getCause();
            if (cause == null || !(((z = cause instanceof MediaCodec.CodecException)) || (cause instanceof IllegalStateException) || (cause instanceof IllegalArgumentException))) {
                aVar2 = null;
            } else {
                StackTraceElement[] stackTrace = cause.getStackTrace();
                y45.g(stackTrace);
                if (!(stackTrace.length == 0) && stackTrace[0].isNativeMethod() && y45.e(stackTrace[0].getClassName(), "android.media.MediaCodec")) {
                    String methodName = stackTrace[0].getMethodName();
                    if (methodName == null) {
                        methodName = "";
                    }
                    if (y45.e(methodName, "native_dequeueOutputBuffer")) {
                        aVar2 = xc2.a.b;
                    } else if (y45.e(methodName, "native_dequeueInputBuffer")) {
                        aVar2 = xc2.a.c;
                    } else if (y45.e(methodName, "native_stop")) {
                        aVar2 = xc2.a.d;
                    } else if (y45.e(methodName, "native_setSurface")) {
                        aVar2 = xc2.a.e;
                    } else if (y45.e(methodName, "releaseOutputBuffer")) {
                        aVar2 = xc2.a.f;
                    } else if (y45.e(methodName, "native_queueSecureInputBuffer")) {
                        aVar2 = xc2.a.g;
                    } else if (z) {
                        aVar2 = xc2.a.h;
                    } else {
                        aVar2 = null;
                    }
                } else {
                    aVar2 = null;
                }
            }
            if (aVar2 != null) {
                return aVar2;
            }
            Throwable cause2 = th.getCause();
            xc2.a aVarA = cause2 != null ? a(cause2) : null;
            if (aVarA != null) {
                return aVarA;
            }
            aVar = xc2.a.E;
        } else if (th instanceof dj0) {
            aVar = xc2.a.j;
        } else if (th instanceof sv0.b) {
            aVar = xc2.a.k;
        } else if (th instanceof mv0.b) {
            aVar = xc2.a.l;
        } else if (th instanceof MediaCodec.CryptoException) {
            aVar = xc2.a.o;
        } else if (th instanceof g40.a) {
            Throwable cause3 = ((g40.a) th).getCause();
            if (cause3 == null) {
                aVar = xc2.a.q;
            } else if ((cause3 instanceof MediaDrmResetException) || (cause3 instanceof ResourceBusyException)) {
                aVar = xc2.a.p;
            } else {
                aVar = ((cause3 instanceof MediaCodec.CryptoException) || (cause3 instanceof ar0)) ? xc2.a.o : xc2.a.q;
            }
        } else if (th instanceof th0) {
            int i = ((th0) th).e;
            if (i == 401) {
                aVar = xc2.a.s;
            } else if (i != 403) {
                aVar = i != 404 ? xc2.a.v : xc2.a.u;
            } else {
                aVar = xc2.a.t;
            }
        } else if (th instanceof rh0) {
            aVar = ((rh0) th).getCause() instanceof SSLHandshakeException ? xc2.a.w : xc2.a.x;
        } else if (th instanceof eg1) {
            aVar = xc2.a.y;
        } else if (th instanceof hs0.g) {
            aVar = xc2.a.z;
        } else if ((th instanceof wh.a) || (th instanceof wh.b) || (th instanceof hz.h)) {
            aVar = xc2.a.A;
        } else if (th instanceof p32) {
            aVar = xc2.a.B;
        } else {
            aVar = ((th instanceof sm.a) || (th instanceof vm.a)) ? xc2.a.C : xc2.a.F;
        }
        return aVar;
    }

    public static xc2 a(m60 m60Var) {
        y45.j(m60Var, "throwable");
        return new xc2(a((Throwable) m60Var), m60Var);
    }
}
