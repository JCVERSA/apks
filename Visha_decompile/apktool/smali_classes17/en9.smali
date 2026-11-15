.class public abstract Len9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lsz4;)Ldn9;
    .locals 2

    const-string v0, "style"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/indicator/c$b;

    if-eqz v1, :cond_0

    new-instance v0, Lgw8;

    invoke-direct {v0, p0}, Lgw8;-><init>(Lsz4;)V

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lcom/yandex/div/internal/widget/indicator/c$a;

    if-eqz v0, :cond_1

    new-instance v0, Ldw0;

    invoke-direct {v0, p0}, Ldw0;-><init>(Lsz4;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
