.class public abstract Lkotlinx/coroutines/flow/internal/CombineKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Loz3;[Lnz3;Lc74;Lu74;Lwh1;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>([Lnz3;Lc74;Lu74;Loz3;Lwh1;)V

    invoke-static {v6, p4}, Lqz3;->a(Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
