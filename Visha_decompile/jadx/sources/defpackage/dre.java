package defpackage;

import android.app.Activity;
import android.content.Context;
import android.net.NetworkCapabilities;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.e0;
import com.google.android.gms.internal.ads.f0;
import com.google.android.gms.internal.ads.h;
import com.google.android.gms.internal.ads.r;
import com.google.android.gms.internal.ads.t;
import com.google.android.gms.internal.ads.zzavr;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public abstract class dre extends bre {
    public static final String A = "dre";
    public static boolean B = false;
    public static long C;
    public static mre D;
    public static ose E;
    public static hse F;
    public static dqe G;
    public static jre H;
    public static final Object z = new Object();
    public final cre w;
    public f0 x;
    public final Map y;

    public dre(Context context, cre creVar) {
        super(context);
        this.y = new HashMap();
        this.w = creVar;
    }

    public static e0 h(Context context, boolean z2) {
        if (bre.v == null) {
            synchronized (z) {
                try {
                    if (bre.v == null) {
                        e0 e0VarG = e0.g(context, "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", z2, H);
                        if (e0VarG.p()) {
                            try {
                                if (((Boolean) zzbd.zzc().b(cye.z3)).booleanValue()) {
                                    e0VarG.r("rQe8PJLfbwONizPw+xh2Ub+YMPsK9pqyg4EcfxDls9WOhulFh+JkcbQMMB9eMbcl", "USGo4fK8tu2EObw67hpZIWsGQtiMhpOtMgr4vW/8mo8=", new Class[0]);
                                }
                            } catch (IllegalStateException unused) {
                            }
                            e0VarG.r("iz9gQH9fy8+DQ5dmHM5IsE5qhetc/WOFR43pNoiTfA0FSUYA7l6ZBI9/6dqo2nxJ", "bVZNxB1JwPjEkFPTuJD4FA5XC3GuZCBoCNxDKZp/rGw=", Context.class);
                            e0VarG.r("xk+cC76rWJdSYf+hRQiAzQoNCf+H79UmYEblYPD4lvbXwBM+eG3Fjmce/aN8ufoO", "ZEsSNRGfbw0bqbaxAG92NStcWABOsDFkwqfauk+C3EM=", Context.class);
                            e0VarG.r("LPK2X6rZ40gCB/Aq86X/xtgAWXMNEk55OhrxDhgRpzoh9HPZZ/0RCmx0fLjxSQow", "y6emfCNhZ0kgm94Xn7mtTAzqT55FluzQgY4gK5Wl0vc=", Context.class);
                            e0VarG.r("S1m7Rc+PrS7sduww0PRRSvJew44X/2pGt6He+X2dcCnhhquTF81e7XXfvkMEzIjw", "AD44oxHubsTxzFMfIPPxyupyLzSfbBYQaKI/MuDqsMs=", Context.class);
                            e0VarG.r("H15E0WS5fFY9seCuALNpJkFkFuaIx1/XSodKeX1rubjSuXoMYEWIVaGutUfPnKqm", "N2hMYZs1ev7Z/FgteF5QqKUc7rf1QopGcozQWEbWilo=", Context.class);
                            Class cls = Boolean.TYPE;
                            e0VarG.r("eOeeCCDaHEKu0CdXgH37stIhKsViYKbWUfDprJIAztyuoZ35HLkPrqpB3uvB5WOW", "mbdIWlqr/AIx3NpqoEZqhPYOK/hsicHKSTj8PTzGR/g=", Context.class, cls);
                            e0VarG.r("gm8IDIIiydkpD1O9/mPMu0ljuW+errJvs62TCchq7IbS1rnNzByjrFjKITopHNdf", "LFMrBRhUND+2ac6pPuv9NGIiF7t3Oz4z8DOZlKEBgm8=", Context.class);
                            e0VarG.r("fKVfiHZPk3J/7s88V7DzlZpEiXT6V6JMDKZcc8OXmSTlXSMCJqbgkpAjwt4Hv42+", "vXYwSfgYAf7Qju1dl2aLGAb3jpSjakcmzbZlMMTwaIs=", Context.class);
                            e0VarG.r("Om9IfrA0mkXwk6YBVgCkODQjI5ysQyrjluS3dq102HuxMCxbLNFqCUDNBpMPbFU1", "jqemu73eNkZh4TcUvt6d5hWsyzZQHDbqHddB8RTEdMQ=", MotionEvent.class, DisplayMetrics.class);
                            e0VarG.r("L7GYvwECiS6MaJNKdGz8FP4C+z1ddoXen7eawreVbbY+BtNORwNMG1KSVEewNNg9", "2YhCirxUBpG1P2HTRY0RQNa8yDAPGqAN9rtG+sOjF8o=", MotionEvent.class, DisplayMetrics.class);
                            e0VarG.r("L8i06sDgb6sVaB+ScHUGdHTAN8wr04xodnQKCwVbFMYOgH4Omnc18MPDEonWn/wv", "HhF1qQiI84tIg0/eB8BMUmrCPWLiUf2p20tCo/SaLzI=", new Class[0]);
                            e0VarG.r("y9sVnCEW90f5Vx2HqIuVcdDKh+hI2qRq1sCpyHGv3MKSudlm5MGW5X5BN8/9lVwY", "EIfBdErCKLHua1LnSPtD4OKhBX6Yh9pp3IQrjV6gKSc=", new Class[0]);
                            e0VarG.r("6gGfGGcmx1E9KiSWvrEfwVv6XPnvjiNvbpksNPDa7IjVt7AgYM1vgnt6WUCH3zMa", "LIwJJPdWSBNAREBH7yVN3RT/pyZ0gZIKN23H3vO2NIc=", new Class[0]);
                            e0VarG.r("GVtnwWIrGNoPqjL1Fje94meezE8Inh8q0aGs9n0MCbVt8vOhfMkdgAbgJriZr+ZA", "EVd3TNrS3JyklQrlg/g4eG7fxshxeFVbto/4/TJxZiw=", new Class[0]);
                            e0VarG.r("H4NeENBKOLO5GsuUIu0GvJZls7gDyB61uJDl+ZI/plLYxQkTY7P5qtOjaPRY3afS", "ZSxlKJLhR/xxP0dGh2CPRvOgPQo1U18GKPodZAq8glc=", new Class[0]);
                            e0VarG.r("PeyDo95+mLfuhrGfIUF5SEyw72I0JaWQ5NIbW3hL7RkHpj+RwbXsQ6AaPluHpgfK", "CW6/cpaua5hmifse/4IBt1RuitjM/M0goFLV8ytgQ+A=", new Class[0]);
                            e0VarG.r("I6IO+LQt3rQ7IR+La1Wf05vP+T+JXIE2+dXiYoVRp9J6etcZYK5uAv7Y0XaXL0/V", "0eX3+h8Ltl5Zobd4L6G06UqDuFfRlHQ71PPApHgzDdE=", Context.class, cls, String.class);
                            e0VarG.r("9wvnViXgITvEao5ly+BRRyQrzFTt3bYFFawK/4VAi8rGNT0AvgE+boySJAbIF/vH", "ZZ4V/Y3/WcXV1iobSsNLXr6TJ7vZy9r1U0ttG6Pb6Z4=", StackTraceElement[].class);
                            e0VarG.r("AjBekD8OAvnbcm+fCHiCamPJ8yOatZla9r0vCGcxk0kvLONYAtrizxoNBJMj4UJd", "1LVA+oN7RWnXoeYH8xRoaxx/0X5kk95KVCfYyybQlO4=", View.class, DisplayMetrics.class, cls, cls);
                            e0VarG.r("l73pWBOU/qyDPWyApDuwt3A6opU9E+7PquXzxCByw4gixPmt031v7ukW//Ddd+VY", "VAZB0ZL6jYmE0jUHUJ0Om2CbCtDd1BstFFxYH2/l7vw=", Context.class, cls);
                            e0VarG.r("pU4fz37mUnFskzkjpWeE6FeP4zxun0Vi/cHUa+ShQyzwB7kVjKkTqY+tD4Acjs+V", "Xr6iV2TsXBCx3do6H/9RIpbcZekNyEQeKhEDMIoivd0=", View.class, Activity.class, cls);
                            e0VarG.r("qIGT98ofDONSt/ESILoFz6FgHDBS/gwI/iVoXkVW/e+gYU6fjAWtMRBwwAhwGXlz", "ndx9dZsZ7ieWidA9GZ0gFhILFKdyE8GGkCplaI9mVx4=", Long.TYPE);
                            e0VarG.r("xpgkXeXWn6DmLYTNzE+nC7rUeDShyzkk1EC10M4IEySUDF2z2+kXtLWXs5Obv1SF", "8+kC10mboFZbM6d8hccBgctoWviYbh/HXHbxMx+5ceA=", new Class[0]);
                            try {
                                if (((Boolean) zzbd.zzc().b(cye.C3)).booleanValue()) {
                                    e0VarG.r("4FdiBUPFa1CQITk8QYb/KC5CZQJZFUk4AUePTkKoIhV1OCu9c96sc0zaEo3W45kz", "CTOO7vS2eGX5K3ZMmh7m+q2y1+wvLadBs0NzJgxSeMo=", Context.class);
                                }
                            } catch (IllegalStateException unused2) {
                            }
                            e0VarG.r("cRdlvWHtqHdBG4CYJ9vkFz7FZQ6cNUJGY3OjBhn/P6+zEhy3yZS0LCAg131OrGtL", "Y2Y/0h0dKABIHQFhVg03WanIPt1ycAKNbAHW8KmGZdA=", Context.class);
                            try {
                                if (((Boolean) zzbd.zzc().b(cye.D3)).booleanValue()) {
                                    Class cls2 = Long.TYPE;
                                    e0VarG.r("WMtAvLUkeJPp5Xeb/kz/NfyzhUYTjmhsar/mdaqDTMDV2KhiERSKZGYNWUWCDAMN", "ZTQGRqHvDNY9rQHlORv5dNEX7nDBWGl9u8ebCYk6vGo=", NetworkCapabilities.class, cls2, cls2);
                                }
                            } catch (IllegalStateException unused3) {
                            }
                            try {
                                if (((Boolean) zzbd.zzc().b(cye.a3)).booleanValue()) {
                                    e0VarG.r("BC7L/NCOnXWRm7JYe+JuyF6kvlir6BpsAS0Yfubd/KoT9Dq97JPNt3OElb9RFD/3", "5el+rCV4lcaWS1gvt3lCAaH+20tOJyIAJrK3BNimLVE=", List.class);
                                }
                            } catch (IllegalStateException unused4) {
                            }
                            try {
                                if (((Boolean) zzbd.zzc().b(cye.S2)).booleanValue()) {
                                    Class cls3 = Long.TYPE;
                                    e0VarG.r("4sDibVZK9eKuFlqXgTpdhhKs2Orw9dH1PELY4zPrs10iomnIsvpd54Iu4NVAy+DZ", "7HL5eN/Pvda4VOei0IPDYI1tAwkOrIcQx+u+McMv8ws=", cls3, cls3, cls3, cls3);
                                } else {
                                    try {
                                        if (((Boolean) zzbd.zzc().b(cye.R2)).booleanValue()) {
                                            e0VarG.r("XpvF2/uvRNELJ1euLlde/4Jw6HxaseM6XnxEZgh8F+D9gojVn7K9cNMJ3MeGBnay", "CMabZGCeVS+h4QS0ZdkH8zZqB5SpBTHljExDl6prBWs=", long[].class, Context.class, View.class);
                                        }
                                    } catch (IllegalStateException unused5) {
                                    }
                                }
                            } catch (IllegalStateException unused6) {
                            }
                        }
                        bre.v = e0VarG;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return bre.v;
    }

    public static ise i(e0 e0Var, MotionEvent motionEvent, DisplayMetrics displayMetrics) throws zzavr {
        Method methodI = e0Var.i("Om9IfrA0mkXwk6YBVgCkODQjI5ysQyrjluS3dq102HuxMCxbLNFqCUDNBpMPbFU1", "jqemu73eNkZh4TcUvt6d5hWsyzZQHDbqHddB8RTEdMQ=");
        if (methodI == null || motionEvent == null) {
            throw new zzavr();
        }
        try {
            return new ise((String) methodI.invoke(null, motionEvent, displayMetrics));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new zzavr(e);
        }
    }

    public static synchronized void k(Context context, cre creVar) {
        try {
            if (B) {
                return;
            }
            C = System.currentTimeMillis() / 1000;
            bre.v = h(context, creVar.a);
            if (((Boolean) zzbd.zzc().b(cye.D3)).booleanValue()) {
                D = mre.c(context);
            }
            ExecutorService executorServiceJ = bre.v.j();
            if (((Boolean) zzbd.zzc().b(cye.E3)).booleanValue() && executorServiceJ != null) {
                E = ose.d(context, executorServiceJ);
            }
            if (((Boolean) zzbd.zzc().b(cye.S2)).booleanValue()) {
                F = new hse();
            }
            if (((Boolean) zzbd.zzc().b(cye.X2)).booleanValue() || creVar.c.h0()) {
                H = new jre(context, executorServiceJ);
            }
            if (((Boolean) zzbd.zzc().b(cye.T2)).booleanValue() || creVar.c.g0()) {
                G = new dqe(context, executorServiceJ, creVar.c, H);
            }
            B = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static final void l(List list) {
        ExecutorService executorServiceJ;
        if (bre.v == null || (executorServiceJ = bre.v.j()) == null || list.isEmpty()) {
            return;
        }
        try {
            executorServiceJ.invokeAll(list, ((Long) zzbd.zzc().b(cye.N2)).longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String str = A;
            char[] cArr = jse.a;
            StringWriter stringWriter = new StringWriter();
            e.printStackTrace(new PrintWriter(stringWriter));
            Log.d(str, String.format("class methods got exception: %s", stringWriter.toString()));
        }
    }

    public static final void n() {
        ose oseVar = E;
        if (oseVar != null) {
            oseVar.h();
        }
    }

    @Override
    public final long a(StackTraceElement[] stackTraceElementArr) throws zzavr {
        Method methodI = bre.v.i("9wvnViXgITvEao5ly+BRRyQrzFTt3bYFFawK/4VAi8rGNT0AvgE+boySJAbIF/vH", "ZZ4V/Y3/WcXV1iobSsNLXr6TJ7vZy9r1U0ttG6Pb6Z4=");
        if (methodI == null || stackTraceElementArr == null) {
            throw new zzavr();
        }
        try {
            return new yre((String) methodI.invoke(null, stackTraceElementArr)).b.longValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new zzavr(e);
        }
    }

    @Override
    public final ooe b(Context context, View view, Activity activity) {
        n();
        if (((Boolean) zzbd.zzc().b(cye.S2)).booleanValue()) {
            F.i();
        }
        cre creVar = this.w;
        ooe ooeVarB0 = t.B0();
        String str = creVar.b;
        if (!TextUtils.isEmpty(str)) {
            ooeVarB0.h0(str);
        }
        j(h(context, creVar.a), ooeVarB0, view, activity, true, context);
        return ooeVarB0;
    }

    @Override
    public final ooe c(Context context, h hVar) {
        ArrayList arrayList;
        long jC;
        long jB;
        n();
        if (((Boolean) zzbd.zzc().b(cye.S2)).booleanValue()) {
            F.j();
        }
        cre creVar = this.w;
        ooe ooeVarB0 = t.B0();
        String str = creVar.b;
        if (!TextUtils.isEmpty(str)) {
            ooeVarB0.h0(str);
        }
        e0 e0VarH = h(context, creVar.a);
        if (e0VarH.j() != null) {
            int iA = e0VarH.a();
            ArrayList arrayList2 = new ArrayList();
            if (e0VarH.p()) {
                arrayList2.add(new tse(e0VarH, "I6IO+LQt3rQ7IR+La1Wf05vP+T+JXIE2+dXiYoVRp9J6etcZYK5uAv7Y0XaXL0/V", "0eX3+h8Ltl5Zobd4L6G06UqDuFfRlHQ71PPApHgzDdE=", ooeVarB0, iA, 27, context, null, creVar.c, G));
                arrayList2.add(new wse(e0VarH, "L8i06sDgb6sVaB+ScHUGdHTAN8wr04xodnQKCwVbFMYOgH4Omnc18MPDEonWn/wv", "HhF1qQiI84tIg0/eB8BMUmrCPWLiUf2p20tCo/SaLzI=", ooeVarB0, C, iA, 25));
                arrayList2.add(new ite(e0VarH, "6gGfGGcmx1E9KiSWvrEfwVv6XPnvjiNvbpksNPDa7IjVt7AgYM1vgnt6WUCH3zMa", "LIwJJPdWSBNAREBH7yVN3RT/pyZ0gZIKN23H3vO2NIc=", ooeVarB0, iA, 1));
                arrayList2.add(new lte(e0VarH, "LPK2X6rZ40gCB/Aq86X/xtgAWXMNEk55OhrxDhgRpzoh9HPZZ/0RCmx0fLjxSQow", "y6emfCNhZ0kgm94Xn7mtTAzqT55FluzQgY4gK5Wl0vc=", ooeVarB0, iA, 31, context));
                arrayList2.add(new qte(e0VarH, "y9sVnCEW90f5Vx2HqIuVcdDKh+hI2qRq1sCpyHGv3MKSudlm5MGW5X5BN8/9lVwY", "EIfBdErCKLHua1LnSPtD4OKhBX6Yh9pp3IQrjV6gKSc=", ooeVarB0, iA, 33));
                arrayList2.add(new sse(e0VarH, "xk+cC76rWJdSYf+hRQiAzQoNCf+H79UmYEblYPD4lvbXwBM+eG3Fjmce/aN8ufoO", "ZEsSNRGfbw0bqbaxAG92NStcWABOsDFkwqfauk+C3EM=", ooeVarB0, iA, 29, context));
                arrayList2.add(new use(e0VarH, "S1m7Rc+PrS7sduww0PRRSvJew44X/2pGt6He+X2dcCnhhquTF81e7XXfvkMEzIjw", "AD44oxHubsTxzFMfIPPxyupyLzSfbBYQaKI/MuDqsMs=", ooeVarB0, iA, 5));
                arrayList2.add(new hte(e0VarH, "H15E0WS5fFY9seCuALNpJkFkFuaIx1/XSodKeX1rubjSuXoMYEWIVaGutUfPnKqm", "N2hMYZs1ev7Z/FgteF5QqKUc7rf1QopGcozQWEbWilo=", ooeVarB0, iA, 12));
                arrayList2.add(new jte(e0VarH, "eOeeCCDaHEKu0CdXgH37stIhKsViYKbWUfDprJIAztyuoZ35HLkPrqpB3uvB5WOW", "mbdIWlqr/AIx3NpqoEZqhPYOK/hsicHKSTj8PTzGR/g=", ooeVarB0, iA, 3));
                arrayList2.add(new vse(e0VarH, "GVtnwWIrGNoPqjL1Fje94meezE8Inh8q0aGs9n0MCbVt8vOhfMkdgAbgJriZr+ZA", "EVd3TNrS3JyklQrlg/g4eG7fxshxeFVbto/4/TJxZiw=", ooeVarB0, iA, 44));
                arrayList2.add(new ate(e0VarH, "H4NeENBKOLO5GsuUIu0GvJZls7gDyB61uJDl+ZI/plLYxQkTY7P5qtOjaPRY3afS", "ZSxlKJLhR/xxP0dGh2CPRvOgPQo1U18GKPodZAq8glc=", ooeVarB0, iA, 22));
                arrayList2.add(new rte(e0VarH, "gm8IDIIiydkpD1O9/mPMu0ljuW+errJvs62TCchq7IbS1rnNzByjrFjKITopHNdf", "LFMrBRhUND+2ac6pPuv9NGIiF7t3Oz4z8DOZlKEBgm8=", ooeVarB0, iA, 48));
                arrayList2.add(new rse(e0VarH, "fKVfiHZPk3J/7s88V7DzlZpEiXT6V6JMDKZcc8OXmSTlXSMCJqbgkpAjwt4Hv42+", "vXYwSfgYAf7Qju1dl2aLGAb3jpSjakcmzbZlMMTwaIs=", ooeVarB0, iA, 49));
                arrayList2.add(new ote(e0VarH, "PeyDo95+mLfuhrGfIUF5SEyw72I0JaWQ5NIbW3hL7RkHpj+RwbXsQ6AaPluHpgfK", "CW6/cpaua5hmifse/4IBt1RuitjM/M0goFLV8ytgQ+A=", ooeVarB0, iA, 51));
                arrayList2.add(new mte(e0VarH, "l73pWBOU/qyDPWyApDuwt3A6opU9E+7PquXzxCByw4gixPmt031v7ukW//Ddd+VY", "VAZB0ZL6jYmE0jUHUJ0Om2CbCtDd1BstFFxYH2/l7vw=", ooeVarB0, iA, 61));
                if (((Boolean) zzbd.zzc().b(cye.D3)).booleanValue()) {
                    ose oseVar = E;
                    if (oseVar != null) {
                        jC = oseVar.c();
                        jB = oseVar.b();
                    } else {
                        jC = -1;
                        jB = -1;
                    }
                    arrayList = arrayList2;
                    arrayList.add(new dte(e0VarH, "WMtAvLUkeJPp5Xeb/kz/NfyzhUYTjmhsar/mdaqDTMDV2KhiERSKZGYNWUWCDAMN", "ZTQGRqHvDNY9rQHlORv5dNEX7nDBWGl9u8ebCYk6vGo=", ooeVarB0, iA, 11, D, jC, jB));
                } else {
                    arrayList = arrayList2;
                }
                if (((Boolean) zzbd.zzc().b(cye.C3)).booleanValue()) {
                    arrayList.add(new kte(e0VarH, "4FdiBUPFa1CQITk8QYb/KC5CZQJZFUk4AUePTkKoIhV1OCu9c96sc0zaEo3W45kz", "CTOO7vS2eGX5K3ZMmh7m+q2y1+wvLadBs0NzJgxSeMo=", ooeVarB0, iA, 73));
                }
                arrayList.add(new bte(e0VarH, "cRdlvWHtqHdBG4CYJ9vkFz7FZQ6cNUJGY3OjBhn/P6+zEhy3yZS0LCAg131OrGtL", "Y2Y/0h0dKABIHQFhVg03WanIPt1ycAKNbAHW8KmGZdA=", ooeVarB0, iA, 76));
                if (((Boolean) zzbd.zzc().b(cye.G3)).booleanValue()) {
                    arrayList.add(new qse(e0VarH, "xpgkXeXWn6DmLYTNzE+nC7rUeDShyzkk1EC10M4IEySUDF2z2+kXtLWXs5Obv1SF", "8+kC10mboFZbM6d8hccBgctoWviYbh/HXHbxMx+5ceA=", ooeVarB0, iA, 89));
                }
            } else {
                ooeVarB0.w(16384L);
                arrayList = arrayList2;
            }
            l(arrayList);
        }
        return ooeVarB0;
    }

    @Override
    public final ooe d(Context context, View view, Activity activity) {
        n();
        if (((Boolean) zzbd.zzc().b(cye.S2)).booleanValue()) {
            F.k(context, view);
        }
        cre creVar = this.w;
        ooe ooeVarB0 = t.B0();
        ooeVarB0.h0(creVar.b);
        j(h(context, creVar.a), ooeVarB0, view, activity, false, context);
        return ooeVarB0;
    }

    @Override
    public final ise e(MotionEvent motionEvent) throws zzavr {
        Method methodI = bre.v.i("L7GYvwECiS6MaJNKdGz8FP4C+z1ddoXen7eawreVbbY+BtNORwNMG1KSVEewNNg9", "2YhCirxUBpG1P2HTRY0RQNa8yDAPGqAN9rtG+sOjF8o=");
        if (methodI == null || motionEvent == null) {
            throw new zzavr();
        }
        try {
            return new ise((String) methodI.invoke(null, motionEvent, this.t));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new zzavr(e);
        }
    }

    public final void j(e0 e0Var, ooe ooeVar, View view, Activity activity, boolean z2, Context context) {
        List listAsList;
        long jC;
        long jB;
        if (e0Var.p()) {
            m(e0Var, ooeVar);
            ArrayList arrayList = new ArrayList();
            if (e0Var.j() != null) {
                int iA = e0Var.a();
                if (((Boolean) zzbd.zzc().b(cye.Z2)).booleanValue()) {
                    arrayList.add(new tse(e0Var, "I6IO+LQt3rQ7IR+La1Wf05vP+T+JXIE2+dXiYoVRp9J6etcZYK5uAv7Y0XaXL0/V", "0eX3+h8Ltl5Zobd4L6G06UqDuFfRlHQ71PPApHgzDdE=", ooeVar, iA, 27, context, null, this.w.c, G));
                    arrayList.add(new sse(e0Var, "xk+cC76rWJdSYf+hRQiAzQoNCf+H79UmYEblYPD4lvbXwBM+eG3Fjmce/aN8ufoO", "ZEsSNRGfbw0bqbaxAG92NStcWABOsDFkwqfauk+C3EM=", ooeVar, iA, 29, context));
                    arrayList.add(new lte(e0Var, "LPK2X6rZ40gCB/Aq86X/xtgAWXMNEk55OhrxDhgRpzoh9HPZZ/0RCmx0fLjxSQow", "y6emfCNhZ0kgm94Xn7mtTAzqT55FluzQgY4gK5Wl0vc=", ooeVar, iA, 31, context));
                    arrayList.add(new qte(e0Var, "y9sVnCEW90f5Vx2HqIuVcdDKh+hI2qRq1sCpyHGv3MKSudlm5MGW5X5BN8/9lVwY", "EIfBdErCKLHua1LnSPtD4OKhBX6Yh9pp3IQrjV6gKSc=", ooeVar, iA, 33));
                    ose oseVar = E;
                    if (oseVar != null) {
                        jC = oseVar.c();
                        jB = oseVar.b();
                    } else {
                        jC = -1;
                        jB = -1;
                    }
                    arrayList.add(new dte(e0Var, "WMtAvLUkeJPp5Xeb/kz/NfyzhUYTjmhsar/mdaqDTMDV2KhiERSKZGYNWUWCDAMN", "ZTQGRqHvDNY9rQHlORv5dNEX7nDBWGl9u8ebCYk6vGo=", ooeVar, iA, 11, D, jC, jB));
                    arrayList.add(new kte(e0Var, "4FdiBUPFa1CQITk8QYb/KC5CZQJZFUk4AUePTkKoIhV1OCu9c96sc0zaEo3W45kz", "CTOO7vS2eGX5K3ZMmh7m+q2y1+wvLadBs0NzJgxSeMo=", ooeVar, iA, 73));
                }
                arrayList.add(new xse(e0Var, ooeVar));
                arrayList.add(new ite(e0Var, "6gGfGGcmx1E9KiSWvrEfwVv6XPnvjiNvbpksNPDa7IjVt7AgYM1vgnt6WUCH3zMa", "LIwJJPdWSBNAREBH7yVN3RT/pyZ0gZIKN23H3vO2NIc=", ooeVar, iA, 1));
                arrayList.add(new wse(e0Var, "L8i06sDgb6sVaB+ScHUGdHTAN8wr04xodnQKCwVbFMYOgH4Omnc18MPDEonWn/wv", "HhF1qQiI84tIg0/eB8BMUmrCPWLiUf2p20tCo/SaLzI=", ooeVar, C, iA, 25));
                arrayList.add(new vse(e0Var, "GVtnwWIrGNoPqjL1Fje94meezE8Inh8q0aGs9n0MCbVt8vOhfMkdgAbgJriZr+ZA", "EVd3TNrS3JyklQrlg/g4eG7fxshxeFVbto/4/TJxZiw=", ooeVar, iA, 44));
                arrayList.add(new hte(e0Var, "H15E0WS5fFY9seCuALNpJkFkFuaIx1/XSodKeX1rubjSuXoMYEWIVaGutUfPnKqm", "N2hMYZs1ev7Z/FgteF5QqKUc7rf1QopGcozQWEbWilo=", ooeVar, iA, 12));
                arrayList.add(new jte(e0Var, "eOeeCCDaHEKu0CdXgH37stIhKsViYKbWUfDprJIAztyuoZ35HLkPrqpB3uvB5WOW", "mbdIWlqr/AIx3NpqoEZqhPYOK/hsicHKSTj8PTzGR/g=", ooeVar, iA, 3));
                arrayList.add(new ate(e0Var, "H4NeENBKOLO5GsuUIu0GvJZls7gDyB61uJDl+ZI/plLYxQkTY7P5qtOjaPRY3afS", "ZSxlKJLhR/xxP0dGh2CPRvOgPQo1U18GKPodZAq8glc=", ooeVar, iA, 22));
                arrayList.add(new use(e0Var, "S1m7Rc+PrS7sduww0PRRSvJew44X/2pGt6He+X2dcCnhhquTF81e7XXfvkMEzIjw", "AD44oxHubsTxzFMfIPPxyupyLzSfbBYQaKI/MuDqsMs=", ooeVar, iA, 5));
                arrayList.add(new rte(e0Var, "gm8IDIIiydkpD1O9/mPMu0ljuW+errJvs62TCchq7IbS1rnNzByjrFjKITopHNdf", "LFMrBRhUND+2ac6pPuv9NGIiF7t3Oz4z8DOZlKEBgm8=", ooeVar, iA, 48));
                arrayList.add(new rse(e0Var, "fKVfiHZPk3J/7s88V7DzlZpEiXT6V6JMDKZcc8OXmSTlXSMCJqbgkpAjwt4Hv42+", "vXYwSfgYAf7Qju1dl2aLGAb3jpSjakcmzbZlMMTwaIs=", ooeVar, iA, 49));
                arrayList.add(new ote(e0Var, "PeyDo95+mLfuhrGfIUF5SEyw72I0JaWQ5NIbW3hL7RkHpj+RwbXsQ6AaPluHpgfK", "CW6/cpaua5hmifse/4IBt1RuitjM/M0goFLV8ytgQ+A=", ooeVar, iA, 51));
                arrayList.add(new nte(e0Var, "9wvnViXgITvEao5ly+BRRyQrzFTt3bYFFawK/4VAi8rGNT0AvgE+boySJAbIF/vH", "ZZ4V/Y3/WcXV1iobSsNLXr6TJ7vZy9r1U0ttG6Pb6Z4=", ooeVar, iA, 45, new Throwable().getStackTrace()));
                arrayList.add(new ste(e0Var, "AjBekD8OAvnbcm+fCHiCamPJ8yOatZla9r0vCGcxk0kvLONYAtrizxoNBJMj4UJd", "1LVA+oN7RWnXoeYH8xRoaxx/0X5kk95KVCfYyybQlO4=", ooeVar, iA, 57, view));
                arrayList.add(new mte(e0Var, "l73pWBOU/qyDPWyApDuwt3A6opU9E+7PquXzxCByw4gixPmt031v7ukW//Ddd+VY", "VAZB0ZL6jYmE0jUHUJ0Om2CbCtDd1BstFFxYH2/l7vw=", ooeVar, iA, 61));
                if (((Boolean) zzbd.zzc().b(cye.O2)).booleanValue()) {
                    arrayList.add(new pse(e0Var, "pU4fz37mUnFskzkjpWeE6FeP4zxun0Vi/cHUa+ShQyzwB7kVjKkTqY+tD4Acjs+V", "Xr6iV2TsXBCx3do6H/9RIpbcZekNyEQeKhEDMIoivd0=", ooeVar, iA, 62, view, activity));
                }
                if (((Boolean) zzbd.zzc().b(cye.G3)).booleanValue()) {
                    arrayList.add(new qse(e0Var, "xpgkXeXWn6DmLYTNzE+nC7rUeDShyzkk1EC10M4IEySUDF2z2+kXtLWXs5Obv1SF", "8+kC10mboFZbM6d8hccBgctoWviYbh/HXHbxMx+5ceA=", ooeVar, iA, 89));
                }
                if (!z2) {
                    try {
                        if (((Boolean) zzbd.zzc().b(cye.R2)).booleanValue()) {
                            arrayList.add(new zse(e0Var, "XpvF2/uvRNELJ1euLlde/4Jw6HxaseM6XnxEZgh8F+D9gojVn7K9cNMJ3MeGBnay", "CMabZGCeVS+h4QS0ZdkH8zZqB5SpBTHljExDl6prBWs=", ooeVar, iA, 85, this.y, view, context));
                        }
                    } catch (IllegalStateException unused) {
                    }
                    try {
                        if (((Boolean) zzbd.zzc().b(cye.S2)).booleanValue()) {
                            arrayList.add(new yse(e0Var, "4sDibVZK9eKuFlqXgTpdhhKs2Orw9dH1PELY4zPrs10iomnIsvpd54Iu4NVAy+DZ", "7HL5eN/Pvda4VOei0IPDYI1tAwkOrIcQx+u+McMv8ws=", ooeVar, iA, 85, F));
                        }
                    } catch (IllegalStateException unused2) {
                    }
                    if (((Boolean) zzbd.zzc().b(cye.a3)).booleanValue()) {
                        arrayList.add(new cte(e0Var, "BC7L/NCOnXWRm7JYe+JuyF6kvlir6BpsAS0Yfubd/KoT9Dq97JPNt3OElb9RFD/3", "5el+rCV4lcaWS1gvt3lCAaH+20tOJyIAJrK3BNimLVE=", ooeVar, iA, 94, this.u));
                    }
                } else if (((Boolean) zzbd.zzc().b(cye.Q2)).booleanValue()) {
                    arrayList.add(new pte(e0Var, "qIGT98ofDONSt/ESILoFz6FgHDBS/gwI/iVoXkVW/e+gYU6fjAWtMRBwwAhwGXlz", "ndx9dZsZ7ieWidA9GZ0gFhILFKdyE8GGkCplaI9mVx4=", ooeVar, iA, 53, this.x));
                }
            }
            listAsList = arrayList;
        } else {
            ooeVar.w(16384L);
            listAsList = Arrays.asList(new xse(e0Var, ooeVar));
        }
        l(listAsList);
    }

    public final synchronized void m(e0 e0Var, ooe ooeVar) {
        MotionEvent motionEvent;
        try {
            try {
                ise iseVarI = i(e0Var, this.b, this.t);
                Long l = iseVarI.b;
                if (l != null) {
                    ooeVar.H(l.longValue());
                }
                Long l2 = iseVarI.c;
                if (l2 != null) {
                    ooeVar.I(l2.longValue());
                }
                Long l3 = iseVarI.d;
                if (l3 != null) {
                    ooeVar.F(l3.longValue());
                }
                if (this.s) {
                    Long l4 = iseVarI.e;
                    if (l4 != null) {
                        ooeVar.E(l4.longValue());
                    }
                    Long l5 = iseVarI.f;
                    if (l5 != null) {
                        ooeVar.A(l5.longValue());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        } catch (zzavr unused) {
        }
        dpe dpeVarB0 = r.b0();
        if (this.d > 0 && jse.e(this.t)) {
            dpeVarB0.y(jse.a(this.k, 1, this.t));
            dpeVarB0.M(jse.a(this.p - this.n, 1, this.t));
            dpeVarB0.N(jse.a(this.q - this.o, 1, this.t));
            dpeVarB0.F(jse.a(this.n, 1, this.t));
            dpeVarB0.H(jse.a(this.o, 1, this.t));
            if (this.s && (motionEvent = this.b) != null) {
                long jA = jse.a(((this.n - this.p) + motionEvent.getRawX()) - this.b.getX(), 1, this.t);
                if (jA != 0) {
                    dpeVarB0.K(jA);
                }
                long jA2 = jse.a(((this.o - this.q) + this.b.getRawY()) - this.b.getY(), 1, this.t);
                if (jA2 != 0) {
                    dpeVarB0.L(jA2);
                }
            }
        }
        try {
            ise iseVarE = e(this.b);
            Long l6 = iseVarE.b;
            if (l6 != null) {
                dpeVarB0.G(l6.longValue());
            }
            Long l7 = iseVarE.c;
            if (l7 != null) {
                dpeVarB0.I(l7.longValue());
            }
            dpeVarB0.E(iseVarE.d.longValue());
            if (this.s) {
                Long l8 = iseVarE.f;
                if (l8 != null) {
                    dpeVarB0.B(l8.longValue());
                }
                Long l9 = iseVarE.e;
                if (l9 != null) {
                    dpeVarB0.C(l9.longValue());
                }
                Long l10 = iseVarE.g;
                if (l10 != null) {
                    dpeVarB0.P(l10.longValue() != 0 ? 2 : 1);
                }
                if (this.e > 0) {
                    Long lValueOf = jse.e(this.t) ? Long.valueOf(Math.round(this.j / this.e)) : null;
                    if (lValueOf != null) {
                        dpeVarB0.w(lValueOf.longValue());
                    } else {
                        dpeVarB0.v();
                    }
                    dpeVarB0.x(Math.round(this.i / this.e));
                }
                Long l11 = iseVarE.j;
                if (l11 != null) {
                    dpeVarB0.z(l11.longValue());
                }
                Long l12 = iseVarE.k;
                if (l12 != null) {
                    dpeVarB0.J(l12.longValue());
                }
                Long l13 = iseVarE.l;
                if (l13 != null) {
                    dpeVarB0.O(l13.longValue() != 0 ? 2 : 1);
                }
            }
        } catch (zzavr unused2) {
        }
        long j = this.h;
        if (j > 0) {
            dpeVarB0.A(j);
        }
        ooeVar.L((r) dpeVarB0.q());
        long j2 = this.d;
        if (j2 > 0) {
            ooeVar.B(j2);
        }
        long j3 = this.e;
        if (j3 > 0) {
            ooeVar.C(j3);
        }
        long j4 = this.f;
        if (j4 > 0) {
            ooeVar.G(j4);
        }
        long j5 = this.g;
        if (j5 > 0) {
            ooeVar.z(j5);
        }
        try {
            LinkedList linkedList = this.c;
            int size = linkedList.size() - 1;
            if (size > 0) {
                ooeVar.b0();
                for (int i = 0; i < size; i++) {
                    ise iseVarI2 = i(bre.v, (MotionEvent) linkedList.get(i), this.t);
                    dpe dpeVarB1 = r.b0();
                    dpeVarB1.G(iseVarI2.b.longValue());
                    dpeVarB1.I(iseVarI2.c.longValue());
                    ooeVar.W((r) dpeVarB1.q());
                }
            }
        } catch (zzavr unused3) {
            ooeVar.b0();
        }
    }

    @Override
    public final void zzo(View view) {
        if (((Boolean) zzbd.zzc().b(cye.Q2)).booleanValue()) {
            if (this.x == null) {
                e0 e0Var = bre.v;
                this.x = new f0(e0Var.a, e0Var.f());
            }
            this.x.d(view);
        }
    }
}
