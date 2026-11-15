.class final Landroidx/compose/runtime/b0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/runtime/b2;


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private b:Landroidx/compose/runtime/c0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/b0;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAbandoned()V
    .locals 0

    .line 1
    return-void
.end method

.method public onForgotten()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/b0;->b:Landroidx/compose/runtime/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/c0;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/b0;->b:Landroidx/compose/runtime/c0;

    .line 10
    .line 11
    return-void
.end method

.method public onRemembered()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/b0;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/g0;->f()Landroidx/compose/runtime/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/compose/runtime/c0;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/runtime/b0;->b:Landroidx/compose/runtime/c0;

    .line 14
    .line 15
    return-void
.end method
