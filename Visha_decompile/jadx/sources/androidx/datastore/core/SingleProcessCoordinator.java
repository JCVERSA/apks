package androidx.datastore.core;

import com.lzy.okgo.model.Progress;
import defpackage.e74;
import defpackage.mk0;
import defpackage.nt1;
import defpackage.nw6;
import defpackage.nz3;
import defpackage.s74;
import defpackage.sw6;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J4\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00062\u001c\u0010\n\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0096@¢\u0006\u0004\b\u000b\u0010\fJ:\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00062\"\u0010\n\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\rH\u0096@¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011H\u0096@¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0011H\u0096@¢\u0006\u0004\b\u0014\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR \u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006\""}, d2 = {"Landroidx/datastore/core/SingleProcessCoordinator;", "Landroidx/datastore/core/InterProcessCoordinator;", "", Progress.FILE_PATH, MethodDecl.initName, "(Ljava/lang/String;)V", "T", "Lkotlin/Function1;", "Lwh1;", "", "block", "lock", "(Le74;Lwh1;)Ljava/lang/Object;", "Lkotlin/Function2;", "", "tryLock", "(Ls74;Lwh1;)Ljava/lang/Object;", "", "getVersion", "(Lwh1;)Ljava/lang/Object;", "incrementAndGetVersion", "Ljava/lang/String;", "Lnw6;", "mutex", "Lnw6;", "Landroidx/datastore/core/AtomicInt;", "version", "Landroidx/datastore/core/AtomicInt;", "Lnz3;", "Lzfb;", "updateNotifications", "Lnz3;", "getUpdateNotifications", "()Lnz3;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SingleProcessCoordinator implements InterProcessCoordinator {
    private final String filePath;
    private final nw6 mutex;
    private final nz3 updateNotifications;
    private final AtomicInt version;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.SingleProcessCoordinator", f = "SingleProcessCoordinator.kt", l = {66, 41}, m = "lock")
    public static final class AnonymousClass1<T> extends ContinuationImpl {
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
            return SingleProcessCoordinator.this.lock(null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.SingleProcessCoordinator", f = "SingleProcessCoordinator.kt", l = {50}, m = "tryLock")
    public static final class C04941<T> extends ContinuationImpl {
        Object L$0;
        boolean Z$0;
        int label;
        Object result;

        public C04941(wh1<? super C04941> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SingleProcessCoordinator.this.tryLock(null, this);
        }
    }

    public SingleProcessCoordinator(String str) {
        y45.j(str, Progress.FILE_PATH);
        this.filePath = str;
        this.mutex = sw6.b(false, 1, null);
        this.version = new AtomicInt(0);
        this.updateNotifications = sz3.r(new SingleProcessCoordinator$updateNotifications$1(null));
    }

    @Override
    public nz3 getUpdateNotifications() {
        return this.updateNotifications;
    }

    @Override
    public Object getVersion(wh1<? super Integer> wh1Var) {
        return mk0.b(this.version.get());
    }

    @Override
    public Object incrementAndGetVersion(wh1<? super Integer> wh1Var) {
        return mk0.b(this.version.incrementAndGet());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.datastore.core.SingleProcessCoordinator] */
    /* JADX WARN: Type inference failed for: r6v1, types: [nw6] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v4, types: [nw6] */
    @Override
    public <T> Object lock(e74 e74Var, wh1<? super T> wh1Var) {
        AnonymousClass1 anonymousClass1;
        nw6 nw6Var;
        nw6 nw6Var2;
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
        Object objInvoke = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        try {
            if (i2 != 0) {
                if (i2 == 1) {
                    nw6 nw6Var3 = (nw6) anonymousClass1.L$1;
                    e74Var = (e74) anonymousClass1.L$0;
                    c.b(objInvoke);
                    nw6Var2 = nw6Var3;
                } else {
                    if (i2 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    nw6 nw6Var4 = (nw6) anonymousClass1.L$0;
                    c.b(objInvoke);
                    this = nw6Var4;
                }
                this.b(null);
                return objInvoke;
            }
            c.b(objInvoke);
            nw6Var = this.mutex;
            anonymousClass1.L$0 = e74Var;
            anonymousClass1.L$1 = nw6Var;
            anonymousClass1.label = 1;
            if (nw6Var.c(null, anonymousClass1) == objF) {
                nw6Var2 = nw6Var;
                return objF;
            }
            nw6Var2 = nw6Var;
            anonymousClass1.L$0 = nw6Var2;
            anonymousClass1.L$1 = null;
            anonymousClass1.label = 2;
            objInvoke = e74Var.invoke(anonymousClass1);
            this = nw6Var2;
            if (objInvoke == objF) {
                return objF;
            }
            this.b(null);
            return objInvoke;
        } catch (Throwable th) {
            this.b(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0065  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public <T> Object tryLock(s74 s74Var, wh1<? super T> wh1Var) throws Throwable {
        C04941 c04941;
        nw6 nw6Var;
        boolean z;
        Throwable th;
        if (wh1Var instanceof C04941) {
            c04941 = (C04941) wh1Var;
            int i = c04941.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04941.label = i - Integer.MIN_VALUE;
            } else {
                c04941 = new C04941(wh1Var);
            }
        } else {
            c04941 = new C04941(wh1Var);
        }
        Object obj = c04941.result;
        Object objF = z45.f();
        int i2 = c04941.label;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = c04941.Z$0;
            nw6Var = (nw6) c04941.L$0;
            try {
                c.b(obj);
                if (z) {
                    nw6Var.b(null);
                }
                return obj;
            } catch (Throwable th2) {
                th = th2;
                if (z) {
                    nw6Var.b(null);
                }
                throw th;
            }
        }
        c.b(obj);
        nw6 nw6Var2 = this.mutex;
        boolean zA = nw6Var2.a(null);
        try {
            Object objA = mk0.a(zA);
            c04941.L$0 = nw6Var2;
            c04941.Z$0 = zA;
            c04941.label = 1;
            Object objInvoke = s74Var.invoke(objA, c04941);
            if (objInvoke == objF) {
                return objF;
            }
            nw6Var = nw6Var2;
            z = zA;
            obj = objInvoke;
            if (z) {
                nw6Var.b(null);
            }
            return obj;
        } catch (Throwable th3) {
            nw6Var = nw6Var2;
            z = zA;
            th = th3;
            if (z) {
                nw6Var.b(null);
            }
            throw th;
        }
    }
}
