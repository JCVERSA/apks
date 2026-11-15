package defpackage;

import android.net.Uri;

public class jb8 {
    public Uri a;
    public long b;
    public long c;
    public boolean d;
    public int e;
    public boolean f;
    public boolean g;
    public boolean h;

    public jb8() {
        this.f = true;
        this.g = true;
    }

    public String toString() {
        return "PlayerParameters{playPosition=" + this.b + ", duration=" + this.c + ", isFromNet=" + this.d + ", mediaId='" + this.e + ", autoPlay='" + this.g + ", canChangeSpeed='" + this.f + ", isOverLimitMaxPlatformResolution='" + this.h + ", uri='" + this.a + "'}";
    }

    public jb8(Uri uri, long j, boolean z, boolean z2) {
        this.f = true;
        this.a = uri;
        this.b = j;
        this.d = z;
        this.g = z2;
    }

    public jb8(Uri uri, long j, boolean z, boolean z2, boolean z3) {
        this.a = uri;
        this.b = j;
        this.d = z;
        this.f = z2;
        this.g = z3;
    }

    public jb8(Uri uri, long j, boolean z, int i, long j2) {
        this.f = true;
        this.g = true;
        this.a = uri;
        this.b = j;
        this.c = j2;
        this.d = z;
    }
}
