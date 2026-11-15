package com.transsion.home.repository;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.home.HomePreferencesIntervalTimeDbBean;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.HomePreferencesIntervalTime;
import com.transsion.home.bean.HomePreferencesSubmitRequest;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class HomePreferencesRepository {

    public static final a f44347c = new a(null);

    public static final int f44348d = 8;

    private final yk.b f44349a;

    private final vi.a f44350b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public HomePreferencesRepository(yk.b api, AppDatabase appDatabase) {
        Intrinsics.h(api, "api");
        Intrinsics.h(appDatabase, "appDatabase");
        this.f44349a = api;
        this.f44350b = appDatabase.q1();
    }

    private final boolean e(long j10, HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean, HomePreferencesIntervalTime homePreferencesIntervalTime) {
        long j11;
        long jMax;
        if (homePreferencesIntervalTimeDbBean == null) {
            return true;
        }
        long showInterval = homePreferencesIntervalTime.getShowInterval();
        long closeInterval = homePreferencesIntervalTime.getCloseInterval();
        long chooseInterval = homePreferencesIntervalTime.getChooseInterval();
        if (homePreferencesIntervalTimeDbBean.getShowTime() <= 0 || showInterval <= 0) {
            j11 = 0;
            jMax = 0;
        } else {
            long showTime = homePreferencesIntervalTimeDbBean.getShowTime() + (showInterval * ((long) 1000));
            j11 = 0;
            jMax = Math.max(0L, showTime);
        }
        if (homePreferencesIntervalTimeDbBean.getCloseTime() > j11 && closeInterval > j11) {
            jMax = Math.max(jMax, homePreferencesIntervalTimeDbBean.getCloseTime() + (closeInterval * ((long) 1000)));
        }
        if (homePreferencesIntervalTimeDbBean.getChooseTime() > 0 && chooseInterval > 0) {
            jMax = Math.max(jMax, homePreferencesIntervalTimeDbBean.getChooseTime() + (chooseInterval * ((long) 1000)));
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        boolean z10 = j10 >= jMax;
        wf.a.C0922a.l(c0922a, "HomePreferencesRepository", "----canShow:>>>> " + z10 + " <<<<<, id:" + homePreferencesIntervalTimeDbBean.getId() + ",now:" + j10 + ", showTime:" + homePreferencesIntervalTimeDbBean.getShowTime() + ", closeTime:" + homePreferencesIntervalTimeDbBean.getCloseTime() + ", chooseTime:" + homePreferencesIntervalTimeDbBean.getChooseTime(), false, 4, null);
        return j10 >= jMax;
    }

    public static final Unit h(HomePreferencesIntervalTimeDbBean bean, long j10) {
        Intrinsics.h(bean, "bean");
        bean.setChooseTime(j10);
        return Unit.f64096a;
    }

    public static final Unit j(HomePreferencesIntervalTimeDbBean bean, long j10) {
        Intrinsics.h(bean, "bean");
        bean.setCloseTime(j10);
        return Unit.f64096a;
    }

    public static final Unit l(HomePreferencesIntervalTimeDbBean bean, long j10) {
        Intrinsics.h(bean, "bean");
        bean.setShowTime(j10);
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object n(HomePreferencesConfig homePreferencesConfig, Function2 function2, Continuation continuation) {
        HomePreferencesRepository$updateIntervalRecord$1 homePreferencesRepository$updateIntervalRecord$1;
        HomePreferencesConfig homePreferencesConfig2;
        String str;
        long j10;
        Function2 function3;
        if (continuation instanceof HomePreferencesRepository$updateIntervalRecord$1) {
            homePreferencesRepository$updateIntervalRecord$1 = (HomePreferencesRepository$updateIntervalRecord$1) continuation;
            int i10 = homePreferencesRepository$updateIntervalRecord$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                homePreferencesRepository$updateIntervalRecord$1.label = i10 - Integer.MIN_VALUE;
            } else {
                homePreferencesRepository$updateIntervalRecord$1 = new HomePreferencesRepository$updateIntervalRecord$1(this, continuation);
            }
        } else {
            homePreferencesRepository$updateIntervalRecord$1 = new HomePreferencesRepository$updateIntervalRecord$1(this, continuation);
        }
        Object objB = homePreferencesRepository$updateIntervalRecord$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = homePreferencesRepository$updateIntervalRecord$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                j10 = homePreferencesRepository$updateIntervalRecord$1.J$0;
                String str2 = (String) homePreferencesRepository$updateIntervalRecord$1.L$2;
                function3 = (Function2) homePreferencesRepository$updateIntervalRecord$1.L$1;
                homePreferencesConfig2 = (HomePreferencesConfig) homePreferencesRepository$updateIntervalRecord$1.L$0;
                ResultKt.b(objB);
                str = str2;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objB);
            }
            return Unit.f64096a;
        }
        ResultKt.b(objB);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String labelId = homePreferencesConfig.getLabelId();
        vi.a aVar = this.f44350b;
        homePreferencesConfig2 = homePreferencesConfig;
        homePreferencesRepository$updateIntervalRecord$1.L$0 = homePreferencesConfig2;
        homePreferencesRepository$updateIntervalRecord$1.L$1 = function2;
        homePreferencesRepository$updateIntervalRecord$1.L$2 = labelId;
        homePreferencesRepository$updateIntervalRecord$1.J$0 = jCurrentTimeMillis;
        homePreferencesRepository$updateIntervalRecord$1.label = 1;
        objB = aVar.b(labelId, homePreferencesRepository$updateIntervalRecord$1);
        if (objB == objF) {
            return objF;
        }
        str = labelId;
        j10 = jCurrentTimeMillis;
        function3 = function2;
        HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean = (HomePreferencesIntervalTimeDbBean) objB;
        if (homePreferencesIntervalTimeDbBean == null) {
            homePreferencesIntervalTimeDbBean = new HomePreferencesIntervalTimeDbBean(str, 0L, 0L, 0L, homePreferencesConfig2.getIntervalTime().getShowInterval(), homePreferencesConfig2.getIntervalTime().getCloseInterval(), homePreferencesConfig2.getIntervalTime().getChooseInterval());
        }
        HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean2 = homePreferencesIntervalTimeDbBean;
        HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBeanCopy = homePreferencesIntervalTimeDbBean2.copy((15 & 1) != 0 ? homePreferencesIntervalTimeDbBean2.id : null, (15 & 2) != 0 ? homePreferencesIntervalTimeDbBean2.showTime : 0L, (15 & 4) != 0 ? homePreferencesIntervalTimeDbBean2.closeTime : 0L, (15 & 8) != 0 ? homePreferencesIntervalTimeDbBean2.chooseTime : 0L, (15 & 16) != 0 ? homePreferencesIntervalTimeDbBean2.showIntervalSeconds : homePreferencesConfig2.getIntervalTime().getShowInterval(), (15 & 32) != 0 ? homePreferencesIntervalTimeDbBean2.closeIntervalSeconds : homePreferencesConfig2.getIntervalTime().getCloseInterval(), (15 & 64) != 0 ? homePreferencesIntervalTimeDbBean2.chooseIntervalSeconds : homePreferencesConfig2.getIntervalTime().getChooseInterval());
        function3.invoke(homePreferencesIntervalTimeDbBeanCopy, Boxing.e(j10));
        vi.a aVar2 = this.f44350b;
        homePreferencesRepository$updateIntervalRecord$1.L$0 = null;
        homePreferencesRepository$updateIntervalRecord$1.L$1 = null;
        homePreferencesRepository$updateIntervalRecord$1.L$2 = null;
        homePreferencesRepository$updateIntervalRecord$1.label = 2;
        if (aVar2.a(homePreferencesIntervalTimeDbBeanCopy, homePreferencesRepository$updateIntervalRecord$1) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0101  */
    /* JADX WARN: Code duplicated, block: B:50:0x0122 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:51:0x0123  */
    /* JADX WARN: Code duplicated, block: B:54:0x0130 A[Catch: all -> 0x0046, TryCatch #0 {all -> 0x0046, blocks: (B:13:0x0041, B:52:0x0124, B:54:0x0130, B:55:0x0159, B:48:0x0108), top: B:81:0x0041 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0170  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0123 -> B:52:0x0124). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object f(java.lang.String r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.home.repository.HomePreferencesRepository.f(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object g(HomePreferencesConfig homePreferencesConfig, Continuation continuation) {
        Object objN = n(homePreferencesConfig, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return HomePreferencesRepository.h((HomePreferencesIntervalTimeDbBean) obj, ((Long) obj2).longValue());
            }
        }, continuation);
        return objN == IntrinsicsKt.f() ? objN : Unit.f64096a;
    }

    public final Object i(HomePreferencesConfig homePreferencesConfig, Continuation continuation) {
        Object objN = n(homePreferencesConfig, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return HomePreferencesRepository.j((HomePreferencesIntervalTimeDbBean) obj, ((Long) obj2).longValue());
            }
        }, continuation);
        return objN == IntrinsicsKt.f() ? objN : Unit.f64096a;
    }

    public final Object k(HomePreferencesConfig homePreferencesConfig, Continuation continuation) {
        Object objN = n(homePreferencesConfig, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return HomePreferencesRepository.l((HomePreferencesIntervalTimeDbBean) obj, ((Long) obj2).longValue());
            }
        }, continuation);
        return objN == IntrinsicsKt.f() ? objN : Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object m(String str, List list, Continuation continuation) {
        HomePreferencesRepository$submitPreferences$1 homePreferencesRepository$submitPreferences$1;
        Object objM453constructorimpl;
        if (continuation instanceof HomePreferencesRepository$submitPreferences$1) {
            homePreferencesRepository$submitPreferences$1 = (HomePreferencesRepository$submitPreferences$1) continuation;
            int i10 = homePreferencesRepository$submitPreferences$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                homePreferencesRepository$submitPreferences$1.label = i10 - Integer.MIN_VALUE;
            } else {
                homePreferencesRepository$submitPreferences$1 = new HomePreferencesRepository$submitPreferences$1(this, continuation);
            }
        } else {
            homePreferencesRepository$submitPreferences$1 = new HomePreferencesRepository$submitPreferences$1(this, continuation);
        }
        HomePreferencesRepository$submitPreferences$1 homePreferencesRepository$submitPreferences$2 = homePreferencesRepository$submitPreferences$1;
        Object objC = homePreferencesRepository$submitPreferences$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = homePreferencesRepository$submitPreferences$2.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objC);
                if (list.isEmpty()) {
                    wf.a.C0922a.f(wf.a.f74274a, "HomePreferencesRepository", "submitPreferences skip: empty options, labelId=" + str, false, 4, null);
                    return Unit.f64096a;
                }
                HomePreferencesSubmitRequest homePreferencesSubmitRequest = new HomePreferencesSubmitRequest(str, list);
                Result.Companion companion = Result.INSTANCE;
                yk.b bVar = this.f44349a;
                homePreferencesRepository$submitPreferences$2.L$0 = str;
                homePreferencesRepository$submitPreferences$2.L$1 = list;
                homePreferencesRepository$submitPreferences$2.label = 1;
                objC = yk.b.a.c(bVar, null, homePreferencesSubmitRequest, homePreferencesRepository$submitPreferences$2, 1, null);
                if (objC == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                list = (List) homePreferencesRepository$submitPreferences$2.L$1;
                str = (String) homePreferencesRepository$submitPreferences$2.L$0;
                ResultKt.b(objC);
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) objC);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            wf.a.C0922a.r(wf.a.f74274a, "HomePreferencesRepository", new String[]{"submitPreferences success, labelId=" + str + ", options=" + list}, false, 4, null);
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.l(wf.a.f74274a, "HomePreferencesRepository", "submitPreferences error, labelId=" + str + ", msg=" + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
        }
        return Unit.f64096a;
    }
}
