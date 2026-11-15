package androidx.media3.datasource.cache;

import java.io.File;

public abstract class h implements Comparable {

    public final String f10506a;

    public final long f10507b;

    public final long f10508c;

    public final boolean f10509d;

    public final File f10510e;

    public final long f10511f;

    public h(String str, long j10, long j11, long j12, File file) {
        this.f10506a = str;
        this.f10507b = j10;
        this.f10508c = j11;
        this.f10509d = file != null;
        this.f10510e = file;
        this.f10511f = j12;
    }

    @Override
    public int compareTo(h hVar) {
        if (!this.f10506a.equals(hVar.f10506a)) {
            return this.f10506a.compareTo(hVar.f10506a);
        }
        long j10 = this.f10507b - hVar.f10507b;
        if (j10 == 0) {
            return 0;
        }
        return j10 < 0 ? -1 : 1;
    }

    public boolean b() {
        return !this.f10509d;
    }

    public boolean d() {
        return this.f10508c == -1;
    }

    public String toString() {
        return "[" + this.f10507b + ", " + this.f10508c + "]";
    }
}
