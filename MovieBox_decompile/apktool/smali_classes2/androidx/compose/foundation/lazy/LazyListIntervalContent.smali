.class public final Landroidx/compose/foundation/lazy/LazyListIntervalContent;
.super Landroidx/compose/foundation/lazy/layout/j;
.source "source.java"

# interfaces
.implements Landroidx/compose/foundation/lazy/u;


# instance fields
.field private final a:Landroidx/compose/foundation/lazy/layout/c0;

.field private b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/j;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/foundation/lazy/layout/c0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/c0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->a:Landroidx/compose/foundation/lazy/layout/c0;

    .line 10
    .line 11
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->g()Landroidx/compose/foundation/lazy/layout/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/compose/foundation/lazy/i;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$1;

    .line 10
    .line 11
    invoke-direct {v2, p1}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$1;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$2;

    .line 17
    .line 18
    invoke-direct {p1, p2}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$2;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$3;

    .line 22
    .line 23
    invoke-direct {p2, p3}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$3;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 24
    .line 25
    .line 26
    const p3, -0x3c36593a

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-static {p3, v3, p2}, Landroidx/compose/runtime/internal/b;->b(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/a;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {v1, v2, p1, p2}, Landroidx/compose/foundation/lazy/i;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3, v1}, Landroidx/compose/foundation/lazy/layout/c0;->b(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public bridge synthetic c()Landroidx/compose/foundation/lazy/layout/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->g()Landroidx/compose/foundation/lazy/layout/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->b:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public g()Landroidx/compose/foundation/lazy/layout/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->a:Landroidx/compose/foundation/lazy/layout/c0;

    .line 2
    .line 3
    return-object v0
.end method
