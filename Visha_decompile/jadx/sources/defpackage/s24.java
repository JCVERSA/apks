package defpackage;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.HashMap;
import java.util.Map;

public class s24 {
    public final AssetManager d;
    public final jw6 a = new jw6();
    public final Map b = new HashMap();
    public final Map c = new HashMap();
    public String e = ".ttf";

    public s24(Drawable.Callback callback, r24 r24Var) {
        if (callback instanceof View) {
            this.d = ((View) callback).getContext().getAssets();
        } else {
            mq5.c("LottieDrawable must be inside of a view for images to work.");
            this.d = null;
        }
    }

    public final Typeface a(q24 q24Var) {
        String strA = q24Var.a();
        Typeface typeface = (Typeface) this.c.get(strA);
        if (typeface != null) {
            return typeface;
        }
        q24Var.c();
        q24Var.b();
        if (q24Var.d() != null) {
            return q24Var.d();
        }
        Typeface typefaceCreateFromAsset = Typeface.createFromAsset(this.d, "fonts/" + strA + this.e);
        this.c.put(strA, typefaceCreateFromAsset);
        return typefaceCreateFromAsset;
    }

    public Typeface b(q24 q24Var) {
        this.a.b(q24Var.a(), q24Var.c());
        Typeface typeface = (Typeface) this.b.get(this.a);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceE = e(a(q24Var), q24Var.c());
        this.b.put(this.a, typefaceE);
        return typefaceE;
    }

    public void c(String str) {
        this.e = str;
    }

    public void d(r24 r24Var) {
    }

    public final Typeface e(Typeface typeface, String str) {
        int i;
        boolean zContains = str.contains("Italic");
        boolean zContains2 = str.contains("Bold");
        if (zContains && zContains2) {
            i = 3;
        } else if (zContains) {
            i = 2;
        } else {
            i = zContains2 ? 1 : 0;
        }
        return typeface.getStyle() == i ? typeface : Typeface.create(typeface, i);
    }
}
