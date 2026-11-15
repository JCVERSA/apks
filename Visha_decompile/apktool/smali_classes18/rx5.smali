.class public abstract Lrx5;
.super Lkotlinx/coroutines/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/c;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Lrx5;
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const-string p0, "Dispatchers.Main"

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lrx5;->b()Lrx5;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    const-string p0, "Dispatchers.Main.immediate"

    return-object p0

    :cond_1
    return-object v1
.end method

.method public limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/c;
    .locals 0

    invoke-static {p1}, Lbl5;->a(I)V

    invoke-static {p0, p2}, Lbl5;->b(Lkotlinx/coroutines/c;Ljava/lang/String;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0
.end method
