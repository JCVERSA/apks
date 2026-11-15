package qa;

import android.graphics.drawable.Drawable;
import android.util.Property;
import java.util.WeakHashMap;

public class e extends Property {

    public static final Property f69584b = new e();

    private final WeakHashMap f69585a;

    private e() {
        super(Integer.class, "drawableAlphaCompat");
        this.f69585a = new WeakHashMap();
    }

    @Override
    public Integer get(Drawable drawable) {
        return Integer.valueOf(drawable.getAlpha());
    }

    @Override
    public void set(Drawable drawable, Integer num) {
        drawable.setAlpha(num.intValue());
    }
}
