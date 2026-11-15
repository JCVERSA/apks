.class public abstract Lo95;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "SourceFile"

# interfaces
.implements Luc2;
.implements Ldz4;


# instance fields
.field public e:Lkotlinx/coroutines/JobSupport;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lf17;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Lo95;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/JobSupport;->removeNode$kotlinx_coroutines_core(Lo95;)V

    return-void
.end method

.method public isActive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final t()Lkotlinx/coroutines/JobSupport;
    .locals 0

    iget-object p0, p0, Lo95;->e:Lkotlinx/coroutines/JobSupport;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "job"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lqt1;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lqt1;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo95;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object p0

    invoke-static {p0}, Lqt1;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract u()Z
.end method

.method public abstract v(Ljava/lang/Throwable;)V
.end method

.method public final w(Lkotlinx/coroutines/JobSupport;)V
    .locals 0

    iput-object p1, p0, Lo95;->e:Lkotlinx/coroutines/JobSupport;

    return-void
.end method
