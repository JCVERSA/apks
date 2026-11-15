package n7;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.cloud.sdk.commonutil.util.e;

public final class c {

    public static final c f66940a = new c();

    private c() {
    }

    public static final Drawable a(Drawable drawable) {
        return b.f66937a.a(drawable);
    }

    public static final Drawable b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return (bArr.length <= 1 || bArr[0] != 71) ? f66940a.d(bArr) : f66940a.c(bArr);
        } catch (Exception e10) {
            com.cloud.sdk.commonutil.util.c.Log().w("HisavanaImageRender", "getDrawableFromData failed, error=" + e10.getMessage());
            return null;
        }
    }

    private final Drawable c(byte[] bArr) {
        Drawable drawableC = b.f66937a.c(bArr);
        if (drawableC != null) {
            return drawableC;
        }
        Drawable drawableA = a.f66935a.a(bArr);
        return drawableA == null ? d(bArr) : drawableA;
    }

    private final Drawable d(byte[] bArr) {
        return new BitmapDrawable(e.a().getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
    }

    public static final void e() {
        b.f66937a.f();
        a.f66935a.b();
    }
}
