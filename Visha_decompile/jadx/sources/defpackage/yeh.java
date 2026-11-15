package defpackage;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import androidx.privacysandbox.ads.adservices.topics.Topic;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.ta;
import com.google.android.gms.internal.ads.ua;
import defpackage.cye;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class yeh implements eeh {
    public final zzg a;
    public final Context b;
    public final g8i c;
    public final ScheduledExecutorService d;
    public final ixg e;
    public final enh f;
    public final VersionInfoParcel g;

    public yeh(zzg zzgVar, Context context, g8i g8iVar, ScheduledExecutorService scheduledExecutorService, ixg ixgVar, enh enhVar, VersionInfoParcel versionInfoParcel) {
        this.a = zzgVar;
        this.b = context;
        this.c = g8iVar;
        this.d = scheduledExecutorService;
        this.e = ixgVar;
        this.f = enhVar;
        this.g = versionInfoParcel;
    }

    public static im5 a(yeh yehVar, final Throwable th) {
        afh afhVar;
        yehVar.c.i(new Runnable() {
            @Override
            public final void run() {
                boolean zBooleanValue = ((Boolean) zzbd.zzc().b(cye.Aa)).booleanValue();
                Throwable th2 = th;
                if (zBooleanValue) {
                    zzv.zzp().y(th2, "TopicsSignalUnsampled.fetchTopicsSignal");
                } else {
                    zzv.zzp().w(th2, "TopicsSignal.fetchTopicsSignal");
                }
            }
        });
        if (th instanceof SecurityException) {
            afhVar = new afh("", 2, null);
        } else if (th instanceof IllegalStateException) {
            afhVar = new afh("", 3, null);
        } else if (th instanceof IllegalArgumentException) {
            afhVar = new afh("", 4, null);
        } else {
            afhVar = th instanceof TimeoutException ? new afh("", 5, null) : new afh("", 0, null);
        }
        return j8.h(afhVar);
    }

    @Override
    public final int zza() {
        return 56;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003a  */
    /* JADX WARN: Code duplicated, block: B:12:0x0050  */
    /* JADX WARN: Code duplicated, block: B:14:0x0064  */
    /* JADX WARN: Code duplicated, block: B:17:0x0077  */
    /* JADX WARN: Code duplicated, block: B:20:0x008a  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009e, code lost:
    
        if (java.util.Arrays.asList(r0.split(io.appmetrica.analytics.coreutils.internal.StringUtils.COMMA)).contains(r5.b.getPackageName()) != false) goto L30;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final im5 zzb() {
        im5 im5VarG;
        String str;
        if (((Boolean) zzbd.zzc().b(cye.za)).booleanValue() && this.a.zzO()) {
            if (((Boolean) zzbd.zzc().b(cye.Da)).booleanValue()) {
                if (this.f.d.zzy != RequestConfiguration.PublisherPrivacyPersonalizationState.DISABLED.getValue()) {
                    if (this.g.clientJarVersion >= ((Integer) zzbd.zzc().b(cye.xa)).intValue()) {
                        if (Build.VERSION.SDK_INT >= ((Integer) zzbd.zzc().b(cye.ya)).intValue()) {
                            if (((Boolean) zzbd.zzc().b(cye.va)).booleanValue()) {
                                str = (String) zzbd.zzc().b(cye.wa);
                                if (!TextUtils.isEmpty(str)) {
                                }
                            }
                            try {
                                im5VarG = j8.o(this.e.a(false), ((Integer) zzbd.zzc().b(cye.Ba)).intValue(), TimeUnit.MILLISECONDS, this.d);
                            } catch (Exception e) {
                                im5VarG = j8.g(e);
                            }
                            q7i q7iVarZzE = q7i.zzE(im5VarG);
                            k7i k7iVar = new k7i() {
                                @Override
                                public final im5 zza(Object obj) {
                                    GetTopicsResponse getTopicsResponse = (GetTopicsResponse) obj;
                                    if (getTopicsResponse == null) {
                                        return j8.h(new afh("", 1, null));
                                    }
                                    hvi hviVarB0 = ua.b0();
                                    for (Topic topic : getTopicsResponse.getTopics()) {
                                        gvi gviVarB0 = ta.b0();
                                        gviVarB0.x(topic.getTopicCode());
                                        gviVarB0.v(topic.getModelVersion());
                                        gviVarB0.w(topic.getTaxonomyVersion());
                                        hviVarB0.v((ta) gviVarB0.q());
                                    }
                                    return j8.h(new afh(Base64.encodeToString(((ua) hviVarB0.q()).l(), 1), 1, null));
                                }
                            };
                            g8i g8iVar = this.c;
                            return j8.o((q7i) j8.f((q7i) j8.n(q7iVarZzE, k7iVar, g8iVar), Throwable.class, new k7i() {
                                @Override
                                public final im5 zza(Object obj) {
                                    return yeh.a(this.a, (Throwable) obj);
                                }
                            }, g8iVar), ((Integer) zzbd.zzc().b(cye.Ba)).intValue(), TimeUnit.MILLISECONDS, this.d);
                        }
                    }
                }
            } else {
                if (this.g.clientJarVersion >= ((Integer) zzbd.zzc().b(cye.xa)).intValue()) {
                    if (Build.VERSION.SDK_INT >= ((Integer) zzbd.zzc().b(cye.ya)).intValue()) {
                        if (((Boolean) zzbd.zzc().b(cye.va)).booleanValue()) {
                            str = (String) zzbd.zzc().b(cye.wa);
                            if (!TextUtils.isEmpty(str)) {
                            }
                        }
                        im5VarG = j8.o(this.e.a(false), ((Integer) zzbd.zzc().b(cye.Ba)).intValue(), TimeUnit.MILLISECONDS, this.d);
                        q7i q7iVarZzE2 = q7i.zzE(im5VarG);
                        k7i k7iVar2 = new k7i() {
                            @Override
                            public final im5 zza(Object obj) {
                                GetTopicsResponse getTopicsResponse = (GetTopicsResponse) obj;
                                if (getTopicsResponse == null) {
                                    return j8.h(new afh("", 1, null));
                                }
                                hvi hviVarB0 = ua.b0();
                                for (Topic topic : getTopicsResponse.getTopics()) {
                                    gvi gviVarB0 = ta.b0();
                                    gviVarB0.x(topic.getTopicCode());
                                    gviVarB0.v(topic.getModelVersion());
                                    gviVarB0.w(topic.getTaxonomyVersion());
                                    hviVarB0.v((ta) gviVarB0.q());
                                }
                                return j8.h(new afh(Base64.encodeToString(((ua) hviVarB0.q()).l(), 1), 1, null));
                            }
                        };
                        g8i g8iVar2 = this.c;
                        return j8.o((q7i) j8.f((q7i) j8.n(q7iVarZzE2, k7iVar2, g8iVar2), Throwable.class, new k7i() {
                            @Override
                            public final im5 zza(Object obj) {
                                return yeh.a(this.a, (Throwable) obj);
                            }
                        }, g8iVar2), ((Integer) zzbd.zzc().b(cye.Ba)).intValue(), TimeUnit.MILLISECONDS, this.d);
                    }
                }
            }
        }
        return j8.h(new afh("", -1, null));
    }
}
