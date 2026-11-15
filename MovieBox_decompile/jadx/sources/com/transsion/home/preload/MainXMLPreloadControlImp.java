package com.transsion.home.preload;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.y0;

public final class MainXMLPreloadControlImp implements b {

    private View f44334a;

    private View f44335b;

    private View f44336c;

    private View f44337d;

    private View f44338e;

    private View f44339f;

    private boolean f44340g;

    private boolean f44341h;

    private boolean f44342i;

    private boolean f44343j;

    private boolean f44344k;

    private boolean f44345l;

    private boolean f44346m;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.preload.MainXMLPreloadControlImp$1", f = "MainXMLPreloadControlImp.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE, Sdk$SDKMetric.SDKMetricType.INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE, 64}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final Activity $activity;
        private Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Activity activity, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$activity = activity;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = MainXMLPreloadControlImp.this.new AnonymousClass1(this.$activity, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:28:0x0132 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:29:0x0133  */
        @Override
        public final Object invokeSuspend(Object obj) {
            n0 n0Var;
            MainXMLPreloadControlImp mainXMLPreloadControlImp;
            n0 n0Var2;
            MainXMLPreloadControlImp mainXMLPreloadControlImp2;
            MainXMLPreloadControlImp mainXMLPreloadControlImp3;
            MainXMLPreloadControlImp mainXMLPreloadControlImp4;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    mainXMLPreloadControlImp = (MainXMLPreloadControlImp) this.L$1;
                    n0Var = (n0) this.L$0;
                    ResultKt.b(obj);
                } else if (i10 == 2) {
                    mainXMLPreloadControlImp2 = (MainXMLPreloadControlImp) this.L$1;
                    n0 n0Var3 = (n0) this.L$0;
                    ResultKt.b(obj);
                    n0Var2 = n0Var3;
                    mainXMLPreloadControlImp2.f44338e = (View) obj;
                    r0 r0VarB = k.b(n0Var2, y0.b(), null, new MainXMLPreloadControlImp$1$opMovieRankDeferred$1(this.$activity, null), 2, null);
                    wf.a.C0922a.f(wf.a.f74274a, "MainXMLPreload", "---- itemSubjectOpView preload success, ThreadName = " + Thread.currentThread().getName(), false, 4, null);
                    mainXMLPreloadControlImp3 = MainXMLPreloadControlImp.this;
                    this.L$0 = mainXMLPreloadControlImp3;
                    this.L$1 = null;
                    this.label = 3;
                    obj = r0VarB.f(this);
                    if (obj == objF) {
                        return objF;
                    }
                    mainXMLPreloadControlImp4 = mainXMLPreloadControlImp3;
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mainXMLPreloadControlImp4 = (MainXMLPreloadControlImp) this.L$0;
                    ResultKt.b(obj);
                }
                mainXMLPreloadControlImp4.f44339f = (View) obj;
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            n0 n0Var4 = (n0) this.L$0;
            if (Build.VERSION.SDK_INT == 30 && StringsKt.H(Build.MANUFACTURER, "TCL", true)) {
                return Unit.f64096a;
            }
            r0 r0VarB2 = k.b(n0Var4, y0.b(), null, new MainXMLPreloadControlImp$1$postListDeferred$1(this.$activity, null), 2, null);
            MainXMLPreloadControlImp mainXMLPreloadControlImp5 = MainXMLPreloadControlImp.this;
            this.L$0 = n0Var4;
            this.L$1 = mainXMLPreloadControlImp5;
            this.label = 1;
            Object objF2 = r0VarB2.f(this);
            if (objF2 == objF) {
                return objF;
            }
            n0Var = n0Var4;
            obj = objF2;
            mainXMLPreloadControlImp = mainXMLPreloadControlImp5;
            mainXMLPreloadControlImp.f44334a = (View) obj;
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, "MainXMLPreload", "---- postListView preload success, ThreadName = " + Thread.currentThread().getName(), false, 4, null);
            r0 r0VarB3 = k.b(n0Var, y0.b(), null, new MainXMLPreloadControlImp$1$rankingDeferred$1(this.$activity, null), 2, null);
            wf.a.C0922a.f(c0922a, "MainXMLPreload", "---- itemRanking preload success, ThreadName = " + Thread.currentThread().getName(), false, 4, null);
            MainXMLPreloadControlImp mainXMLPreloadControlImp6 = MainXMLPreloadControlImp.this;
            this.L$0 = n0Var;
            this.L$1 = mainXMLPreloadControlImp6;
            this.label = 2;
            Object objF3 = r0VarB3.f(this);
            if (objF3 == objF) {
                return objF;
            }
            n0Var2 = n0Var;
            mainXMLPreloadControlImp2 = mainXMLPreloadControlImp6;
            obj = objF3;
            mainXMLPreloadControlImp2.f44338e = (View) obj;
            r0 r0VarB4 = k.b(n0Var2, y0.b(), null, new MainXMLPreloadControlImp$1$opMovieRankDeferred$1(this.$activity, null), 2, null);
            wf.a.C0922a.f(wf.a.f74274a, "MainXMLPreload", "---- itemSubjectOpView preload success, ThreadName = " + Thread.currentThread().getName(), false, 4, null);
            mainXMLPreloadControlImp3 = MainXMLPreloadControlImp.this;
            this.L$0 = mainXMLPreloadControlImp3;
            this.L$1 = null;
            this.label = 3;
            obj = r0VarB4.f(this);
            if (obj == objF) {
                return objF;
            }
            mainXMLPreloadControlImp4 = mainXMLPreloadControlImp3;
            mainXMLPreloadControlImp4.f44339f = (View) obj;
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public MainXMLPreloadControlImp(Activity activity) {
        Intrinsics.h(activity, "activity");
        k.d(o0.a(y0.a()), null, null, new AnonymousClass1(activity, null), 3, null);
    }

    @Override
    public boolean a() {
        return this.f44346m;
    }

    @Override
    public boolean b() {
        return this.f44343j;
    }

    @Override
    public View c() {
        this.f44346m = true;
        return this.f44339f;
    }

    @Override
    public View d() {
        this.f44343j = true;
        return this.f44338e;
    }

    @Override
    public boolean e() {
        return this.f44340g;
    }

    @Override
    public View f() {
        this.f44340g = true;
        return this.f44334a;
    }

    @Override
    public void reset() {
        this.f44334a = null;
        this.f44337d = null;
        this.f44338e = null;
        this.f44335b = null;
        this.f44336c = null;
        this.f44339f = null;
        this.f44340g = false;
        this.f44344k = false;
        this.f44345l = false;
        this.f44341h = false;
        this.f44342i = false;
        this.f44343j = false;
        this.f44346m = false;
    }
}
