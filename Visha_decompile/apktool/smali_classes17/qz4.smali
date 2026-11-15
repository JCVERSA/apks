.class public abstract Lqz4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqz4$a;
    }
.end annotation


# direct methods
.method public static final a(Lsz4;)Lpz4;
    .locals 2

    const-string v0, "style"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lsz4;->b()Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

    move-result-object v0

    sget-object v1, Lqz4$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lnp9;

    invoke-direct {v0, p0}, Lnp9;-><init>(Lsz4;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    new-instance v0, Lipc;

    invoke-direct {v0, p0}, Lipc;-><init>(Lsz4;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lq19;

    invoke-direct {v0, p0}, Lq19;-><init>(Lsz4;)V

    :goto_0
    return-object v0
.end method
