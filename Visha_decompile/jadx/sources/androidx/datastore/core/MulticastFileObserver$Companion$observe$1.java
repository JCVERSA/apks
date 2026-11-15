package androidx.datastore.core;

import defpackage.c74;
import defpackage.e74;
import defpackage.gh8;
import defpackage.nt1;
import defpackage.s74;
import defpackage.tu0;
import defpackage.uc2;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.io.File;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.channels.ProduceKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lgh8;", "Lzfb;", "<anonymous>", "(Lgh8;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.datastore.core.MulticastFileObserver$Companion$observe$1", f = "MulticastFileObserver.android.kt", l = {84, 85}, m = "invokeSuspend")
public final class MulticastFileObserver$Companion$observe$1 extends SuspendLambda implements s74 {
    final File $file;
    private Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MulticastFileObserver$Companion$observe$1(File file, wh1<? super MulticastFileObserver$Companion$observe$1> wh1Var) {
        super(2, wh1Var);
        this.$file = file;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        MulticastFileObserver$Companion$observe$1 multicastFileObserver$Companion$observe$1 = new MulticastFileObserver$Companion$observe$1(this.$file, wh1Var);
        multicastFileObserver$Companion$observe$1.L$0 = obj;
        return multicastFileObserver$Companion$observe$1;
    }

    @Override
    public final Object invoke(gh8 gh8Var, wh1<? super zfb> wh1Var) {
        return ((MulticastFileObserver$Companion$observe$1) create(gh8Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        final uc2 uc2VarObserve;
        gh8 gh8Var;
        Object objF = z45.f();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                uc2VarObserve = (uc2) this.L$1;
                gh8Var = (gh8) this.L$0;
                c.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
        c.b(obj);
        final gh8 gh8Var2 = (gh8) this.L$0;
        final File file = this.$file;
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj2) {
                invoke((String) obj2);
                return zfb.a;
            }

            public final void invoke(String str) {
                if (y45.e(str, file.getName())) {
                    tu0.b(gh8Var2, zfb.a);
                }
            }
        };
        MulticastFileObserver.Companion companion = MulticastFileObserver.INSTANCE;
        File parentFile = this.$file.getParentFile();
        y45.g(parentFile);
        uc2VarObserve = companion.observe(parentFile, e74Var);
        zfb zfbVar = zfb.a;
        this.L$0 = gh8Var2;
        this.L$1 = uc2VarObserve;
        this.label = 1;
        if (gh8Var2.l(zfbVar, this) == objF) {
            return objF;
        }
        gh8Var = gh8Var2;
        c74 c74Var = new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m44invoke();
                return zfb.a;
            }

            public final void m44invoke() {
                uc2VarObserve.dispose();
            }
        };
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
        if (ProduceKt.a(gh8Var, c74Var, this) == objF) {
            return objF;
        }
        return zfb.a;
    }
}
