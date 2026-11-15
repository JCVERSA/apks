.class public final Lce7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:I

.field public h:I

.field public i:I

.field public final j:[I

.field public final k:Lqw7;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lce7;->j:[I

    new-instance v1, Lqw7;

    invoke-direct {v1, v0}, Lqw7;-><init>(I)V

    iput-object v1, p0, Lce7;->k:Lqw7;

    return-void
.end method


# virtual methods
.method public a(Lpk3;Z)Z
    .locals 5

    invoke-virtual {p0}, Lce7;->b()V

    iget-object v0, p0, Lce7;->k:Lqw7;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lqw7;->K(I)V

    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, p2}, Lrk3;->b(Lpk3;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0}, Lqw7;->E()J

    move-result-wide v0

    const-wide/32 v3, 0x4f676753

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0}, Lqw7;->C()I

    move-result v0

    iput v0, p0, Lce7;->a:I

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    const-string/jumbo p0, "unsupported bit stream revision"

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_2
    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0}, Lqw7;->C()I

    move-result v0

    iput v0, p0, Lce7;->b:I

    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0}, Lqw7;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lce7;->c:J

    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0}, Lqw7;->s()J

    move-result-wide v0

    iput-wide v0, p0, Lce7;->d:J

    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0}, Lqw7;->s()J

    move-result-wide v0

    iput-wide v0, p0, Lce7;->e:J

    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0}, Lqw7;->s()J

    move-result-wide v0

    iput-wide v0, p0, Lce7;->f:J

    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0}, Lqw7;->C()I

    move-result v0

    iput v0, p0, Lce7;->g:I

    add-int/lit8 v1, v0, 0x1b

    iput v1, p0, Lce7;->h:I

    iget-object v1, p0, Lce7;->k:Lqw7;

    invoke-virtual {v1, v0}, Lqw7;->K(I)V

    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    iget v1, p0, Lce7;->g:I

    invoke-static {p1, v0, v2, v1, p2}, Lrk3;->b(Lpk3;[BIIZ)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    :goto_0
    iget p1, p0, Lce7;->g:I

    if-ge v2, p1, :cond_4

    iget-object p1, p0, Lce7;->j:[I

    iget-object p2, p0, Lce7;->k:Lqw7;

    invoke-virtual {p2}, Lqw7;->C()I

    move-result p2

    aput p2, p1, v2

    iget p1, p0, Lce7;->i:I

    iget-object p2, p0, Lce7;->j:[I

    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Lce7;->i:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v2
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lce7;->a:I

    iput v0, p0, Lce7;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lce7;->c:J

    iput-wide v1, p0, Lce7;->d:J

    iput-wide v1, p0, Lce7;->e:J

    iput-wide v1, p0, Lce7;->f:J

    iput v0, p0, Lce7;->g:I

    iput v0, p0, Lce7;->h:I

    iput v0, p0, Lce7;->i:I

    return-void
.end method

.method public c(Lpk3;)Z
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lce7;->d(Lpk3;J)Z

    move-result p0

    return p0
.end method

.method public d(Lpk3;J)Z
    .locals 8

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    invoke-interface {p1}, Lpk3;->getPeekPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lzi;->a(Z)V

    iget-object v0, p0, Lce7;->k:Lqw7;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lqw7;->K(I)V

    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v0, p2, v4

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    cmp-long v4, v4, p2

    if-gez v4, :cond_3

    :cond_1
    iget-object v4, p0, Lce7;->k:Lqw7;

    invoke-virtual {v4}, Lqw7;->d()[B

    move-result-object v4

    invoke-static {p1, v4, v1, v3, v2}, Lrk3;->b(Lpk3;[BIIZ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0, v1}, Lqw7;->O(I)V

    iget-object v0, p0, Lce7;->k:Lqw7;

    invoke-virtual {v0}, Lqw7;->E()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    return v2

    :cond_2
    invoke-interface {p1, v2}, Lpk3;->skipFully(I)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v3

    cmp-long p0, v3, p2

    if-gez p0, :cond_5

    :cond_4
    invoke-interface {p1, v2}, Lpk3;->skip(I)I

    move-result p0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_5

    goto :goto_2

    :cond_5
    return v1
.end method
