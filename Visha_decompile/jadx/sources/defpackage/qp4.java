package defpackage;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public final class qp4 {
    public static final qp4 a = new qp4();

    public static final Drawable a(Drawable drawable) {
        return hi4.a.a(drawable);
    }

    public static final Drawable b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return (bArr.length <= 1 || bArr[0] != 71) ? a.d(bArr) : a.c(bArr);
        } catch (Exception e) {
            ja1.Log().w("HisavanaImageRender", "getDrawableFromData failed, error=" + e.getMessage());
            return null;
        }
    }

    public final Drawable c(byte[] bArr) {
        Drawable drawableC = hi4.a.c(bArr);
        return drawableC == null ? d(bArr) : drawableC;
    }

    public final Drawable d(byte[] bArr) {
        return new BitmapDrawable(ul4.a().getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
    }
}
