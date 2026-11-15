package androidx.privacysandbox.ads.adservices.java.customaudience;

import androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager;
import androidx.privacysandbox.ads.adservices.customaudience.LeaveCustomAudienceRequest;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.privacysandbox.ads.adservices.java.customaudience.CustomAudienceManagerFutures$Api33Ext4JavaImpl$leaveCustomAudienceAsync$1", f = "CustomAudienceManagerFutures.kt", l = {123}, m = "invokeSuspend")
public final class CustomAudienceManagerFutures$Api33Ext4JavaImpl$leaveCustomAudienceAsync$1 extends SuspendLambda implements s74 {
    final LeaveCustomAudienceRequest $request;
    int label;
    final CustomAudienceManagerFutures.Api33Ext4JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomAudienceManagerFutures$Api33Ext4JavaImpl$leaveCustomAudienceAsync$1(CustomAudienceManagerFutures.Api33Ext4JavaImpl api33Ext4JavaImpl, LeaveCustomAudienceRequest leaveCustomAudienceRequest, wh1<? super CustomAudienceManagerFutures$Api33Ext4JavaImpl$leaveCustomAudienceAsync$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = api33Ext4JavaImpl;
        this.$request = leaveCustomAudienceRequest;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CustomAudienceManagerFutures$Api33Ext4JavaImpl$leaveCustomAudienceAsync$1(this.this$0, this.$request, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CustomAudienceManagerFutures$Api33Ext4JavaImpl$leaveCustomAudienceAsync$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            CustomAudienceManager customAudienceManager = this.this$0.mCustomAudienceManager;
            y45.g(customAudienceManager);
            LeaveCustomAudienceRequest leaveCustomAudienceRequest = this.$request;
            this.label = 1;
            if (customAudienceManager.leaveCustomAudience(leaveCustomAudienceRequest, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }
}
