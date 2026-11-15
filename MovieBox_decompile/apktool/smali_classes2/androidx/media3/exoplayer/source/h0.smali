.class public final Landroidx/media3/exoplayer/source/h0;
.super Landroidx/media3/exoplayer/source/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/h0$b;
    }
.end annotation


# instance fields
.field private final h:Lw1/h;

.field private final i:Landroidx/media3/datasource/a$a;

.field private final j:Landroidx/media3/common/r;

.field private final k:J

.field private final l:Landroidx/media3/exoplayer/upstream/m;

.field private final m:Z

.field private final n:Landroidx/media3/common/e0;

.field private final o:Landroidx/media3/common/t;

.field private final p:Lcom/google/common/base/q;

.field private q:Lw1/n;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/media3/common/t$k;Landroidx/media3/datasource/a$a;JLandroidx/media3/exoplayer/upstream/m;ZLjava/lang/Object;Lcom/google/common/base/q;)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    .line 2
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/a;-><init>()V

    move-object v2, p3

    .line 3
    iput-object v2, v0, Landroidx/media3/exoplayer/source/h0;->i:Landroidx/media3/datasource/a$a;

    move-wide v2, p4

    .line 4
    iput-wide v2, v0, Landroidx/media3/exoplayer/source/h0;->k:J

    move-object/from16 v4, p6

    .line 5
    iput-object v4, v0, Landroidx/media3/exoplayer/source/h0;->l:Landroidx/media3/exoplayer/upstream/m;

    move/from16 v4, p7

    .line 6
    iput-boolean v4, v0, Landroidx/media3/exoplayer/source/h0;->m:Z

    .line 7
    new-instance v4, Landroidx/media3/common/t$c;

    invoke-direct {v4}, Landroidx/media3/common/t$c;-><init>()V

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 8
    invoke-virtual {v4, v5}, Landroidx/media3/common/t$c;->i(Landroid/net/Uri;)Landroidx/media3/common/t$c;

    move-result-object v4

    iget-object v5, v1, Landroidx/media3/common/t$k;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/t$c;->d(Ljava/lang/String;)Landroidx/media3/common/t$c;

    move-result-object v4

    .line 10
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/t$c;->g(Ljava/util/List;)Landroidx/media3/common/t$c;

    move-result-object v4

    move-object/from16 v5, p8

    .line 11
    invoke-virtual {v4, v5}, Landroidx/media3/common/t$c;->h(Ljava/lang/Object;)Landroidx/media3/common/t$c;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    move-result-object v8

    iput-object v8, v0, Landroidx/media3/exoplayer/source/h0;->o:Landroidx/media3/common/t;

    .line 13
    new-instance v4, Landroidx/media3/common/r$b;

    invoke-direct {v4}, Landroidx/media3/common/r$b;-><init>()V

    iget-object v5, v1, Landroidx/media3/common/t$k;->b:Ljava/lang/String;

    const-string v6, "text/x-unknown"

    .line 14
    invoke-static {v5, v6}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    iget-object v5, v1, Landroidx/media3/common/t$k;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    iget v5, v1, Landroidx/media3/common/t$k;->d:I

    .line 16
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    move-result-object v4

    iget v5, v1, Landroidx/media3/common/t$k;->e:I

    .line 17
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object v4

    iget-object v5, v1, Landroidx/media3/common/t$k;->f:Ljava/lang/String;

    .line 18
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    .line 19
    iget-object v5, v1, Landroidx/media3/common/t$k;->g:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/exoplayer/source/h0;->j:Landroidx/media3/common/r;

    .line 21
    new-instance v4, Lw1/h$b;

    invoke-direct {v4}, Lw1/h$b;-><init>()V

    iget-object v1, v1, Landroidx/media3/common/t$k;->a:Landroid/net/Uri;

    .line 22
    invoke-virtual {v4, v1}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    move-result-object v1

    const/4 v4, 0x1

    .line 23
    invoke-virtual {v1, v4}, Lw1/h$b;->b(I)Lw1/h$b;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lw1/h$b;->a()Lw1/h;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/source/h0;->h:Lw1/h;

    .line 25
    new-instance v9, Lf2/w;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-wide v2, p4

    invoke-direct/range {v1 .. v8}, Lf2/w;-><init>(JZZZLjava/lang/Object;Landroidx/media3/common/t;)V

    iput-object v9, v0, Landroidx/media3/exoplayer/source/h0;->n:Landroidx/media3/common/e0;

    move-object/from16 v1, p9

    .line 26
    iput-object v1, v0, Landroidx/media3/exoplayer/source/h0;->p:Lcom/google/common/base/q;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroidx/media3/common/t$k;Landroidx/media3/datasource/a$a;JLandroidx/media3/exoplayer/upstream/m;ZLjava/lang/Object;Lcom/google/common/base/q;Landroidx/media3/exoplayer/source/h0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Landroidx/media3/exoplayer/source/h0;-><init>(Ljava/lang/String;Landroidx/media3/common/t$k;Landroidx/media3/datasource/a$a;JLandroidx/media3/exoplayer/upstream/m;ZLjava/lang/Object;Lcom/google/common/base/q;)V

    return-void
.end method


# virtual methods
.method protected B()V
    .locals 0

    .line 1
    return-void
.end method

.method public a()Landroidx/media3/common/t;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/h0;->o:Landroidx/media3/common/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;
    .locals 11

    .line 1
    new-instance p2, Landroidx/media3/exoplayer/source/g0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/h0;->h:Lw1/h;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/source/h0;->i:Landroidx/media3/datasource/a$a;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media3/exoplayer/source/h0;->q:Lw1/n;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/media3/exoplayer/source/h0;->j:Landroidx/media3/common/r;

    .line 10
    .line 11
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/h0;->k:J

    .line 12
    .line 13
    iget-object v7, p0, Landroidx/media3/exoplayer/source/h0;->l:Landroidx/media3/exoplayer/upstream/m;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->u(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    iget-boolean v9, p0, Landroidx/media3/exoplayer/source/h0;->m:Z

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/media3/exoplayer/source/h0;->p:Lcom/google/common/base/q;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroidx/media3/exoplayer/util/c;

    .line 30
    .line 31
    :goto_0
    move-object v10, p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    move-object v0, p2

    .line 36
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/source/g0;-><init>(Lw1/h;Landroidx/media3/datasource/a$a;Lw1/n;Landroidx/media3/common/r;JLandroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;ZLandroidx/media3/exoplayer/util/c;)V

    .line 37
    .line 38
    .line 39
    return-object p2
.end method

.method public k(Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/g0;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    .line 1
    return-void
.end method

.method protected z(Lw1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/h0;->q:Lw1/n;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/source/h0;->n:Landroidx/media3/common/e0;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->A(Landroidx/media3/common/e0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
