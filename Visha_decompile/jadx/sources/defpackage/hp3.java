package defpackage;

public final class hp3 {
    public final long a;
    public final int b;
    public final String c;

    public hp3(long j, int i, String str) {
        y45.j(str, "mediaPath");
        this.a = j;
        this.b = i;
        this.c = str;
    }

    public final int a() {
        return this.b;
    }

    public final String b() {
        return this.c;
    }

    public final long c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hp3)) {
            return false;
        }
        hp3 hp3Var = (hp3) obj;
        return this.a == hp3Var.a && this.b == hp3Var.b && y45.e(this.c, hp3Var.c);
    }

    public int hashCode() {
        return (((Long.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + this.c.hashCode();
    }

    public String toString() {
        return "FavoriteMediaItem(playlistId=" + this.a + ", mediaId=" + this.b + ", mediaPath=" + this.c + ")";
    }
}
