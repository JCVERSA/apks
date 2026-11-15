package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.km;
import com.yandex.mobile.ads.impl.m60;
import java.io.IOException;

public final class m60 extends yh1 {
    public final int d;

    @Nullable
    public final String e;
    public final int f;

    @Nullable
    public final jc0 g;
    public final int h;

    @Nullable
    public final rw0 i;
    final boolean j;

    static {
        new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return m60.b(bundle);
            }
        };
    }

    private m60(int i, Throwable th, @Nullable int i2, int i3) {
        this(a(i, null, null, -1, null, 4), th, i2, i, null, -1, null, 4, null, SystemClock.elapsedRealtime(), false);
    }

    public static m60 a() {
        return new m60(a(3, "Video load error occurred", null, -1, null, 4), null, 1001, 3, null, -1, null, 4, null, SystemClock.elapsedRealtime(), false);
    }

    public static m60 b(Bundle bundle) {
        return new m60(bundle);
    }

    private m60(Bundle bundle) {
        super(bundle);
        this.d = bundle.getInt(yh1.a(1001), 2);
        this.e = bundle.getString(yh1.a(1002));
        this.f = bundle.getInt(yh1.a(1003), -1);
        Bundle bundle2 = bundle.getBundle(yh1.a(1004));
        this.g = bundle2 == null ? null : (jc0) jc0.I.fromBundle(bundle2);
        this.h = bundle.getInt(yh1.a(1005), 4);
        this.j = bundle.getBoolean(yh1.a(1006), false);
        this.i = null;
    }

    public static m60 a(Exception exc, String str, int i, @Nullable jc0 jc0Var, int i2, boolean z, int i3) {
        int i4 = jc0Var == null ? 4 : i2;
        return new m60(a(1, null, str, i, jc0Var, i4), exc, i3, 1, str, i, jc0Var, i4, null, SystemClock.elapsedRealtime(), z);
    }

    @Deprecated
    public static m60 a(IllegalStateException illegalStateException) {
        return new m60(2, illegalStateException, 1000, 0);
    }

    private static String a(int i, @Nullable String str, @Nullable String str2, int i2, @Nullable jc0 jc0Var, int i3) {
        String string;
        String str3;
        if (i == 0) {
            string = "Source error";
        } else if (i == 1) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(" error, index=");
            sb.append(i2);
            sb.append(", format=");
            sb.append(jc0Var);
            sb.append(", format_supported=");
            int i4 = f92.a;
            if (i3 == 0) {
                str3 = "NO";
            } else if (i3 == 1) {
                str3 = "NO_UNSUPPORTED_TYPE";
            } else if (i3 == 2) {
                str3 = "NO_UNSUPPORTED_DRM";
            } else if (i3 == 3) {
                str3 = "NO_EXCEEDS_CAPABILITIES";
            } else if (i3 == 4) {
                str3 = "YES";
            } else {
                throw new IllegalStateException();
            }
            sb.append(str3);
            string = sb.toString();
        } else if (i != 3) {
            string = "Unexpected runtime error";
        } else {
            string = "Remote error";
        }
        if (TextUtils.isEmpty(str)) {
            return string;
        }
        return string + ": " + str;
    }

    private m60(String str, @Nullable Throwable th, int i, int i2, @Nullable String str2, int i3, @Nullable jc0 jc0Var, int i4, @Nullable vw0.b bVar, long j, boolean z) {
        super(str, th, i, j);
        hg.a(!z || i2 == 1);
        hg.a(th != null || i2 == 3);
        this.d = i2;
        this.e = str2;
        this.f = i3;
        this.g = jc0Var;
        this.h = i4;
        this.i = bVar;
        this.j = z;
    }

    public static m60 a(IOException iOException, int i) {
        return new m60(0, iOException, i, 0);
    }

    public static m60 a(RuntimeException runtimeException, int i) {
        return new m60(2, runtimeException, i, 0);
    }

    @CheckResult
    public final m60 a(@Nullable vw0.b bVar) {
        String message = getMessage();
        int i = f92.a;
        return new m60(message, getCause(), this.b, this.d, this.e, this.f, this.g, this.h, bVar, this.c, this.j);
    }
}
