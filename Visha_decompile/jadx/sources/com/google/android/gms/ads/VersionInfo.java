package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import java.util.Locale;

public class VersionInfo {
    public final int a;
    public final int b;
    public final int c;

    public VersionInfo(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public int getMajorVersion() {
        return this.a;
    }

    public int getMicroVersion() {
        return this.c;
    }

    public int getMinorVersion() {
        return this.b;
    }

    @NonNull
    public String toString() {
        return String.format(Locale.US, "%d.%d.%d", Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c));
    }
}
