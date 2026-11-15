package kotlinx.coroutines.channels;

import defpackage.bc9;
import defpackage.dl0;
import defpackage.zfb;

public abstract class ChannelsKt__ChannelsKt {
    public static final Object a(bc9 bc9Var, Object obj) {
        Object objF = bc9Var.f(obj);
        if (objF instanceof a.c) {
            return ((a) dl0.b(null, new ChannelsKt__ChannelsKt$trySendBlocking$2(bc9Var, obj, null), 1, null)).k();
        }
        return a.b.c(zfb.a);
    }
}
