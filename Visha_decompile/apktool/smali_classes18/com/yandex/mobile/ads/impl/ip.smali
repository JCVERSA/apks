.class public final Lcom/yandex/mobile/ads/impl/ip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/pw0;
.implements Lcom/yandex/mobile/ads/impl/pw0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ip$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/yandex/mobile/ads/impl/pw0;

.field private c:Lcom/yandex/mobile/ads/impl/pw0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:[Lcom/yandex/mobile/ads/impl/ip$a;

.field private e:J

.field f:J

.field g:J


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pw0;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/yandex/mobile/ads/impl/ip$a;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ip;->d:[Lcom/yandex/mobile/ads/impl/ip$a;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/ip;->e:J

    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/ip;->f:J

    iput-wide p5, p0, Lcom/yandex/mobile/ads/impl/ip;->g:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/ip;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ip;->e:J

    return-wide v0
.end method


# virtual methods
.method public final a(JLcom/yandex/mobile/ads/impl/fx1;)J
    .locals 10

    .line 2
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ip;->f:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 3
    :cond_0
    iget-wide v2, p3, Lcom/yandex/mobile/ads/impl/fx1;->a:J

    sub-long v0, p1, v0

    .line 4
    sget v4, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 6
    iget-wide v4, p3, Lcom/yandex/mobile/ads/impl/fx1;->b:J

    .line 7
    iget-wide v6, p0, Lcom/yandex/mobile/ads/impl/ip;->g:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    sub-long/2addr v6, p1

    .line 8
    :goto_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 9
    iget-wide v4, p3, Lcom/yandex/mobile/ads/impl/fx1;->a:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    iget-wide v4, p3, Lcom/yandex/mobile/ads/impl/fx1;->b:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance p3, Lcom/yandex/mobile/ads/impl/fx1;

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/fx1;-><init>(JJ)V

    .line 11
    :goto_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/pw0;->a(JLcom/yandex/mobile/ads/impl/fx1;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a([Lcom/yandex/mobile/ads/impl/h70;[Z[Lcom/yandex/mobile/ads/impl/lt1;[ZJ)J
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .line 21
    array-length v1, v9

    new-array v1, v1, [Lcom/yandex/mobile/ads/impl/ip$a;

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/ip;->d:[Lcom/yandex/mobile/ads/impl/ip$a;

    .line 22
    array-length v1, v9

    new-array v10, v1, [Lcom/yandex/mobile/ads/impl/lt1;

    const/4 v11, 0x0

    move v1, v11

    .line 23
    :goto_0
    array-length v2, v9

    const/4 v12, 0x0

    if-ge v1, v2, :cond_1

    .line 24
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ip;->d:[Lcom/yandex/mobile/ads/impl/ip$a;

    aget-object v3, v9, v1

    check-cast v3, Lcom/yandex/mobile/ads/impl/ip$a;

    aput-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 25
    iget-object v12, v3, Lcom/yandex/mobile/ads/impl/ip$a;->a:Lcom/yandex/mobile/ads/impl/lt1;

    :cond_0
    aput-object v12, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 27
    invoke-interface/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/pw0;->a([Lcom/yandex/mobile/ads/impl/h70;[Z[Lcom/yandex/mobile/ads/impl/lt1;[ZJ)J

    move-result-wide v1

    .line 28
    iget-wide v3, v0, Lcom/yandex/mobile/ads/impl/ip;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 29
    iget-wide v3, v0, Lcom/yandex/mobile/ads/impl/ip;->f:J

    cmp-long v7, p5, v3

    if-nez v7, :cond_3

    const-wide/16 v13, 0x0

    cmp-long v3, v3, v13

    if-eqz v3, :cond_3

    .line 30
    array-length v3, v8

    move v4, v11

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v7, v8, v4

    if-eqz v7, :cond_2

    .line 31
    invoke-interface {v7}, Lcom/yandex/mobile/ads/impl/h70;->e()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v7

    .line 32
    iget-object v13, v7, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    iget-object v7, v7, Lcom/yandex/mobile/ads/impl/jc0;->j:Ljava/lang/String;

    invoke-static {v13, v7}, Lcom/yandex/mobile/ads/impl/w01;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    move-wide v5, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 33
    :cond_3
    :goto_2
    iput-wide v5, v0, Lcom/yandex/mobile/ads/impl/ip;->e:J

    cmp-long v3, v1, p5

    if-eqz v3, :cond_5

    .line 34
    iget-wide v3, v0, Lcom/yandex/mobile/ads/impl/ip;->f:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_4

    iget-wide v3, v0, Lcom/yandex/mobile/ads/impl/ip;->g:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v3, v5

    if-eqz v5, :cond_5

    cmp-long v3, v1, v3

    if-gtz v3, :cond_4

    goto :goto_3

    .line 35
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 36
    :cond_5
    :goto_3
    array-length v3, v9

    if-ge v11, v3, :cond_9

    .line 37
    aget-object v3, v10, v11

    if-nez v3, :cond_6

    .line 38
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ip;->d:[Lcom/yandex/mobile/ads/impl/ip$a;

    aput-object v12, v3, v11

    goto :goto_4

    .line 39
    :cond_6
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/ip;->d:[Lcom/yandex/mobile/ads/impl/ip$a;

    aget-object v5, v4, v11

    if-eqz v5, :cond_7

    iget-object v5, v5, Lcom/yandex/mobile/ads/impl/ip$a;->a:Lcom/yandex/mobile/ads/impl/lt1;

    if-eq v5, v3, :cond_8

    .line 40
    :cond_7
    new-instance v5, Lcom/yandex/mobile/ads/impl/ip$a;

    invoke-direct {v5, p0, v3}, Lcom/yandex/mobile/ads/impl/ip$a;-><init>(Lcom/yandex/mobile/ads/impl/ip;Lcom/yandex/mobile/ads/impl/lt1;)V

    aput-object v5, v4, v11

    .line 41
    :cond_8
    :goto_4
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ip;->d:[Lcom/yandex/mobile/ads/impl/ip$a;

    aget-object v3, v3, v11

    aput-object v3, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_9
    return-wide v1
.end method

.method public final a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/ip;->f:J

    .line 43
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/ip;->g:J

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/mx1;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/yandex/mobile/ads/impl/pw0;

    .line 13
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ip;->c:Lcom/yandex/mobile/ads/impl/pw0$a;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/mx1$a;->a(Lcom/yandex/mobile/ads/impl/mx1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/pw0$a;J)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ip;->c:Lcom/yandex/mobile/ads/impl/pw0$a;

    .line 20
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {p1, p0, p2, p3}, Lcom/yandex/mobile/ads/impl/pw0;->a(Lcom/yandex/mobile/ads/impl/pw0$a;J)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/pw0;)V
    .locals 0

    .line 16
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ip;->c:Lcom/yandex/mobile/ads/impl/pw0$a;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/pw0$a;->a(Lcom/yandex/mobile/ads/impl/pw0;)V

    return-void
.end method

.method public final continueLoading(J)Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/mx1;->continueLoading(J)Z

    move-result p0

    return p0
.end method

.method public final discardBuffer(JZ)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/pw0;->discardBuffer(JZ)V

    return-void
.end method

.method public final getBufferedPositionUs()J
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mx1;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/ip;->g:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final getNextLoadPositionUs()J
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mx1;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/ip;->g:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final getTrackGroups()Lcom/yandex/mobile/ads/impl/z52;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/pw0;->getTrackGroups()Lcom/yandex/mobile/ads/impl/z52;

    move-result-object p0

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mx1;->isLoading()Z

    move-result p0

    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/pw0;->maybeThrowPrepareError()V

    return-void
.end method

.method public final readDiscontinuity()J
    .locals 6

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ip;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iput-wide v2, p0, Lcom/yandex/mobile/ads/impl/ip;->e:J

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ip;->readDiscontinuity()J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    move-wide v0, v4

    :cond_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/pw0;->readDiscontinuity()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-wide v2

    :cond_2
    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/ip;->f:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/ip;->g:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p0, v2, v4

    if-eqz p0, :cond_4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    :goto_0
    return-wide v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/mx1;->reevaluateBuffer(J)V

    return-void
.end method

.method public final seekToUs(J)J
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/ip;->e:J

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ip;->d:[Lcom/yandex/mobile/ads/impl/ip$a;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-static {v4, v2}, Lcom/yandex/mobile/ads/impl/ip$a;->a(Lcom/yandex/mobile/ads/impl/ip$a;Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ip;->b:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/pw0;->seekToUs(J)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_3

    iget-wide p1, p0, Lcom/yandex/mobile/ads/impl/ip;->f:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_2

    iget-wide p0, p0, Lcom/yandex/mobile/ads/impl/ip;->g:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, p0, v2

    if-eqz p2, :cond_3

    cmp-long p0, v0, p0

    if-gtz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    return-wide v0
.end method
