.class public abstract Lcom/yandex/mobile/ads/impl/sk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yo1;
.implements Lcom/yandex/mobile/ads/impl/zo1;


# instance fields
.field private final b:I

.field private final c:Lcom/yandex/mobile/ads/impl/kc0;

.field private d:Lcom/yandex/mobile/ads/impl/ap1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:Lcom/yandex/mobile/ads/impl/mi1;

.field private g:I

.field private h:Lcom/yandex/mobile/ads/impl/lt1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:[Lcom/yandex/mobile/ads/impl/jc0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:J

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/sk;->b:I

    new-instance p1, Lcom/yandex/mobile/ads/impl/kc0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/kc0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sk;->c:Lcom/yandex/mobile/ads/impl/kc0;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/sk;->k:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/kc0;Lcom/yandex/mobile/ads/impl/ry;I)I
    .locals 5

    .line 25
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sk;->h:Lcom/yandex/mobile/ads/impl/lt1;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-interface {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/lt1;->a(Lcom/yandex/mobile/ads/impl/kc0;Lcom/yandex/mobile/ads/impl/ry;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 28
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/gm;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 29
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/sk;->k:J

    .line 30
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/sk;->l:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 31
    :cond_1
    iget-wide v0, p2, Lcom/yandex/mobile/ads/impl/ry;->f:J

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/sk;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/yandex/mobile/ads/impl/ry;->f:J

    .line 32
    iget-wide p1, p0, Lcom/yandex/mobile/ads/impl/sk;->k:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/sk;->k:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 33
    iget-object p2, p1, Lcom/yandex/mobile/ads/impl/kc0;->b:Lcom/yandex/mobile/ads/impl/jc0;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    iget-wide v0, p2, Lcom/yandex/mobile/ads/impl/jc0;->q:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/jc0;->a()Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    iget-wide v1, p2, Lcom/yandex/mobile/ads/impl/jc0;->q:J

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/sk;->j:J

    add-long/2addr v1, v3

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(J)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object p0

    .line 39
    iput-object p0, p1, Lcom/yandex/mobile/ads/impl/kc0;->b:Lcom/yandex/mobile/ads/impl/jc0;

    :cond_3
    :goto_1
    return p3
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/jc0;Ljava/lang/Exception;Z)Lcom/yandex/mobile/ads/impl/m60;
    .locals 9
    .param p2    # Lcom/yandex/mobile/ads/impl/jc0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk;->m:Z

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-interface {p0, p2}, Lcom/yandex/mobile/ads/impl/zo1;->a(Lcom/yandex/mobile/ads/impl/jc0;)I

    move-result v1
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/m60; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x7

    .line 6
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk;->m:Z

    :goto_0
    move v6, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk;->m:Z

    .line 7
    throw p1

    .line 8
    :catch_0
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk;->m:Z

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 9
    :goto_1
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yo1;->getName()Ljava/lang/String;

    move-result-object v3

    .line 10
    iget v4, p0, Lcom/yandex/mobile/ads/impl/sk;->e:I

    move-object v2, p3

    move-object v5, p2

    move v7, p4

    move v8, p1

    .line 11
    invoke-static/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/m60;->a(Ljava/lang/Exception;Ljava/lang/String;ILcom/yandex/mobile/ads/impl/jc0;IZI)Lcom/yandex/mobile/ads/impl/m60;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Exception;Lcom/yandex/mobile/ads/impl/jc0;I)Lcom/yandex/mobile/ads/impl/m60;
    .locals 1
    .param p2    # Lcom/yandex/mobile/ads/impl/jc0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/yandex/mobile/ads/impl/sk;->a(ILcom/yandex/mobile/ads/impl/jc0;Ljava/lang/Exception;Z)Lcom/yandex/mobile/ads/impl/m60;

    move-result-object p0

    return-object p0
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/mi1;)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/yandex/mobile/ads/impl/sk;->e:I

    .line 23
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sk;->f:Lcom/yandex/mobile/ads/impl/mi1;

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk;->l:Z

    .line 49
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/sk;->k:J

    .line 50
    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/sk;->a(JZ)V

    return-void
.end method

.method public abstract a(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ap1;[Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/lt1;JZZJJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    move-object v7, p0

    move-wide v8, p4

    move/from16 v10, p6

    .line 13
    iget v0, v7, Lcom/yandex/mobile/ads/impl/sk;->g:I

    if-nez v0, :cond_0

    move-object v0, p1

    .line 14
    iput-object v0, v7, Lcom/yandex/mobile/ads/impl/sk;->d:Lcom/yandex/mobile/ads/impl/ap1;

    const/4 v0, 0x1

    .line 15
    iput v0, v7, Lcom/yandex/mobile/ads/impl/sk;->g:I

    move/from16 v0, p7

    .line 16
    invoke-virtual {p0, v10, v0}, Lcom/yandex/mobile/ads/impl/sk;->a(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 17
    invoke-virtual/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/sk;->a([Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/lt1;JJ)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, v7, Lcom/yandex/mobile/ads/impl/sk;->l:Z

    .line 19
    iput-wide v8, v7, Lcom/yandex/mobile/ads/impl/sk;->k:J

    .line 20
    invoke-virtual {p0, v8, v9, v10}, Lcom/yandex/mobile/ads/impl/sk;->a(JZ)V

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 2
    return-void
.end method

.method public abstract a([Lcom/yandex/mobile/ads/impl/jc0;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation
.end method

.method public final a([Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/lt1;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk;->l:Z

    if-nez v0, :cond_1

    .line 41
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sk;->h:Lcom/yandex/mobile/ads/impl/lt1;

    .line 42
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/sk;->k:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 43
    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/sk;->k:J

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sk;->i:[Lcom/yandex/mobile/ads/impl/jc0;

    .line 45
    iput-wide p5, p0, Lcom/yandex/mobile/ads/impl/sk;->j:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/sk;->a([Lcom/yandex/mobile/ads/impl/jc0;JJ)V

    return-void

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public a()Z
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk;->e()Z

    move-result p0

    return p0
.end method

.method public final b(J)I
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sk;->h:Lcom/yandex/mobile/ads/impl/lt1;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/sk;->j:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/lt1;->a(J)I

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/yandex/mobile/ads/impl/sk;->g:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sk;->c:Lcom/yandex/mobile/ads/impl/kc0;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/kc0;->a:Lcom/yandex/mobile/ads/impl/g40;

    .line 4
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/kc0;->b:Lcom/yandex/mobile/ads/impl/jc0;

    .line 5
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk;->v()V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lcom/yandex/mobile/ads/impl/sk;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sk;->c:Lcom/yandex/mobile/ads/impl/kc0;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/kc0;->a:Lcom/yandex/mobile/ads/impl/g40;

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/kc0;->b:Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/sk;->g:I

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/sk;->h:Lcom/yandex/mobile/ads/impl/lt1;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/sk;->i:[Lcom/yandex/mobile/ads/impl/jc0;

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk;->l:Z

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk;->u()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final e()Z
    .locals 4

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/sk;->k:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/lt1;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sk;->h:Lcom/yandex/mobile/ads/impl/lt1;

    return-object p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/sk;->g:I

    return p0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sk;->l:Z

    return-void
.end method

.method public final i()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sk;->h:Lcom/yandex/mobile/ads/impl/lt1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/lt1;->a()V

    return-void
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/sk;->k:J

    return-wide v0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/sk;->l:Z

    return p0
.end method

.method public l()Lcom/yandex/mobile/ads/impl/fv0;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final m()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/sk;->b:I

    return p0
.end method

.method public final n()Lcom/yandex/mobile/ads/impl/sk;
    .locals 0

    return-object p0
.end method

.method public final p()Lcom/yandex/mobile/ads/impl/ap1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sk;->d:Lcom/yandex/mobile/ads/impl/ap1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final q()Lcom/yandex/mobile/ads/impl/kc0;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sk;->c:Lcom/yandex/mobile/ads/impl/kc0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/kc0;->a:Lcom/yandex/mobile/ads/impl/g40;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/kc0;->b:Lcom/yandex/mobile/ads/impl/jc0;

    return-object p0
.end method

.method public final r()Lcom/yandex/mobile/ads/impl/mi1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sk;->f:Lcom/yandex/mobile/ads/impl/mi1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final s()[Lcom/yandex/mobile/ads/impl/jc0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sk;->i:[Lcom/yandex/mobile/ads/impl/jc0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    iget v0, p0, Lcom/yandex/mobile/ads/impl/sk;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/yandex/mobile/ads/impl/sk;->g:I

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk;->w()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final stop()V
    .locals 2

    iget v0, p0, Lcom/yandex/mobile/ads/impl/sk;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/sk;->g:I

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk;->x()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final t()Z
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/sk;->l:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sk;->h:Lcom/yandex/mobile/ads/impl/lt1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/lt1;->d()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public abstract u()V
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    return-void
.end method

.method public x()V
    .locals 0

    return-void
.end method
