package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import defpackage.blb;

public abstract class d {

    public static final class a {
        @DoNotInline
        public static boolean a(@Nullable Throwable th) {
            return th instanceof DeniedByServerException;
        }

        @DoNotInline
        public static boolean b(@Nullable Throwable th) {
            return th instanceof NotProvisionedException;
        }
    }

    public static final class b {
        @DoNotInline
        public static boolean a(@Nullable Throwable th) {
            return th instanceof MediaDrm.MediaDrmStateException;
        }

        @DoNotInline
        public static int b(Throwable th) {
            return blb.O(blb.P(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        }
    }

    public static final class c {
        @DoNotInline
        public static boolean a(@Nullable Throwable th) {
            return th instanceof MediaDrmResetException;
        }
    }

    public static int a(Exception exc, int i) {
        int i2 = blb.a;
        if (i2 >= 21 && b.a(exc)) {
            return b.b(exc);
        }
        if (i2 >= 23 && c.a(exc)) {
            return 6006;
        }
        if (i2 >= 18 && a.b(exc)) {
            return 6002;
        }
        if (i2 >= 18 && a.a(exc)) {
            return 6007;
        }
        if (exc instanceof UnsupportedDrmException) {
            return 6001;
        }
        if (exc instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return 6003;
        }
        if (exc instanceof KeysExpiredException) {
            return 6008;
        }
        if (i == 1) {
            return 6006;
        }
        if (i == 2) {
            return 6004;
        }
        if (i == 3) {
            return 6002;
        }
        throw new IllegalArgumentException();
    }
}
