package hyperion.interstore.impl;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
@nt1(c = "hyperion.interstore.impl.TranStorePrefs", f = "TranStorePrefs.kt", l = {156}, m = "remove")
public final class TranStorePrefs$remove$1 extends ContinuationImpl {
    public Object L$0;
    public Object L$1;
    public int label;
    public Object result;
    public final TranStorePrefs this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranStorePrefs$remove$1(TranStorePrefs tranStorePrefs, wh1<? super TranStorePrefs$remove$1> wh1Var) {
        super(wh1Var);
        this.this$0 = tranStorePrefs;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.e(null, this);
    }
}
