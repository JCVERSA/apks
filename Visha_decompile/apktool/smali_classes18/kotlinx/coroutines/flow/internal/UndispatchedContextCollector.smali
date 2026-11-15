.class public final Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loz3;


# instance fields
.field public final b:Lkotlin/coroutines/d;

.field public final c:Ljava/lang/Object;

.field public final d:Ls74;


# direct methods
.method public constructor <init>(Loz3;Lkotlin/coroutines/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->b:Lkotlin/coroutines/d;

    invoke-static {p2}, Ldia;->g(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->c:Ljava/lang/Object;

    new-instance p2, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;-><init>(Loz3;Lwh1;)V

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->d:Ls74;

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->b:Lkotlin/coroutines/d;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->c:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->d:Ls74;

    invoke-static {v0, p1, v1, p0, p2}, Lws0;->b(Lkotlin/coroutines/d;Ljava/lang/Object;Ljava/lang/Object;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
