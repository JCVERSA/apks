package com.cloud.hisavana.sdk.manager;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.j;
import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.sdk.Y0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.SSPParamSplicedResult;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomTabConfigDTO;
import com.cloud.hisavana.sdk.n2;
import com.cloud.hisavana.sdk.t3;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.m;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

public final class a {

    private static boolean f22002g;

    private static volatile long f22004i;

    private static WeakReference f22007l;

    private static boolean f22008m;

    private static boolean f22009n;

    private static boolean f22010o;

    private static long f22011p;

    private static long f22012q;

    private static androidx.browser.customtabs.f f22016u;

    private static CustomTabsClient f22017v;

    private static j f22018w;

    private static boolean f22019x;

    public static final a f21996a = new a();

    private static Long f21997b = 0L;

    private static Long f21998c = 0L;

    private static Long f21999d = 0L;

    private static Integer f22000e = 0;

    private static Integer f22001f = 0;

    private static Integer f22003h = 0;

    private static String f22005j = "";

    private static String f22006k = "";

    private static long f22013r = -1;

    private static long f22014s = -1;

    private static long f22015t = -1;

    private static final e f22020y = new e();

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager", f = "CustomTabsManager.kt", l = {515}, m = "bindCCTServiceAndCreatSession")
    static final class C0283a extends ContinuationImpl {

        Object f22021a;

        boolean f22022b;

        Object f22023c;

        int f22025e;

        C0283a(Continuation<? super C0283a> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.f22023c = obj;
            this.f22025e |= Integer.MIN_VALUE;
            return a.this.h(null, false, this);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)I"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$bindCCTServiceAndCreatSession$isBindServiceSuccess$1", f = "CustomTabsManager.kt", l = {516}, m = "invokeSuspend")
    static final class b extends SuspendLambda implements Function2<n0, Continuation<? super Integer>, Object> {

        int f22026a;

        final Context f22027b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Context context, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f22027b = context;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Integer> continuation) {
            return ((b) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new b(this.f22027b, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.f22026a;
            if (i10 == 0) {
                ResultKt.b(obj);
                a aVar = a.f21996a;
                Context context = this.f22027b;
                this.f22026a = 1;
                obj = aVar.g(context, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return obj;
        }
    }

    public static final class c extends androidx.browser.customtabs.f {

        final n f22028a;

        c(n nVar) {
            this.f22028a = nVar;
        }

        @Override
        public void onBindingDied(ComponentName componentName) {
            super.onBindingDied(componentName);
            a.f21996a.j0();
            b4.b().d("CustomTabsManager", "cct onBindingDied");
        }

        @Override
        public void onCustomTabsServiceConnected(ComponentName name, CustomTabsClient client) {
            Intrinsics.h(name, "name");
            Intrinsics.h(client, "client");
            b4.b().d("CustomTabsManager", "onCustomTabsServiceConnected");
            a.f22017v = client;
            try {
                if (this.f22028a.isActive()) {
                    n nVar = this.f22028a;
                    Result.Companion companion = Result.INSTANCE;
                    nVar.resumeWith(Result.m453constructorimpl(0));
                }
            } catch (Throwable th2) {
                b4.b().d("CustomTabsManager", "cct onCustomTabsServiceConnected", th2);
            }
        }

        @Override
        public void onNullBinding(ComponentName componentName) {
            super.onNullBinding(componentName);
            a.f21996a.j0();
            b4.b().d("CustomTabsManager", "cct onNullBinding");
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            Intrinsics.h(componentName, "componentName");
            a.f21996a.j0();
            b4.b().d("CustomTabsManager", "cct onServiceDisconnected");
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$bindCustomTabsService$2$2", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
    static final class d extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {

        int f22029a;

        final Context f22030b;

        final n f22031c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Context context, n nVar, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f22030b = context;
            this.f22031c = nVar;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((d) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new d(this.f22030b, this.f22031c, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.f22029a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            try {
                Context context = this.f22030b;
                androidx.browser.customtabs.f fVar = a.f22016u;
                Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.browser.customtabs.CustomTabsServiceConnection");
                boolean zA = CustomTabsClient.a(context, "com.android.chrome", fVar);
                if (!zA) {
                    n nVar = this.f22031c;
                    Result.Companion companion = Result.INSTANCE;
                    nVar.resumeWith(Result.m453constructorimpl(Boxing.d(TaErrorCode.CLICK_ERROR_CODE_CCT_BIND_FAILED)));
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("bindCustomTabsService, result=");
                sb2.append(zA);
            } catch (Throwable unused) {
            }
            return Unit.f64096a;
        }
    }

    public static final class e extends androidx.browser.customtabs.c {

        public static final class C0284a implements m.b {
            C0284a() {
            }

            @Override
            public void a(String str) {
                a.f21996a.N(str);
            }
        }

        e() {
        }

        @Override
        public void onNavigationEvent(int i10, Bundle bundle) {
            switch (i10) {
                case 1:
                    b4.b().d("CustomTabsManager", "onNavigationEvent, NAVIGATION_STARTED");
                    if (a.f22011p == 0) {
                        a.f22011p = System.currentTimeMillis();
                    }
                    break;
                case 2:
                    b4.b().d("CustomTabsManager", "onNavigationEvent, NAVIGATION_FINISHED");
                    if (a.f22014s == -1) {
                        a.f22014s = System.currentTimeMillis() - a.f22011p;
                        b4.b().d("CustomTabsManager", "onNavigationEvent, NAVIGATION_FINISHED, time taken: " + a.f22014s + " ms");
                        a.f21996a.H(0, a.f22014s);
                    }
                    break;
                case 3:
                    if (a.f22014s == -1 && a.f22015t == -1) {
                        a.f22015t = System.currentTimeMillis() - a.f22011p;
                        a.f21996a.n(TaErrorCode.CCT_LOAD_FAILED, a.f22015t);
                    }
                    b4.b().e("CustomTabsManager", "onNavigationEvent, NAVIGATION_FAILED");
                    break;
                case 4:
                    if (a.f22013r == -1) {
                        a.f22013r = System.currentTimeMillis() - a.f22011p;
                    }
                    b4.b().e("CustomTabsManager", "onNavigationEvent, NAVIGATION_ABORTED");
                    break;
                case 5:
                    b4.b().d("CustomTabsManager", "onNavigationEvent, TAB_SHOWN");
                    a.f22009n = false;
                    if (a.f22008m) {
                        a.f22008m = false;
                        m.k(new C0284a());
                    }
                    break;
                case 6:
                    a.f22009n = true;
                    b4.b().d("CustomTabsManager", "onNavigationEvent, TAB_HIDDEN");
                    a.f21996a.N("");
                    break;
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkAndLaunchCCTLandingPage$1", f = "CustomTabsManager.kt", l = {634, 637, 644, 650}, m = "invokeSuspend")
    static final class f extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {

        Object f22032a;

        Object f22033b;

        int f22034c;

        final Context f22035d;

        final AdsDTO f22036e;

        final DownUpPointBean f22037f;

        final Function1<Integer, Unit> f22038g;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 9, 0})
        @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkAndLaunchCCTLandingPage$1$1", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
        static final class C0285a extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {

            int f22039a;

            final Function1<Integer, Unit> f22040b;

            final Ref.IntRef f22041c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0285a(Function1<? super Integer, Unit> function1, Ref.IntRef intRef, Continuation<? super C0285a> continuation) {
                super(2, continuation);
                this.f22040b = function1;
                this.f22041c = intRef;
            }

            @Override
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((C0285a) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C0285a(this.f22040b, this.f22041c, continuation);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.f();
                if (this.f22039a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                this.f22040b.invoke(Boxing.d(this.f22041c.element));
                return Unit.f64096a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        f(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Function1<? super Integer, Unit> function1, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f22035d = context;
            this.f22036e = adsDTO;
            this.f22037f = downUpPointBean;
            this.f22038g = function1;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((f) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new f(this.f22035d, this.f22036e, this.f22037f, this.f22038g, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:31:0x007f  */
        /* JADX WARN: Code duplicated, block: B:36:0x0088 A[Catch: all -> 0x00e3, TryCatch #0 {all -> 0x00e3, blocks: (B:8:0x0014, B:13:0x0029, B:47:0x00bf, B:49:0x00ca, B:16:0x0036, B:41:0x00a1, B:19:0x003e, B:29:0x0077, B:36:0x0088, B:37:0x008b, B:22:0x0045, B:24:0x0063, B:26:0x0069, B:43:0x00ab, B:48:0x00c8), top: B:55:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:37:0x008b A[Catch: all -> 0x00e3, TryCatch #0 {all -> 0x00e3, blocks: (B:8:0x0014, B:13:0x0029, B:47:0x00bf, B:49:0x00ca, B:16:0x0036, B:41:0x00a1, B:19:0x003e, B:29:0x0077, B:36:0x0088, B:37:0x008b, B:22:0x0045, B:24:0x0063, B:26:0x0069, B:43:0x00ab, B:48:0x00c8), top: B:55:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:39:0x009f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:40:0x00a0  */
        /* JADX WARN: Code duplicated, block: B:51:0x00e2 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            Ref.IntRef intRef;
            Ref.IntRef intRef2;
            int iIntValue;
            a2 a2VarC;
            C0285a c0285a;
            Object objF = IntrinsicsKt.f();
            int i10 = this.f22034c;
            try {
                if (i10 == 0) {
                    ResultKt.b(obj);
                    intRef = new Ref.IntRef();
                    intRef.element = -1;
                    a aVar = a.f21996a;
                    aVar.d0();
                    a.f22012q = System.currentTimeMillis();
                    int iA = aVar.a(this.f22035d, this.f22036e);
                    if (iA != 0) {
                        intRef.element = iA;
                    } else if (aVar.U(true)) {
                        Context context = this.f22035d;
                        AdsDTO adsDTO = this.f22036e;
                        DownUpPointBean downUpPointBean = this.f22037f;
                        this.f22032a = intRef;
                        this.f22033b = intRef;
                        this.f22034c = 3;
                        obj = aVar.e(context, adsDTO, downUpPointBean, this);
                        if (obj == objF) {
                            return objF;
                        }
                        intRef2 = intRef;
                        intRef.element = ((Number) obj).intValue();
                        intRef = intRef2;
                    } else {
                        Context context2 = this.f22035d;
                        this.f22032a = intRef;
                        this.f22034c = 1;
                        obj = aVar.h(context2, false, this);
                        if (obj == objF) {
                            return objF;
                        }
                        iIntValue = ((Number) obj).intValue();
                        if (iIntValue != 0) {
                            a aVar2 = a.f21996a;
                            Context context3 = this.f22035d;
                            AdsDTO adsDTO2 = this.f22036e;
                            DownUpPointBean downUpPointBean2 = this.f22037f;
                            this.f22032a = intRef;
                            this.f22033b = intRef;
                            this.f22034c = 2;
                            obj = aVar2.e(context3, adsDTO2, downUpPointBean2, this);
                            if (obj == objF) {
                                return objF;
                            }
                            intRef2 = intRef;
                            intRef.element = ((Number) obj).intValue();
                            intRef = intRef2;
                        } else if (iIntValue != 7006) {
                            intRef.element = iIntValue;
                        } else {
                            intRef.element = iIntValue;
                        }
                    }
                    a2VarC = y0.c();
                    c0285a = new C0285a(this.f22038g, intRef, null);
                    this.f22032a = null;
                    this.f22033b = null;
                    this.f22034c = 4;
                    if (kotlinx.coroutines.i.g(a2VarC, c0285a, this) == objF) {
                        return objF;
                    }
                } else if (i10 == 1) {
                    intRef = (Ref.IntRef) this.f22032a;
                    ResultKt.b(obj);
                    iIntValue = ((Number) obj).intValue();
                    if (iIntValue != 0) {
                        a aVar3 = a.f21996a;
                        Context context4 = this.f22035d;
                        AdsDTO adsDTO3 = this.f22036e;
                        DownUpPointBean downUpPointBean3 = this.f22037f;
                        this.f22032a = intRef;
                        this.f22033b = intRef;
                        this.f22034c = 2;
                        obj = aVar3.e(context4, adsDTO3, downUpPointBean3, this);
                        if (obj == objF) {
                            return objF;
                        }
                        intRef2 = intRef;
                        intRef.element = ((Number) obj).intValue();
                        intRef = intRef2;
                    } else if (iIntValue != 7006 || iIntValue == 7007) {
                        intRef.element = iIntValue;
                    }
                    a2VarC = y0.c();
                    c0285a = new C0285a(this.f22038g, intRef, null);
                    this.f22032a = null;
                    this.f22033b = null;
                    this.f22034c = 4;
                    if (kotlinx.coroutines.i.g(a2VarC, c0285a, this) == objF) {
                        return objF;
                    }
                } else if (i10 == 2) {
                    intRef = (Ref.IntRef) this.f22033b;
                    intRef2 = (Ref.IntRef) this.f22032a;
                    ResultKt.b(obj);
                    intRef.element = ((Number) obj).intValue();
                    intRef = intRef2;
                    a2VarC = y0.c();
                    c0285a = new C0285a(this.f22038g, intRef, null);
                    this.f22032a = null;
                    this.f22033b = null;
                    this.f22034c = 4;
                    if (kotlinx.coroutines.i.g(a2VarC, c0285a, this) == objF) {
                        return objF;
                    }
                } else if (i10 == 3) {
                    intRef = (Ref.IntRef) this.f22033b;
                    intRef2 = (Ref.IntRef) this.f22032a;
                    ResultKt.b(obj);
                    intRef.element = ((Number) obj).intValue();
                    intRef = intRef2;
                    a2VarC = y0.c();
                    c0285a = new C0285a(this.f22038g, intRef, null);
                    this.f22032a = null;
                    this.f22033b = null;
                    this.f22034c = 4;
                    if (kotlinx.coroutines.i.g(a2VarC, c0285a, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
            } catch (Throwable unused) {
            }
            return Unit.f64096a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)I"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkIsNeedBindServiceOrWarmUp$2", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
    static final class g extends SuspendLambda implements Function2<n0, Continuation<? super Integer>, Object> {

        int f22042a;

        final AdsDTO f22043b;

        final Context f22044c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(AdsDTO adsDTO, Context context, Continuation<? super g> continuation) {
            super(2, continuation);
            this.f22043b = adsDTO;
            this.f22044c = context;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Integer> continuation) {
            return ((g) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new g(this.f22043b, this.f22044c, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            AdsDTO adsDTO;
            String clickUrl;
            String clickUrl2;
            String offlineH5Url;
            IntrinsicsKt.f();
            if (this.f22042a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            a aVar = a.f21996a;
            if (aVar.U(false) && a.f22019x) {
                return Boxing.d(1);
            }
            if (aVar.U(false) && !a.f22019x) {
                return Boxing.d(3);
            }
            int iB0 = aVar.b0();
            if (iB0 == 7014 || iB0 == 7020 || iB0 == 7021) {
                b4.b().d("CustomTabsManager", "cct abtest switch state closed checkCCTabTest->" + iB0);
                return Boxing.d(2);
            }
            if (!com.cloud.hisavana.sdk.common.util.b.f21563a.f(this.f22043b)) {
                return Boxing.d(2);
            }
            AdsDTO adsDTO2 = this.f22043b;
            if (adsDTO2 != null && adsDTO2.isOfflineAd() && (offlineH5Url = this.f22043b.getOfflineH5Url()) != null && offlineH5Url.length() == 0) {
                b4.b().d("CustomTabsManager", "offline page,not warmup");
                return Boxing.d(2);
            }
            AdsDTO adsDTO3 = this.f22043b;
            if (adsDTO3 != null && adsDTO3.isOfflineAd() && !NetStateManager.checkNetworkState(false)) {
                b4.b().d("CustomTabsManager", "offline page,not warmup");
                return Boxing.d(2);
            }
            AdsDTO adsDTO4 = this.f22043b;
            if ((adsDTO4 != null && (clickUrl2 = adsDTO4.getClickUrl()) != null && clickUrl2.length() == 0) || ((adsDTO = this.f22043b) != null && (clickUrl = adsDTO.getClickUrl()) != null && !StringsKt.W(clickUrl, "http", false, 2, null))) {
                b4.b().d("CustomTabsManager", "not http,not warmup");
                return Boxing.d(2);
            }
            int iA = aVar.a(this.f22044c, this.f22043b);
            if (iA == 0) {
                return Boxing.d(4);
            }
            b4.b().d("CustomTabsManager", "cct switch state closed,code: " + iA);
            aVar.o(iA, false);
            return Boxing.d(5);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$creatCCTServiceAsyncIfNeeded$1", f = "CustomTabsManager.kt", l = {432, 448}, m = "invokeSuspend")
    static final class h extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {

        int f22045a;

        int f22046b;

        final Context f22047c;

        final AdsDTO f22048d;

        final boolean f22049e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(Context context, AdsDTO adsDTO, boolean z10, Continuation<? super h> continuation) {
            super(2, continuation);
            this.f22047c = context;
            this.f22048d = adsDTO;
            this.f22049e = z10;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((h) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new h(this.f22047c, this.f22048d, this.f22049e, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:45:0x00a8 A[Catch: all -> 0x00b1, TRY_LEAVE, TryCatch #0 {all -> 0x00b1, blocks: (B:7:0x0012, B:43:0x008c, B:45:0x00a8, B:29:0x004b, B:30:0x0055, B:33:0x0064, B:35:0x006a, B:39:0x0074, B:40:0x0078, B:41:0x0082), top: B:49:0x000a }] */
        @Override
        public final Object invokeSuspend(Object obj) {
            int iIntValue;
            int i10;
            Object objF = IntrinsicsKt.f();
            int i11 = this.f22046b;
            boolean z10 = true;
            try {
                try {
                    if (i11 != 0) {
                        if (i11 == 1) {
                            ResultKt.b(obj);
                        } else {
                            if (i11 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            i10 = this.f22045a;
                            ResultKt.b(obj);
                        }
                        b4.b().w("CustomTabsManager", "bind service end, checkIsNeedBindServiceOrWarmUp is " + i10);
                        if (this.f22049e) {
                            a.f21996a.q(this.f22047c, this.f22048d, i10);
                        }
                        return Unit.f64096a;
                    }
                    ResultKt.b(obj);
                    a aVar = a.f21996a;
                    Context context = this.f22047c;
                    AdsDTO adsDTO = this.f22048d;
                    this.f22046b = 1;
                    obj = aVar.f(context, adsDTO, this);
                    if (obj == objF) {
                        return objF;
                    }
                    iIntValue = ((Number) obj).intValue();
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                iIntValue = 2;
            }
            if (iIntValue == 1) {
                b4.b().d("CustomTabsManager", "CreatCCTServiceAsyncIfNeeded success now ");
            } else if (iIntValue == 2) {
                b4.b().d("CustomTabsManager", "CreatCCTServiceAsyncIfNeeded failed now ");
            } else if (iIntValue == 3) {
                CustomTabsClient customTabsClient = a.f22017v;
                if (customTabsClient == null || !customTabsClient.e(0L)) {
                    z10 = false;
                }
                a.f22019x = z10;
            } else if (iIntValue == 4) {
                a aVar2 = a.f21996a;
                Context context2 = this.f22047c;
                this.f22045a = iIntValue;
                this.f22046b = 2;
                if (aVar2.h(context2, true, this) == objF) {
                    return objF;
                }
            } else if (iIntValue == 5) {
                b4.b().d("CustomTabsManager", "CCT is unenable");
            }
            i10 = iIntValue;
            b4.b().w("CustomTabsManager", "bind service end, checkIsNeedBindServiceOrWarmUp is " + i10);
            if (this.f22049e) {
                a.f21996a.q(this.f22047c, this.f22048d, i10);
            }
            return Unit.f64096a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)I"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$loadURLBySession$2", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class i extends SuspendLambda implements Function2<n0, Continuation<? super Integer>, Object> {

        int f22050a;

        final Context f22051b;

        final AdsDTO f22052c;

        final DownUpPointBean f22053d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Continuation<? super i> continuation) {
            super(2, continuation);
            this.f22051b = context;
            this.f22052c = adsDTO;
            this.f22053d = downUpPointBean;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Integer> continuation) {
            return ((i) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new i(this.f22051b, this.f22052c, this.f22053d, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:38:0x00fa A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:5:0x000b, B:8:0x0018, B:10:0x001e, B:15:0x004c, B:18:0x0060, B:20:0x006e, B:21:0x0075, B:24:0x00b2, B:28:0x00ba, B:31:0x00c6, B:33:0x00cb, B:35:0x00d1, B:37:0x00d7, B:39:0x0104, B:38:0x00fa, B:13:0x0037, B:14:0x003b), top: B:49:0x000b }] */
        @Override
        public final Object invokeSuspend(Object obj) {
            int i10;
            IntrinsicsKt.f();
            if (this.f22050a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            try {
                Context context = this.f22051b;
                boolean z10 = context instanceof Activity;
                boolean z11 = !z10;
                String str = "";
                i10 = 0;
                if (z10) {
                    a.f22008m = true;
                    String simpleName = context.getClass().getSimpleName();
                    Intrinsics.g(simpleName, "getSimpleName(...)");
                    a.f22006k = simpleName;
                } else {
                    Activity activityH = m.h();
                    if (activityH != null) {
                        a aVar = a.f21996a;
                        String simpleName2 = activityH.getClass().getSimpleName();
                        Intrinsics.g(simpleName2, "getSimpleName(...)");
                        a.f22006k = simpleName2;
                        a.f22008m = true;
                        context = activityH;
                        z11 = false;
                    } else {
                        a.f22006k = "";
                    }
                }
                a.f21996a.J(this.f22052c);
                androidx.browser.customtabs.d.b bVar = new androidx.browser.customtabs.d.b(a.f22018w);
                try {
                    bVar.e(2);
                } catch (Throwable unused) {
                }
                bVar.f(true);
                androidx.browser.customtabs.d dVarA = bVar.a();
                Intrinsics.g(dVarA, "build(...)");
                if (z11) {
                    dVarA.f1857a.setFlags(ASTNode.DEOP);
                }
                dVarA.f1857a.setPackage("com.android.chrome");
                dVarA.f1857a.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", true);
                dVarA.f1857a.putExtra("androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION", false);
                dVarA.f1857a.putExtra("org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_DOWNLOAD_BUTTON", true);
                dVarA.f1857a.putExtra("org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_STAR_BUTTON", true);
                a.f21996a.A(Boxing.d(19));
                SSPParamSplicedResult sSPParamSplicedResultA = com.cloud.hisavana.sdk.common.activity.b.a(this.f22053d, this.f22052c);
                String splicedURL = sSPParamSplicedResultA.getSplicedURL();
                if (splicedURL == null) {
                    splicedURL = "";
                }
                String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
                if (originalUrl != null) {
                    str = originalUrl;
                }
                com.cloud.hisavana.sdk.common.util.b bVar2 = com.cloud.hisavana.sdk.common.util.b.f21563a;
                if (bVar2.g(this.f22052c)) {
                    AdsDTO adsDTO = this.f22052c;
                    if (bVar2.h(adsDTO != null ? adsDTO.getRealLandUrl() : null)) {
                        AdsDTO adsDTO2 = this.f22052c;
                        Intrinsics.e(adsDTO2);
                        String realLandUrl = adsDTO2.getRealLandUrl();
                        Intrinsics.g(realLandUrl, "getRealLandUrl(...)");
                        Uri uri = Uri.parse(realLandUrl);
                        Intrinsics.g(uri, "parse(this)");
                        dVarA.a(context, uri);
                        AdsDTO adsDTO3 = this.f22052c;
                        Y0.m(splicedURL, adsDTO3, null, new Y0.d(adsDTO3));
                    } else {
                        Uri uri2 = Uri.parse(splicedURL);
                        Intrinsics.g(uri2, "parse(this)");
                        dVarA.a(context, uri2);
                    }
                } else {
                    Uri uri3 = Uri.parse(splicedURL);
                    Intrinsics.g(uri3, "parse(this)");
                    dVarA.a(context, uri3);
                }
                AthenaTracker.G(str, this.f22052c, Boxing.a(false));
            } catch (Exception e10) {
                Log.w("CustomTabsManager", "launchUrl failed,error: " + Log.getStackTraceString(e10));
                i10 = TaErrorCode.CLICK_ERROR_CODE_CCT_LAUNCH_FAILED;
            }
            return Boxing.d(i10);
        }
    }

    private a() {
    }

    public final void H(int i10, long j10) {
        try {
            long j11 = f22011p - f22012q;
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
            Integer numValueOf = Integer.valueOf(i10);
            WeakReference weakReference = f22007l;
            sSPTrackingHelper.Q(numValueOf, weakReference != null ? (AdsDTO) weakReference.get() : null, Long.valueOf(j11), Long.valueOf(j10), Boolean.valueOf(f22019x), f22005j, Boolean.valueOf(f22013r != -1), f0());
        } catch (Throwable unused) {
        }
    }

    public final void J(AdsDTO adsDTO) {
        try {
            f22007l = new WeakReference(adsDTO);
        } catch (Throwable unused) {
        }
    }

    public final void N(String str) {
        if (f22009n) {
            if (Intrinsics.c(str, f22006k) || f22010o) {
                m.k(null);
                f22008m = true;
                f22010o = false;
                b4.b().d("CustomTabsManager", "upload finish tracking");
                k0();
                return;
            }
            return;
        }
        if (Intrinsics.c(str, f22006k)) {
            f22010o = true;
            b4.b().d("CustomTabsManager", "isActivityResume true");
            return;
        }
        m.k(null);
        f22008m = true;
        b4.b().d("CustomTabsManager", "isActivityResume " + str);
    }

    public final boolean U(boolean z10) {
        boolean z11 = true;
        boolean z12 = (f22017v == null || f22016u == null) ? false : true;
        if (z12 && z10) {
            b4.b().d("CustomTabsManager", "checkServerIsAvailable: service is connected check alive");
            try {
                j jVar = f22018w;
                if (jVar != null) {
                    jVar.i(OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_TEST, null);
                }
            } catch (Throwable unused) {
                z11 = false;
            }
            b4.b().d("CustomTabsManager", "checkServerIsAvailable: alive ->" + z11);
            CustomTabsClient customTabsClient = f22017v;
            f22018w = customTabsClient != null ? customTabsClient.c(f22020y) : null;
            if (!z11) {
                b4.b().d("CustomTabsManager", "checkServerIsAvailable: service is not connected,need bind");
                f22017v = null;
                f22016u = null;
                f22019x = false;
                return false;
            }
        }
        return z12;
    }

    public final void d0() {
        try {
            f22011p = 0L;
            f22014s = -1L;
            f22015t = -1L;
            f22013r = -1L;
            WeakReference weakReference = f22007l;
            if (weakReference != null) {
                weakReference.clear();
            }
        } catch (Throwable unused) {
        }
    }

    public final Object e(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.c(), new i(context, adsDTO, downUpPointBean, null), continuation);
    }

    public final Object f(Context context, AdsDTO adsDTO, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.a(), new g(adsDTO, context, null), continuation);
    }

    public final Object g(Context context, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        try {
            f22016u = new c(cancellableContinuationImpl);
            k.d(HSScopeHelper.f22503a.b(), null, null, new d(context, cancellableContinuationImpl, null), 3, null);
        } catch (Throwable th2) {
            Log.e("CustomTabsManager", "bindCustomTabsService: ", th2);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(Context context, boolean z10, Continuation continuation) {
        C0283a c0283a;
        Long cctBindTimeout;
        if (continuation instanceof C0283a) {
            c0283a = (C0283a) continuation;
            int i10 = c0283a.f22025e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0283a.f22025e = i10 - Integer.MIN_VALUE;
            } else {
                c0283a = new C0283a(continuation);
            }
        } else {
            c0283a = new C0283a(continuation);
        }
        Object objE = c0283a.f22023c;
        Object objF = IntrinsicsKt.f();
        int i11 = c0283a.f22025e;
        boolean z11 = true;
        try {
            if (i11 == 0) {
                ResultKt.b(objE);
                CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
                long jLongValue = (customTabData == null || (cctBindTimeout = customTabData.getCctBindTimeout()) == null) ? 1000L : cctBindTimeout.longValue();
                b bVar = new b(context, null);
                c0283a.f22021a = this;
                c0283a.f22022b = z10;
                c0283a.f22025e = 1;
                objE = TimeoutKt.e(jLongValue, bVar, c0283a);
                if (objE == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                z10 = c0283a.f22022b;
                ResultKt.b(objE);
            }
            Integer num = (Integer) objE;
            int iIntValue = num != null ? num.intValue() : 7006;
            if (iIntValue == 0) {
                if (z10) {
                    CustomTabsClient customTabsClient = f22017v;
                    if (customTabsClient == null || !customTabsClient.e(0L)) {
                        z11 = false;
                    }
                    f22019x = z11;
                }
                CustomTabsClient customTabsClient2 = f22017v;
                f22018w = customTabsClient2 != null ? customTabsClient2.c(f22020y) : null;
                b4.b().d("CustomTabsManager", "bindCustomTabsService success now ");
            }
            return Boxing.d(iIntValue);
        } catch (Throwable unused) {
            return Boxing.d(TaErrorCode.CLICK_ERROR_CODE_CCT_BIND_TIMEOUT);
        }
    }

    public final void j0() {
        f22017v = null;
        f22018w = null;
        f22016u = null;
        f22019x = false;
        d0();
    }

    private final void k0() {
        long j10 = f22014s;
        int i10 = TaErrorCode.CCT_LOAD_EXIT;
        if (j10 == -1 && f22015t == -1) {
            long j11 = f22013r;
            if (j11 != -1) {
                H(TaErrorCode.CCT_LOAD_ABORTED, j11);
            } else {
                n(TaErrorCode.CCT_LOAD_EXIT, System.currentTimeMillis() - f22011p);
            }
        }
        try {
            long j12 = f22011p - f22012q;
            long jCurrentTimeMillis = System.currentTimeMillis() - f22011p;
            long j13 = f22014s;
            if (j13 != -1) {
                i10 = 0;
            } else {
                j13 = f22015t;
                if (j13 != -1) {
                    i10 = TaErrorCode.CCT_LOAD_FAILED;
                } else {
                    j13 = f22013r;
                    if (j13 != -1) {
                        i10 = 8009;
                    } else {
                        j13 = jCurrentTimeMillis;
                    }
                }
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
            Integer numValueOf = Integer.valueOf(i10);
            WeakReference weakReference = f22007l;
            sSPTrackingHelper.S(numValueOf, weakReference != null ? (AdsDTO) weakReference.get() : null, Long.valueOf(j12), Long.valueOf(j13), Long.valueOf(jCurrentTimeMillis), Boolean.valueOf(f22019x), f22005j, Boolean.valueOf(f22013r != -1), f0());
        } catch (Throwable unused) {
        }
    }

    public final void n(int i10, long j10) {
        try {
            long j11 = f22011p - f22012q;
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
            Integer numValueOf = Integer.valueOf(i10);
            WeakReference weakReference = f22007l;
            sSPTrackingHelper.Q(numValueOf, weakReference != null ? (AdsDTO) weakReference.get() : null, Long.valueOf(j11), Long.valueOf(j10), Boolean.valueOf(f22019x), f22005j, Boolean.valueOf(f22013r != -1), f0());
        } catch (Throwable unused) {
        }
    }

    public final void q(Context context, AdsDTO adsDTO, int i10) {
        if (adsDTO == null) {
            return;
        }
        com.cloud.hisavana.sdk.common.util.b bVar = com.cloud.hisavana.sdk.common.util.b.f21563a;
        if (bVar.g(adsDTO)) {
            if (i10 == 5) {
                t3.f22329a.l(context, adsDTO);
                return;
            }
            if (f22018w == null) {
                b4.b().d("CustomTabsManager", "preload h5, mCCTSession is null");
                adsDTO.setPreloadStatus(3);
                return;
            }
            if (!bVar.h(adsDTO.getRealLandUrl())) {
                adsDTO.setPreloadStatus(8);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - f22004i <= 2000) {
                b4.b().d("CustomTabsManager", "preload h5, cool down time is 2000ms");
                if (adsDTO.getPreloadStatus() < 2) {
                    adsDTO.setPreloadStatus(2);
                    return;
                }
                return;
            }
            b4.b().d("CustomTabsManager", "start preload h5, url is : " + adsDTO.getRealLandUrl());
            j jVar = f22018w;
            if (jVar != null) {
                String realLandUrl = adsDTO.getRealLandUrl();
                Intrinsics.g(realLandUrl, "getRealLandUrl(...)");
                Uri uri = Uri.parse(realLandUrl);
                Intrinsics.g(uri, "parse(this)");
                jVar.h(uri, null, null);
            }
            adsDTO.setPreloadStatus(5);
            f22004i = jCurrentTimeMillis;
        }
    }

    public final void A(Integer num) {
        f22003h = num;
    }

    public final int E(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean) {
        Intrinsics.h(context, "context");
        try {
            String strG = G(context);
            A(24);
            SSPParamSplicedResult sSPParamSplicedResultA = com.cloud.hisavana.sdk.common.activity.b.a(downUpPointBean, adsDTO);
            String splicedURL = sSPParamSplicedResultA.getSplicedURL();
            String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(splicedURL));
            if (strG == null || strG.length() <= 0) {
                return TaErrorCode.CLICK_ERROR_CODE_NOT_GET_DEFAULT_BROWSER_PKG;
            }
            intent.setPackage(strG);
            intent.addFlags(ASTNode.DEOP);
            context.startActivity(intent);
            AthenaTracker.G(originalUrl, adsDTO, Boolean.FALSE);
            return 0;
        } catch (Throwable unused) {
            return TaErrorCode.CLICK_ERROR_CODE_DEFAULT_BROWSER_LAUNCH_FAILED;
        }
    }

    public final String G(Context context) {
        ActivityInfo activityInfo;
        Intrinsics.h(context, "context");
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://www.hisavana.com"));
            intent.addCategory("android.intent.category.BROWSABLE");
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
            if (resolveInfoResolveActivity != null && (activityInfo = resolveInfoResolveActivity.activityInfo) != null) {
                return activityInfo.packageName;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public final void M(Integer num) {
        f22000e = num;
    }

    public final int a(Context context, AdsDTO adsDTO) {
        ArrayList<Integer> arrayList;
        ArrayList<String> arrayList2;
        ArrayList<String> arrayList3;
        Boolean enableCctSwitch;
        Integer dIntervalTime;
        Boolean enableSplashADcct;
        if (adsDTO != null && adsDTO.getAdType() == 4) {
            CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
            if (!((customTabData == null || (enableSplashADcct = customTabData.getEnableSplashADcct()) == null) ? false : enableSplashADcct.booleanValue())) {
                return TaErrorCode.CLICK_ERROR_CODE_CCT_SPLASH_NOT_ALLOW;
            }
        }
        int iG = l7.a.e().g("cct_switch_state", 0);
        if (iG != 0) {
            long jI = l7.a.e().i("cct_switch_timestamp", 0L);
            CustomTabConfigDTO customTabData2 = CustomConfigManager.getCustomTabData();
            if (System.currentTimeMillis() - jI < ((customTabData2 == null || (dIntervalTime = customTabData2.getDIntervalTime()) == null) ? 7 : dIntervalTime.intValue()) * TimeConstants.DAY) {
                return iG;
            }
            l7.a.e().p("cct_switch_state", 0);
            b4.b().d("CustomTabsManager", "checkInstallChromOrEnableCCT: " + iG);
        }
        CustomTabConfigDTO customTabData3 = CustomConfigManager.getCustomTabData();
        boolean z10 = true;
        if (!((customTabData3 == null || (enableCctSwitch = customTabData3.getEnableCctSwitch()) == null) ? true : enableCctSwitch.booleanValue())) {
            return TaErrorCode.CLICK_ERROR_CODE_CCT_CONFIG_CLOSED;
        }
        String strM = f22005j;
        if (strM.length() == 0) {
            strM = f21996a.m(context);
        }
        f22005j = strM;
        if (strM.length() == 0) {
            b4.b().d("CustomTabsManager", "checkInstallChromOrEnableCCT:");
            return TaErrorCode.CLICK_ERROR_CODE_CCT_NOT_INSTALLED;
        }
        CustomTabConfigDTO customTabData4 = CustomConfigManager.getCustomTabData();
        if (customTabData4 == null || (arrayList = customTabData4.getSysBlackVersion()) == null) {
            arrayList = new ArrayList<>();
        }
        if (arrayList.contains(Integer.valueOf(Build.VERSION.SDK_INT))) {
            return TaErrorCode.CLICK_ERROR_CODE_CCT_ANDROID_VERSION_BLOCKED;
        }
        String str = Build.BRAND;
        b4.b().d("CustomTabsManager", "devide model is -> " + str);
        CustomTabConfigDTO customTabData5 = CustomConfigManager.getCustomTabData();
        if (customTabData5 == null || (arrayList2 = customTabData5.getWhiteDeviceModel()) == null) {
            arrayList2 = new ArrayList<>();
        }
        if (arrayList2.isEmpty()) {
            CustomTabConfigDTO customTabData6 = CustomConfigManager.getCustomTabData();
            if (customTabData6 == null || (arrayList3 = customTabData6.getBlackDeviceModel()) == null) {
                arrayList3 = new ArrayList<>();
            }
            if (!arrayList3.isEmpty()) {
                if (arrayList3.isEmpty()) {
                    z10 = false;
                } else {
                    Iterator<T> it = arrayList3.iterator();
                    while (it.hasNext()) {
                        if (StringsKt.H((String) it.next(), str, true)) {
                        }
                    }
                    z10 = false;
                }
                if (z10) {
                    return TaErrorCode.CLICK_ERROR_CODE_CCT_ANDROID_MODEL_BLOCKED;
                }
            }
        } else {
            if (!arrayList2.isEmpty()) {
                Iterator<T> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    if (StringsKt.H((String) it2.next(), str, true)) {
                        z10 = false;
                        break;
                    }
                }
            }
            if (z10) {
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ANDROID_MODEL_BLOCKED;
            }
        }
        return 0;
    }

    public final int b(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean) {
        Activity activityH;
        Intrinsics.h(context, "context");
        try {
            boolean z10 = context instanceof Activity;
            boolean z11 = !z10;
            if (!z10 && (activityH = m.h()) != null) {
                context = activityH;
                z11 = false;
            }
            J(adsDTO);
            androidx.browser.customtabs.d.b bVar = new androidx.browser.customtabs.d.b();
            try {
                bVar.e(2);
            } catch (Throwable unused) {
            }
            bVar.f(true);
            androidx.browser.customtabs.d dVarA = bVar.a();
            Intrinsics.g(dVarA, "build(...)");
            if (z11) {
                dVarA.f1857a.setFlags(ASTNode.DEOP);
            }
            dVarA.f1857a.setPackage("com.android.chrome");
            dVarA.f1857a.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", true);
            dVarA.f1857a.putExtra("androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION", false);
            dVarA.f1857a.putExtra("org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_DOWNLOAD_BUTTON", true);
            dVarA.f1857a.putExtra("org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_STAR_BUTTON", true);
            A(23);
            SSPParamSplicedResult sSPParamSplicedResultA = com.cloud.hisavana.sdk.common.activity.b.a(downUpPointBean, adsDTO);
            String splicedURL = sSPParamSplicedResultA.getSplicedURL();
            String str = "";
            if (splicedURL == null) {
                splicedURL = "";
            }
            String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
            if (originalUrl != null) {
                str = originalUrl;
            }
            Uri uri = Uri.parse(splicedURL);
            Intrinsics.g(uri, "parse(this)");
            dVarA.a(context, uri);
            n2.a();
            AthenaTracker.G(str, adsDTO, Boolean.FALSE);
            return 0;
        } catch (Exception e10) {
            Log.w("CustomTabsManager", "launchUrl failed,error: " + Log.getStackTraceString(e10));
            return TaErrorCode.CLICK_ERROR_CODE_CCT_LAUNCH_FAILED_NOT_SESSION;
        }
    }

    public final int b0() {
        Map<String, String> info;
        ABTest aBTestData = CustomConfigManager.getABTestData(ClientABTestDTOKt.AB_CUSTOM_TAB);
        if (aBTestData != null) {
            Long layerId = aBTestData.getLayerId();
            ABVariantState aBTestVariant = ABTestKit.getABTestVariant(layerId, aBTestData.getReqInterval(), aBTestData.getSwitch());
            if (aBTestVariant.isOpen()) {
                ABVariantState.Open open = aBTestVariant instanceof ABVariantState.Open ? (ABVariantState.Open) aBTestVariant : null;
                ABVariant variant = open != null ? open.getVariant() : null;
                String str = (variant == null || (info = variant.getInfo()) == null) ? null : info.get("customTabGroup");
                f21997b = variant != null ? variant.getLayerId() : null;
                f21998c = variant != null ? variant.getExpId() : null;
                f21999d = variant != null ? variant.getSubExpId() : null;
                if (StringsKt.I(str, "true", false, 2, null)) {
                    f22001f = 1;
                    return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_HIT;
                }
                f22001f = 2;
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_NOT_HIT;
            }
            if (aBTestVariant.isPushAll()) {
                f22002g = true;
                f21997b = layerId;
                f21998c = 0L;
                f21999d = 0L;
                f22001f = 3;
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_PUSH_ALL;
            }
            if (aBTestVariant.isClosed()) {
                f21997b = layerId;
                f21998c = 0L;
                f21999d = 0L;
                ABVariantState.Closed closed = aBTestVariant instanceof ABVariantState.Closed ? (ABVariantState.Closed) aBTestVariant : null;
                f22000e = closed != null ? Integer.valueOf(closed.getCode()) : null;
                f22001f = 4;
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_CLOSED;
            }
        }
        f22001f = 5;
        return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_NULL;
    }

    public final int c(AdsDTO adsDTO) {
        CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
        ArrayList<String> openDefaultBycIds = customTabData != null ? customTabData.getOpenDefaultBycIds() : null;
        if (openDefaultBycIds == null || !(!openDefaultBycIds.isEmpty())) {
            return -1;
        }
        String adCreativeId = adsDTO != null ? adsDTO.getAdCreativeId() : null;
        if (adCreativeId == null || adCreativeId.length() <= 0 || openDefaultBycIds.isEmpty()) {
            return -1;
        }
        Iterator<T> it = openDefaultBycIds.iterator();
        while (it.hasNext()) {
            if (StringsKt.H((String) it.next(), adCreativeId, true)) {
                return TaErrorCode.CLICK_ERROR_CODE_CONFIG_CREATIVE_ID_OPEN_DEFAULT;
            }
        }
        return -1;
    }

    public final boolean c0() {
        Boolean enableDefaultBrowserSwitch;
        try {
            CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
            if (customTabData != null && (enableDefaultBrowserSwitch = customTabData.getEnableDefaultBrowserSwitch()) != null) {
                return enableDefaultBrowserSwitch.booleanValue();
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public final Long e0() {
        return f21999d;
    }

    public final Bundle f0() {
        Bundle bundle = new Bundle();
        try {
            Long l10 = f21997b;
            if (l10 != null) {
                if (l10.longValue() == 0) {
                    l10 = null;
                }
                if (l10 != null) {
                    bundle.putLong("s_ab_layer_id", l10.longValue());
                }
            }
            Long l11 = f21998c;
            if (l11 != null) {
                if (l11.longValue() == 0) {
                    l11 = null;
                }
                if (l11 != null) {
                    bundle.putLong("s_ab_exp_id", l11.longValue());
                }
            }
            Long l12 = f21999d;
            if (l12 != null) {
                if (l12.longValue() == 0) {
                    l12 = null;
                }
                if (l12 != null) {
                    bundle.putLong("var_id", l12.longValue());
                }
            }
            Integer num = f22000e;
            if (num != null) {
                if (num.intValue() == 0) {
                    num = null;
                }
                if (num != null) {
                    bundle.putInt("s_ab_reason", num.intValue());
                }
            }
            boolean z10 = f22002g;
            Boolean boolValueOf = Boolean.valueOf(z10);
            if (!z10) {
                boolValueOf = null;
            }
            if (boolValueOf != null) {
                bundle.putInt("s_ab_push", 1);
            }
            Integer num2 = f22001f;
            Integer num3 = (num2 == null || num2.intValue() != 0) ? num2 : null;
            if (num3 != null) {
                bundle.putInt("s_ab_status", num3.intValue());
            }
        } catch (Throwable unused) {
        }
        return bundle;
    }

    public final Integer g0() {
        return f22003h;
    }

    public final Integer h0() {
        return f22001f;
    }

    public final void i0() {
        f21997b = 0L;
        f21998c = 0L;
        f21999d = 0L;
        f22000e = 0;
        f22002g = false;
        f22001f = 0;
        f22003h = 0;
    }

    public final String m(Context context) {
        Object objM453constructorimpl;
        String str;
        PackageManager packageManager;
        PackageInfo packageInfo;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (context == null || (packageManager = context.getPackageManager()) == null || (packageInfo = packageManager.getPackageInfo("com.android.chrome", 0)) == null || (str = packageInfo.versionName) == null) {
                str = "";
            }
            objM453constructorimpl = Result.m453constructorimpl(str);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        return (String) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : "");
    }

    public final void o(int i10, boolean z10) {
        int iG = l7.a.e().g("cct_switch_state", 0);
        if (z10 || !(iG != 0 || i10 == 7009 || i10 == 7012 || i10 == 7014 || i10 == 7006 || i10 == 7007 || i10 == 7005 || i10 == 7016 || i10 == 7017 || i10 == -1)) {
            l7.a.e().p("cct_switch_state", i10);
            l7.a.e().q("cct_switch_timestamp", System.currentTimeMillis());
        }
    }

    public final void r(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Function1 onComplete) {
        Intrinsics.h(context, "context");
        Intrinsics.h(onComplete, "onComplete");
        k.d(HSScopeHelper.f22503a.b(), null, null, new f(context, adsDTO, downUpPointBean, onComplete, null), 3, null);
    }

    public final void s(Context context, AdsDTO adsDTO, boolean z10) {
        Intrinsics.h(context, "context");
        b4 b4VarB = b4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("preload is ");
        sb2.append(z10);
        sb2.append(", preloadEnable is ");
        sb2.append(adsDTO != null ? adsDTO.getPreloadEnable() : null);
        sb2.append(", realLandUrl is ");
        sb2.append(adsDTO != null ? adsDTO.getRealLandUrl() : null);
        b4VarB.w("CustomTabsManager", sb2.toString());
        if (z10 || !com.cloud.hisavana.sdk.common.util.b.f21563a.g(adsDTO)) {
            CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
            if (Intrinsics.c(customTabData != null ? customTabData.getEnableWarmUp() : null, Boolean.TRUE) || z10) {
                k.d(HSScopeHelper.f22503a.b(), null, null, new h(context, adsDTO, z10, null), 3, null);
            }
        }
    }
}
