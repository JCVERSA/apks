package q4;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
import r4.h;
import x4.f;

public class a {

    private final AssetManager f69389d;

    private com.airbnb.lottie.a f69390e;

    private final h f69386a = new h();

    private final Map f69387b = new HashMap();

    private final Map f69388c = new HashMap();

    private String f69391f = ".ttf";

    public a(Drawable.Callback callback, com.airbnb.lottie.a aVar) {
        this.f69390e = aVar;
        if (callback instanceof View) {
            this.f69389d = ((View) callback).getContext().getAssets();
        } else {
            f.c("LottieDrawable must be inside of a view for images to work.");
            this.f69389d = null;
        }
    }

    private Typeface a(r4.b bVar) {
        Typeface typefaceCreateFromAsset;
        String strA = bVar.a();
        Typeface typeface = (Typeface) this.f69388c.get(strA);
        if (typeface != null) {
            return typeface;
        }
        String strC = bVar.c();
        String strB = bVar.b();
        com.airbnb.lottie.a aVar = this.f69390e;
        if (aVar != null) {
            typefaceCreateFromAsset = aVar.b(strA, strC, strB);
            if (typefaceCreateFromAsset == null) {
                typefaceCreateFromAsset = this.f69390e.a(strA);
            }
        } else {
            typefaceCreateFromAsset = null;
        }
        com.airbnb.lottie.a aVar2 = this.f69390e;
        if (aVar2 != null && typefaceCreateFromAsset == null) {
            String strD = aVar2.d(strA, strC, strB);
            if (strD == null) {
                strD = this.f69390e.c(strA);
            }
            if (strD != null) {
                typefaceCreateFromAsset = Typeface.createFromAsset(this.f69389d, strD);
            }
        }
        if (bVar.d() != null) {
            return bVar.d();
        }
        if (typefaceCreateFromAsset == null) {
            typefaceCreateFromAsset = Typeface.createFromAsset(this.f69389d, "fonts/" + strA + this.f69391f);
        }
        this.f69388c.put(strA, typefaceCreateFromAsset);
        return typefaceCreateFromAsset;
    }

    private Typeface e(Typeface typeface, String str) {
        int i10;
        boolean zContains = str.contains("Italic");
        boolean zContains2 = str.contains("Bold");
        if (zContains && zContains2) {
            i10 = 3;
        } else if (zContains) {
            i10 = 2;
        } else {
            i10 = zContains2 ? 1 : 0;
        }
        return typeface.getStyle() == i10 ? typeface : Typeface.create(typeface, i10);
    }

    public Typeface b(r4.b bVar) {
        this.f69386a.b(bVar.a(), bVar.c());
        Typeface typeface = (Typeface) this.f69387b.get(this.f69386a);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceE = e(a(bVar), bVar.c());
        this.f69387b.put(this.f69386a, typefaceE);
        return typefaceE;
    }

    public void c(String str) {
        this.f69391f = str;
    }

    public void d(com.airbnb.lottie.a aVar) {
        this.f69390e = aVar;
    }
}
