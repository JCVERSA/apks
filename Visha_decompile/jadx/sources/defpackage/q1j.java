package defpackage;

import android.content.Context;
import com.google.android.gms.internal.measurement.c;
import com.google.android.gms.internal.measurement.zzif;
import defpackage.q1j;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public abstract class q1j {
    public static volatile b1j h;
    public final y0j a;
    public final String b;
    public final Object c;
    public volatile int d = -1;
    public volatile Object e;
    public final boolean f;
    public static final Object g = new Object();
    public static final AtomicReference i = new AtomicReference();
    public static final x1j j = new x1j(j0j.a, null);
    public static final AtomicInteger k = new AtomicInteger();

    public q1j(y0j y0jVar, String str, Object obj, boolean z, e1j e1jVar) {
        if (y0jVar.b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.a = y0jVar;
        this.b = str;
        this.c = obj;
        this.f = true;
    }

    public static void d() {
        k.incrementAndGet();
    }

    public static void e(final Context context) {
        if (h == null) {
            Object obj = g;
            synchronized (obj) {
                try {
                    if (h == null) {
                        synchronized (obj) {
                            try {
                                b1j b1jVar = h;
                                Context applicationContext = context.getApplicationContext();
                                if (applicationContext != null) {
                                    context = applicationContext;
                                }
                                if (b1jVar == null || b1jVar.a() != context) {
                                    gxi.d();
                                    t1j.b();
                                    tzi.d();
                                    h = new avi(context, c.a(new k2j() {
                                        @Override
                                        public final Object zza() {
                                            Context context2 = context;
                                            Object obj2 = q1j.g;
                                            return vzi.a(context2);
                                        }
                                    }));
                                    k.incrementAndGet();
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public abstract Object a(Object obj);

    /* JADX WARN: Code duplicated, block: B:29:0x0078  */
    /* JADX WARN: Code duplicated, block: B:31:0x007b  */
    /* JADX WARN: Code duplicated, block: B:32:0x007c A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x002f, B:20:0x003d, B:26:0x0069, B:28:0x0073, B:44:0x00a4, B:46:0x00b4, B:48:0x00c8, B:49:0x00cb, B:50:0x00cf, B:32:0x007c, B:34:0x0082, B:38:0x0094, B:40:0x009a, B:43:0x00a2, B:37:0x0092, B:24:0x0059, B:51:0x00d4, B:52:0x00d9, B:53:0x00da), top: B:59:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0082 A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x002f, B:20:0x003d, B:26:0x0069, B:28:0x0073, B:44:0x00a4, B:46:0x00b4, B:48:0x00c8, B:49:0x00cb, B:50:0x00cf, B:32:0x007c, B:34:0x0082, B:38:0x0094, B:40:0x009a, B:43:0x00a2, B:37:0x0092, B:24:0x0059, B:51:0x00d4, B:52:0x00d9, B:53:0x00da), top: B:59:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0090  */
    /* JADX WARN: Code duplicated, block: B:37:0x0092 A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x002f, B:20:0x003d, B:26:0x0069, B:28:0x0073, B:44:0x00a4, B:46:0x00b4, B:48:0x00c8, B:49:0x00cb, B:50:0x00cf, B:32:0x007c, B:34:0x0082, B:38:0x0094, B:40:0x009a, B:43:0x00a2, B:37:0x0092, B:24:0x0059, B:51:0x00d4, B:52:0x00d9, B:53:0x00da), top: B:59:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:40:0x009a A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x002f, B:20:0x003d, B:26:0x0069, B:28:0x0073, B:44:0x00a4, B:46:0x00b4, B:48:0x00c8, B:49:0x00cb, B:50:0x00cf, B:32:0x007c, B:34:0x0082, B:38:0x0094, B:40:0x009a, B:43:0x00a2, B:37:0x0092, B:24:0x0059, B:51:0x00d4, B:52:0x00d9, B:53:0x00da), top: B:59:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:41:0x009f  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a2 A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x002f, B:20:0x003d, B:26:0x0069, B:28:0x0073, B:44:0x00a4, B:46:0x00b4, B:48:0x00c8, B:49:0x00cb, B:50:0x00cf, B:32:0x007c, B:34:0x0082, B:38:0x0094, B:40:0x009a, B:43:0x00a2, B:37:0x0092, B:24:0x0059, B:51:0x00d4, B:52:0x00d9, B:53:0x00da), top: B:59:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b4 A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x002f, B:20:0x003d, B:26:0x0069, B:28:0x0073, B:44:0x00a4, B:46:0x00b4, B:48:0x00c8, B:49:0x00cb, B:50:0x00cf, B:32:0x007c, B:34:0x0082, B:38:0x0094, B:40:0x009a, B:43:0x00a2, B:37:0x0092, B:24:0x0059, B:51:0x00d4, B:52:0x00d9, B:53:0x00da), top: B:59:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c8 A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x002f, B:20:0x003d, B:26:0x0069, B:28:0x0073, B:44:0x00a4, B:46:0x00b4, B:48:0x00c8, B:49:0x00cb, B:50:0x00cf, B:32:0x007c, B:34:0x0082, B:38:0x0094, B:40:0x009a, B:43:0x00a2, B:37:0x0092, B:24:0x0059, B:51:0x00d4, B:52:0x00d9, B:53:0x00da), top: B:59:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00cb A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x002f, B:20:0x003d, B:26:0x0069, B:28:0x0073, B:44:0x00a4, B:46:0x00b4, B:48:0x00c8, B:49:0x00cb, B:50:0x00cf, B:32:0x007c, B:34:0x0082, B:38:0x0094, B:40:0x009a, B:43:0x00a2, B:37:0x0092, B:24:0x0059, B:51:0x00d4, B:52:0x00d9, B:53:0x00da), top: B:59:0x001c }] */
    public final Object b() {
        gxi gxiVarA;
        Object objA;
        String str;
        String strB;
        zzif zzifVar;
        String strA;
        Object objZzb;
        if (!this.f && this.b == null) {
            throw new NullPointerException("flagName must not be null");
        }
        int i2 = k.get();
        if (this.d < i2) {
            synchronized (this) {
                try {
                    if (this.d < i2) {
                        b1j b1jVar = h;
                        if (b1jVar == null) {
                            throw new IllegalStateException("Must call PhenotypeFlag.init() first");
                        }
                        y0j y0jVar = this.a;
                        boolean z = y0jVar.f;
                        if (y0jVar.b != null) {
                            if (yzi.a(b1jVar.a(), this.a.b)) {
                                boolean z2 = this.a.h;
                                gxiVarA = gxi.a(b1jVar.a().getContentResolver(), this.a.b, new Runnable() {
                                    @Override
                                    public final void run() {
                                        q1j.d();
                                    }
                                });
                            }
                            if (gxiVarA != null || (objZzb = gxiVarA.zzb(c())) == null) {
                                objA = null;
                            } else {
                                objA = a(objZzb);
                            }
                            if (objA == null) {
                                if (this.a.e) {
                                    objA = null;
                                } else {
                                    tzi tziVarA = tzi.a(b1jVar.a());
                                    if (this.a.e) {
                                        str = null;
                                    } else {
                                        str = this.b;
                                    }
                                    strB = tziVarA.zzb(str);
                                    if (strB != null) {
                                        objA = a(strB);
                                    } else {
                                        objA = null;
                                    }
                                }
                                if (objA == null) {
                                    objA = this.c;
                                }
                            }
                            zzifVar = (zzif) b1jVar.b().zza();
                            if (zzifVar.zzb()) {
                                yyi yyiVar = (yyi) zzifVar.zza();
                                y0j y0jVar2 = this.a;
                                strA = yyiVar.a(y0jVar2.b, null, y0jVar2.d, this.b);
                                if (strA == null) {
                                    objA = this.c;
                                } else {
                                    objA = a(strA);
                                }
                            }
                            this.e = objA;
                            this.d = i2;
                        } else {
                            Context contextA = b1jVar.a();
                            String str2 = this.a.a;
                            t1j.a(contextA, null, new Runnable() {
                                @Override
                                public final void run() {
                                    q1j.d();
                                }
                            });
                        }
                        gxiVarA = null;
                        if (gxiVarA != null) {
                            objA = null;
                        } else {
                            objA = null;
                        }
                        if (objA == null) {
                            if (this.a.e) {
                                tzi tziVarA2 = tzi.a(b1jVar.a());
                                if (this.a.e) {
                                    str = null;
                                } else {
                                    str = this.b;
                                }
                                strB = tziVarA2.zzb(str);
                                if (strB != null) {
                                    objA = a(strB);
                                } else {
                                    objA = null;
                                }
                            } else {
                                objA = null;
                            }
                            if (objA == null) {
                                objA = this.c;
                            }
                        }
                        zzifVar = (zzif) b1jVar.b().zza();
                        if (zzifVar.zzb()) {
                            yyi yyiVar2 = (yyi) zzifVar.zza();
                            y0j y0jVar3 = this.a;
                            strA = yyiVar2.a(y0jVar3.b, null, y0jVar3.d, this.b);
                            if (strA == null) {
                                objA = this.c;
                            } else {
                                objA = a(strA);
                            }
                        }
                        this.e = objA;
                        this.d = i2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.e;
    }

    public final String c() {
        String str = this.a.d;
        return this.b;
    }
}
