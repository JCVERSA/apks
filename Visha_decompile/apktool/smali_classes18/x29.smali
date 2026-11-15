.class public Lx29;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lok1;


# instance fields
.field public final uCont:Lwh1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwh1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Lwh1;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/d;ZZ)V

    iput-object p2, p0, Lx29;->uCont:Lwh1;

    return-void
.end method


# virtual methods
.method public afterCompletion(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lx29;->uCont:Lwh1;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v0

    iget-object p0, p0, Lx29;->uCont:Lwh1;

    invoke-static {p1, p0}, Lwb1;->a(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljc2;->b(Lwh1;Ljava/lang/Object;)V

    return-void
.end method

.method public afterResume(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lx29;->uCont:Lwh1;

    invoke-static {p1, p0}, Lwb1;->a(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCallerFrame()Lok1;
    .locals 1

    iget-object p0, p0, Lx29;->uCont:Lwh1;

    instance-of v0, p0, Lok1;

    if-eqz v0, :cond_0

    check-cast p0, Lok1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isScopedCoroutine()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
