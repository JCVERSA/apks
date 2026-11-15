package defpackage;

import android.graphics.drawable.PictureDrawable;
import java.util.WeakHashMap;

public final class e7a {
    public final WeakHashMap a = new WeakHashMap();

    public final PictureDrawable a(String str) {
        y45.j(str, "imageUrl");
        return (PictureDrawable) this.a.get(str);
    }

    public final void b(String str, PictureDrawable pictureDrawable) {
        y45.j(str, "imageUrl");
        y45.j(pictureDrawable, "pictureDrawable");
        this.a.put(str, pictureDrawable);
    }
}
