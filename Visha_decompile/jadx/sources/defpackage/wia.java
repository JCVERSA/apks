package defpackage;

import com.bumptech.glide.load.Key;
import java.security.MessageDigest;

public class wia implements Key {
    public String a;
    public long b;
    public long c;
    public int d;
    public int e;
    public long f;

    public wia(String str, long j, long j2, long j3, int i, int i2) {
        this.a = str;
        this.b = j;
        this.c = j2;
        this.d = i;
        this.e = i2;
        this.f = j3;
    }

    public int a() {
        return this.e;
    }

    public long b() {
        return this.f;
    }

    public long c() {
        return this.c;
    }

    public long d() {
        return this.b;
    }

    public String e() {
        return this.a;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof wia)) {
            return false;
        }
        wia wiaVar = (wia) obj;
        return wiaVar.a.equals(this.a) && wiaVar.b == this.b;
    }

    public int f() {
        return this.d;
    }

    @Override
    public int hashCode() {
        return this.a.hashCode() + ((int) this.b);
    }

    public String toString() {
        return "VideoThumbCacheKey{path=" + this.a + "  timeStamp=" + this.b + '}';
    }

    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(toString().getBytes(Key.CHARSET));
    }
}
