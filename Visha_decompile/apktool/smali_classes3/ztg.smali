.class public final Lztg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[J

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 p1, 0xf

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    add-int/2addr p1, p1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lztg;->a:I

    iput v0, p0, Lztg;->b:I

    new-array p1, p1, [J

    iput-object p1, p0, Lztg;->c:[J

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lztg;->d:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget v0, p0, Lztg;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lztg;->c:[J

    iget p0, p0, Lztg;->a:I

    aget-wide v0, v0, p0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final b()J
    .locals 5

    iget v0, p0, Lztg;->b:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lztg;->c:[J

    iget v2, p0, Lztg;->a:I

    aget-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lztg;->d:I

    and-int/2addr v1, v2

    iput v1, p0, Lztg;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lztg;->b:I

    return-wide v3

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lztg;->a:I

    iput v0, p0, Lztg;->b:I

    return-void
.end method

.method public final d()Z
    .locals 0

    iget p0, p0, Lztg;->b:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
