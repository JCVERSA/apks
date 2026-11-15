package defpackage;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.b0;
import com.google.android.gms.internal.ads.d0;
import com.google.android.gms.internal.ads.e0;
import com.google.android.gms.internal.ads.h;
import com.google.android.gms.internal.ads.t;
import com.google.android.gms.internal.ads.zzavr;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

public abstract class bre implements are {
    public static volatile e0 v;
    public MotionEvent b;
    public double k;
    public double l;
    public double m;
    public float n;
    public float o;
    public float p;
    public float q;
    public DisplayMetrics t;
    public zre u;
    public final LinkedList c = new LinkedList();
    public long d = 0;
    public long e = 0;
    public long f = 0;
    public long g = 0;
    public long h = 0;
    public long i = 0;
    public long j = 0;
    public boolean r = false;
    public boolean s = false;

    public bre(Context context) {
        try {
            b0.e();
            this.t = context.getResources().getDisplayMetrics();
            if (((Boolean) zzbd.zzc().b(cye.a3)).booleanValue()) {
                this.u = new zre();
            }
        } catch (Throwable unused) {
        }
    }

    private final void f() {
        this.h = 0L;
        this.d = 0L;
        this.e = 0L;
        this.f = 0L;
        this.g = 0L;
        this.i = 0L;
        this.j = 0L;
        LinkedList linkedList = this.c;
        if (linkedList.isEmpty()) {
            MotionEvent motionEvent = this.b;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        } else {
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                ((MotionEvent) it.next()).recycle();
            }
            linkedList.clear();
        }
        this.b = null;
    }

    public abstract long a(StackTraceElement[] stackTraceElementArr);

    public abstract ooe b(Context context, View view, Activity activity);

    public abstract ooe c(Context context, h hVar);

    public abstract ooe d(Context context, View view, Activity activity);

    public abstract ise e(MotionEvent motionEvent);

    /* JADX WARN: Code duplicated, block: B:36:0x0081  */
    /* JADX WARN: Code duplicated, block: B:38:0x0085 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x0087  */
    /* JADX WARN: Code duplicated, block: B:40:0x008a  */
    public final String g(Context context, String str, int i, View view, Activity activity, byte[] bArr) {
        d0 d0VarD;
        String str2;
        int i2;
        int i3;
        Exception exc;
        int i4;
        int i5;
        String strB;
        int i6;
        int i7;
        ooe ooeVarC;
        int i8;
        int i9;
        int i10 = i;
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zBooleanValue = ((Boolean) zzbd.zzc().b(cye.M2)).booleanValue();
        ooe ooeVarB = null;
        if (zBooleanValue) {
            d0VarD = v != null ? v.d() : null;
            str2 = "be";
        } else {
            d0VarD = null;
            str2 = null;
        }
        try {
            if (i10 == 3) {
                ooeVarB = b(context, view, activity);
                try {
                    this.r = true;
                    i9 = 1002;
                } catch (Exception e) {
                    exc = e;
                    i2 = 3;
                    i3 = 2;
                    if (zBooleanValue) {
                        if (i10 == i2) {
                            i5 = 1003;
                        } else {
                            if (i10 == i3) {
                                i5 = 1009;
                            } else {
                                i4 = 1001;
                                i10 = 1;
                            }
                            d0VarD.c(i4, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, exc);
                        }
                        i4 = i5;
                        d0VarD.c(i4, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, exc);
                    }
                }
            } else {
                if (i10 == 2) {
                    ooeVarC = d(context, view, activity);
                    i8 = 1008;
                } else {
                    ooeVarC = c(context, null);
                    i8 = 1000;
                }
                ooeVarB = ooeVarC;
                i9 = i8;
            }
            if (!zBooleanValue || d0VarD == null) {
                i2 = 3;
                i3 = 2;
            } else {
                i2 = 3;
                i3 = 2;
                try {
                    d0VarD.c(i9, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, null);
                } catch (Exception e2) {
                    e = e2;
                    exc = e;
                    if (zBooleanValue && d0VarD != null) {
                        if (i10 == i2) {
                            i5 = 1003;
                        } else {
                            if (i10 == i3) {
                                i5 = 1009;
                            } else {
                                i4 = 1001;
                                i10 = 1;
                            }
                            d0VarD.c(i4, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, exc);
                        }
                        i4 = i5;
                        d0VarD.c(i4, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, exc);
                    }
                }
            }
        } catch (Exception e3) {
            e = e3;
            i2 = 3;
            i3 = 2;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (ooeVarB != null) {
            try {
                if (((t) ooeVarB.q()).a() == 0) {
                    strB = Integer.toString(5);
                } else {
                    t tVar = (t) ooeVarB.q();
                    boolean z = b0.a;
                    strB = b0.b(tVar.l(), str);
                    if (zBooleanValue && d0VarD != null) {
                        if (i10 == i2) {
                            i6 = 1006;
                        } else {
                            i6 = i10 == i3 ? 1010 : 1004;
                        }
                        d0VarD.c(i6, -1, System.currentTimeMillis() - jCurrentTimeMillis2, str2, null);
                    }
                }
            } catch (Exception e4) {
                String string = Integer.toString(7);
                if (zBooleanValue && d0VarD != null) {
                    if (i10 == i2) {
                        i7 = 1007;
                    } else {
                        i7 = i10 == i3 ? 1011 : 1005;
                    }
                    d0VarD.c(i7, -1, System.currentTimeMillis() - jCurrentTimeMillis2, str2, e4);
                }
                return string;
            }
        } else {
            strB = Integer.toString(5);
        }
        return strB;
    }

    @Override
    public final String zzd(Context context, String str, View view) {
        return g(context, str, 3, view, null, null);
    }

    @Override
    public final String zze(Context context, String str, View view, Activity activity) {
        return g(context, str, 3, view, activity, null);
    }

    @Override
    public final String zzf(Context context) {
        if (jse.c()) {
            throw new IllegalStateException("The caller must not be called from the UI thread.");
        }
        return g(context, null, 1, null, null, null);
    }

    @Override
    public final String zzg(Context context) {
        return "19";
    }

    @Override
    public final String zzh(Context context, View view, Activity activity) {
        return g(context, null, 2, view, activity, null);
    }

    @Override
    public final synchronized void zzk(MotionEvent motionEvent) {
        Long l;
        try {
            if (this.r) {
                f();
                this.r = false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                this.k = 0.0d;
                this.l = motionEvent.getRawX();
                this.m = motionEvent.getRawY();
            } else if (action == 1 || action == 2) {
                double rawX = motionEvent.getRawX();
                double rawY = motionEvent.getRawY();
                double d = rawX - this.l;
                double d2 = rawY - this.m;
                this.k += Math.sqrt((d * d) + (d2 * d2));
                this.l = rawX;
                this.m = rawY;
            }
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                try {
                    if (action2 == 1) {
                        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                        this.b = motionEventObtain;
                        LinkedList linkedList = this.c;
                        linkedList.add(motionEventObtain);
                        if (linkedList.size() > 6) {
                            ((MotionEvent) linkedList.remove()).recycle();
                        }
                        this.f++;
                        this.h = a(new Throwable().getStackTrace());
                    } else if (action2 == 2) {
                        this.e += (long) (motionEvent.getHistorySize() + 1);
                        ise iseVarE = e(motionEvent);
                        Long l2 = iseVarE.e;
                        if (l2 != null && iseVarE.h != null) {
                            this.i += l2.longValue() + iseVarE.h.longValue();
                        }
                        if (this.t != null && (l = iseVarE.f) != null && iseVarE.i != null) {
                            this.j += l.longValue() + iseVarE.i.longValue();
                        }
                    } else if (action2 == 3) {
                        this.g++;
                    }
                } catch (zzavr unused) {
                }
            } else {
                this.n = motionEvent.getX();
                this.o = motionEvent.getY();
                this.p = motionEvent.getRawX();
                this.q = motionEvent.getRawY();
                this.d++;
            }
            this.s = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void zzl(int i, int i2, int i3) {
        try {
            if (this.b != null) {
                if (((Boolean) zzbd.zzc().b(cye.K2)).booleanValue()) {
                    f();
                } else {
                    this.b.recycle();
                }
            }
            DisplayMetrics displayMetrics = this.t;
            if (displayMetrics != null) {
                float f = displayMetrics.density;
                this.b = MotionEvent.obtain(0L, i3, 1, i * f, i2 * f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            } else {
                this.b = null;
            }
            this.s = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zre zreVar;
        if (!((Boolean) zzbd.zzc().b(cye.a3)).booleanValue() || (zreVar = this.u) == null) {
            return;
        }
        zreVar.b(Arrays.asList(stackTraceElementArr));
    }
}
