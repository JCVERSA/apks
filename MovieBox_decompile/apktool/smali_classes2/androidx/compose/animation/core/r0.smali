.class public final Landroidx/compose/animation/core/r0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/animation/core/g;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroidx/compose/animation/core/z;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/r0;-><init>(IILandroidx/compose/animation/core/z;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILandroidx/compose/animation/core/z;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/animation/core/r0;->a:I

    .line 4
    iput p2, p0, Landroidx/compose/animation/core/r0;->b:I

    .line 5
    iput-object p3, p0, Landroidx/compose/animation/core/r0;->c:Landroidx/compose/animation/core/z;

    return-void
.end method

.method public synthetic constructor <init>(IILandroidx/compose/animation/core/z;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x12c

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 6
    invoke-static {}, Landroidx/compose/animation/core/b0;->c()Landroidx/compose/animation/core/z;

    move-result-object p3

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/r0;-><init>(IILandroidx/compose/animation/core/z;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/v0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/r0;->f(Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/f1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/compose/animation/core/r0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/animation/core/r0;

    .line 7
    .line 8
    iget v0, p1, Landroidx/compose/animation/core/r0;->a:I

    .line 9
    .line 10
    iget v2, p0, Landroidx/compose/animation/core/r0;->a:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget v0, p1, Landroidx/compose/animation/core/r0;->b:I

    .line 15
    .line 16
    iget v2, p0, Landroidx/compose/animation/core/r0;->b:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/compose/animation/core/r0;->c:Landroidx/compose/animation/core/z;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/animation/core/r0;->c:Landroidx/compose/animation/core/z;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_0
    return v1
.end method

.method public f(Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/f1;
    .locals 3

    .line 1
    new-instance p1, Landroidx/compose/animation/core/f1;

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/animation/core/r0;->a:I

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/animation/core/r0;->b:I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/animation/core/r0;->c:Landroidx/compose/animation/core/z;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2}, Landroidx/compose/animation/core/f1;-><init>(IILandroidx/compose/animation/core/z;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/animation/core/r0;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/animation/core/r0;->c:Landroidx/compose/animation/core/z;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/animation/core/r0;->b:I

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    return v0
.end method
