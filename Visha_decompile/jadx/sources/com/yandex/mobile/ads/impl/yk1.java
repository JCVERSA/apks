package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;
import org.mozilla.javascript.ES6Iterator;

public final class yk1 implements sj0 {
    private final cn a;
    private final LinkedHashMap b;
    private final LinkedHashMap c;

    public static final class a {
        private final String a;
        private final fz1 b;

        public a(String str, fz1 fz1Var) {
            y45.j(str, "base64");
            y45.j(fz1Var, PlayAudioData.TAG_SIZE);
            this.a = str;
            this.b = fz1Var;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Preview(base64=" + this.a + ", size=" + this.b + ")";
        }
    }

    public yk1(Context context) {
        this(context, new cn(context));
    }

    @Override
    public final void a(String str, Bitmap bitmap) {
        y45.j(str, "key");
        y45.j(bitmap, ES6Iterator.VALUE_PROPERTY);
        this.b.put(str, bitmap);
    }

    @Override
    public final Bitmap b(xj0 xj0Var) {
        y45.j(xj0Var, "imageValue");
        String strF = xj0Var.f();
        Bitmap bitmap = (Bitmap) this.b.get(strF);
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmapA = this.a.a(xj0Var);
        if (bitmapA == null) {
            return null;
        }
        this.b.put(strF, bitmapA);
        return bitmapA;
    }

    public yk1(Context context, cn cnVar) {
        y45.j(context, "context");
        y45.j(cnVar, "cacheImageProvider");
        this.a = cnVar;
        this.b = new LinkedHashMap();
        this.c = new LinkedHashMap();
    }

    @Override
    public final void a(Map<String, Bitmap> map) {
        y45.j(map, "images");
        this.b.putAll(map);
    }

    @Override
    public final void a(Bitmap bitmap, xj0 xj0Var) {
        y45.j(xj0Var, "key");
        y45.j(bitmap, ES6Iterator.VALUE_PROPERTY);
        String strC = xj0Var.c();
        a aVar = strC != null ? new a(strC, new fz1(xj0Var.g(), xj0Var.a())) : null;
        if (aVar != null) {
            this.c.put(aVar, bitmap);
        }
    }

    @Override
    public final Bitmap a(xj0 xj0Var) {
        y45.j(xj0Var, "imageValue");
        String strC = xj0Var.c();
        a aVar = strC != null ? new a(strC, new fz1(xj0Var.g(), xj0Var.a())) : null;
        if (aVar != null) {
            return (Bitmap) this.c.get(aVar);
        }
        return null;
    }
}
