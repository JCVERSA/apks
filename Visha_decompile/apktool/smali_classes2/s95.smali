.class public final Ls95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# instance fields
.field public final a:Lqw7;

.field public b:Lqk3;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

.field public h:Lpk3;

.field public i:Llw9;

.field public j:Lqr6;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqw7;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lqw7;-><init>(I)V

    iput-object v0, p0, Ls95;->a:Lqw7;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ls95;->f:J

    return-void
.end method

.method public static f(Ljava/lang/String;J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lbsc;->a(Ljava/lang/String;)Ler6;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1, p2}, Ler6;->a(J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 0

    iput-object p1, p0, Ls95;->b:Lqk3;

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 7

    iget v0, p0, Ls95;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 p0, 0x6

    if-ne v0, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Ls95;->i:Llw9;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ls95;->h:Lpk3;

    if-eq p1, v0, :cond_3

    :cond_2
    iput-object p1, p0, Ls95;->h:Lpk3;

    new-instance v0, Llw9;

    iget-wide v3, p0, Ls95;->f:J

    invoke-direct {v0, p1, v3, v4}, Llw9;-><init>(Lpk3;J)V

    iput-object v0, p0, Ls95;->i:Llw9;

    :cond_3
    iget-object p1, p0, Ls95;->j:Lqr6;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqr6;

    iget-object v0, p0, Ls95;->i:Llw9;

    invoke-virtual {p1, v0, p2}, Lqr6;->b(Lpk3;Lid8;)I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-wide v0, p2, Lid8;->a:J

    iget-wide v2, p0, Ls95;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lid8;->a:J

    :cond_4
    return p1

    :cond_5
    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v3

    iget-wide v5, p0, Ls95;->f:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    iput-wide v5, p2, Lid8;->a:J

    return v2

    :cond_6
    invoke-virtual {p0, p1}, Ls95;->l(Lpk3;)V

    return v1

    :cond_7
    invoke-virtual {p0, p1}, Ls95;->j(Lpk3;)V

    return v1

    :cond_8
    invoke-virtual {p0, p1}, Ls95;->k(Lpk3;)V

    return v1

    :cond_9
    invoke-virtual {p0, p1}, Ls95;->i(Lpk3;)V

    return v1
.end method

.method public c(Lpk3;)Z
    .locals 5

    invoke-virtual {p0, p1}, Ls95;->h(Lpk3;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Ls95;->h(Lpk3;)I

    move-result v0

    iput v0, p0, Ls95;->d:I

    const v1, 0xffe0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Ls95;->d(Lpk3;)V

    invoke-virtual {p0, p1}, Ls95;->h(Lpk3;)I

    move-result v0

    iput v0, p0, Ls95;->d:I

    :cond_1
    iget v0, p0, Ls95;->d:I

    const v1, 0xffe1

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lpk3;->advancePeekPosition(I)V

    iget-object v0, p0, Ls95;->a:Lqw7;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lqw7;->K(I)V

    iget-object v0, p0, Ls95;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Lpk3;->peekFully([BII)V

    iget-object p1, p0, Ls95;->a:Lqw7;

    invoke-virtual {p1}, Lqw7;->E()J

    move-result-wide v0

    const-wide/32 v3, 0x45786966    # 5.758429993E-315

    cmp-long p1, v0, v3

    if-nez p1, :cond_3

    iget-object p0, p0, Ls95;->a:Lqw7;

    invoke-virtual {p0}, Lqw7;->I()I

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public final d(Lpk3;)V
    .locals 3

    iget-object v0, p0, Ls95;->a:Lqw7;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lqw7;->K(I)V

    iget-object v0, p0, Ls95;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lpk3;->peekFully([BII)V

    iget-object p0, p0, Ls95;->a:Lqw7;

    invoke-virtual {p0}, Lqw7;->I()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-interface {p1, p0}, Lpk3;->advancePeekPosition(I)V

    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-virtual {p0, v0}, Ls95;->g([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    iget-object v0, p0, Ls95;->b:Lqk3;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqk3;

    invoke-interface {v0}, Lqk3;->endTracks()V

    iget-object v0, p0, Ls95;->b:Lqk3;

    new-instance v1, Lja9$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lja9$b;-><init>(J)V

    invoke-interface {v0, v1}, Lqk3;->d(Lja9;)V

    const/4 v0, 0x6

    iput v0, p0, Ls95;->c:I

    return-void
.end method

.method public final varargs g([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    .locals 2

    iget-object p0, p0, Ls95;->b:Lqk3;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqk3;

    const/16 v0, 0x400

    const/4 v1, 0x4

    invoke-interface {p0, v0, v1}, Lqk3;->track(II)Lfva;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p1

    invoke-interface {p0, p1}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    return-void
.end method

.method public final h(Lpk3;)I
    .locals 3

    iget-object v0, p0, Ls95;->a:Lqw7;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lqw7;->K(I)V

    iget-object v0, p0, Ls95;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lpk3;->peekFully([BII)V

    iget-object p0, p0, Ls95;->a:Lqw7;

    invoke-virtual {p0}, Lqw7;->I()I

    move-result p0

    return p0
.end method

.method public final i(Lpk3;)V
    .locals 4

    iget-object v0, p0, Ls95;->a:Lqw7;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lqw7;->K(I)V

    iget-object v0, p0, Ls95;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lpk3;->readFully([BII)V

    iget-object p1, p0, Ls95;->a:Lqw7;

    invoke-virtual {p1}, Lqw7;->I()I

    move-result p1

    iput p1, p0, Ls95;->d:I

    const v0, 0xffda

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Ls95;->f:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Ls95;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ls95;->e()V

    goto :goto_0

    :cond_1
    const v0, 0xffd0

    if-lt p1, v0, :cond_2

    const v0, 0xffd9

    if-le p1, v0, :cond_3

    :cond_2
    const v0, 0xff01

    if-eq p1, v0, :cond_3

    const/4 p1, 0x1

    iput p1, p0, Ls95;->c:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final j(Lpk3;)V
    .locals 5

    iget v0, p0, Ls95;->d:I

    const v1, 0xffe1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Lqw7;

    iget v1, p0, Ls95;->e:I

    invoke-direct {v0, v1}, Lqw7;-><init>(I)V

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v1

    iget v3, p0, Ls95;->e:I

    invoke-interface {p1, v1, v2, v3}, Lpk3;->readFully([BII)V

    iget-object v1, p0, Ls95;->g:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v1, :cond_1

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v0}, Lqw7;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lqw7;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Ls95;->f(Ljava/lang/String;J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    move-result-object p1

    iput-object p1, p0, Ls95;->g:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide v0, p0, Ls95;->f:J

    goto :goto_0

    :cond_0
    iget v0, p0, Ls95;->e:I

    invoke-interface {p1, v0}, Lpk3;->skipFully(I)V

    :cond_1
    :goto_0
    iput v2, p0, Ls95;->c:I

    return-void
.end method

.method public final k(Lpk3;)V
    .locals 3

    iget-object v0, p0, Ls95;->a:Lqw7;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lqw7;->K(I)V

    iget-object v0, p0, Ls95;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lpk3;->readFully([BII)V

    iget-object p1, p0, Ls95;->a:Lqw7;

    invoke-virtual {p1}, Lqw7;->I()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Ls95;->e:I

    iput v1, p0, Ls95;->c:I

    return-void
.end method

.method public final l(Lpk3;)V
    .locals 4

    iget-object v0, p0, Ls95;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2, v2}, Lpk3;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ls95;->e()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    iget-object v0, p0, Ls95;->j:Lqr6;

    if-nez v0, :cond_1

    new-instance v0, Lqr6;

    invoke-direct {v0}, Lqr6;-><init>()V

    iput-object v0, p0, Ls95;->j:Lqr6;

    :cond_1
    new-instance v0, Llw9;

    iget-wide v1, p0, Ls95;->f:J

    invoke-direct {v0, p1, v1, v2}, Llw9;-><init>(Lpk3;J)V

    iput-object v0, p0, Ls95;->i:Llw9;

    iget-object p1, p0, Ls95;->j:Lqr6;

    invoke-virtual {p1, v0}, Lqr6;->c(Lpk3;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ls95;->j:Lqr6;

    new-instance v0, Lmw9;

    iget-wide v1, p0, Ls95;->f:J

    iget-object v3, p0, Ls95;->b:Lqk3;

    invoke-static {v3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqk3;

    invoke-direct {v0, v1, v2, v3}, Lmw9;-><init>(JLqk3;)V

    invoke-virtual {p1, v0}, Lqr6;->a(Lqk3;)V

    invoke-virtual {p0}, Ls95;->m()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ls95;->e()V

    :goto_0
    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Ls95;->g:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Ls95;->g([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    const/4 v0, 0x5

    iput v0, p0, Ls95;->c:I

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Ls95;->j:Lqr6;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lqr6;->release()V

    :cond_0
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Ls95;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Ls95;->j:Lqr6;

    goto :goto_0

    :cond_0
    iget v0, p0, Ls95;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Ls95;->j:Lqr6;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqr6;

    invoke-virtual {p0, p1, p2, p3, p4}, Lqr6;->seek(JJ)V

    :cond_1
    :goto_0
    return-void
.end method
