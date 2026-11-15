.class final Landroidx/compose/runtime/k2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/runtime/tooling/b;
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private final a:Landroidx/compose/runtime/j2;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/j2;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/k2;->a:Landroidx/compose/runtime/j2;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/runtime/k2;->b:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/runtime/k2;->c:I

    .line 9
    .line 10
    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/k2;->a:Landroidx/compose/runtime/j2;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/j2;->t()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroidx/compose/runtime/k2;->c:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/k2;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/k2;->a:Landroidx/compose/runtime/j2;

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/runtime/k2;->b:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/j2;->A(I)Landroidx/compose/runtime/l0;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/runtime/j0;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/k2;->a:Landroidx/compose/runtime/j2;

    .line 14
    .line 15
    iget v2, p0, Landroidx/compose/runtime/k2;->b:I

    .line 16
    .line 17
    add-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/runtime/j2;->o()[I

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget v5, p0, Landroidx/compose/runtime/k2;->b:I

    .line 24
    .line 25
    invoke-static {v4, v5}, Landroidx/compose/runtime/l2;->h([II)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    add-int/2addr v2, v4

    .line 30
    invoke-direct {v0, v1, v3, v2}, Landroidx/compose/runtime/j0;-><init>(Landroidx/compose/runtime/j2;II)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
