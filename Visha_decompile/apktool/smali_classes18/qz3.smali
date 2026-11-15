.class public abstract Lqz3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ls74;Lwh1;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lpz3;

    invoke-interface {p1}, Lwh1;->getContext()Lkotlin/coroutines/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lpz3;-><init>(Lkotlin/coroutines/d;Lwh1;)V

    invoke-static {v0, v0, p0}, Ltfb;->b(Lx29;Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lpt1;->c(Lwh1;)V

    :cond_0
    return-object p0
.end method
