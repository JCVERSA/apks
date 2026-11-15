.class final Landroidx/compose/runtime/y2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/runtime/tooling/b;
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private final a:Landroidx/compose/runtime/j2;

.field private final b:I

.field private final c:Landroidx/compose/runtime/l0;

.field private final d:Landroidx/compose/runtime/x2;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/j2;ILandroidx/compose/runtime/l0;Landroidx/compose/runtime/x2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/y2;->a:Landroidx/compose/runtime/j2;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/runtime/y2;->b:I

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/runtime/y2;->d:Landroidx/compose/runtime/x2;

    .line 9
    .line 10
    invoke-virtual {p3}, Landroidx/compose/runtime/l0;->c()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Landroidx/compose/runtime/y2;->e:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p0, p0, Landroidx/compose/runtime/y2;->f:Ljava/lang/Iterable;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/runtime/w2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/y2;->a:Landroidx/compose/runtime/j2;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/runtime/y2;->b:I

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/runtime/y2;->c:Landroidx/compose/runtime/l0;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/runtime/y2;->d:Landroidx/compose/runtime/x2;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/runtime/w2;-><init>(Landroidx/compose/runtime/j2;ILandroidx/compose/runtime/l0;Landroidx/compose/runtime/x2;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
