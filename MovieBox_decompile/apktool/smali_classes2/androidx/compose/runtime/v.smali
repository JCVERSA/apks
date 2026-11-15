.class public final Landroidx/compose/runtime/v;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/runtime/b2;


# instance fields
.field private final a:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/v;->a:Lkotlinx/coroutines/n0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/v;->a:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAbandoned()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/v;->a:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/runtime/LeftCompositionCancellationException;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/compose/runtime/LeftCompositionCancellationException;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlinx/coroutines/o0;->c(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onForgotten()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/v;->a:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/runtime/LeftCompositionCancellationException;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/compose/runtime/LeftCompositionCancellationException;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlinx/coroutines/o0;->c(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRemembered()V
    .locals 0

    .line 1
    return-void
.end method
