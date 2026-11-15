package defpackage;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.InputEvent;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzv;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.internal.ads.j8;
import defpackage.wpf;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class wpf {
    public final Context a;
    public final zzg b;
    public final gxg c;
    public final yjg d;
    public final g8i e;
    public final Executor f;
    public final ScheduledExecutorService g;
    public waf h;
    public waf i;

    public wpf(Context context, zzg zzgVar, gxg gxgVar, yjg yjgVar, g8i g8iVar, g8i g8iVar2, ScheduledExecutorService scheduledExecutorService) {
        this.a = context;
        this.b = zzgVar;
        this.c = gxgVar;
        this.d = yjgVar;
        this.e = g8iVar;
        this.f = g8iVar2;
        this.g = scheduledExecutorService;
    }

    public static im5 b(wpf wpfVar, final Uri.Builder builder, String str, InputEvent inputEvent, Integer num) {
        if (num.intValue() != 1) {
            builder.appendQueryParameter((String) zzbd.zzc().b(cye.pa), "10");
            return j8.h(builder.toString());
        }
        Uri.Builder builderBuildUpon = builder.build().buildUpon();
        builderBuildUpon.appendQueryParameter((String) zzbd.zzc().b(cye.qa), "1");
        builderBuildUpon.appendQueryParameter((String) zzbd.zzc().b(cye.pa), "12");
        if (str.contains((CharSequence) zzbd.zzc().b(cye.ra))) {
            builderBuildUpon.authority((String) zzbd.zzc().b(cye.sa));
        }
        return (q7i) j8.n(q7i.zzE(wpfVar.c.b(builderBuildUpon.build(), inputEvent)), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                String str2 = (String) zzbd.zzc().b(cye.pa);
                Uri.Builder builder2 = builder;
                builder2.appendQueryParameter(str2, "12");
                return j8.h(builder2.toString());
            }
        }, wpfVar.f);
    }

    public static im5 c(final wpf wpfVar, String str, final Throwable th) {
        wpfVar.e.i(new Runnable() {
            @Override
            public final void run() {
                wpf.g(this.zza, th);
            }
        });
        return j8.h(str);
    }

    public static im5 d(final wpf wpfVar, Uri.Builder builder, final Throwable th) {
        wpfVar.e.i(new Runnable() {
            @Override
            public final void run() {
                wpf.h(this.zza, th);
            }
        });
        builder.appendQueryParameter((String) zzbd.zzc().b(cye.pa), "9");
        return j8.h(builder.toString());
    }

    public static void g(wpf wpfVar, Throwable th) {
        if (((Boolean) zzbd.zzc().b(cye.ua)).booleanValue()) {
            waf wafVarE = uaf.e(wpfVar.a);
            wpfVar.i = wafVarE;
            wafVarE.b(th, "AttributionReporting.getUpdatedUrlAndRegisterSource");
        } else {
            waf wafVarC = uaf.c(wpfVar.a);
            wpfVar.h = wafVarC;
            wafVarC.b(th, "AttributionReportingSampled.getUpdatedUrlAndRegisterSource");
        }
    }

    public static void h(wpf wpfVar, Throwable th) {
        if (((Boolean) zzbd.zzc().b(cye.ua)).booleanValue()) {
            waf wafVarE = uaf.e(wpfVar.a);
            wpfVar.i = wafVarE;
            wafVarE.b(th, "AttributionReporting");
        } else {
            waf wafVarC = uaf.c(wpfVar.a);
            wpfVar.h = wafVarC;
            wafVarC.b(th, "AttributionReportingSampled");
        }
    }

    public static boolean j(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains((CharSequence) zzbd.zzc().b(cye.na));
    }

    public final im5 e(final String str, Random random) {
        return TextUtils.isEmpty(str) ? j8.h(str) : j8.f(k(str, this.d.a(), random), Throwable.class, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return wpf.c(this.a, str, (Throwable) obj);
            }
        }, this.e);
    }

    public final void i(String str, wth wthVar, Random random, zzv zzvVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        j8.r(j8.o(k(str, this.d.a(), random), ((Integer) zzbd.zzc().b(cye.ta)).intValue(), TimeUnit.MILLISECONDS, this.g), new vpf(this, wthVar, str, zzvVar), this.e);
    }

    public final im5 k(final String str, final InputEvent inputEvent, Random random) {
        try {
            if (!str.contains((CharSequence) zzbd.zzc().b(cye.na)) || this.b.zzN()) {
                return j8.h(str);
            }
            final Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
            builderBuildUpon.appendQueryParameter((String) zzbd.zzc().b(cye.oa), String.valueOf(random.nextInt(Integer.MAX_VALUE)));
            if (inputEvent != null) {
                return (q7i) j8.f((q7i) j8.n(q7i.zzE(this.c.a()), new k7i() {
                    @Override
                    public final im5 zza(Object obj) {
                        return wpf.b(this.a, builderBuildUpon, str, inputEvent, (Integer) obj);
                    }
                }, this.f), Throwable.class, new k7i() {
                    @Override
                    public final im5 zza(Object obj) {
                        return wpf.d(this.a, builderBuildUpon, (Throwable) obj);
                    }
                }, this.e);
            }
            builderBuildUpon.appendQueryParameter((String) zzbd.zzc().b(cye.pa), "11");
            return j8.h(builderBuildUpon.toString());
        } catch (Exception e) {
            return j8.g(e);
        }
    }
}
