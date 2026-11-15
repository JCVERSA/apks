.class public Le72;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Ld72;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/d;ZZ)V

    return-void
.end method

.method public static synthetic V(Le72;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public d()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getCompletedInternal$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public n()Lua9;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getOnAwaitInternal()Lua9;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.DeferredCoroutine>"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public o(Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Le72;->V(Le72;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
