.class public final Landroidx/collection/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/e;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 3
    const-string v2, "capacity must be >= 1"

    .line 4
    invoke-static {v2}, Ln/d;->a(Ljava/lang/String;)V

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    if-gt p1, v2, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    .line 5
    const-string v0, "capacity must be <= 2^30"

    .line 6
    invoke-static {v0}, Ln/d;->a(Ljava/lang/String;)V

    .line 7
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/2addr p1, v1

    :cond_4
    add-int/lit8 v0, p1, -0x1

    .line 9
    iput v0, p0, Landroidx/collection/e;->d:I

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/e;->a:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x8

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/e;-><init>(I)V

    return-void
.end method

.method private final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/collection/e;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Landroidx/collection/e;->b:I

    .line 5
    .line 6
    sub-int v3, v1, v2

    .line 7
    .line 8
    shl-int/lit8 v4, v1, 0x1

    .line 9
    .line 10
    if-ltz v4, :cond_0

    .line 11
    .line 12
    new-array v5, v4, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    invoke-static {v0, v5, v6, v2, v1}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/collection/e;->a:[Ljava/lang/Object;

    .line 19
    .line 20
    iget v2, p0, Landroidx/collection/e;->b:I

    .line 21
    .line 22
    invoke-static {v0, v5, v3, v6, v2}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iput-object v5, p0, Landroidx/collection/e;->a:[Ljava/lang/Object;

    .line 26
    .line 27
    iput v6, p0, Landroidx/collection/e;->b:I

    .line 28
    .line 29
    iput v1, p0, Landroidx/collection/e;->c:I

    .line 30
    .line 31
    add-int/lit8 v4, v4, -0x1

    .line 32
    .line 33
    iput v4, p0, Landroidx/collection/e;->d:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    const-string v1, "Max array capacity exceeded"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/collection/e;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Landroidx/collection/e;->c:I

    .line 4
    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iget p1, p0, Landroidx/collection/e;->d:I

    .line 10
    .line 11
    and-int/2addr p1, v1

    .line 12
    iput p1, p0, Landroidx/collection/e;->c:I

    .line 13
    .line 14
    iget v0, p0, Landroidx/collection/e;->b:I

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/collection/e;->b()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/collection/e;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/collection/e;->a:[Ljava/lang/Object;

    .line 10
    .line 11
    iget v1, p0, Landroidx/collection/e;->b:I

    .line 12
    .line 13
    add-int/2addr v1, p1

    .line 14
    iget p1, p0, Landroidx/collection/e;->d:I

    .line 15
    .line 16
    and-int/2addr p1, v1

    .line 17
    aget-object p1, v0, p1

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    sget-object p1, Landroidx/collection/g;->a:Landroidx/collection/g;

    .line 24
    .line 25
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/e;->b:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/collection/e;->c:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/collection/e;->b:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/collection/e;->c:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/collection/e;->a:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object v2, v1, v0

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v3, v1, v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iget v1, p0, Landroidx/collection/e;->d:I

    .line 17
    .line 18
    and-int/2addr v0, v1

    .line 19
    iput v0, p0, Landroidx/collection/e;->b:I

    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_0
    sget-object v0, Landroidx/collection/g;->a:Landroidx/collection/g;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public final f()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/e;->c:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/collection/e;->b:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, Landroidx/collection/e;->d:I

    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    return v0
.end method
