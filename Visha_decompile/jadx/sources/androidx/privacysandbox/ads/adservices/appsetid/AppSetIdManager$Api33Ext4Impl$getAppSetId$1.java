package androidx.privacysandbox.ads.adservices.appsetid;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@nt1(c = "androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManager$Api33Ext4Impl", f = "AppSetIdManager.kt", l = {55}, m = "getAppSetId")
public final class AppSetIdManager$Api33Ext4Impl$getAppSetId$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final AppSetIdManager.Api33Ext4Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppSetIdManager$Api33Ext4Impl$getAppSetId$1(AppSetIdManager.Api33Ext4Impl api33Ext4Impl, wh1<? super AppSetIdManager$Api33Ext4Impl$getAppSetId$1> wh1Var) {
        super(wh1Var);
        this.this$0 = api33Ext4Impl;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getAppSetId(this);
    }
}
