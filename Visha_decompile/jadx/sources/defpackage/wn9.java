package defpackage;

import android.graphics.Bitmap;

public final class wn9 {
    public static final wn9 d = new wn9();
    public final Object a = new Object();
    public String b;
    public Bitmap c;

    public interface a {
        Bitmap a();
    }

    public static wn9 c() {
        return d;
    }

    public void a() {
        synchronized (this.a) {
            this.b = null;
            this.c = null;
        }
    }

    public String b() {
        String str;
        synchronized (this.a) {
            str = this.b;
        }
        return str;
    }

    public Bitmap d(String str, a aVar) {
        Bitmap bitmap;
        if (str == null || aVar == null) {
            return null;
        }
        synchronized (this.a) {
            try {
                if (str.equals(this.b) && (bitmap = this.c) != null && !bitmap.isRecycled()) {
                    return this.c;
                }
                Bitmap bitmapA = aVar.a();
                if (bitmapA == null) {
                    return null;
                }
                this.b = str;
                this.c = bitmapA;
                return bitmapA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
