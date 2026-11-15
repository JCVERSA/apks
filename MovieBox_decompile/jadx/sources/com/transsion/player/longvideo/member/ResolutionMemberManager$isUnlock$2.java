package com.transsion.player.longvideo.member;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.therouter.TheRouter;
import com.transsion.baselib.db.member.MemberResolutionBean;
import com.transsion.baselib.db.member.MemberResolutionDao;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Z"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.member.ResolutionMemberManager$isUnlock$2", f = "ResolutionMemberManager.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW}, m = "invokeSuspend")
final class ResolutionMemberManager$isUnlock$2 extends SuspendLambda implements Function2<n0, Continuation<? super Boolean>, Object> {
    final ln.a $curBean;
    int I$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ResolutionMemberManager$isUnlock$2(ln.a aVar, Continuation<? super ResolutionMemberManager$isUnlock$2> continuation) {
        super(2, continuation);
        this.$curBean = aVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ResolutionMemberManager$isUnlock$2(this.$curBean, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5, types: [int] */
    @Override
    public final Object invokeSuspend(Object obj) {
        ?? r10;
        Boolean boolIsUnlock;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        boolean z10 = true;
        if (i10 == 0) {
            ResultKt.b(obj);
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            ?? M = bVar != null ? bVar.m() : 0;
            MemberResolutionDao memberResolutionDaoE = ResolutionMemberManager.f46182a.e();
            String strO = this.$curBean.o();
            int iL = this.$curBean.l();
            int iE = this.$curBean.e();
            this.I$0 = M;
            this.label = 1;
            Object objB = memberResolutionDaoE.b(strO, iL, iE, this);
            if (objB == objF) {
                return objF;
            }
            r10 = M;
            obj = objB;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i11 = this.I$0;
            ResultKt.b(obj);
            r10 = i11;
        }
        MemberResolutionBean memberResolutionBean = (MemberResolutionBean) obj;
        boolean zBooleanValue = (memberResolutionBean == null || (boolIsUnlock = memberResolutionBean.isUnlock()) == null) ? false : boolIsUnlock.booleanValue();
        k.f46204a.a(ResolutionMemberManager.f46182a.d() + " --> isUnlock() --> 是否已经解锁过 = " + (r10 != 0 || zBooleanValue) + " --> subjectId = " + this.$curBean.o() + " ep = " + this.$curBean.l() + " se = " + this.$curBean.e() + " --> isUnlock = " + zBooleanValue + " --> isMember = " + (r10 != 0));
        if (r10 == 0 && !zBooleanValue) {
            z10 = false;
        }
        return Boxing.a(z10);
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Boolean> continuation) {
        return ((ResolutionMemberManager$isUnlock$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
