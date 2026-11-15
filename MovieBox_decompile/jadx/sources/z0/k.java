package z0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.collection.x0;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

class k extends o {

    private static final Class f76482b;

    private static final Constructor f76483c;

    private static final Method f76484d;

    private static final Method f76485e;

    static {
        Method method;
        Class<?> cls;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e10) {
            Log.e("TypefaceCompatApi24Impl", e10.getClass().getName(), e10);
            method = null;
            cls = null;
            method2 = null;
        }
        f76483c = constructor;
        f76482b = cls;
        f76484d = method2;
        f76485e = method;
    }

    k() {
    }

    private static boolean i(Object obj, ByteBuffer byteBuffer, int i10, int i11, boolean z10) {
        try {
            return ((Boolean) f76484d.invoke(obj, byteBuffer, Integer.valueOf(i10), null, Integer.valueOf(i11), Boolean.valueOf(z10))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private static Typeface j(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f76482b, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f76485e.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean k() {
        Method method = f76484d;
        if (method == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return method != null;
    }

    private static Object l() {
        try {
            return f76483c.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override
    public Typeface a(Context context, y0.e.c cVar, Resources resources, int i10) {
        Object objL = l();
        if (objL == null) {
            return null;
        }
        for (y0.e.d dVar : cVar.a()) {
            ByteBuffer byteBufferB = p.b(context, resources, dVar.b());
            if (byteBufferB == null || !i(objL, byteBufferB, dVar.c(), dVar.e(), dVar.f())) {
                return null;
            }
        }
        return j(objL);
    }

    @Override
    public Typeface b(Context context, CancellationSignal cancellationSignal, androidx.core.provider.k.b[] bVarArr, int i10) {
        Object objL = l();
        if (objL == null) {
            return null;
        }
        x0 x0Var = new x0();
        for (androidx.core.provider.k.b bVar : bVarArr) {
            Uri uriD = bVar.d();
            ByteBuffer byteBufferF = (ByteBuffer) x0Var.get(uriD);
            if (byteBufferF == null) {
                byteBufferF = p.f(context, cancellationSignal, uriD);
                x0Var.put(uriD, byteBufferF);
            }
            if (byteBufferF == null || !i(objL, byteBufferF, bVar.c(), bVar.e(), bVar.f())) {
                return null;
            }
        }
        Typeface typefaceJ = j(objL);
        if (typefaceJ == null) {
            return null;
        }
        return Typeface.create(typefaceJ, i10);
    }
}
