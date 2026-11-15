.class public final Lgbe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lfbe;

.field public final b:Lrae;

.field public final c:I

.field public final d:I

.field public final e:J

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:J

.field public m:[J

.field public n:[I


# direct methods
.method public constructor <init>(ILfbe;Lrae;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgbe;->a:Lfbe;

    invoke-virtual {p2}, Lfbe;->a()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-static {v2}, Ln7g;->d(Z)V

    if-ne v0, v1, :cond_2

    const/high16 v2, 0x63640000

    goto :goto_1

    :cond_2
    const/high16 v2, 0x62770000

    :goto_1
    invoke-static {p1, v2}, Lgbe;->h(II)I

    move-result v2

    iput v2, p0, Lgbe;->c:I

    invoke-virtual {p2}, Lfbe;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lgbe;->e:J

    iput-object p3, p0, Lgbe;->b:Lrae;

    if-ne v0, v1, :cond_3

    const/high16 p3, 0x62640000

    invoke-static {p1, p3}, Lgbe;->h(II)I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    :goto_2
    iput p1, p0, Lgbe;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgbe;->l:J

    const/16 p1, 0x200

    new-array p3, p1, [J

    iput-object p3, p0, Lgbe;->m:[J

    new-array p1, p1, [I

    iput-object p1, p0, Lgbe;->n:[I

    iget p1, p2, Lfbe;->d:I

    iput p1, p0, Lgbe;->f:I

    return-void
.end method

.method public static h(II)I
    .locals 1

    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x30

    shl-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x30

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 4

    iget v0, p0, Lgbe;->k:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgbe;->i(I)J

    move-result-wide v1

    div-long/2addr p1, v1

    long-to-int p1, p1

    iget-object p2, p0, Lgbe;->n:[I

    invoke-static {p2, p1, v0, v0}, Lkfh;->x([IIZZ)I

    move-result p2

    iget-object v1, p0, Lgbe;->n:[I

    aget v1, v1, p2

    if-ne v1, p1, :cond_0

    new-instance p1, Lz9e;

    invoke-virtual {p0, p2}, Lgbe;->j(I)Llae;

    move-result-object p0

    invoke-direct {p1, p0, p0}, Lz9e;-><init>(Llae;Llae;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, Lgbe;->j(I)Llae;

    move-result-object p1

    add-int/2addr p2, v0

    iget-object v0, p0, Lgbe;->m:[J

    array-length v0, v0

    if-ge p2, v0, :cond_1

    new-instance v0, Lz9e;

    invoke-virtual {p0, p2}, Lgbe;->j(I)Llae;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lz9e;-><init>(Llae;Llae;)V

    return-object v0

    :cond_1
    new-instance p0, Lz9e;

    invoke-direct {p0, p1, p1}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0

    :cond_2
    new-instance p1, Lz9e;

    new-instance p2, Llae;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lgbe;->l:J

    invoke-direct {p2, v0, v1, v2, v3}, Llae;-><init>(JJ)V

    invoke-direct {p1, p2, p2}, Lz9e;-><init>(Llae;Llae;)V

    return-object p1
.end method

.method public final b(JZ)V
    .locals 4

    iget-wide v0, p0, Lgbe;->l:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p1, p0, Lgbe;->l:J

    :cond_0
    if-eqz p3, :cond_2

    iget p3, p0, Lgbe;->k:I

    iget-object v0, p0, Lgbe;->n:[I

    array-length v0, v0

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lgbe;->m:[J

    array-length v0, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p3

    iput-object p3, p0, Lgbe;->m:[J

    iget-object p3, p0, Lgbe;->n:[I

    array-length v0, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    iput-object p3, p0, Lgbe;->n:[I

    :cond_1
    iget-object p3, p0, Lgbe;->m:[J

    iget v0, p0, Lgbe;->k:I

    aput-wide p1, p3, v0

    iget-object p1, p0, Lgbe;->n:[I

    iget p2, p0, Lgbe;->j:I

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgbe;->k:I

    :cond_2
    iget p1, p0, Lgbe;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgbe;->j:I

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lgbe;->m:[J

    iget v1, p0, Lgbe;->k:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lgbe;->m:[J

    iget-object v0, p0, Lgbe;->n:[I

    iget v1, p0, Lgbe;->k:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lgbe;->n:[I

    iget v0, p0, Lgbe;->c:I

    const/high16 v1, 0x62770000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgbe;->a:Lfbe;

    iget v0, v0, Lfbe;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lgbe;->k:I

    if-lez v0, :cond_0

    iput v0, p0, Lgbe;->f:I

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lgbe;->g:I

    iput p1, p0, Lgbe;->h:I

    return-void
.end method

.method public final e(J)V
    .locals 2

    iget v0, p0, Lgbe;->k:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lgbe;->i:I

    return-void

    :cond_0
    iget-object v0, p0, Lgbe;->m:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lkfh;->y([JJZZ)I

    move-result p1

    iget-object p2, p0, Lgbe;->n:[I

    aget p1, p2, p1

    iput p1, p0, Lgbe;->i:I

    return-void
.end method

.method public final f(I)Z
    .locals 1

    iget v0, p0, Lgbe;->c:I

    if-eq v0, p1, :cond_1

    iget p0, p0, Lgbe;->d:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final g(Ld9e;)Z
    .locals 9

    iget v0, p0, Lgbe;->h:I

    iget-object v1, p0, Lgbe;->b:Lrae;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lrae;->a(Lk8j;IZ)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lgbe;->h:I

    const/4 p1, 0x1

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget v3, p0, Lgbe;->g:I

    if-lez v3, :cond_2

    iget v3, p0, Lgbe;->i:I

    invoke-virtual {p0, v3}, Lgbe;->i(I)J

    move-result-wide v3

    iget-object v5, p0, Lgbe;->n:[I

    iget v6, p0, Lgbe;->i:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-ltz v5, :cond_1

    move v5, p1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    iget v6, p0, Lgbe;->g:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v2, v3

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    invoke-interface/range {v1 .. v7}, Lrae;->g(JIIILqae;)V

    :cond_2
    iget v1, p0, Lgbe;->i:I

    add-int/2addr v1, p1

    iput v1, p0, Lgbe;->i:I

    :cond_3
    return v0
.end method

.method public final i(I)J
    .locals 4

    iget v0, p0, Lgbe;->f:I

    int-to-long v0, v0

    iget-wide v2, p0, Lgbe;->e:J

    int-to-long p0, p1

    mul-long/2addr v2, p0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final j(I)Llae;
    .locals 5

    new-instance v0, Llae;

    iget-object v1, p0, Lgbe;->n:[I

    aget v1, v1, p1

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgbe;->i(I)J

    move-result-wide v3

    mul-long/2addr v1, v3

    iget-object p0, p0, Lgbe;->m:[J

    aget-wide p0, p0, p1

    invoke-direct {v0, v1, v2, p0, p1}, Llae;-><init>(JJ)V

    return-object v0
.end method
