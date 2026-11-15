package hyperion.interstore.impl;

import androidx.databinding.ObservableList;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.pxa;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 6, 0})
@nt1(c = "hyperion.interstore.impl.TranStorePrefs$2$onItemRangeInserted$1", f = "TranStorePrefs.kt", l = {71}, m = "invokeSuspend")
public final class TranStorePrefs$2$onItemRangeInserted$1 extends SuspendLambda implements s74 {
    public final ObservableList<String> $sender;
    public int label;
    public final TranStorePrefs this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranStorePrefs$2$onItemRangeInserted$1(ObservableList<String> observableList, TranStorePrefs tranStorePrefs, wh1<? super TranStorePrefs$2$onItemRangeInserted$1> wh1Var) {
        super(2, wh1Var);
        this.$sender = observableList;
        this.this$0 = tranStorePrefs;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new TranStorePrefs$2$onItemRangeInserted$1(this.$sender, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((TranStorePrefs$2$onItemRangeInserted$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        byte[] bArrB;
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            if (this.$sender != null && (bArrB = pxa.a.b(new ArrayList(this.$sender))) != null) {
                TranStorePrefs tranStorePrefs = this.this$0;
                String str = tranStorePrefs.b;
                this.label = 1;
                if (tranStorePrefs.i(str, bArrB, this) == objF) {
                    return objF;
                }
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
