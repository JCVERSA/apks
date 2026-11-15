package com.airbnb.lottie;

import android.content.Context;
import java.io.File;

public abstract class d {

    public static boolean f17093a = false;

    private static boolean f17094b = false;

    private static boolean f17095c = true;

    private static boolean f17096d = true;

    private static AsyncUpdates f17097e = AsyncUpdates.AUTOMATIC;

    private static v4.e f17098f;

    private static v4.d f17099g;

    private static volatile v4.g f17100h;

    private static volatile v4.f f17101i;

    private static ThreadLocal f17102j;

    public static void b(String str) {
        if (f17094b) {
            f().a(str);
        }
    }

    public static float c(String str) {
        if (f17094b) {
            return f().b(str);
        }
        return 0.0f;
    }

    public static AsyncUpdates d() {
        return f17097e;
    }

    public static boolean e() {
        return f17096d;
    }

    private static x4.h f() {
        x4.h hVar = (x4.h) f17102j.get();
        if (hVar != null) {
            return hVar;
        }
        x4.h hVar2 = new x4.h();
        f17102j.set(hVar2);
        return hVar2;
    }

    public static boolean g() {
        return f17094b;
    }

    public static File h(Context context) {
        return new File(context.getCacheDir(), "lottie_network_cache");
    }

    public static v4.f i(Context context) {
        if (!f17095c) {
            return null;
        }
        final Context applicationContext = context.getApplicationContext();
        v4.f fVar = f17101i;
        if (fVar == null) {
            synchronized (v4.f.class) {
                try {
                    fVar = f17101i;
                    if (fVar == null) {
                        v4.d dVar = f17099g;
                        if (dVar == null) {
                            dVar = new v4.d() {
                                @Override
                                public final File a() {
                                    return d.h(applicationContext);
                                }
                            };
                        }
                        fVar = new v4.f(dVar);
                        f17101i = fVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return fVar;
    }

    public static v4.g j(Context context) {
        v4.g gVar = f17100h;
        if (gVar == null) {
            synchronized (v4.g.class) {
                try {
                    gVar = f17100h;
                    if (gVar == null) {
                        v4.f fVarI = i(context);
                        v4.e bVar = f17098f;
                        if (bVar == null) {
                            bVar = new v4.b();
                        }
                        gVar = new v4.g(fVarI, bVar);
                        f17100h = gVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return gVar;
    }
}
