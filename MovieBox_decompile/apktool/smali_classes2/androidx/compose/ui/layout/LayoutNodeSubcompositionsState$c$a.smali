.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/layout/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->L0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lkotlin/jvm/functions/Function1;

.field final synthetic e:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

.field final synthetic f:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->a:I

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->c:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->d:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->e:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->f:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->g:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public v()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->e:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->W()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->f:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->T1()Landroidx/compose/ui/node/j0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->g:Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->c1()Landroidx/compose/ui/layout/g0$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->g:Lkotlin/jvm/functions/Function1;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->f:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 38
    .line 39
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->c1()Landroidx/compose/ui/layout/g0$a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public x()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method
