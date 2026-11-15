.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/layout/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d;->c(Landroidx/compose/ui/layout/x;Ljava/util/List;J)Landroidx/compose/ui/layout/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroidx/compose/ui/layout/v;

.field final synthetic b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field final synthetic c:I

.field final synthetic d:Landroidx/compose/ui/layout/v;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/v;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;ILandroidx/compose/ui/layout/v;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 2
    .line 3
    iput p3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->c:I

    .line 4
    .line 5
    iput-object p4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->d:Landroidx/compose/ui/layout/v;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->a:Landroidx/compose/ui/layout/v;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->a:Landroidx/compose/ui/layout/v;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->a:Landroidx/compose/ui/layout/v;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public v()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->a:Landroidx/compose/ui/layout/v;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->c:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->d:Landroidx/compose/ui/layout/v;

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->w()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public x()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->a:Landroidx/compose/ui/layout/v;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->x()Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
