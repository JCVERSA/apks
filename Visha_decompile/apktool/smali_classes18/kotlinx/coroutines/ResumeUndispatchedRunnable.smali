.class final Lkotlinx/coroutines/ResumeUndispatchedRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u000cR\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/ResumeUndispatchedRunnable;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "Lkotlinx/coroutines/c;",
        "dispatcher",
        "Lcr0;",
        "Lzfb;",
        "continuation",
        "<init>",
        "(Lkotlinx/coroutines/c;Lcr0;)V",
        "run",
        "()V",
        "Lkotlinx/coroutines/c;",
        "Lcr0;",
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


# instance fields
.field private final continuation:Lcr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcr0;"
        }
    .end annotation
.end field

.field private final dispatcher:Lkotlinx/coroutines/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/c;Lcr0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c;",
            "Lcr0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->dispatcher:Lkotlinx/coroutines/c;

    iput-object p2, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->continuation:Lcr0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->continuation:Lcr0;

    iget-object p0, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->dispatcher:Lkotlinx/coroutines/c;

    sget-object v1, Lzfb;->a:Lzfb;

    invoke-interface {v0, p0, v1}, Lcr0;->resumeUndispatched(Lkotlinx/coroutines/c;Ljava/lang/Object;)V

    return-void
.end method
