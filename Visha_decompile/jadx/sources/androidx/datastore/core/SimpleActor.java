package androidx.datastore.core;

import androidx.core.app.NotificationCompat;
import defpackage.cu0;
import defpackage.e74;
import defpackage.el0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.ps0;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import kotlinx.coroutines.channels.a;
import kotlinx.coroutines.j;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002Be\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0014\u0010\b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\t\u0012\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00028\u0000¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0012R0\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0013R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroidx/datastore/core/SimpleActor;", "T", "", "Lnk1;", "scope", "Lkotlin/Function1;", "", "Lzfb;", "onComplete", "Lkotlin/Function2;", "onUndeliveredElement", "Lwh1;", "consumeMessage", MethodDecl.initName, "(Lnk1;Le74;Ls74;Ls74;)V", NotificationCompat.CATEGORY_MESSAGE, "offer", "(Ljava/lang/Object;)V", "Lnk1;", "Ls74;", "Lps0;", "messageQueue", "Lps0;", "Landroidx/datastore/core/AtomicInt;", "remainingMessages", "Landroidx/datastore/core/AtomicInt;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SimpleActor<T> {
    private final s74 consumeMessage;
    private final ps0 messageQueue;
    private final AtomicInt remainingMessages;
    private final nk1 scope;

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", l = {121, 121}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        Object L$0;
        int label;
        final SimpleActor<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(SimpleActor<T> simpleActor, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.this$0 = simpleActor;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass2(this.this$0, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0050 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:17:0x005c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:20:0x0069  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005a -> B:18:0x005d). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:0:?
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = defpackage.z45.f()
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.c.b(r6)
                goto L5d
            L12:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L1a:
                java.lang.Object r1 = r5.L$0
                s74 r1 = (defpackage.s74) r1
                kotlin.c.b(r6)
                goto L51
            L22:
                kotlin.c.b(r6)
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                androidx.datastore.core.AtomicInt r6 = androidx.datastore.core.SimpleActor.access$getRemainingMessages$p(r6)
                int r6 = r6.get()
                if (r6 <= 0) goto L6c
            L31:
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                nk1 r6 = androidx.datastore.core.SimpleActor.access$getScope$p(r6)
                kotlinx.coroutines.d.h(r6)
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                s74 r1 = androidx.datastore.core.SimpleActor.access$getConsumeMessage$p(r6)
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                ps0 r6 = androidx.datastore.core.SimpleActor.access$getMessageQueue$p(r6)
                r5.L$0 = r1
                r5.label = r3
                java.lang.Object r6 = r6.c(r5)
                if (r6 != r0) goto L51
                return r0
            L51:
                r4 = 0
                r5.L$0 = r4
                r5.label = r2
                java.lang.Object r6 = r1.invoke(r6, r5)
                if (r6 != r0) goto L5d
                return r0
            L5d:
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                androidx.datastore.core.AtomicInt r6 = androidx.datastore.core.SimpleActor.access$getRemainingMessages$p(r6)
                int r6 = r6.decrementAndGet()
                if (r6 != 0) goto L31
                zfb r5 = defpackage.zfb.a
                return r5
            L6c:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "Check failed."
                r5.<init>(r6)
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SimpleActor.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public SimpleActor(nk1 nk1Var, final e74 e74Var, final s74 s74Var, s74 s74Var2) {
        y45.j(nk1Var, "scope");
        y45.j(e74Var, "onComplete");
        y45.j(s74Var, "onUndeliveredElement");
        y45.j(s74Var2, "consumeMessage");
        this.scope = nk1Var;
        this.consumeMessage = s74Var2;
        this.messageQueue = cu0.b(Integer.MAX_VALUE, null, null, 6, null);
        this.remainingMessages = new AtomicInt(0);
        j jVar = (j) nk1Var.getCoroutineContext().get(j.B6);
        if (jVar != null) {
            jVar.invokeOnCompletion(new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((Throwable) obj);
                    return zfb.a;
                }

                public final void invoke(Throwable th) {
                    zfb zfbVar;
                    e74Var.invoke(th);
                    ((SimpleActor) this).messageQueue.m(th);
                    do {
                        Object objF = a.f(((SimpleActor) this).messageQueue.i());
                        if (objF != null) {
                            s74Var.invoke(objF, th);
                            zfbVar = zfb.a;
                        } else {
                            zfbVar = null;
                        }
                    } while (zfbVar != null);
                }
            });
        }
    }

    public final void offer(T msg) {
        Object objF = this.messageQueue.f(msg);
        if (objF instanceof a.C0413a) {
            Throwable thE = a.e(objF);
            if (thE != null) {
                throw thE;
            }
            throw new ClosedSendChannelException("Channel was closed normally");
        }
        if (!a.i(objF)) {
            throw new IllegalStateException("Check failed.");
        }
        if (this.remainingMessages.getAndIncrement() == 0) {
            el0.d(this.scope, null, null, new AnonymousClass2(this, null), 3, null);
        }
    }
}
