.class public abstract Landroidx/compose/runtime/p;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Landroidx/compose/runtime/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/runtime/p;->a:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/runtime/p$a;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/compose/runtime/p$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/runtime/p;->b:Landroidx/compose/runtime/w;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m;)Landroidx/compose/runtime/l;
    .locals 7

    .line 1
    new-instance v6, Landroidx/compose/runtime/o;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/o;-><init>(Landroidx/compose/runtime/m;Landroidx/compose/runtime/f;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public static final b(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m;)Landroidx/compose/runtime/d2;
    .locals 7

    .line 1
    new-instance v6, Landroidx/compose/runtime/o;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/o;-><init>(Landroidx/compose/runtime/m;Landroidx/compose/runtime/f;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public static final synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/p;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Landroidx/collection/d0;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/p;->f(Landroidx/collection/d0;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Ljava/util/List;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/p;->g(Ljava/util/List;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final f(Landroidx/collection/d0;II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/m;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p2}, Landroidx/collection/m;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, p1, v1}, Landroidx/collection/d0;->j(II)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2, v0}, Landroidx/collection/d0;->j(II)I

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final g(Ljava/util/List;II)V
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method
