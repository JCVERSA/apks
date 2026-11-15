package z0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class j extends o {

    private static Class f76477b = null;

    private static Constructor f76478c = null;

    private static Method f76479d = null;

    private static Method f76480e = null;

    private static boolean f76481f = false;

    j() {
    }

    private static boolean i(Object obj, String str, int i10, boolean z10) throws NoSuchMethodException {
        l();
        try {
            return ((Boolean) f76479d.invoke(obj, str, Integer.valueOf(i10), Boolean.valueOf(z10))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static Typeface j(Object obj) throws NoSuchMethodException {
        l();
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f76477b, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f76480e.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    private File k(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(str).st_mode)) {
                return new File(str);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    private static void l() throws NoSuchMethodException {
        Method method;
        Class<?> cls;
        Method method2;
        if (f76481f) {
            return;
        }
        f76481f = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e10) {
            Log.e("TypefaceCompatApi21Impl", e10.getClass().getName(), e10);
            method = null;
            cls = null;
            method2 = null;
        }
        f76478c = constructor;
        f76477b = cls;
        f76479d = method2;
        f76480e = method;
    }

    private static Object m() throws NoSuchMethodException {
        l();
        try {
            return f76478c.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public Typeface a(Context context, y0.e.c cVar, Resources resources, int i10) throws NoSuchMethodException {
        Object objM = m();
        for (y0.e.d dVar : cVar.a()) {
            File fileE = p.e(context);
            if (fileE == null) {
                return null;
            }
            try {
                if (!p.c(fileE, resources, dVar.b())) {
                    return null;
                }
                if (!i(objM, fileE.getPath(), dVar.e(), dVar.f())) {
                    return null;
                }
                fileE.delete();
            } catch (RuntimeException unused) {
                return null;
            } finally {
                fileE.delete();
            }
        }
        return j(objM);
    }

    @Override
    public Typeface b(Context context, CancellationSignal cancellationSignal, androidx.core.provider.k.b[] bVarArr, int i10) {
        if (bVarArr.length < 1) {
            return null;
        }
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
                File fileK = k(parcelFileDescriptorOpenFileDescriptor);
                if (fileK != null && fileK.canRead()) {
                    Typeface typefaceCreateFromFile = Typeface.createFromFile(fileK);
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceCreateFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    Typeface typefaceD = super.d(context, fileInputStream);
                    fileInputStream.close();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceD;
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        } catch (IOException unused) {
            return null;
        }
    }
}
