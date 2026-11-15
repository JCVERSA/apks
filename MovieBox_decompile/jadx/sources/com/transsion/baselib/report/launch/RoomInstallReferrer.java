package com.transsion.baselib.report.launch;

import android.app.Application;
import android.content.pm.PackageInfo;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.transsion.athena.attribution.AttrConstant;
import com.transsion.athena.attribution.SpUtils;
import com.transsion.baselib.helper.ReferrerBean;
import com.transsion.ga.AthenaAnalytics;
import i5.d;
import java.util.HashMap;
import java.util.UUID;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;
import qi.h;

public final class RoomInstallReferrer {

    public static final RoomInstallReferrer f42217a = new RoomInstallReferrer();

    private static i5.a f42218b;

    private static a f42219c;

    public interface a {
        void a(ReferrerBean referrerBean);
    }

    public static final class b implements i5.c {

        final Application f42220a;

        b(Application application) {
            this.f42220a = application;
        }

        @Override
        public void onInstallReferrerServiceDisconnected() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0038 A[PHI: r6
          0x0038: PHI (r6v4 i5.a) = (r6v3 i5.a), (r6v6 i5.a) binds: [B:19:0x004a, B:12:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
        @Override
        public void onInstallReferrerSetupFinished(int i10) {
            i5.a aVar;
            i5.a aVar2 = null;
            try {
                try {
                    try {
                        if (i10 == 0) {
                            RoomInstallReferrer roomInstallReferrer = RoomInstallReferrer.f42217a;
                            Application application = this.f42220a;
                            i5.a aVar3 = RoomInstallReferrer.f42218b;
                            if (aVar3 == null) {
                                Intrinsics.y("referrerClient");
                                aVar3 = null;
                            }
                            d dVarB = aVar3.b();
                            Intrinsics.g(dVarB, "getInstallReferrer(...)");
                            roomInstallReferrer.g(application, dVarB);
                        } else {
                            RoomInstallReferrer.f42217a.h(this.f42220a, String.valueOf(i10));
                        }
                        aVar = RoomInstallReferrer.f42218b;
                        if (aVar == null) {
                            Intrinsics.y("referrerClient");
                        } else {
                            aVar2 = aVar;
                        }
                    } catch (Exception unused) {
                        RoomInstallReferrer.f42217a.h(this.f42220a, "unknown err");
                        aVar = RoomInstallReferrer.f42218b;
                        if (aVar != null) {
                            aVar2 = aVar;
                        }
                    }
                    aVar2.a();
                } catch (Exception unused2) {
                }
            } catch (Throwable th2) {
                try {
                    i5.a aVar4 = RoomInstallReferrer.f42218b;
                    if (aVar4 == null) {
                        Intrinsics.y("referrerClient");
                    } else {
                        aVar2 = aVar4;
                    }
                    aVar2.a();
                } catch (Exception unused3) {
                }
                throw th2;
            }
        }
    }

    private RoomInstallReferrer() {
    }

    public final void g(Application application, d dVar) {
        String strD = dVar.d();
        wf.a.C0922a.f(wf.a.f74274a, "RoomInstallReferrer", "fetchInstallReferrer referrerUrl: " + strD, false, 4, null);
        k.d(o0.a(y0.b()), null, null, new RoomInstallReferrer$fetchInstallReferrer$1(application, strD, dVar, null), 3, null);
    }

    public final void h(Application application, String str) {
        wf.a.C0922a.f(wf.a.f74274a, "RoomInstallReferrer", "fetchInstallReferrerErr msg: " + str, false, 4, null);
        k.d(o0.a(y0.b()), null, null, new RoomInstallReferrer$fetchInstallReferrerErr$1(application, null), 3, null);
    }

    private final void j(c cVar) {
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object k(Continuation continuation) {
        RoomInstallReferrer$waitForPsReferrerResult$1 roomInstallReferrer$waitForPsReferrerResult$1;
        long jCurrentTimeMillis;
        if (continuation instanceof RoomInstallReferrer$waitForPsReferrerResult$1) {
            roomInstallReferrer$waitForPsReferrerResult$1 = (RoomInstallReferrer$waitForPsReferrerResult$1) continuation;
            int i10 = roomInstallReferrer$waitForPsReferrerResult$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                roomInstallReferrer$waitForPsReferrerResult$1.label = i10 - Integer.MIN_VALUE;
            } else {
                roomInstallReferrer$waitForPsReferrerResult$1 = new RoomInstallReferrer$waitForPsReferrerResult$1(this, continuation);
            }
        } else {
            roomInstallReferrer$waitForPsReferrerResult$1 = new RoomInstallReferrer$waitForPsReferrerResult$1(this, continuation);
        }
        Object obj = roomInstallReferrer$waitForPsReferrerResult$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = roomInstallReferrer$waitForPsReferrerResult$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            jCurrentTimeMillis = System.currentTimeMillis();
            String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("k_install_referrer", null);
            if (string != null && string.length() != 0) {
                return Unit.f64096a;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            jCurrentTimeMillis = roomInstallReferrer$waitForPsReferrerResult$1.J$0;
            ResultKt.b(obj);
        }
        do {
            String string2 = SpUtils.getInstance(Utils.a()).getString(AttrConstant.KEY_PS_REF);
            if (string2 != null && string2.length() != 0) {
                wf.a.f74274a.c("SnowballReferrer", "get referrer: " + string2, true);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    android.support.v4.media.session.c.a(o.d(string2, c.class));
                    Intrinsics.e(null);
                    j(null);
                    Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m453constructorimpl(ResultKt.a(th2));
                }
            } else if (System.currentTimeMillis() - jCurrentTimeMillis > 10000) {
                wf.a.f74274a.x("SnowballReferrer", "wait referrer timeout", true);
            } else {
                roomInstallReferrer$waitForPsReferrerResult$1.J$0 = jCurrentTimeMillis;
                roomInstallReferrer$waitForPsReferrerResult$1.label = 1;
            }
            return Unit.f64096a;
        } while (u0.a(500L, roomInstallReferrer$waitForPsReferrerResult$1) != objF);
        return objF;
    }

    public final void e(Application context, a lis) {
        Intrinsics.h(context, "context");
        Intrinsics.h(lis, "lis");
        i5.a aVar = null;
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("k_install_referrer", null);
        if (string != null && string.length() != 0) {
            wf.a.C0922a.f(wf.a.f74274a, "RoomInstallReferrer", "localReferrerUrl:" + string, false, 4, null);
            return;
        }
        f42219c = lis;
        try {
            i5.a aVarA = i5.a.c(context).a();
            f42218b = aVarA;
            if (aVarA == null) {
                Intrinsics.y("referrerClient");
            } else {
                aVar = aVarA;
            }
            aVar.d(new b(context));
        } catch (Exception unused) {
            h(context, "unknown err");
        }
    }

    public final Object f(n0 n0Var, Continuation continuation) {
        try {
            Result.Companion companion = Result.INSTANCE;
            AthenaAnalytics.Y(2570);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        k.d(n0Var, null, null, new RoomInstallReferrer$checkSnowballInstallReferrer$3(null), 3, null);
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0046 A[Catch: Exception -> 0x0040, TryCatch #0 {Exception -> 0x0040, blocks: (B:3:0x000a, B:5:0x0033, B:7:0x0039, B:13:0x004c, B:14:0x0051, B:16:0x0057, B:17:0x005c, B:19:0x0092, B:20:0x00d3, B:22:0x00de, B:23:0x00e1, B:11:0x0046), top: B:27:0x000a }] */
    public final void i(Application context, String referrer, d dVar) {
        Intrinsics.h(context, "context");
        Intrinsics.h(referrer, "referrer");
        try {
            com.transsion.baselib.report.launch.b.f42221a.b().putString("k_install_referrer", referrer);
            HashMap map = new HashMap();
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            ReferrerBean referrerBeanD = com.transsion.baselib.helper.b.f42123a.d(referrer);
            String utmSource = referrerBeanD.getUtmSource();
            if (utmSource == null) {
                utmSource = referrerBeanD.getUtmSource();
            } else {
                if (utmSource.length() == 0) {
                    utmSource = jg.b.f63119a.e(context);
                }
                if (utmSource == null) {
                    utmSource = referrerBeanD.getUtmSource();
                }
            }
            if (utmSource != null) {
                mg.a.f66402a.e(utmSource);
            }
            String utmCampaign = referrerBeanD.getUtmCampaign();
            if (utmCampaign != null) {
                mg.a.f66402a.g(utmCampaign);
            }
            mg.a.C0814a c0814a = mg.a.f66402a;
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "toString(...)");
            c0814a.f(string);
            map.put("install_time", String.valueOf(packageInfo.lastUpdateTime));
            map.put("install_version", packageInfo.versionName);
            map.put("install_referrer", referrer);
            map.put("install_store", jg.b.f63119a.e(context));
            if (dVar != null) {
                map.put("referrer_click_timestamp_seconds", String.valueOf(dVar.f()));
                map.put("install_begin_timestamp_seconds", String.valueOf(dVar.b()));
                map.put("google_play_instant", String.valueOf(dVar.a()));
                map.put("referrer_click_timestamp_server_seconds", String.valueOf(dVar.g()));
                map.put("install_begin_timestamp_server_seconds", String.valueOf(dVar.g()));
            }
            h.f69682a.r("app_install", map);
            a aVar = f42219c;
            if (aVar != null) {
                aVar.a(referrerBeanD);
            }
            f42219c = null;
        } catch (Exception e10) {
            wf.a.C0922a.e(wf.a.f74274a, "RoomInstallReferrer", "", e10, false, 8, null);
        }
    }
}
