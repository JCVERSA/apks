.class public final Landroidx/collection/l0;
.super Landroidx/collection/ObjectList;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/l0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Landroidx/collection/ObjectList;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/l0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/ObjectList;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/collection/l0;->g(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v2, p0, Landroidx/collection/ObjectList;->b:I

    .line 11
    .line 12
    aput-object p1, v0, v2

    .line 13
    .line 14
    add-int/2addr v2, v1

    .line 15
    iput v2, p0, Landroidx/collection/ObjectList;->b:I

    .line 16
    .line 17
    return v1
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Landroidx/collection/ObjectList;->b:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v2, v3, v1}, Lkotlin/collections/ArraysKt;->u([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    iput v3, p0, Landroidx/collection/ObjectList;->b:I

    .line 11
    .line 12
    return-void
.end method

.method public final g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge v1, p1, :cond_0

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    mul-int/lit8 v1, v1, 0x3

    .line 8
    .line 9
    div-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "copyOf(this, newSize)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 25
    .line 26
    :cond_0
    return-void
.end method
