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
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.webkit.ProxyConfig;
import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
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
import com.cloud.hisavana.sdk.k1;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.just.agentweb.DefaultWebClient;
import com.just.agentweb.WebIndicator;
import defpackage.amd;
import defpackage.atd;
import defpackage.cl0;
import defpackage.cr0;
import defpackage.e74;
import defpackage.el0;
import defpackage.g1a;
import defpackage.ikd;
import defpackage.mc2;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.o9;
import defpackage.pt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.t6;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import defpackage.zk5;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.TimeoutKt;
import org.apache.commons.lang3.BooleanUtils;

public final class a {
    public static boolean g;
    public static volatile long i;
    public static WeakReference l;
    public static boolean m;
    public static boolean n;
    public static boolean o;
    public static long p;
    public static long q;
    public static CustomTabsServiceConnection u;
    public static CustomTabsClient v;
    public static CustomTabsSession w;
    public static boolean x;
    public static final a a = new a();
    public static Long b = 0L;
    public static Long c = 0L;
    public static Long d = 0L;
    public static Integer e = 0;
    public static Integer f = 0;
    public static Integer h = 0;
    public static String j = "";
    public static String k = "";
    public static long r = -1;
    public static long s = -1;
    public static long t = -1;
    public static final e y = new e();

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @nt1(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager", f = "CustomTabsManager.kt", l = {517}, m = "bindCCTServiceAndCreatSession")
    public static final class C0050a extends ContinuationImpl {
        Object a;
        boolean b;
        Object c;
        int e;

        public C0050a(wh1<? super C0050a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return a.this.h(null, false, this);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)I"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$bindCCTServiceAndCreatSession$isBindServiceSuccess$1", f = "CustomTabsManager.kt", l = {518}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        int a;
        final Context b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, wh1<? super b> wh1Var) {
            super(2, wh1Var);
            this.b = context;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super Integer> wh1Var) {
            return ((b) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new b(this.b, wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.a;
            if (i == 0) {
                kotlin.c.b(obj);
                a aVar = a.a;
                Context context = this.b;
                this.a = 1;
                obj = aVar.e(context, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return obj;
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\f\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u0019\u0010\r\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000b¨\u0006\u000e"}, d2 = {"com/cloud/hisavana/sdk/manager/a$c", "Landroidx/browser/customtabs/CustomTabsServiceConnection;", "Landroid/content/ComponentName;", "name", "Landroidx/browser/customtabs/CustomTabsClient;", "client", "Lzfb;", "onCustomTabsServiceConnected", "(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V", "componentName", "onServiceDisconnected", "(Landroid/content/ComponentName;)V", "onBindingDied", "onNullBinding", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class c extends CustomTabsServiceConnection {
        public final cr0 b;

        public c(cr0 cr0Var) {
            this.b = cr0Var;
        }

        @Override
        public void onBindingDied(ComponentName name) {
            super.onBindingDied(name);
            a.a.j0();
            ikd.b().d("CustomTabsManager", "cct onBindingDied");
        }

        @Override
        public void onCustomTabsServiceConnected(ComponentName name, CustomTabsClient client) {
            y45.j(name, "name");
            y45.j(client, "client");
            ikd.b().d("CustomTabsManager", "onCustomTabsServiceConnected");
            a.v = client;
            try {
                if (this.b.isActive()) {
                    cr0 cr0Var = this.b;
                    Result.Companion companion = Result.INSTANCE;
                    cr0Var.resumeWith(Result.m279constructorimpl(0));
                }
            } catch (Throwable th) {
                ikd.b().d("CustomTabsManager", "cct onCustomTabsServiceConnected", th);
            }
        }

        @Override
        public void onNullBinding(ComponentName name) {
            super.onNullBinding(name);
            a.a.j0();
            ikd.b().d("CustomTabsManager", "cct onNullBinding");
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            y45.j(componentName, "componentName");
            a.a.j0();
            ikd.b().d("CustomTabsManager", "cct onServiceDisconnected");
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$bindCustomTabsService$2$2", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
    public static final class d extends SuspendLambda implements s74 {
        int a;
        final Context b;
        final cr0 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context, cr0 cr0Var, wh1<? super d> wh1Var) {
            super(2, wh1Var);
            this.b = context;
            this.c = cr0Var;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((d) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new d(this.b, this.c, wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            try {
                Context context = this.b;
                CustomTabsServiceConnection customTabsServiceConnection = a.u;
                y45.h(customTabsServiceConnection, "null cannot be cast to non-null type androidx.browser.customtabs.CustomTabsServiceConnection");
                boolean zBindCustomTabsService = CustomTabsClient.bindCustomTabsService(context, "com.android.chrome", customTabsServiceConnection);
                if (!zBindCustomTabsService) {
                    cr0 cr0Var = this.c;
                    Result.Companion companion = Result.INSTANCE;
                    cr0Var.resumeWith(Result.m279constructorimpl(mk0.b(7007)));
                }
                Log.d("CustomTabsManager", "bindCustomTabsService, result=" + zBindCustomTabsService);
            } catch (Throwable unused) {
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"com/cloud/hisavana/sdk/manager/a$e", "Landroidx/browser/customtabs/CustomTabsCallback;", "", "navigationEvent", "Landroid/os/Bundle;", "extras", "Lzfb;", "onNavigationEvent", "(ILandroid/os/Bundle;)V", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class e extends CustomTabsCallback {

        public static final class C0051a implements zk5.b {
            @Override
            public void a(String str) {
                a.a.N(str);
            }
        }

        @Override
        public void onNavigationEvent(int navigationEvent, Bundle extras) {
            switch (navigationEvent) {
                case 1:
                    ikd.b().d("CustomTabsManager", "onNavigationEvent, NAVIGATION_STARTED");
                    if (a.p == 0) {
                        a.p = System.currentTimeMillis();
                    }
                    break;
                case 2:
                    ikd.b().d("CustomTabsManager", "onNavigationEvent, NAVIGATION_FINISHED");
                    if (a.s == -1) {
                        a.s = System.currentTimeMillis() - a.p;
                        ikd.b().d("CustomTabsManager", "onNavigationEvent, NAVIGATION_FINISHED, time taken: " + a.s + " ms");
                        a.a.H(0, a.s);
                    }
                    break;
                case 3:
                    if (a.s == -1 && a.t == -1) {
                        a.t = System.currentTimeMillis() - a.p;
                        a.a.n(TaErrorCode.CCT_LOAD_FAILED, a.t);
                    }
                    ikd.b().e("CustomTabsManager", "onNavigationEvent, NAVIGATION_FAILED");
                    break;
                case 4:
                    if (a.r == -1) {
                        a.r = System.currentTimeMillis() - a.p;
                    }
                    ikd.b().e("CustomTabsManager", "onNavigationEvent, NAVIGATION_ABORTED");
                    break;
                case 5:
                    ikd.b().d("CustomTabsManager", "onNavigationEvent, TAB_SHOWN");
                    a.n = false;
                    if (a.m) {
                        a.m = false;
                        zk5.k(new C0051a());
                    }
                    break;
                case 6:
                    a.n = true;
                    ikd.b().d("CustomTabsManager", "onNavigationEvent, TAB_HIDDEN");
                    a.a.N("");
                    break;
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkAndLaunchCCTLandingPage$1", f = "CustomTabsManager.kt", l = {641, 644, 651, 657}, m = "invokeSuspend")
    public static final class f extends SuspendLambda implements s74 {
        Object a;
        Object b;
        int c;
        final Context d;
        final AdsDTO e;
        final DownUpPointBean f;
        final e74 g;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
        @nt1(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkAndLaunchCCTLandingPage$1$1", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
        public static final class C0052a extends SuspendLambda implements s74 {
            int a;
            final e74 b;
            final Ref$IntRef c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0052a(e74 e74Var, Ref$IntRef ref$IntRef, wh1<? super C0052a> wh1Var) {
                super(2, wh1Var);
                this.b = e74Var;
                this.c = ref$IntRef;
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((C0052a) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new C0052a(this.b, this.c, wh1Var);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
                this.b.invoke(mk0.b(this.c.element));
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, e74 e74Var, wh1<? super f> wh1Var) {
            super(2, wh1Var);
            this.d = context;
            this.e = adsDTO;
            this.f = downUpPointBean;
            this.g = e74Var;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((f) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new f(this.d, this.e, this.f, this.g, wh1Var);
        }

        /* JADX WARN: Code duplicated, block: B:31:0x007f  */
        /* JADX WARN: Code duplicated, block: B:36:0x0088 A[Catch: all -> 0x00e3, TryCatch #0 {all -> 0x00e3, blocks: (B:8:0x0014, B:13:0x0029, B:47:0x00bf, B:49:0x00ca, B:16:0x0036, B:41:0x00a1, B:19:0x003e, B:29:0x0077, B:36:0x0088, B:37:0x008b, B:22:0x0045, B:24:0x0063, B:26:0x0069, B:43:0x00ab, B:48:0x00c8), top: B:55:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:37:0x008b A[Catch: all -> 0x00e3, TryCatch #0 {all -> 0x00e3, blocks: (B:8:0x0014, B:13:0x0029, B:47:0x00bf, B:49:0x00ca, B:16:0x0036, B:41:0x00a1, B:19:0x003e, B:29:0x0077, B:36:0x0088, B:37:0x008b, B:22:0x0045, B:24:0x0063, B:26:0x0069, B:43:0x00ab, B:48:0x00c8), top: B:55:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:39:0x009f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:40:0x00a0  */
        /* JADX WARN: Code duplicated, block: B:51:0x00e2 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            Ref$IntRef ref$IntRef;
            Ref$IntRef ref$IntRef2;
            int iIntValue;
            rx5 rx5VarC;
            C0052a c0052a;
            Object objF = z45.f();
            int i = this.c;
            try {
                if (i == 0) {
                    kotlin.c.b(obj);
                    ref$IntRef = new Ref$IntRef();
                    ref$IntRef.element = -1;
                    a aVar = a.a;
                    aVar.d0();
                    a.q = System.currentTimeMillis();
                    int iA = aVar.a(this.d, this.e);
                    if (iA != 0) {
                        ref$IntRef.element = iA;
                    } else if (aVar.U(true)) {
                        Context context = this.d;
                        AdsDTO adsDTO = this.e;
                        DownUpPointBean downUpPointBean = this.f;
                        this.a = ref$IntRef;
                        this.b = ref$IntRef;
                        this.c = 3;
                        obj = aVar.g(context, adsDTO, downUpPointBean, this);
                        if (obj == objF) {
                            return objF;
                        }
                        ref$IntRef2 = ref$IntRef;
                        ref$IntRef.element = ((Number) obj).intValue();
                        ref$IntRef = ref$IntRef2;
                    } else {
                        Context context2 = this.d;
                        this.a = ref$IntRef;
                        this.c = 1;
                        obj = aVar.h(context2, false, this);
                        if (obj == objF) {
                            return objF;
                        }
                        iIntValue = ((Number) obj).intValue();
                        if (iIntValue != 0) {
                            a aVar2 = a.a;
                            Context context3 = this.d;
                            AdsDTO adsDTO2 = this.e;
                            DownUpPointBean downUpPointBean2 = this.f;
                            this.a = ref$IntRef;
                            this.b = ref$IntRef;
                            this.c = 2;
                            obj = aVar2.g(context3, adsDTO2, downUpPointBean2, this);
                            if (obj == objF) {
                                return objF;
                            }
                            ref$IntRef2 = ref$IntRef;
                            ref$IntRef.element = ((Number) obj).intValue();
                            ref$IntRef = ref$IntRef2;
                        } else if (iIntValue != 7006) {
                            ref$IntRef.element = iIntValue;
                        } else {
                            ref$IntRef.element = iIntValue;
                        }
                    }
                    rx5VarC = mc2.c();
                    c0052a = new C0052a(this.g, ref$IntRef, null);
                    this.a = null;
                    this.b = null;
                    this.c = 4;
                    if (cl0.g(rx5VarC, c0052a, this) == objF) {
                        return objF;
                    }
                } else if (i == 1) {
                    ref$IntRef = (Ref$IntRef) this.a;
                    kotlin.c.b(obj);
                    iIntValue = ((Number) obj).intValue();
                    if (iIntValue != 0) {
                        a aVar3 = a.a;
                        Context context4 = this.d;
                        AdsDTO adsDTO3 = this.e;
                        DownUpPointBean downUpPointBean3 = this.f;
                        this.a = ref$IntRef;
                        this.b = ref$IntRef;
                        this.c = 2;
                        obj = aVar3.g(context4, adsDTO3, downUpPointBean3, this);
                        if (obj == objF) {
                            return objF;
                        }
                        ref$IntRef2 = ref$IntRef;
                        ref$IntRef.element = ((Number) obj).intValue();
                        ref$IntRef = ref$IntRef2;
                    } else if (iIntValue != 7006 || iIntValue == 7007) {
                        ref$IntRef.element = iIntValue;
                    }
                    rx5VarC = mc2.c();
                    c0052a = new C0052a(this.g, ref$IntRef, null);
                    this.a = null;
                    this.b = null;
                    this.c = 4;
                    if (cl0.g(rx5VarC, c0052a, this) == objF) {
                        return objF;
                    }
                } else if (i == 2) {
                    ref$IntRef = (Ref$IntRef) this.b;
                    ref$IntRef2 = (Ref$IntRef) this.a;
                    kotlin.c.b(obj);
                    ref$IntRef.element = ((Number) obj).intValue();
                    ref$IntRef = ref$IntRef2;
                    rx5VarC = mc2.c();
                    c0052a = new C0052a(this.g, ref$IntRef, null);
                    this.a = null;
                    this.b = null;
                    this.c = 4;
                    if (cl0.g(rx5VarC, c0052a, this) == objF) {
                        return objF;
                    }
                } else if (i == 3) {
                    ref$IntRef = (Ref$IntRef) this.b;
                    ref$IntRef2 = (Ref$IntRef) this.a;
                    kotlin.c.b(obj);
                    ref$IntRef.element = ((Number) obj).intValue();
                    ref$IntRef = ref$IntRef2;
                    rx5VarC = mc2.c();
                    c0052a = new C0052a(this.g, ref$IntRef, null);
                    this.a = null;
                    this.b = null;
                    this.c = 4;
                    if (cl0.g(rx5VarC, c0052a, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.c.b(obj);
                }
            } catch (Throwable unused) {
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)I"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkIsNeedBindServiceOrWarmUp$2", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
    public static final class g extends SuspendLambda implements s74 {
        int a;
        final AdsDTO b;
        final Context c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(AdsDTO adsDTO, Context context, wh1<? super g> wh1Var) {
            super(2, wh1Var);
            this.b = adsDTO;
            this.c = context;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super Integer> wh1Var) {
            return ((g) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new g(this.b, this.c, wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            AdsDTO adsDTO;
            String clickUrl;
            String clickUrl2;
            String offlineH5Url;
            z45.f();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            a aVar = a.a;
            if (aVar.U(false) && a.x) {
                return mk0.b(1);
            }
            if (aVar.U(false) && !a.x) {
                return mk0.b(3);
            }
            int iB0 = aVar.b0();
            if (iB0 == 7014 || iB0 == 7020 || iB0 == 7021) {
                ikd.b().d("CustomTabsManager", "cct abtest switch state closed checkCCTabTest->" + iB0);
                return mk0.b(2);
            }
            if (!t6.a.f(this.b)) {
                return mk0.b(2);
            }
            AdsDTO adsDTO2 = this.b;
            if (adsDTO2 != null && adsDTO2.isOfflineAd() && (offlineH5Url = this.b.getOfflineH5Url()) != null && offlineH5Url.length() == 0) {
                ikd.b().d("CustomTabsManager", "offline page,not warmup");
                return mk0.b(2);
            }
            AdsDTO adsDTO3 = this.b;
            if (adsDTO3 != null && adsDTO3.isOfflineAd() && !NetStateManager.checkNetworkState(false)) {
                ikd.b().d("CustomTabsManager", "offline page,not warmup");
                return mk0.b(2);
            }
            AdsDTO adsDTO4 = this.b;
            if ((adsDTO4 != null && (clickUrl2 = adsDTO4.getClickUrl()) != null && clickUrl2.length() == 0) || ((adsDTO = this.b) != null && (clickUrl = adsDTO.getClickUrl()) != null && !g1a.R(clickUrl, ProxyConfig.MATCH_HTTP, false, 2, null))) {
                ikd.b().d("CustomTabsManager", "not http,not warmup");
                return mk0.b(2);
            }
            int iA = aVar.a(this.c, this.b);
            if (iA == 0) {
                return mk0.b(4);
            }
            ikd.b().d("CustomTabsManager", "cct switch state closed,code: " + iA);
            aVar.o(iA, false);
            return mk0.b(5);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$creatCCTServiceAsyncIfNeeded$1", f = "CustomTabsManager.kt", l = {434, WebIndicator.MAX_DECELERATE_SPEED_DURATION}, m = "invokeSuspend")
    public static final class h extends SuspendLambda implements s74 {
        int a;
        int b;
        final Context c;
        final AdsDTO d;
        final boolean e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Context context, AdsDTO adsDTO, boolean z, wh1<? super h> wh1Var) {
            super(2, wh1Var);
            this.c = context;
            this.d = adsDTO;
            this.e = z;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((h) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new h(this.c, this.d, this.e, wh1Var);
        }

        /* JADX WARN: Code duplicated, block: B:45:0x00a8 A[Catch: all -> 0x00b1, TRY_LEAVE, TryCatch #0 {all -> 0x00b1, blocks: (B:7:0x0012, B:43:0x008c, B:45:0x00a8, B:29:0x004b, B:30:0x0055, B:33:0x0064, B:35:0x006a, B:39:0x0074, B:40:0x0078, B:41:0x0082), top: B:49:0x000a }] */
        @Override
        public final Object invokeSuspend(Object obj) {
            int iIntValue;
            int i;
            Object objF = z45.f();
            int i2 = this.b;
            boolean z = true;
            try {
                try {
                    if (i2 != 0) {
                        if (i2 == 1) {
                            kotlin.c.b(obj);
                        } else {
                            if (i2 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            i = this.a;
                            kotlin.c.b(obj);
                        }
                        ikd.b().w("CustomTabsManager", "bind service end, checkIsNeedBindServiceOrWarmUp is " + i);
                        if (this.e) {
                            a.a.q(this.c, this.d, i);
                        }
                        return zfb.a;
                    }
                    kotlin.c.b(obj);
                    a aVar = a.a;
                    Context context = this.c;
                    AdsDTO adsDTO = this.d;
                    this.b = 1;
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
                ikd.b().d("CustomTabsManager", "CreatCCTServiceAsyncIfNeeded success now ");
            } else if (iIntValue == 2) {
                ikd.b().d("CustomTabsManager", "CreatCCTServiceAsyncIfNeeded failed now ");
            } else if (iIntValue == 3) {
                CustomTabsClient customTabsClient = a.v;
                if (customTabsClient == null || !customTabsClient.warmup(0L)) {
                    z = false;
                }
                a.x = z;
            } else if (iIntValue == 4) {
                a aVar2 = a.a;
                Context context2 = this.c;
                this.a = iIntValue;
                this.b = 2;
                if (aVar2.h(context2, true, this) == objF) {
                    return objF;
                }
            } else if (iIntValue == 5) {
                ikd.b().d("CustomTabsManager", "CCT is unenable");
            }
            i = iIntValue;
            ikd.b().w("CustomTabsManager", "bind service end, checkIsNeedBindServiceOrWarmUp is " + i);
            if (this.e) {
                a.a.q(this.c, this.d, i);
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)I"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$loadURLBySession$2", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
    public static final class i extends SuspendLambda implements s74 {
        int a;
        final Context b;
        final AdsDTO c;
        final DownUpPointBean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, wh1<? super i> wh1Var) {
            super(2, wh1Var);
            this.b = context;
            this.c = adsDTO;
            this.d = downUpPointBean;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super Integer> wh1Var) {
            return ((i) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new i(this.b, this.c, this.d, wh1Var);
        }

        /* JADX WARN: Code duplicated, block: B:38:0x00fa A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:5:0x000b, B:8:0x0018, B:10:0x001e, B:15:0x004c, B:18:0x0060, B:20:0x006e, B:21:0x0075, B:24:0x00b2, B:28:0x00ba, B:31:0x00c6, B:33:0x00cb, B:35:0x00d1, B:37:0x00d7, B:39:0x0104, B:38:0x00fa, B:13:0x0037, B:14:0x003b), top: B:49:0x000b }] */
        @Override
        public final Object invokeSuspend(Object obj) {
            int i;
            z45.f();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            try {
                Context context = this.b;
                boolean z = context instanceof Activity;
                boolean z2 = !z;
                String str = "";
                i = 0;
                if (z) {
                    a.m = true;
                    String simpleName = context.getClass().getSimpleName();
                    y45.i(simpleName, "getSimpleName(...)");
                    a.k = simpleName;
                } else {
                    Activity activityH = zk5.h();
                    if (activityH != null) {
                        a aVar = a.a;
                        String simpleName2 = activityH.getClass().getSimpleName();
                        y45.i(simpleName2, "getSimpleName(...)");
                        a.k = simpleName2;
                        a.m = true;
                        context = activityH;
                        z2 = false;
                    } else {
                        a.k = "";
                    }
                }
                a.a.J(this.c);
                CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder(a.w);
                try {
                    builder.setShareState(2);
                } catch (Throwable unused) {
                }
                builder.setUrlBarHidingEnabled(true);
                CustomTabsIntent customTabsIntentBuild = builder.build();
                y45.i(customTabsIntentBuild, "build(...)");
                if (z2) {
                    customTabsIntentBuild.intent.setFlags(268435456);
                }
                customTabsIntentBuild.intent.setPackage("com.android.chrome");
                customTabsIntentBuild.intent.putExtra(CustomTabsIntent.EXTRA_TITLE_VISIBILITY_STATE, true);
                customTabsIntentBuild.intent.putExtra(CustomTabsIntent.EXTRA_ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION, false);
                customTabsIntentBuild.intent.putExtra(CustomTabsIntent.EXTRA_DISABLE_DOWNLOAD_BUTTON, true);
                customTabsIntentBuild.intent.putExtra(CustomTabsIntent.EXTRA_DISABLE_BOOKMARKS_BUTTON, true);
                a.a.A(mk0.b(19));
                SSPParamSplicedResult sSPParamSplicedResultA = com.cloud.hisavana.sdk.common.activity.b.a(this.d, this.c);
                String splicedURL = sSPParamSplicedResultA.getSplicedURL();
                if (splicedURL == null) {
                    splicedURL = "";
                }
                String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
                if (originalUrl != null) {
                    str = originalUrl;
                }
                t6 t6Var = t6.a;
                if (t6Var.g(this.c)) {
                    AdsDTO adsDTO = this.c;
                    if (t6Var.h(adsDTO != null ? adsDTO.getRealLandUrl() : null)) {
                        AdsDTO adsDTO2 = this.c;
                        y45.g(adsDTO2);
                        String realLandUrl = adsDTO2.getRealLandUrl();
                        y45.i(realLandUrl, "getRealLandUrl(...)");
                        Uri uri = Uri.parse(realLandUrl);
                        y45.i(uri, "parse(this)");
                        customTabsIntentBuild.launchUrl(context, uri);
                        AdsDTO adsDTO3 = this.c;
                        k1.m(splicedURL, adsDTO3, null, new k1.d(adsDTO3));
                    } else {
                        Uri uri2 = Uri.parse(splicedURL);
                        y45.i(uri2, "parse(this)");
                        customTabsIntentBuild.launchUrl(context, uri2);
                    }
                } else {
                    Uri uri3 = Uri.parse(splicedURL);
                    y45.i(uri3, "parse(this)");
                    customTabsIntentBuild.launchUrl(context, uri3);
                }
                AthenaTracker.J(str, this.c, mk0.a(false));
            } catch (Exception e) {
                Log.w("CustomTabsManager", "launchUrl failed,error: " + Log.getStackTraceString(e));
                i = 7005;
            }
            return mk0.b(i);
        }
    }

    public final void A(Integer num) {
        h = num;
    }

    public final int E(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean) {
        y45.j(context, "context");
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
            intent.addFlags(268435456);
            context.startActivity(intent);
            AthenaTracker.J(originalUrl, adsDTO, Boolean.FALSE);
            return 0;
        } catch (Throwable unused) {
            return TaErrorCode.CLICK_ERROR_CODE_DEFAULT_BROWSER_LAUNCH_FAILED;
        }
    }

    public final String G(Context context) {
        ActivityInfo activityInfo;
        y45.j(context, "context");
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

    public final void H(int i2, long j2) {
        try {
            long j3 = p - q;
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            Integer numValueOf = Integer.valueOf(i2);
            WeakReference weakReference = l;
            sSPTrackingHelper.Q(numValueOf, weakReference != null ? (AdsDTO) weakReference.get() : null, Long.valueOf(j3), Long.valueOf(j2), Boolean.valueOf(x), j, Boolean.valueOf(r != -1), f0());
        } catch (Throwable unused) {
        }
    }

    public final void J(AdsDTO adsDTO) {
        try {
            l = new WeakReference(adsDTO);
        } catch (Throwable unused) {
        }
    }

    public final void M(Integer num) {
        e = num;
    }

    public final void N(String str) {
        if (n) {
            if (y45.e(str, k) || o) {
                zk5.k(null);
                m = true;
                o = false;
                ikd.b().d("CustomTabsManager", "upload finish tracking");
                k0();
                return;
            }
            return;
        }
        if (y45.e(str, k)) {
            o = true;
            ikd.b().d("CustomTabsManager", "isActivityResume true");
            return;
        }
        zk5.k(null);
        m = true;
        ikd.b().d("CustomTabsManager", "isActivityResume " + str);
    }

    public final boolean U(boolean z) {
        boolean z2 = true;
        boolean z3 = (v == null || u == null) ? false : true;
        if (z3 && z) {
            ikd.b().d("CustomTabsManager", "checkServerIsAvailable: service is connected check alive");
            try {
                CustomTabsSession customTabsSession = w;
                if (customTabsSession != null) {
                    customTabsSession.postMessage("test", null);
                }
            } catch (Throwable unused) {
                z2 = false;
            }
            ikd.b().d("CustomTabsManager", "checkServerIsAvailable: alive ->" + z2);
            CustomTabsClient customTabsClient = v;
            w = customTabsClient != null ? customTabsClient.newSession(y) : null;
            if (!z2) {
                ikd.b().d("CustomTabsManager", "checkServerIsAvailable: service is not connected,need bind");
                v = null;
                u = null;
                x = false;
                return false;
            }
        }
        return z3;
    }

    public final int a(Context context, AdsDTO adsDTO) {
        ArrayList<Integer> arrayList;
        ArrayList<String> arrayList2;
        ArrayList<String> arrayList3;
        Boolean enableCctSwitch;
        Integer dIntervalTime;
        Boolean enableSplashADcct;
        String clickUrl = adsDTO != null ? adsDTO.getClickUrl() : null;
        if (clickUrl == null) {
            return TaErrorCode.CLICK_ERROR_CODE_NOT_HTTP_URL;
        }
        if (!g1a.R(clickUrl, DefaultWebClient.HTTP_SCHEME, false, 2, null) && !g1a.R(clickUrl, "https://", false, 2, null)) {
            return TaErrorCode.CLICK_ERROR_CODE_NOT_HTTP_URL;
        }
        if (adsDTO != null && adsDTO.getAdType() == 4) {
            CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
            if (!((customTabData == null || (enableSplashADcct = customTabData.getEnableSplashADcct()) == null) ? false : enableSplashADcct.booleanValue())) {
                return TaErrorCode.CLICK_ERROR_CODE_CCT_SPLASH_NOT_ALLOW;
            }
        }
        int iG = o9.e().g("cct_switch_state", 0);
        if (iG != 0) {
            long jI = o9.e().i("cct_switch_timestamp", 0L);
            CustomTabConfigDTO customTabData2 = CustomConfigManager.getCustomTabData();
            if (System.currentTimeMillis() - jI < ((customTabData2 == null || (dIntervalTime = customTabData2.getDIntervalTime()) == null) ? 7 : dIntervalTime.intValue()) * 86400000) {
                return iG;
            }
            o9.e().p("cct_switch_state", 0);
            ikd.b().d("CustomTabsManager", "checkInstallChromOrEnableCCT: " + iG);
        }
        CustomTabConfigDTO customTabData3 = CustomConfigManager.getCustomTabData();
        boolean z = true;
        if (!((customTabData3 == null || (enableCctSwitch = customTabData3.getEnableCctSwitch()) == null) ? true : enableCctSwitch.booleanValue())) {
            return TaErrorCode.CLICK_ERROR_CODE_CCT_CONFIG_CLOSED;
        }
        String strM = j;
        if (strM.length() == 0) {
            strM = a.m(context);
        }
        j = strM;
        if (strM.length() == 0) {
            ikd.b().d("CustomTabsManager", "checkInstallChromOrEnableCCT:");
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
        ikd.b().d("CustomTabsManager", "devide model is -> " + str);
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
                    z = false;
                } else {
                    Iterator<T> it = arrayList3.iterator();
                    while (it.hasNext()) {
                        if (g1a.E((String) it.next(), str, true)) {
                        }
                    }
                    z = false;
                }
                if (z) {
                    return TaErrorCode.CLICK_ERROR_CODE_CCT_ANDROID_MODEL_BLOCKED;
                }
            }
        } else {
            if (!arrayList2.isEmpty()) {
                Iterator<T> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    if (g1a.E((String) it2.next(), str, true)) {
                        z = false;
                        break;
                    }
                }
            }
            if (z) {
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ANDROID_MODEL_BLOCKED;
            }
        }
        return 0;
    }

    public final int b(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean) {
        Activity activityH;
        y45.j(context, "context");
        try {
            boolean z = context instanceof Activity;
            boolean z2 = !z;
            if (!z && (activityH = zk5.h()) != null) {
                context = activityH;
                z2 = false;
            }
            J(adsDTO);
            CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
            try {
                builder.setShareState(2);
            } catch (Throwable unused) {
            }
            builder.setUrlBarHidingEnabled(true);
            CustomTabsIntent customTabsIntentBuild = builder.build();
            y45.i(customTabsIntentBuild, "build(...)");
            if (z2) {
                customTabsIntentBuild.intent.setFlags(268435456);
            }
            customTabsIntentBuild.intent.setPackage("com.android.chrome");
            customTabsIntentBuild.intent.putExtra(CustomTabsIntent.EXTRA_TITLE_VISIBILITY_STATE, true);
            customTabsIntentBuild.intent.putExtra(CustomTabsIntent.EXTRA_ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION, false);
            customTabsIntentBuild.intent.putExtra(CustomTabsIntent.EXTRA_DISABLE_DOWNLOAD_BUTTON, true);
            customTabsIntentBuild.intent.putExtra(CustomTabsIntent.EXTRA_DISABLE_BOOKMARKS_BUTTON, true);
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
            y45.i(uri, "parse(this)");
            customTabsIntentBuild.launchUrl(context, uri);
            amd.a();
            AthenaTracker.J(str, adsDTO, Boolean.FALSE);
            return 0;
        } catch (Exception e2) {
            Log.w("CustomTabsManager", "launchUrl failed,error: " + Log.getStackTraceString(e2));
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
                b = variant != null ? variant.getLayerId() : null;
                c = variant != null ? variant.getExpId() : null;
                d = variant != null ? variant.getSubExpId() : null;
                if (g1a.F(str, BooleanUtils.TRUE, false, 2, null)) {
                    f = 1;
                    return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_HIT;
                }
                f = 2;
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_NOT_HIT;
            }
            if (aBTestVariant.isPushAll()) {
                g = true;
                b = layerId;
                c = 0L;
                d = 0L;
                f = 3;
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_PUSH_ALL;
            }
            if (aBTestVariant.isClosed()) {
                b = layerId;
                c = 0L;
                d = 0L;
                ABVariantState.Closed closed = aBTestVariant instanceof ABVariantState.Closed ? (ABVariantState.Closed) aBTestVariant : null;
                e = closed != null ? Integer.valueOf(closed.getCode()) : null;
                f = 4;
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_CLOSED;
            }
        }
        f = 5;
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
            if (g1a.E((String) it.next(), adCreativeId, true)) {
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

    public final void d0() {
        try {
            p = 0L;
            s = -1L;
            t = -1L;
            r = -1L;
            WeakReference weakReference = l;
            if (weakReference != null) {
                weakReference.clear();
            }
        } catch (Throwable unused) {
        }
    }

    public final Object e(Context context, wh1 wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        try {
            u = new c(cancellableContinuationImpl);
            el0.d(HSScopeHelper.a.d(), null, null, new d(context, cancellableContinuationImpl, null), 3, null);
        } catch (Throwable th) {
            Log.e("CustomTabsManager", "bindCustomTabsService: ", th);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public final Long e0() {
        return d;
    }

    public final Object f(Context context, AdsDTO adsDTO, wh1 wh1Var) {
        return cl0.g(mc2.a(), new g(adsDTO, context, null), wh1Var);
    }

    public final Bundle f0() {
        Bundle bundle = new Bundle();
        try {
            Long l2 = b;
            if (l2 != null) {
                if (l2.longValue() == 0) {
                    l2 = null;
                }
                if (l2 != null) {
                    bundle.putLong("s_ab_layer_id", l2.longValue());
                }
            }
            Long l3 = c;
            if (l3 != null) {
                if (l3.longValue() == 0) {
                    l3 = null;
                }
                if (l3 != null) {
                    bundle.putLong("s_ab_exp_id", l3.longValue());
                }
            }
            Long l4 = d;
            if (l4 != null) {
                if (l4.longValue() == 0) {
                    l4 = null;
                }
                if (l4 != null) {
                    bundle.putLong("var_id", l4.longValue());
                }
            }
            Integer num = e;
            if (num != null) {
                if (num.intValue() == 0) {
                    num = null;
                }
                if (num != null) {
                    bundle.putInt("s_ab_reason", num.intValue());
                }
            }
            boolean z = g;
            Boolean boolValueOf = Boolean.valueOf(z);
            if (!z) {
                boolValueOf = null;
            }
            if (boolValueOf != null) {
                bundle.putInt("s_ab_push", 1);
            }
            Integer num2 = f;
            Integer num3 = (num2 == null || num2.intValue() != 0) ? num2 : null;
            if (num3 != null) {
                bundle.putInt("s_ab_status", num3.intValue());
            }
        } catch (Throwable unused) {
        }
        return bundle;
    }

    public final Object g(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, wh1 wh1Var) {
        return cl0.g(mc2.c(), new i(context, adsDTO, downUpPointBean, null), wh1Var);
    }

    public final Integer g0() {
        return h;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(Context context, boolean z, wh1 wh1Var) {
        C0050a c0050a;
        Long cctBindTimeout;
        if (wh1Var instanceof C0050a) {
            c0050a = (C0050a) wh1Var;
            int i2 = c0050a.e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0050a.e = i2 - Integer.MIN_VALUE;
            } else {
                c0050a = new C0050a(wh1Var);
            }
        } else {
            c0050a = new C0050a(wh1Var);
        }
        Object objD = c0050a.c;
        Object objF = z45.f();
        int i3 = c0050a.e;
        boolean z2 = true;
        try {
            if (i3 == 0) {
                kotlin.c.b(objD);
                CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
                long jLongValue = (customTabData == null || (cctBindTimeout = customTabData.getCctBindTimeout()) == null) ? 1000L : cctBindTimeout.longValue();
                b bVar = new b(context, null);
                c0050a.a = this;
                c0050a.b = z;
                c0050a.e = 1;
                objD = TimeoutKt.d(jLongValue, bVar, c0050a);
                if (objD == objF) {
                    return objF;
                }
            } else {
                if (i3 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                z = c0050a.b;
                kotlin.c.b(objD);
            }
            Integer num = (Integer) objD;
            int iIntValue = num != null ? num.intValue() : 7006;
            if (iIntValue == 0) {
                if (z) {
                    CustomTabsClient customTabsClient = v;
                    if (customTabsClient == null || !customTabsClient.warmup(0L)) {
                        z2 = false;
                    }
                    x = z2;
                }
                CustomTabsClient customTabsClient2 = v;
                w = customTabsClient2 != null ? customTabsClient2.newSession(y) : null;
                ikd.b().d("CustomTabsManager", "bindCustomTabsService success now ");
            }
            return mk0.b(iIntValue);
        } catch (Throwable unused) {
            return mk0.b(7006);
        }
    }

    public final Integer h0() {
        return f;
    }

    public final void i0() {
        b = 0L;
        c = 0L;
        d = 0L;
        e = 0;
        g = false;
        f = 0;
        h = 0;
    }

    public final void j0() {
        v = null;
        w = null;
        u = null;
        x = false;
        d0();
    }

    public final void k0() {
        long j2 = s;
        int i2 = TaErrorCode.CCT_LOAD_EXIT;
        if (j2 == -1 && t == -1) {
            long j3 = r;
            if (j3 != -1) {
                H(TaErrorCode.CCT_LOAD_ABORTED, j3);
            } else {
                n(TaErrorCode.CCT_LOAD_EXIT, System.currentTimeMillis() - p);
            }
        }
        try {
            long j4 = p - q;
            long jCurrentTimeMillis = System.currentTimeMillis() - p;
            long j5 = s;
            if (j5 != -1) {
                i2 = 0;
            } else {
                j5 = t;
                if (j5 != -1) {
                    i2 = TaErrorCode.CCT_LOAD_FAILED;
                } else {
                    j5 = r;
                    if (j5 != -1) {
                        i2 = 8009;
                    } else {
                        j5 = jCurrentTimeMillis;
                    }
                }
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            Integer numValueOf = Integer.valueOf(i2);
            WeakReference weakReference = l;
            sSPTrackingHelper.S(numValueOf, weakReference != null ? (AdsDTO) weakReference.get() : null, Long.valueOf(j4), Long.valueOf(j5), Long.valueOf(jCurrentTimeMillis), Boolean.valueOf(x), j, Boolean.valueOf(r != -1), f0());
        } catch (Throwable unused) {
        }
    }

    public final String m(Context context) {
        Object objM279constructorimpl;
        String str;
        PackageManager packageManager;
        PackageInfo packageInfo;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (context == null || (packageManager = context.getPackageManager()) == null || (packageInfo = packageManager.getPackageInfo("com.android.chrome", 0)) == null || (str = packageInfo.versionName) == null) {
                str = "";
            }
            objM279constructorimpl = Result.m279constructorimpl(str);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        return (String) (Result.m282exceptionOrNullimpl(objM279constructorimpl) == null ? objM279constructorimpl : "");
    }

    public final void n(int i2, long j2) {
        try {
            long j3 = p - q;
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            Integer numValueOf = Integer.valueOf(i2);
            WeakReference weakReference = l;
            sSPTrackingHelper.Q(numValueOf, weakReference != null ? (AdsDTO) weakReference.get() : null, Long.valueOf(j3), Long.valueOf(j2), Boolean.valueOf(x), j, Boolean.valueOf(r != -1), f0());
        } catch (Throwable unused) {
        }
    }

    public final void o(int i2, boolean z) {
        int iG = o9.e().g("cct_switch_state", 0);
        if (z || !(iG != 0 || i2 == 7009 || i2 == 7012 || i2 == 7014 || i2 == 7006 || i2 == 7007 || i2 == 7005 || i2 == 7016 || i2 == 7017 || i2 == 7023 || i2 == -1)) {
            o9.e().p("cct_switch_state", i2);
            o9.e().q("cct_switch_timestamp", System.currentTimeMillis());
        }
    }

    public final void q(Context context, AdsDTO adsDTO, int i2) {
        if (adsDTO == null) {
            return;
        }
        t6 t6Var = t6.a;
        if (t6Var.g(adsDTO)) {
            if (i2 == 5) {
                atd.a.l(context, adsDTO);
                return;
            }
            if (w == null) {
                ikd.b().d("CustomTabsManager", "preload h5, mCCTSession is null");
                adsDTO.setPreloadStatus(3);
                return;
            }
            if (!t6Var.h(adsDTO.getRealLandUrl())) {
                adsDTO.setPreloadStatus(8);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - i <= 2000) {
                ikd.b().d("CustomTabsManager", "preload h5, cool down time is 2000ms");
                if (adsDTO.getPreloadStatus() < 2) {
                    adsDTO.setPreloadStatus(2);
                    return;
                }
                return;
            }
            ikd.b().d("CustomTabsManager", "start preload h5, url is : " + adsDTO.getRealLandUrl());
            CustomTabsSession customTabsSession = w;
            if (customTabsSession != null) {
                String realLandUrl = adsDTO.getRealLandUrl();
                y45.i(realLandUrl, "getRealLandUrl(...)");
                Uri uri = Uri.parse(realLandUrl);
                y45.i(uri, "parse(this)");
                customTabsSession.mayLaunchUrl(uri, null, null);
            }
            adsDTO.setPreloadStatus(5);
            i = jCurrentTimeMillis;
        }
    }

    public final void r(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, e74 e74Var) {
        y45.j(context, "context");
        y45.j(e74Var, "onComplete");
        Log.d("CustomTabsManager", "checkAndLaunchCCTLandingPage: ");
        el0.d(HSScopeHelper.a.d(), null, null, new f(context, adsDTO, downUpPointBean, e74Var, null), 3, null);
    }

    public final void s(Context context, AdsDTO adsDTO, boolean z) {
        y45.j(context, "context");
        ikd ikdVarB = ikd.b();
        StringBuilder sb = new StringBuilder();
        sb.append("preload is ");
        sb.append(z);
        sb.append(", preloadEnable is ");
        sb.append(adsDTO != null ? adsDTO.getPreloadEnable() : null);
        sb.append(", realLandUrl is ");
        sb.append(adsDTO != null ? adsDTO.getRealLandUrl() : null);
        ikdVarB.w("CustomTabsManager", sb.toString());
        if (z || !t6.a.g(adsDTO)) {
            CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
            if (y45.e(customTabData != null ? customTabData.getEnableWarmUp() : null, Boolean.TRUE) || z) {
                el0.d(HSScopeHelper.a.d(), null, null, new h(context, adsDTO, z, null), 3, null);
            }
        }
    }
}
