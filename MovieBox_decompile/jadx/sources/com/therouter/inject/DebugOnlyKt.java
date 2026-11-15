package com.therouter.inject;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.therouter.TheRouterKt;
import dalvik.system.DexFile;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class DebugOnlyKt {

    private static final ArrayList f39773a = new ArrayList();

    private static final ArrayList f39774b = new ArrayList();

    private static final HashMap f39775c = new HashMap();

    private static volatile int f39776d = -1;

    public static final void a(Context context) {
        if (context == null || f39776d >= 0) {
            return;
        }
        f39776d = 0;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
            Intrinsics.g(applicationInfo, "getApplicationInfo(...)");
            Enumeration<String> enumerationEntries = new DexFile(applicationInfo.sourceDir).entries();
            while (enumerationEntries.hasMoreElements()) {
                String strNextElement = enumerationEntries.nextElement();
                Intrinsics.e(strNextElement);
                if (StringsKt.W(strNextElement, "a.ServiceProvider__TheRouter__", false, 2, null) && !StringsKt.c0(strNextElement, "$", false, 2, null)) {
                    try {
                        Class<?> cls = Class.forName(strNextElement);
                        if (b.class.isAssignableFrom(cls) && !Intrinsics.c(b.class, cls)) {
                            ArrayList arrayList = f39773a;
                            Object objNewInstance = cls.newInstance();
                            Intrinsics.f(objNewInstance, "null cannot be cast to non-null type com.therouter.inject.Interceptor");
                            arrayList.add((b) objNewInstance);
                        }
                    } catch (Exception e10) {
                        TheRouterKt.c("RouterInject", "create class error for " + strNextElement, new Function0<Unit>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override
                            public Object invoke() {
                                m300invoke();
                                return Unit.f64096a;
                            }

                            public final void m300invoke() {
                                e10.printStackTrace();
                            }
                        });
                    }
                } else if (StringsKt.W(strNextElement, "a.RouterMap__TheRouter__", false, 2, null) && !StringsKt.c0(strNextElement, "$", false, 2, null)) {
                    try {
                        Class<?> cls2 = Class.forName(strNextElement);
                        if (com.therouter.router.d.class.isAssignableFrom(cls2) && !Intrinsics.c(com.therouter.router.d.class, cls2)) {
                            ArrayList arrayList2 = f39774b;
                            Object objNewInstance2 = cls2.newInstance();
                            Intrinsics.f(objNewInstance2, "null cannot be cast to non-null type com.therouter.router.IRouterMapAPT");
                            arrayList2.add((com.therouter.router.d) objNewInstance2);
                        }
                    } catch (Exception e11) {
                        TheRouterKt.c("RouterInject", "create class error for " + strNextElement, new Function0<Unit>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override
                            public Object invoke() {
                                m301invoke();
                                return Unit.f64096a;
                            }

                            public final void m301invoke() {
                                e11.printStackTrace();
                            }
                        });
                    }
                } else if (StringsKt.G(strNextElement, "__TheRouter__Autowired", false, 2, null) && !StringsKt.c0(strNextElement, "$", false, 2, null)) {
                    try {
                        Class<?> cls3 = Class.forName(strNextElement);
                        Class<?> cls4 = Class.forName(StringsKt.Q(strNextElement, "__TheRouter__Autowired", "", false, 4, null));
                        HashMap map = f39775c;
                        Intrinsics.e(cls4);
                        Method declaredMethod = cls3.getDeclaredMethod("autowiredInject", Object.class);
                        Intrinsics.g(declaredMethod, "getDeclaredMethod(...)");
                        map.put(cls4, declaredMethod);
                    } catch (Exception e12) {
                        TheRouterKt.c("RouterInject", "create class error for " + strNextElement, new Function0<Unit>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override
                            public Object invoke() {
                                m302invoke();
                                return Unit.f64096a;
                            }

                            public final void m302invoke() {
                                e12.printStackTrace();
                            }
                        });
                    }
                }
            }
            f39776d = 1;
        } catch (Exception e13) {
            TheRouterKt.c("RouterInject", "getAllDI error", new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m303invoke();
                    return Unit.f64096a;
                }

                public final void m303invoke() {
                    e13.printStackTrace();
                }
            });
        }
    }

    public static final HashMap b() {
        return f39775c;
    }

    public static final ArrayList c() {
        return f39774b;
    }

    public static final ArrayList d() {
        return f39773a;
    }
}
