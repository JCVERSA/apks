package com.facebook.ads.redexgen.core;

import android.system.ErrnoException;
import android.system.OsConstants;

public final class AnonymousClass58 {
    public static boolean A00(Throwable th) {
        return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
    }
}
