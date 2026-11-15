package kotlinx.coroutines.flow.internal;

import defpackage.oz3;
import defpackage.u74;
import defpackage.wh1;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public class SafeCollectorKt$emitFun$1 extends FunctionReferenceImpl implements u74 {
    public static final SafeCollectorKt$emitFun$1 INSTANCE = new SafeCollectorKt$emitFun$1();

    public SafeCollectorKt$emitFun$1() {
        super(3, oz3.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override
    public final Object invoke(oz3 oz3Var, Object obj, wh1<? super zfb> wh1Var) {
        return oz3Var.emit(obj, wh1Var);
    }
}
