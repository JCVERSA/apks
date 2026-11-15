package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.base.model.MediatedAdObjectInfo;
import com.monetization.ads.quality.base.model.AdQualityVerificationBlockingReasons;
import com.monetization.ads.quality.base.result.AdQualityVerificationResult;
import com.monetization.ads.quality.base.state.AdQualityVerificationState;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Lambda;

public final class l7 {
    private final o3 a;
    private final Context b;
    private final e7 c;
    private o8<?> d;
    private AdQualityVerificationResult e;
    private final yi5 f;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            return new q7(0).a(l7.this.b);
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.base.quality.AdQualityVerifierController", f = "AdQualityVerifierController.kt", l = {42}, m = "verifyAd-BWLJW6A")
    public static final class b extends ContinuationImpl {
        l7 b;
        Object c;
        int e;

        public b(defpackage.wh1<? super b> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            Object objA = l7.this.a(null, null, null, this);
            return objA == z45.f() ? objA : Result.m278boximpl(objA);
        }
    }

    public l7(o3 o3Var, Context context) {
        this(o3Var, context, new e7(o3Var));
    }

    private final boolean e() {
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(this.b);
        b7 b7VarF = ju1VarA != null ? ju1VarA.f() : null;
        return b7VarF != null && b7VarF.e();
    }

    public final void b() {
        if (e()) {
            ((p7) this.f.getValue()).onAdClosed();
            d();
        }
    }

    public final void c() {
        if (e()) {
            ((p7) this.f.getValue()).onAdWillDisplay();
        }
    }

    public final void d() {
        if (e()) {
            this.c.a(this.b, this.e, this.d);
            ((p7) this.f.getValue()).onInvalidated();
        }
    }

    public final void a() {
        if (e()) {
            ((p7) this.f.getValue()).onAdClicked();
        }
    }

    public l7(o3 o3Var, Context context, e7 e7Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(context, "context");
        y45.j(e7Var, "adQualityVerificationReporter");
        this.a = o3Var;
        this.b = context;
        this.c = e7Var;
        this.e = AdQualityVerificationResult.WaitingForVerification.INSTANCE;
        this.f = kotlin.b.a(new a());
    }

    /* JADX WARN: Code duplicated, block: B:28:0x008a  */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object a(Object obj, o8<?> o8Var, MediatedAdObjectInfo mediatedAdObjectInfo, defpackage.wh1<? super Result<zfb>> wh1Var) {
        b bVar;
        AdQualityVerificationBlockingReasons reason;
        if (wh1Var instanceof b) {
            bVar = (b) wh1Var;
            int i = bVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                bVar.e = i - Integer.MIN_VALUE;
            } else {
                bVar = new b(wh1Var);
            }
        } else {
            bVar = new b(wh1Var);
        }
        b bVar2 = bVar;
        Object objA = bVar2.c;
        Object objF = z45.f();
        int i2 = bVar2.e;
        if (i2 == 0) {
            kotlin.c.b(objA);
            if (e()) {
                this.d = o8Var;
                p7 p7Var = (p7) this.f.getValue();
                Context context = this.b;
                o3 o3Var = this.a;
                bVar2.b = this;
                bVar2.e = 1;
                objA = p7Var.a(context, obj, o8Var, o3Var, mediatedAdObjectInfo, bVar2);
                if (objA == objF) {
                    return objF;
                }
            } else {
                Result.Companion companion = Result.INSTANCE;
                return Result.m279constructorimpl(zfb.a);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this = bVar2.b;
            kotlin.c.b(objA);
        }
        AdQualityVerificationResult adQualityVerificationResult = (AdQualityVerificationResult) objA;
        this.e = adQualityVerificationResult;
        if (adQualityVerificationResult instanceof AdQualityVerificationResult.Verified) {
            AdQualityVerificationState adQualityVerificationState = (AdQualityVerificationState) ((AdQualityVerificationResult.Verified) adQualityVerificationResult).getVerifiedAd().getVerificationResultStateFlow().getValue();
            if (adQualityVerificationState instanceof AdQualityVerificationState.Blocked) {
                reason = ((AdQualityVerificationState.Blocked) adQualityVerificationState).getReason();
            } else if (adQualityVerificationState instanceof AdQualityVerificationState.ShouldBeBlockedOnDisplay) {
                reason = ((AdQualityVerificationState.ShouldBeBlockedOnDisplay) adQualityVerificationState).getReason();
            } else {
                reason = null;
            }
        } else {
            reason = null;
        }
        if (reason != null && (!reason.getBlockReasons().isEmpty() || !reason.getReportReasons().isEmpty())) {
            this.d();
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m279constructorimpl(kotlin.c.a(new Throwable(reason.toString())));
        }
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m279constructorimpl(zfb.a);
    }
}
