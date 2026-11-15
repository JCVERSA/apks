.class public Lwb7;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field public transient i:[J

.field public transient j:I

.field public transient k:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, p1, v0}, Lwb7;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/k;-><init>(IF)V

    return-void
.end method


# virtual methods
.method public final E(I)I
    .locals 1

    iget-object p0, p0, Lwb7;->i:[J

    aget-wide p0, p0, p1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public final F(I)I
    .locals 0

    iget-object p0, p0, Lwb7;->i:[J

    aget-wide p0, p0, p1

    long-to-int p0, p0

    return p0
.end method

.method public final G(II)V
    .locals 4

    iget-object p0, p0, Lwb7;->i:[J

    aget-wide v0, p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v2, p2

    const/16 p2, 0x20

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    aput-wide v0, p0, p1

    return-void
.end method

.method public final H(II)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Lwb7;->j:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lwb7;->I(II)V

    :goto_0
    if-ne p2, v0, :cond_1

    iput p1, p0, Lwb7;->k:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p1}, Lwb7;->G(II)V

    :goto_1
    return-void
.end method

.method public final I(II)V
    .locals 6

    iget-object p0, p0, Lwb7;->i:[J

    aget-wide v0, p0, p1

    const-wide v2, -0x100000000L

    and-long/2addr v0, v2

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    aput-wide v0, p0, p1

    return-void
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/k;->a()V

    const/4 v0, -0x2

    iput v0, p0, Lwb7;->j:I

    iput v0, p0, Lwb7;->k:I

    return-void
.end method

.method public e()I
    .locals 1

    iget p0, p0, Lwb7;->j:I

    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public n(IF)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/k;->n(IF)V

    const/4 p2, -0x2

    iput p2, p0, Lwb7;->j:I

    iput p2, p0, Lwb7;->k:I

    new-array p1, p1, [J

    iput-object p1, p0, Lwb7;->i:[J

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public o(ILjava/lang/Object;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/k;->o(ILjava/lang/Object;II)V

    iget p2, p0, Lwb7;->k:I

    invoke-virtual {p0, p2, p1}, Lwb7;->H(II)V

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Lwb7;->H(II)V

    return-void
.end method

.method public p(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/k;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1}, Lwb7;->E(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lwb7;->F(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lwb7;->H(II)V

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, v0}, Lwb7;->E(I)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lwb7;->H(II)V

    invoke-virtual {p0, v0}, Lwb7;->F(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lwb7;->H(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/k;->p(I)V

    return-void
.end method

.method public s(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lwb7;->F(I)I

    move-result p0

    const/4 p1, -0x2

    if-ne p0, p1, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public t(II)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/k;->C()I

    move-result p0

    if-ne p1, p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public y(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->y(I)V

    iget-object v0, p0, Lwb7;->i:[J

    array-length v1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lwb7;->i:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method
