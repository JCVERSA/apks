package defpackage;

import android.graphics.Bitmap;
import android.net.Uri;
import com.yandex.div.core.images.BitmapSource;

public class dq0 {
    public final Bitmap a;
    public final Uri b;
    public final byte[] c;
    public final BitmapSource d;

    public dq0(Bitmap bitmap, Uri uri, BitmapSource bitmapSource) {
        this(bitmap, null, uri, bitmapSource);
    }

    public Bitmap a() {
        return this.a;
    }

    public byte[] b() {
        return this.c;
    }

    public Uri c() {
        return this.b;
    }

    public BitmapSource d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        dq0 dq0Var = (dq0) obj;
        if (!this.a.equals(dq0Var.a()) || this.d != dq0Var.d()) {
            return false;
        }
        Uri uriC = dq0Var.c();
        Uri uri = this.b;
        if (uri != null) {
            return uri.equals(uriC);
        }
        return uriC == null;
    }

    public int hashCode() {
        int iHashCode = ((this.a.hashCode() * 31) + this.d.hashCode()) * 31;
        Uri uri = this.b;
        return iHashCode + (uri != null ? uri.hashCode() : 0);
    }

    public dq0(Bitmap bitmap, byte[] bArr, Uri uri, BitmapSource bitmapSource) {
        this.a = bitmap;
        this.b = uri;
        this.c = bArr;
        this.d = bitmapSource;
    }
}
