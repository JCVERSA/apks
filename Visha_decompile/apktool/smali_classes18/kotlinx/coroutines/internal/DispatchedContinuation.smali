.class public final Lkotlinx/coroutines/internal/DispatchedContinuation;
.super Lkotlinx/coroutines/DispatchedTask;
.source "SourceFile"

# interfaces
.implements Lok1;
.implements Lwh1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lok1;",
        "Lwh1<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\u0008\u0012\u0004\u0012\u00028\u00000\u0005B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u000fH\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\u0013H\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0013H\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u0017\u0010\u001c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0019H\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001d\u0010!\u001a\u0004\u0018\u00010\u001e2\n\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u001dH\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010%\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u001eH\u0000\u00a2\u0006\u0004\u0008#\u0010$J\u0011\u0010)\u001a\u0004\u0018\u00010&H\u0010\u00a2\u0006\u0004\u0008\'\u0010(J\u001d\u0010,\u001a\u00020\u00132\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u001e\u0010/\u001a\u00020\u00132\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000*H\u0080\u0008\u00a2\u0006\u0004\u0008.\u0010-J\u001a\u00103\u001a\u00020\u000f2\u0008\u00100\u001a\u0004\u0018\u00010&H\u0080\u0008\u00a2\u0006\u0004\u00081\u00102J\u001e\u00105\u001a\u00020\u00132\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000*H\u0080\u0008\u00a2\u0006\u0004\u00084\u0010-J\u001f\u0010;\u001a\u00020\u00132\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010=\u001a\u00020<H\u0016\u00a2\u0006\u0004\u0008=\u0010>R\u0014\u0010\u0007\u001a\u00020\u00068\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010?R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010@R\u001e\u0010A\u001a\u0004\u0018\u00010&8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000c\n\u0004\u0008A\u0010B\u0012\u0004\u0008C\u0010\u0015R\u0014\u0010D\u001a\u00020&8\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010BR\u001a\u0010F\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00198BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010\u001bR\u001c\u0010I\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u001a\u0010L\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010KR\u0013\u0010N\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010&0M8\u0002X\u0082\u0004R\u000b\u00107\u001a\u0002068\u0016X\u0096\u0005\u00a8\u0006O"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/DispatchedContinuation;",
        "T",
        "Lkotlinx/coroutines/DispatchedTask;",
        "Lok1;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "Lwh1;",
        "Lkotlinx/coroutines/c;",
        "dispatcher",
        "continuation",
        "<init>",
        "(Lkotlinx/coroutines/c;Lwh1;)V",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getStackTraceElement",
        "()Ljava/lang/StackTraceElement;",
        "",
        "isReusable$kotlinx_coroutines_core",
        "()Z",
        "isReusable",
        "Lzfb;",
        "awaitReusability$kotlinx_coroutines_core",
        "()V",
        "awaitReusability",
        "release$kotlinx_coroutines_core",
        "release",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "claimReusableCancellableContinuation$kotlinx_coroutines_core",
        "()Lkotlinx/coroutines/CancellableContinuationImpl;",
        "claimReusableCancellableContinuation",
        "Lcr0;",
        "",
        "tryReleaseClaimedContinuation$kotlinx_coroutines_core",
        "(Lcr0;)Ljava/lang/Throwable;",
        "tryReleaseClaimedContinuation",
        "cause",
        "postponeCancellation$kotlinx_coroutines_core",
        "(Ljava/lang/Throwable;)Z",
        "postponeCancellation",
        "",
        "takeState$kotlinx_coroutines_core",
        "()Ljava/lang/Object;",
        "takeState",
        "Lkotlin/Result;",
        "result",
        "resumeWith",
        "(Ljava/lang/Object;)V",
        "resumeCancellableWith$kotlinx_coroutines_core",
        "resumeCancellableWith",
        "state",
        "resumeCancelled$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Z",
        "resumeCancelled",
        "resumeUndispatchedWith$kotlinx_coroutines_core",
        "resumeUndispatchedWith",
        "Lkotlin/coroutines/d;",
        "context",
        "value",
        "dispatchYield$kotlinx_coroutines_core",
        "(Lkotlin/coroutines/d;Ljava/lang/Object;)V",
        "dispatchYield",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lkotlinx/coroutines/c;",
        "Lwh1;",
        "_state",
        "Ljava/lang/Object;",
        "get_state$kotlinx_coroutines_core$annotations",
        "countOrElement",
        "getReusableCancellableContinuation",
        "reusableCancellableContinuation",
        "getCallerFrame",
        "()Lok1;",
        "callerFrame",
        "getDelegate$kotlinx_coroutines_core",
        "()Lwh1;",
        "delegate",
        "Lkotlinx/atomicfu/AtomicRef;",
        "_reusableCancellableContinuation",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic _reusableCancellableContinuation$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation$volatile:Ljava/lang/Object;

.field public _state:Ljava/lang/Object;

.field public final continuation:Lwh1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwh1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final countOrElement:Ljava/lang/Object;

.field public final dispatcher:Lkotlinx/coroutines/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation$volatile"

    const-class v2, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/c;Lwh1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c;",
            "Lwh1<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/c;

    iput-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lwh1;

    invoke-static {}, Ljc2;->a()Ly7a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/d;

    move-result-object p1

    invoke-static {p1}, Ldia;->g(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    return-void
.end method

.method private final getReusableCancellableContinuation()Lkotlinx/coroutines/CancellableContinuationImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CancellableContinuationImpl<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final synthetic get_reusableCancellableContinuation$volatile()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation$volatile:Ljava/lang/Object;

    return-object p0
.end method

.method private static final synthetic get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static synthetic get_state$kotlinx_coroutines_core$annotations()V
    .locals 0

    return-void
.end method

.method private final synthetic loop$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Le74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Le74;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final synthetic set_reusableCancellableContinuation$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final awaitReusability$kotlinx_coroutines_core()V
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljc2;->b:Ly7a;

    if-eq v1, v2, :cond_0

    return-void
.end method

.method public final claimReusableCancellableContinuation$kotlinx_coroutines_core()Lkotlinx/coroutines/CancellableContinuationImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CancellableContinuationImpl<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sget-object v1, Ljc2;->b:Ly7a;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz v2, :cond_2

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sget-object v3, Ljc2;->b:Ly7a;

    invoke-static {v2, p0, v1, v3}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    return-object v1

    :cond_2
    sget-object v2, Ljc2;->b:Ly7a;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatchYield$kotlinx_coroutines_core(Lkotlin/coroutines/d;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d;",
            "TT;)V"
        }
    .end annotation

    iput-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    iget-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/c;

    invoke-virtual {p2, p1, p0}, Lkotlinx/coroutines/c;->dispatchYield(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCallerFrame()Lok1;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lwh1;

    instance-of v0, p0, Lok1;

    if-eqz v0, :cond_0

    check-cast p0, Lok1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContext()Lkotlin/coroutines/d;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lwh1;

    invoke-interface {p0}, Lwh1;->getContext()Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate$kotlinx_coroutines_core()Lwh1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwh1<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isReusable$kotlinx_coroutines_core()Z
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final postponeCancellation$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z
    .locals 5

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljc2;->b:Ly7a;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p0, v2, p1}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_1
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    return v4

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public final release$kotlinx_coroutines_core()V
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->awaitReusability$kotlinx_coroutines_core()V

    invoke-direct {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getReusableCancellableContinuation()Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    :cond_0
    return-void
.end method

.method public final resumeCancellableWith$kotlinx_coroutines_core(Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1}, Lwb1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/c;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/c;->isDispatchNeeded(Lkotlin/coroutines/d;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    iget-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/c;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/d;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/c;->dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lfia;->a:Lfia;

    invoke-virtual {v1}, Lfia;->b()Lyd3;

    move-result-object v1

    invoke-virtual {v1}, Lyd3;->isUnconfinedLoopActive()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-virtual {v1, p0}, Lyd3;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v1, v2}, Lyd3;->incrementUseCount(Z)V

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/d;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/j;->B6:Lkotlinx/coroutines/j$b;

    invoke-interface {v3, v4}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/j;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lkotlinx/coroutines/j;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lkotlinx/coroutines/j;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/DispatchedTask;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lwh1;

    iget-object v3, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    invoke-interface {v0}, Lwh1;->getContext()Lkotlin/coroutines/d;

    move-result-object v4

    invoke-static {v4, v3}, Ldia;->i(Lkotlin/coroutines/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Ldia;->a:Ly7a;

    if-eq v3, v5, :cond_3

    invoke-static {v0, v4, v3}, Lek1;->m(Lwh1;Lkotlin/coroutines/d;Ljava/lang/Object;)Lsfb;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lwh1;

    invoke-interface {v5, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2}, Lj05;->b(I)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lsfb;->V()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v4, v3}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    :cond_5
    invoke-static {v2}, Lj05;->a(I)V

    :cond_6
    :goto_1
    invoke-virtual {v1}, Lyd3;->processUnconfinedEvent()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_6

    invoke-static {v2}, Lj05;->b(I)V

    :goto_2
    invoke-virtual {v1, v2}, Lyd3;->decrementUseCount(Z)V

    invoke-static {v2}, Lj05;->a(I)V

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2}, Lj05;->b(I)V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lsfb;->V()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {v4, v3}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    :cond_8
    invoke-static {v2}, Lj05;->a(I)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v2}, Lj05;->b(I)V

    goto :goto_2

    :goto_4
    return-void

    :catchall_2
    move-exception p0

    invoke-static {v2}, Lj05;->b(I)V

    invoke-virtual {v1, v2}, Lyd3;->decrementUseCount(Z)V

    invoke-static {v2}, Lj05;->a(I)V

    throw p0
.end method

.method public final resumeCancelled$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/d;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/j;->B6:Lkotlinx/coroutines/j$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/j;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/j;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/DispatchedTask;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final resumeUndispatchedWith$kotlinx_coroutines_core(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lwh1;

    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    invoke-interface {v0}, Lwh1;->getContext()Lkotlin/coroutines/d;

    move-result-object v2

    invoke-static {v2, v1}, Ldia;->i(Lkotlin/coroutines/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ldia;->a:Ly7a;

    if-eq v1, v3, :cond_0

    invoke-static {v0, v2, v1}, Lek1;->m(Lwh1;Lkotlin/coroutines/d;Ljava/lang/Object;)Lsfb;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lwh1;

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lj05;->b(I)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsfb;->V()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-static {v2, v1}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    :cond_2
    invoke-static {v3}, Lj05;->a(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v3}, Lj05;->b(I)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lsfb;->V()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {v2, v1}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    :cond_4
    invoke-static {v3}, Lj05;->a(I)V

    throw p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 5

    invoke-static {p1}, Lwb1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/c;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/c;->isDispatchNeeded(Lkotlin/coroutines/d;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    iget-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/c;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/d;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/c;->dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_0
    sget-object v1, Lfia;->a:Lfia;

    invoke-virtual {v1}, Lfia;->b()Lyd3;

    move-result-object v1

    invoke-virtual {v1}, Lyd3;->isUnconfinedLoopActive()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-virtual {v1, p0}, Lyd3;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lyd3;->incrementUseCount(Z)V

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/d;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    invoke-static {v2, v3}, Ldia;->i(Lkotlin/coroutines/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lwh1;

    invoke-interface {v4, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1}, Lyd3;->processUnconfinedEvent()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Lyd3;->decrementUseCount(Z)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2, v3}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :goto_2
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v0}, Lyd3;->decrementUseCount(Z)V

    throw p0
.end method

.method public takeState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    invoke-static {}, Ljc2;->a()Ly7a;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lwh1;

    invoke-static {p0}, Lqt1;->c(Lwh1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryReleaseClaimedContinuation$kotlinx_coroutines_core(Lcr0;)Ljava/lang/Throwable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcr0;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljc2;->b:Ly7a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p0, v2, p1}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    :cond_1
    instance-of p1, v1, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuation;->get_reusableCancellableContinuation$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-static {p1, p0, v1, v3}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inconsistent state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
