.class public final Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.super Lcom/google/android/exoplayer2/source/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;,
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
    }
.end annotation


# instance fields
.field public final k:Lcom/google/android/exoplayer2/source/i;

.field public final l:J

.field public final m:J

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Ljava/util/ArrayList;

.field public final r:Lcom/google/android/exoplayer2/a0$d;

.field public s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

.field public t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

.field public u:J

.field public v:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/i;JJZZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/c;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->a(Z)V

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/i;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/i;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->n:Z

    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->o:Z

    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->p:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/exoplayer2/a0$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/a0$d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/a0$d;

    return-void
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/a0;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->D(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/a0;)V

    return-void
.end method

.method public D(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/a0;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->E(Lcom/google/android/exoplayer2/a0;)V

    return-void
.end method

.method public final E(Lcom/google/android/exoplayer2/a0;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/a0$d;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0$d;->h()J

    move-result-wide v5

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->o:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    sub-long/2addr v9, v5

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v9

    goto :goto_4

    :cond_2
    :goto_1
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0$d;->f()J

    move-result-wide v13

    add-long/2addr v9, v13

    add-long/2addr v11, v13

    :cond_3
    add-long v13, v5, v9

    iput-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    add-long v7, v5, v11

    :goto_2
    iput-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_5

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/b;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

    invoke-virtual {v5, v6, v7, v13, v14}, Lcom/google/android/exoplayer2/source/b;->k(JJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-wide v5, v9

    move-wide v7, v11

    :goto_4
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;-><init>(Lcom/google/android/exoplayer2/a0;JJ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/a;->u(Lcom/google/android/exoplayer2/a0;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/b;->i(Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/source/i$b;Lcb;J)Lcom/google/android/exoplayer2/source/h;
    .locals 8

    new-instance v7, Lcom/google/android/exoplayer2/source/b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/i;->c(Lcom/google/android/exoplayer2/source/i$b;Lcb;J)Lcom/google/android/exoplayer2/source/h;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->n:Z

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b;-><init>(Lcom/google/android/exoplayer2/source/h;ZJJ)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public e(Lcom/google/android/exoplayer2/source/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/i;

    check-cast p1, Lcom/google/android/exoplayer2/source/b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/i;->e(Lcom/google/android/exoplayer2/source/h;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->o:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    iget-object p1, p1, Lm54;->d:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->E(Lcom/google/android/exoplayer2/a0;)V

    :cond_0
    return-void
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/n;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/i;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/i;->getMediaItem()Lcom/google/android/exoplayer2/n;

    move-result-object p0

    return-object p0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/exoplayer2/source/c;->maybeThrowSourceInfoRefreshError()V

    return-void

    :cond_0
    throw v0
.end method

.method public t(Lu5b;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/c;->t(Lu5b;)V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/i;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/c;->C(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/i;)V

    return-void
.end method

.method public v()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer2/source/c;->v()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    return-void
.end method
