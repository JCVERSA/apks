package androidx.datastore.core;

import defpackage.ib1;
import defpackage.kb1;
import defpackage.nt1;
import defpackage.nw6;
import defpackage.sw6;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004H¤@¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u0004H\u0086@¢\u0006\u0004\b\u0007\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0004H\u0086@¢\u0006\u0004\b\b\u0010\u0006R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/datastore/core/RunOnce;", "", MethodDecl.initName, "()V", "Lzfb;", "doRun", "(Lwh1;)Ljava/lang/Object;", "awaitComplete", "runIfNeeded", "Lnw6;", "runMutex", "Lnw6;", "Lib1;", "didRun", "Lib1;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class RunOnce {
    private final nw6 runMutex = sw6.b(false, 1, null);
    private final ib1 didRun = kb1.c(null, 1, null);

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.RunOnce", f = "DataStoreImpl.kt", l = {544, 497}, m = "runIfNeeded")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RunOnce.this.runIfNeeded(this);
        }
    }

    public final Object awaitComplete(wh1<? super zfb> wh1Var) {
        Object objO = this.didRun.o(wh1Var);
        return objO == z45.f() ? objO : zfb.a;
    }

    public abstract Object doRun(wh1<? super zfb> wh1Var);

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object runIfNeeded(wh1<? super zfb> wh1Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        nw6 nw6Var;
        Throwable th;
        nw6 nw6Var2;
        RunOnce runOnce;
        if (wh1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) wh1Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(wh1Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(wh1Var);
        }
        Object obj = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        try {
            if (i2 == 0) {
                c.b(obj);
                if (this.didRun.isCompleted()) {
                    return zfb.a;
                }
                nw6Var = this.runMutex;
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = nw6Var;
                anonymousClass1.label = 1;
                if (nw6Var.c(null, anonymousClass1) == objF) {
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    if (i2 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    nw6Var2 = (nw6) anonymousClass1.L$1;
                    runOnce = (RunOnce) anonymousClass1.L$0;
                    try {
                        c.b(obj);
                        ib1 ib1Var = runOnce.didRun;
                        zfb zfbVar = zfb.a;
                        ib1Var.h(zfbVar);
                        nw6Var2.b(null);
                        return zfbVar;
                    } catch (Throwable th2) {
                        th = th2;
                        nw6Var2.b(null);
                        throw th;
                    }
                }
                nw6 nw6Var3 = (nw6) anonymousClass1.L$1;
                RunOnce runOnce2 = (RunOnce) anonymousClass1.L$0;
                c.b(obj);
                nw6Var = nw6Var3;
                this = runOnce2;
            }
            if (this.didRun.isCompleted()) {
                zfb zfbVar2 = zfb.a;
                nw6Var.b(null);
                return zfbVar2;
            }
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = nw6Var;
            anonymousClass1.label = 2;
            if (this.doRun(anonymousClass1) == objF) {
                return objF;
            }
            runOnce = this;
            nw6Var2 = nw6Var;
            ib1 ib1Var2 = runOnce.didRun;
            zfb zfbVar3 = zfb.a;
            ib1Var2.h(zfbVar3);
            nw6Var2.b(null);
            return zfbVar3;
        } catch (Throwable th3) {
            nw6 nw6Var4 = nw6Var;
            th = th3;
            nw6Var2 = nw6Var4;
            nw6Var2.b(null);
            throw th;
        }
    }
}
