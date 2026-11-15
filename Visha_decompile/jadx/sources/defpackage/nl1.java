package defpackage;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.dynamite.DynamiteModule;
import java.lang.reflect.Method;
import org.chromium.net.ApiVersion;
import org.mozilla.classfile.ByteCode;

public abstract class nl1 {
    public static final String a = "nl1";
    public static final aj4 b = aj4.g();
    public static final Object c = new Object();
    public static DynamiteModule d = null;
    public static String e = "0";

    public static boolean a() {
        return b() != null;
    }

    public static DynamiteModule b() {
        DynamiteModule dynamiteModule;
        synchronized (c) {
            dynamiteModule = d;
        }
        return dynamiteModule;
    }

    public static String c() {
        String str;
        synchronized (c) {
            str = e;
        }
        return str;
    }

    public static void d(Context context) {
        synchronized (c) {
            try {
                if (a()) {
                    return;
                }
                wd8.m(context, "Context must not be null");
                try {
                    ((ClassLoader) wd8.l(nl1.class.getClassLoader())).loadClass("org.chromium.net.CronetEngine");
                    int apiLevel = ApiVersion.getApiLevel();
                    aj4 aj4Var = b;
                    aj4Var.l(context, 11925000);
                    try {
                        DynamiteModule dynamiteModuleE = DynamiteModule.e(context, DynamiteModule.b, "com.google.android.gms.cronet_dynamite");
                        try {
                            Class<?> clsLoadClass = dynamiteModuleE.b().getClassLoader().loadClass("org.chromium.net.impl.ImplVersion");
                            if (clsLoadClass.getClassLoader() == nl1.class.getClassLoader()) {
                                Log.e(a, "ImplVersion class is missing from Cronet module.");
                                throw new GooglePlayServicesNotAvailableException(8);
                            }
                            Method method = clsLoadClass.getMethod("getApiLevel", null);
                            Method method2 = clsLoadClass.getMethod("getCronetVersion", null);
                            int iIntValue = ((Integer) wd8.l((Integer) method.invoke(null, null))).intValue();
                            e = (String) wd8.l((String) method2.invoke(null, null));
                            if (apiLevel <= iIntValue) {
                                d = dynamiteModuleE;
                                return;
                            }
                            Intent intentC = aj4Var.c(context, 2, "cr");
                            if (intentC == null) {
                                Log.e(a, "Unable to fetch error resolution intent");
                                throw new GooglePlayServicesNotAvailableException(2);
                            }
                            String str = e;
                            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + ByteCode.FRETURN);
                            sb.append("Google Play Services update is required. The API Level of the client is ");
                            sb.append(apiLevel);
                            sb.append(". The API Level of the implementation is ");
                            sb.append(iIntValue);
                            sb.append(". The Cronet implementation version is ");
                            sb.append(str);
                            throw new GooglePlayServicesRepairableException(2, sb.toString(), intentC);
                        } catch (Exception e2) {
                            Log.e(a, "Unable to read Cronet version from the Cronet module ", e2);
                            throw ((GooglePlayServicesNotAvailableException) new GooglePlayServicesNotAvailableException(8).initCause(e2));
                        }
                    } catch (DynamiteModule.LoadingException e3) {
                        Log.e(a, "Unable to load Cronet module", e3);
                        throw ((GooglePlayServicesNotAvailableException) new GooglePlayServicesNotAvailableException(8).initCause(e3));
                    }
                } catch (ClassNotFoundException e4) {
                    Log.e(a, "Cronet API is not available. Have you included all required dependencies?");
                    throw ((GooglePlayServicesNotAvailableException) new GooglePlayServicesNotAvailableException(10).initCause(e4));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
