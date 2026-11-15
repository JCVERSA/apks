package z0;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

public class l extends j {

    protected final Class f76486g;

    protected final Constructor f76487h;

    protected final Method f76488i;

    protected final Method f76489j;

    protected final Method f76490k;

    protected final Method f76491l;

    protected final Method f76492m;

    public l() {
        Class clsW;
        Constructor constructorX;
        Method methodT;
        Method methodU;
        Method methodY;
        Method methodS;
        Method methodV;
        try {
            clsW = w();
            constructorX = x(clsW);
            methodT = t(clsW);
            methodU = u(clsW);
            methodY = y(clsW);
            methodS = s(clsW);
            methodV = v(clsW);
        } catch (ClassNotFoundException | NoSuchMethodException e10) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e10.getClass().getName(), e10);
            clsW = null;
            constructorX = null;
            methodT = null;
            methodU = null;
            methodY = null;
            methodS = null;
            methodV = null;
        }
        this.f76486g = clsW;
        this.f76487h = constructorX;
        this.f76488i = methodT;
        this.f76489j = methodU;
        this.f76490k = methodY;
        this.f76491l = methodS;
        this.f76492m = methodV;
    }

    private Object m() {
        try {
            return this.f76487h.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private void n(Object obj) {
        try {
            this.f76491l.invoke(obj, null);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    private boolean o(Context context, Object obj, String str, int i10, int i11, int i12, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f76488i.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean p(Object obj, ByteBuffer byteBuffer, int i10, int i11, int i12) {
        try {
            return ((Boolean) this.f76489j.invoke(obj, byteBuffer, Integer.valueOf(i10), null, Integer.valueOf(i11), Integer.valueOf(i12))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean q(Object obj) {
        try {
            return ((Boolean) this.f76490k.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean r() {
        if (this.f76488i == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f76488i != null;
    }

    @Override
    public Typeface a(Context context, y0.e.c cVar, Resources resources, int i10) {
        if (!r()) {
            return super.a(context, cVar, resources, i10);
        }
        Object objM = m();
        if (objM == null) {
            return null;
        }
        for (y0.e.d dVar : cVar.a()) {
            if (!o(context, objM, dVar.a(), dVar.c(), dVar.e(), dVar.f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(dVar.d()))) {
                n(objM);
                return null;
            }
        }
        if (q(objM)) {
            return j(objM);
        }
        return null;
    }

    @Override
    public Typeface b(Context context, CancellationSignal cancellationSignal, androidx.core.provider.k.b[] bVarArr, int i10) {
        Typeface typefaceJ;
        if (bVarArr.length < 1) {
            return null;
        }
        if (!r()) {
            androidx.core.provider.k.b bVarH = h(bVarArr, i10);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(bVarH.d(), CampaignEx.JSON_KEY_AD_R, cancellationSignal);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(bVarH.e()).setItalic(bVarH.f()).build();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } catch (Throwable th2) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (IOException unused) {
                return null;
            }
        }
        Map mapH = p.h(context, bVarArr, cancellationSignal);
        Object objM = m();
        if (objM == null) {
            return null;
        }
        boolean z10 = false;
        for (androidx.core.provider.k.b bVar : bVarArr) {
            ByteBuffer byteBuffer = (ByteBuffer) mapH.get(bVar.d());
            if (byteBuffer != null) {
                if (!p(objM, byteBuffer, bVar.c(), bVar.e(), bVar.f() ? 1 : 0)) {
                    n(objM);
                    return null;
                }
                z10 = true;
            }
        }
        if (!z10) {
            n(objM);
            return null;
        }
        if (q(objM) && (typefaceJ = j(objM)) != null) {
            return Typeface.create(typefaceJ, i10);
        }
        return null;
    }

    @Override
    public Typeface c(Context context, CancellationSignal cancellationSignal, List list, int i10) {
        return super.c(context, cancellationSignal, list, i10);
    }

    @Override
    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        if (!r()) {
            return super.e(context, resources, i10, str, i11);
        }
        Object objM = m();
        if (objM == null) {
            return null;
        }
        if (!o(context, objM, str, 0, -1, -1, null)) {
            n(objM);
            return null;
        }
        if (q(objM)) {
            return j(objM);
        }
        return null;
    }

    protected Typeface j(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f76486g, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f76492m.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    protected Method s(Class cls) {
        return cls.getMethod("abortCreation", null);
    }

    protected Method t(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    protected Method u(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    protected Method v(Class cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    protected Class w() {
        return Class.forName("android.graphics.FontFamily");
    }

    protected Constructor x(Class cls) {
        return cls.getConstructor(null);
    }

    protected Method y(Class cls) {
        return cls.getMethod("freeze", null);
    }
}
