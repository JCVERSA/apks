.class public final Lt30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt30$c;,
        Lt30$b;
    }
.end annotation


# instance fields
.field public final a:Lqw7;

.field public final b:Lt30$c;

.field public c:I

.field public d:Lqk3;

.field public e:Lu30;

.field public f:J

.field public g:[Lbw0;

.field public h:J

.field public i:Lbw0;

.field public j:I

.field public k:J

.field public l:J

.field public m:I

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqw7;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lqw7;-><init>(I)V

    iput-object v0, p0, Lt30;->a:Lqw7;

    new-instance v0, Lt30$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt30$c;-><init>(Lt30$a;)V

    iput-object v0, p0, Lt30;->b:Lt30$c;

    new-instance v0, Lr33;

    invoke-direct {v0}, Lr33;-><init>()V

    iput-object v0, p0, Lt30;->d:Lqk3;

    const/4 v0, 0x0

    new-array v0, v0, [Lbw0;

    iput-object v0, p0, Lt30;->g:[Lbw0;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lt30;->k:J

    iput-wide v0, p0, Lt30;->l:J

    const/4 v0, -0x1

    iput v0, p0, Lt30;->j:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lt30;->f:J

    return-void
.end method

.method public static synthetic d(Lt30;)[Lbw0;
    .locals 0

    iget-object p0, p0, Lt30;->g:[Lbw0;

    return-object p0
.end method

.method public static e(Lpk3;)V
    .locals 4

    invoke-interface {p0}, Lpk3;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lpk3;->skipFully(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lt30;->c:I

    iput-object p1, p0, Lt30;->d:Lqk3;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lt30;->h:J

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 12

    invoke-virtual {p0, p1, p2}, Lt30;->l(Lpk3;Lid8;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget p2, p0, Lt30;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/16 v4, 0xc

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lt30;->k(Lpk3;)I

    move-result p0

    return p0

    :pswitch_1
    new-instance p2, Lqw7;

    iget v0, p0, Lt30;->m:I

    invoke-direct {p2, v0}, Lqw7;-><init>(I)V

    invoke-virtual {p2}, Lqw7;->d()[B

    move-result-object v0

    iget v1, p0, Lt30;->m:I

    invoke-interface {p1, v0, v5, v1}, Lpk3;->readFully([BII)V

    invoke-virtual {p0, p2}, Lt30;->h(Lqw7;)V

    iput v3, p0, Lt30;->c:I

    iget-wide p1, p0, Lt30;->k:J

    iput-wide p1, p0, Lt30;->h:J

    return v5

    :pswitch_2
    iget-object p2, p0, Lt30;->a:Lqw7;

    invoke-virtual {p2}, Lqw7;->d()[B

    move-result-object p2

    const/16 v0, 0x8

    invoke-interface {p1, p2, v5, v0}, Lpk3;->readFully([BII)V

    iget-object p2, p0, Lt30;->a:Lqw7;

    invoke-virtual {p2, v5}, Lqw7;->O(I)V

    iget-object p2, p0, Lt30;->a:Lqw7;

    invoke-virtual {p2}, Lqw7;->p()I

    move-result p2

    iget-object v0, p0, Lt30;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->p()I

    move-result v0

    const v1, 0x31786469

    if-ne p2, v1, :cond_1

    const/4 p1, 0x5

    iput p1, p0, Lt30;->c:I

    iput v0, p0, Lt30;->m:I

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide p1

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lt30;->h:J

    :goto_0
    return v5

    :pswitch_3
    iget-wide v6, p0, Lt30;->k:J

    const-wide/16 v8, -0x1

    cmp-long p2, v6, v8

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Lt30;->k:J

    cmp-long p2, v6, v8

    if-eqz p2, :cond_2

    iput-wide v8, p0, Lt30;->h:J

    return v5

    :cond_2
    iget-object p2, p0, Lt30;->a:Lqw7;

    invoke-virtual {p2}, Lqw7;->d()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v4}, Lpk3;->peekFully([BII)V

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    iget-object p2, p0, Lt30;->a:Lqw7;

    invoke-virtual {p2, v5}, Lqw7;->O(I)V

    iget-object p2, p0, Lt30;->b:Lt30$c;

    iget-object v1, p0, Lt30;->a:Lqw7;

    invoke-virtual {p2, v1}, Lt30$c;->a(Lqw7;)V

    iget-object p2, p0, Lt30;->a:Lqw7;

    invoke-virtual {p2}, Lqw7;->p()I

    move-result p2

    iget-object v1, p0, Lt30;->b:Lt30$c;

    iget v1, v1, Lt30$c;->a:I

    const v6, 0x46464952

    if-ne v1, v6, :cond_3

    invoke-interface {p1, v4}, Lpk3;->skipFully(I)V

    return v5

    :cond_3
    const v4, 0x5453494c

    const-wide/16 v6, 0x8

    if-ne v1, v4, :cond_7

    const v1, 0x69766f6d

    if-eq p2, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v8

    iput-wide v8, p0, Lt30;->k:J

    iget-object p2, p0, Lt30;->b:Lt30$c;

    iget p2, p2, Lt30$c;->b:I

    int-to-long v10, p2

    add-long/2addr v8, v10

    add-long/2addr v8, v6

    iput-wide v8, p0, Lt30;->l:J

    iget-boolean p2, p0, Lt30;->n:Z

    if-nez p2, :cond_6

    iget-object p2, p0, Lt30;->e:Lu30;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu30;

    invoke-virtual {p2}, Lu30;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    iput v2, p0, Lt30;->c:I

    iget-wide p1, p0, Lt30;->l:J

    iput-wide p1, p0, Lt30;->h:J

    return v5

    :cond_5
    iget-object p2, p0, Lt30;->d:Lqk3;

    new-instance v1, Lja9$b;

    iget-wide v6, p0, Lt30;->f:J

    invoke-direct {v1, v6, v7}, Lja9$b;-><init>(J)V

    invoke-interface {p2, v1}, Lqk3;->d(Lja9;)V

    iput-boolean v0, p0, Lt30;->n:Z

    :cond_6
    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide p1

    const-wide/16 v0, 0xc

    add-long/2addr p1, v0

    iput-wide p1, p0, Lt30;->h:J

    iput v3, p0, Lt30;->c:I

    return v5

    :cond_7
    :goto_1
    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide p1

    iget-object v0, p0, Lt30;->b:Lt30$c;

    iget v0, v0, Lt30$c;->b:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    add-long/2addr p1, v6

    iput-wide p1, p0, Lt30;->h:J

    return v5

    :pswitch_4
    iget p2, p0, Lt30;->j:I

    sub-int/2addr p2, v2

    new-instance v0, Lqw7;

    invoke-direct {v0, p2}, Lqw7;-><init>(I)V

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, p2}, Lpk3;->readFully([BII)V

    invoke-virtual {p0, v0}, Lt30;->g(Lqw7;)V

    const/4 p1, 0x3

    iput p1, p0, Lt30;->c:I

    return v5

    :pswitch_5
    iget-object p2, p0, Lt30;->a:Lqw7;

    invoke-virtual {p2}, Lqw7;->d()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v4}, Lpk3;->readFully([BII)V

    iget-object p1, p0, Lt30;->a:Lqw7;

    invoke-virtual {p1, v5}, Lqw7;->O(I)V

    iget-object p1, p0, Lt30;->b:Lt30$c;

    iget-object p2, p0, Lt30;->a:Lqw7;

    invoke-virtual {p1, p2}, Lt30$c;->b(Lqw7;)V

    iget-object p1, p0, Lt30;->b:Lt30$c;

    iget p2, p1, Lt30$c;->c:I

    const v0, 0x6c726468

    if-ne p2, v0, :cond_8

    iget p1, p1, Lt30$c;->b:I

    iput p1, p0, Lt30;->j:I

    const/4 p1, 0x2

    iput p1, p0, Lt30;->c:I

    return v5

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hdrl expected, found: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt30;->b:Lt30$c;

    iget p0, p0, Lt30$c;->c:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lt30;->c(Lpk3;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1, v4}, Lpk3;->skipFully(I)V

    iput v0, p0, Lt30;->c:I

    return v5

    :cond_9
    const-string p0, "AVI Header List not found"

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lpk3;)Z
    .locals 3

    iget-object v0, p0, Lt30;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lpk3;->peekFully([BII)V

    iget-object p1, p0, Lt30;->a:Lqw7;

    invoke-virtual {p1, v2}, Lqw7;->O(I)V

    iget-object p1, p0, Lt30;->a:Lqw7;

    invoke-virtual {p1}, Lqw7;->p()I

    move-result p1

    const v0, 0x46464952

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    iget-object p1, p0, Lt30;->a:Lqw7;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lqw7;->P(I)V

    iget-object p0, p0, Lt30;->a:Lqw7;

    invoke-virtual {p0}, Lqw7;->p()I

    move-result p0

    const p1, 0x20495641

    if-ne p0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final f(I)Lbw0;
    .locals 4

    iget-object p0, p0, Lt30;->g:[Lbw0;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lbw0;->j(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Lqw7;)V
    .locals 6

    const v0, 0x6c726468

    invoke-static {v0, p1}, Lpl5;->c(ILqw7;)Lpl5;

    move-result-object p1

    invoke-virtual {p1}, Lpl5;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_4

    const-class v0, Lu30;

    invoke-virtual {p1, v0}, Lpl5;->b(Ljava/lang/Class;)Ls30;

    move-result-object v0

    check-cast v0, Lu30;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lt30;->e:Lu30;

    iget v1, v0, Lu30;->c:I

    int-to-long v1, v1

    iget v0, v0, Lu30;->a:I

    int-to-long v3, v0

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lt30;->f:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lpl5;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ldgb;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls30;

    invoke-interface {v3}, Ls30;->getType()I

    move-result v4

    const v5, 0x6c727473

    if-ne v4, v5, :cond_0

    check-cast v3, Lpl5;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v2}, Lt30;->j(Lpl5;I)Lbw0;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    new-array p1, v1, [Lbw0;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lbw0;

    iput-object p1, p0, Lt30;->g:[Lbw0;

    iget-object p0, p0, Lt30;->d:Lqk3;

    invoke-interface {p0}, Lqk3;->endTracks()V

    return-void

    :cond_3
    const-string p0, "AviHeader not found"

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected header list type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpl5;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final h(Lqw7;)V
    .locals 7

    invoke-virtual {p0, p1}, Lt30;->i(Lqw7;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    invoke-virtual {p1}, Lqw7;->p()I

    move-result v2

    invoke-virtual {p1}, Lqw7;->p()I

    move-result v4

    invoke-virtual {p1}, Lqw7;->p()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    invoke-virtual {p1}, Lqw7;->p()I

    invoke-virtual {p0, v2}, Lt30;->f(I)Lbw0;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    and-int/2addr v4, v3

    if-ne v4, v3, :cond_1

    invoke-virtual {v2, v5, v6}, Lbw0;->b(J)V

    :cond_1
    invoke-virtual {v2}, Lbw0;->k()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lt30;->g:[Lbw0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lbw0;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lt30;->n:Z

    iget-object p1, p0, Lt30;->d:Lqk3;

    new-instance v0, Lt30$b;

    iget-wide v1, p0, Lt30;->f:J

    invoke-direct {v0, p0, v1, v2}, Lt30$b;-><init>(Lt30;J)V

    invoke-interface {p1, v0}, Lqk3;->d(Lja9;)V

    return-void
.end method

.method public final i(Lqw7;)J
    .locals 8

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p1}, Lqw7;->e()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lqw7;->P(I)V

    invoke-virtual {p1}, Lqw7;->p()I

    move-result v1

    int-to-long v4, v1

    iget-wide v6, p0, Lt30;->k:J

    cmp-long p0, v4, v6

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x8

    add-long v2, v6, v1

    :goto_0
    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    return-wide v2
.end method

.method public final j(Lpl5;I)Lbw0;
    .locals 13

    const-class v0, Lv30;

    invoke-virtual {p1, v0}, Lpl5;->b(Ljava/lang/Class;)Ls30;

    move-result-object v0

    check-cast v0, Lv30;

    const-class v1, Loy9;

    invoke-virtual {p1, v1}, Lpl5;->b(Ljava/lang/Class;)Ls30;

    move-result-object v1

    check-cast v1, Loy9;

    const-string v2, "AviExtractor"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p0, "Missing Stream Header"

    invoke-static {v2, p0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    if-nez v1, :cond_1

    const-string p0, "Missing Stream Format"

    invoke-static {v2, p0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-virtual {v0}, Lv30;->a()J

    move-result-wide v11

    iget-object v1, v1, Loy9;->a:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/k$b;->R(I)Lcom/google/android/exoplayer2/k$b;

    iget v4, v0, Lv30;->f:I

    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->W(I)Lcom/google/android/exoplayer2/k$b;

    :cond_2
    const-class v4, Lry9;

    invoke-virtual {p1, v4}, Lpl5;->b(Ljava/lang/Class;)Ls30;

    move-result-object p1

    check-cast p1, Lry9;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lry9;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/k$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    :cond_3
    iget-object p1, v1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {p1}, Lqp6;->f(Ljava/lang/String;)I

    move-result v6

    const/4 p1, 0x1

    if-eq v6, p1, :cond_5

    const/4 p1, 0x2

    if-ne v6, p1, :cond_4

    goto :goto_0

    :cond_4
    return-object v3

    :cond_5
    :goto_0
    iget-object p1, p0, Lt30;->d:Lqk3;

    invoke-interface {p1, p2, v6}, Lqk3;->track(II)Lfva;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p1

    invoke-interface {v10, p1}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    new-instance p1, Lbw0;

    iget v9, v0, Lv30;->e:I

    move-object v4, p1

    move v5, p2

    move-wide v7, v11

    invoke-direct/range {v4 .. v10}, Lbw0;-><init>(IIJILfva;)V

    iput-wide v11, p0, Lt30;->f:J

    return-object p1
.end method

.method public final k(Lpk3;)I
    .locals 7

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lt30;->l:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lt30;->i:Lbw0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lbw0;->m(Lpk3;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lt30;->i:Lbw0;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lt30;->e(Lpk3;)V

    iget-object v0, p0, Lt30;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/16 v2, 0xc

    invoke-interface {p1, v0, v1, v2}, Lpk3;->peekFully([BII)V

    iget-object v0, p0, Lt30;->a:Lqw7;

    invoke-virtual {v0, v1}, Lqw7;->O(I)V

    iget-object v0, p0, Lt30;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->p()I

    move-result v0

    const v3, 0x5453494c

    const/16 v4, 0x8

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lt30;->a:Lqw7;

    invoke-virtual {v0, v4}, Lqw7;->O(I)V

    iget-object p0, p0, Lt30;->a:Lqw7;

    invoke-virtual {p0}, Lqw7;->p()I

    move-result p0

    const v0, 0x69766f6d

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-interface {p1, v2}, Lpk3;->skipFully(I)V

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    return v1

    :cond_3
    iget-object v2, p0, Lt30;->a:Lqw7;

    invoke-virtual {v2}, Lqw7;->p()I

    move-result v2

    const v3, 0x4b4e554a    # 1.352225E7f

    if-ne v0, v3, :cond_4

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    iput-wide v3, p0, Lt30;->h:J

    return v1

    :cond_4
    invoke-interface {p1, v4}, Lpk3;->skipFully(I)V

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    invoke-virtual {p0, v0}, Lt30;->f(I)Lbw0;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lt30;->h:J

    return v1

    :cond_5
    invoke-virtual {v0, v2}, Lbw0;->n(I)V

    iput-object v0, p0, Lt30;->i:Lbw0;

    :cond_6
    :goto_1
    return v1
.end method

.method public final l(Lpk3;Lid8;)Z
    .locals 8

    iget-wide v0, p0, Lt30;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Lt30;->h:J

    cmp-long v6, v4, v0

    if-ltz v6, :cond_1

    const-wide/32 v6, 0x40000

    add-long/2addr v6, v0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v4, v0

    long-to-int p2, v4

    invoke-interface {p1, p2}, Lpk3;->skipFully(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iput-wide v4, p2, Lid8;->a:J

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    iput-wide v2, p0, Lt30;->h:J

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 3

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lt30;->h:J

    const/4 p3, 0x0

    iput-object p3, p0, Lt30;->i:Lbw0;

    iget-object p3, p0, Lt30;->g:[Lbw0;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    aget-object v2, p3, v1

    invoke-virtual {v2, p1, p2}, Lbw0;->o(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_2

    iget-object p1, p0, Lt30;->g:[Lbw0;

    array-length p1, p1

    if-nez p1, :cond_1

    iput v0, p0, Lt30;->c:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    iput p1, p0, Lt30;->c:I

    :goto_1
    return-void

    :cond_2
    const/4 p1, 0x6

    iput p1, p0, Lt30;->c:I

    return-void
.end method
