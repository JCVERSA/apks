package defpackage;

import android.content.Context;
import android.graphics.RectF;
import com.transsion.hubsdk.api.graphics.TranPath;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;

public final class nl5 {
    public static final nl5 a = new nl5();
    public static final HashMap b = new HashMap();

    public static final String a(Context context, int i) {
        y45.j(context, "context");
        HashMap map = b;
        Integer numValueOf = Integer.valueOf(i);
        Object objB = map.get(numValueOf);
        if (objB == null) {
            objB = b(context, i);
            map.put(numValueOf, objB);
        }
        return (String) objB;
    }

    public static final String b(Context context, int i) {
        y45.j(context, "context");
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
        try {
            y45.i(inputStreamOpenRawResource, "inputStream");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource, qv0.b), 8192);
            try {
                String strC = mha.c(bufferedReader);
                ly0.a(bufferedReader, null);
                ly0.a(inputStreamOpenRawResource, null);
                return strC;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                ly0.a(inputStreamOpenRawResource, th3);
                throw th4;
            }
        }
    }

    public final boolean c(float f, float f2, float f3) {
        if (TranPath.smoothCapsuleEnabled() && f != f2) {
            float f4 = 2 * f3;
            float f5 = f - f4;
            if (f5 > 0.0f) {
                float f6 = f2 - f4;
                if (f6 > 0.0f && (f5 <= 2.0f || f6 <= 2.0f)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean d(RectF rectF, float f) {
        y45.j(rectF, "mShadowRect");
        if (TranPath.smoothCapsuleEnabled() && rectF.width() != rectF.height()) {
            float f2 = 2 * f;
            if (rectF.width() - f2 > 0.0f && rectF.height() - f2 > 0.0f && (rectF.width() - f2 <= 2.0f || rectF.height() - f2 <= 2.0f)) {
                return true;
            }
        }
        return false;
    }
}
