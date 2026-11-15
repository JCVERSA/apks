.class public final Lcom/yandex/mobile/ads/impl/iu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/pw0;
.implements Lcom/yandex/mobile/ads/impl/pw0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/iu0$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/yandex/mobile/ads/impl/vw0$b;

.field private final c:J

.field private final d:Lcom/yandex/mobile/ads/impl/cd;

.field private e:Lcom/yandex/mobile/ads/impl/vw0;

.field private f:Lcom/yandex/mobile/ads/impl/pw0;

.field private g:Lcom/yandex/mobile/ads/impl/pw0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/cd;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/iu0;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/iu0;->d:Lcom/yandex/mobile/ads/impl/cd;

    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/iu0;->c:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/iu0;->i:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/iu0;->i:J

    return-wide v0
.end method

.method public final a(JLcom/yandex/mobile/ads/impl/fx1;)J
    .locals 1

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 9
    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/pw0;->a(JLcom/yandex/mobile/ads/impl/fx1;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a([Lcom/yandex/mobile/ads/impl/h70;[Z[Lcom/yandex/mobile/ads/impl/lt1;[ZJ)J
    .locals 13

    move-object v0, p0

    .line 21
    iget-wide v1, v0, Lcom/yandex/mobile/ads/impl/iu0;->i:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/yandex/mobile/ads/impl/iu0;->c:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    .line 22
    iput-wide v3, v0, Lcom/yandex/mobile/ads/impl/iu0;->i:J

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    .line 23
    :goto_0
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 24
    invoke-interface/range {v6 .. v12}, Lcom/yandex/mobile/ads/impl/pw0;->a([Lcom/yandex/mobile/ads/impl/h70;[Z[Lcom/yandex/mobile/ads/impl/lt1;[ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/iu0;->i:J

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/mx1;)V
    .locals 1

    .line 11
    check-cast p1, Lcom/yandex/mobile/ads/impl/pw0;

    .line 12
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/iu0;->g:Lcom/yandex/mobile/ads/impl/pw0$a;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/mx1$a;->a(Lcom/yandex/mobile/ads/impl/mx1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/pw0$a;J)V
    .locals 4

    .line 16
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/iu0;->g:Lcom/yandex/mobile/ads/impl/pw0$a;

    .line 17
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    if-eqz p1, :cond_1

    .line 18
    iget-wide p2, p0, Lcom/yandex/mobile/ads/impl/iu0;->c:J

    .line 19
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/iu0;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    move-wide p2, v0

    .line 20
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lcom/yandex/mobile/ads/impl/pw0;->a(Lcom/yandex/mobile/ads/impl/pw0$a;J)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/pw0;)V
    .locals 1

    .line 13
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/iu0;->g:Lcom/yandex/mobile/ads/impl/pw0$a;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 14
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/pw0$a;->a(Lcom/yandex/mobile/ads/impl/pw0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vw0$b;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/iu0;->c:J

    .line 2
    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/iu0;->i:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/iu0;->e:Lcom/yandex/mobile/ads/impl/vw0;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/iu0;->d:Lcom/yandex/mobile/ads/impl/cd;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/vw0;->a(Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/cd;J)Lcom/yandex/mobile/ads/impl/pw0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    .line 6
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/iu0;->g:Lcom/yandex/mobile/ads/impl/pw0$a;

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {p1, p0, v0, v1}, Lcom/yandex/mobile/ads/impl/pw0;->a(Lcom/yandex/mobile/ads/impl/pw0$a;J)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vw0;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iu0;->e:Lcom/yandex/mobile/ads/impl/vw0;

    if-nez v0, :cond_0

    .line 26
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/iu0;->e:Lcom/yandex/mobile/ads/impl/vw0;

    return-void

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/iu0;->c:J

    return-wide v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iu0;->e:Lcom/yandex/mobile/ads/impl/vw0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/vw0;->a(Lcom/yandex/mobile/ads/impl/pw0;)V

    :cond_0
    return-void
.end method

.method public final continueLoading(J)Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/mx1;->continueLoading(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final discardBuffer(JZ)V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/pw0;->discardBuffer(JZ)V

    return-void
.end method

.method public final getBufferedPositionUs()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mx1;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mx1;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackGroups()Lcom/yandex/mobile/ads/impl/z52;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/pw0;->getTrackGroups()Lcom/yandex/mobile/ads/impl/z52;

    move-result-object p0

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mx1;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/pw0;->maybeThrowPrepareError()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->e:Lcom/yandex/mobile/ads/impl/vw0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/vw0;->maybeThrowSourceInfoRefreshError()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final readDiscontinuity()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/pw0;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/mx1;->reevaluateBuffer(J)V

    return-void
.end method

.method public final seekToUs(J)J
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iu0;->f:Lcom/yandex/mobile/ads/impl/pw0;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/pw0;->seekToUs(J)J

    move-result-wide p0

    return-wide p0
.end method
