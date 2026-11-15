.class public final Lcom/google/android/exoplayer2/source/d0;
.super Lcom/google/android/exoplayer2/source/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/d0$b;
    }
.end annotation


# instance fields
.field private final h:Lcom/google/android/exoplayer2/upstream/n;

.field private final i:Lcom/google/android/exoplayer2/upstream/k$a;

.field private final j:Lcom/google/android/exoplayer2/p1;

.field private final k:J

.field private final l:Lcom/google/android/exoplayer2/upstream/z;

.field private final m:Z

.field private final n:Lcom/google/android/exoplayer2/l3;

.field private final o:Lcom/google/android/exoplayer2/w1;

.field private p:Lcom/google/android/exoplayer2/upstream/k0;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/w1$l;Lcom/google/android/exoplayer2/upstream/k$a;JLcom/google/android/exoplayer2/upstream/z;ZLjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    move-object v2, p3

    .line 3
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/d0;->i:Lcom/google/android/exoplayer2/upstream/k$a;

    move-wide v2, p4

    .line 4
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/d0;->k:J

    move-object/from16 v4, p6

    .line 5
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/d0;->l:Lcom/google/android/exoplayer2/upstream/z;

    move/from16 v4, p7

    .line 6
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/d0;->m:Z

    .line 7
    new-instance v4, Lcom/google/android/exoplayer2/w1$c;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/w1$c;-><init>()V

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/w1$c;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/w1$c;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/w1$l;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/w1$c;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/w1$c;

    move-result-object v4

    .line 10
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/w1$c;->g(Ljava/util/List;)Lcom/google/android/exoplayer2/w1$c;

    move-result-object v4

    move-object/from16 v5, p8

    .line 11
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/w1$c;->h(Ljava/lang/Object;)Lcom/google/android/exoplayer2/w1$c;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/w1$c;->a()Lcom/google/android/exoplayer2/w1;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/d0;->o:Lcom/google/android/exoplayer2/w1;

    .line 13
    new-instance v4, Lcom/google/android/exoplayer2/p1$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    iget-object v5, v1, Lcom/google/android/exoplayer2/w1$l;->b:Ljava/lang/String;

    const-string v6, "text/x-unknown"

    .line 14
    invoke-static {v5, v6}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/w1$l;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplayer2/w1$l;->d:I

    .line 16
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->g0(I)Lcom/google/android/exoplayer2/p1$b;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplayer2/w1$l;->e:I

    .line 17
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->c0(I)Lcom/google/android/exoplayer2/p1$b;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/w1$l;->f:Ljava/lang/String;

    .line 18
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    move-result-object v4

    .line 19
    iget-object v5, v1, Lcom/google/android/exoplayer2/w1$l;->g:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/d0;->j:Lcom/google/android/exoplayer2/p1;

    .line 21
    new-instance v4, Lcom/google/android/exoplayer2/upstream/n$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/n$b;-><init>()V

    iget-object v1, v1, Lcom/google/android/exoplayer2/w1$l;->a:Landroid/net/Uri;

    .line 22
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/upstream/n$b;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/n$b;

    move-result-object v1

    const/4 v4, 0x1

    .line 23
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/upstream/n$b;->b(I)Lcom/google/android/exoplayer2/upstream/n$b;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/n$b;->a()Lcom/google/android/exoplayer2/upstream/n;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/d0;->h:Lcom/google/android/exoplayer2/upstream/n;

    .line 25
    new-instance v9, Lv9/u;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-wide v2, p4

    invoke-direct/range {v1 .. v8}, Lv9/u;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/w1;)V

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/d0;->n:Lcom/google/android/exoplayer2/l3;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/w1$l;Lcom/google/android/exoplayer2/upstream/k$a;JLcom/google/android/exoplayer2/upstream/z;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/d0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/d0;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/w1$l;Lcom/google/android/exoplayer2/upstream/k$a;JLcom/google/android/exoplayer2/upstream/z;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected B(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d0;->p:Lcom/google/android/exoplayer2/upstream/k0;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d0;->n:Lcom/google/android/exoplayer2/l3;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->C(Lcom/google/android/exoplayer2/l3;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected D()V
    .locals 0

    .line 1
    return-void
.end method

.method public a()Lcom/google/android/exoplayer2/w1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d0;->o:Lcom/google/android/exoplayer2/w1;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;
    .locals 10

    .line 1
    new-instance p2, Lcom/google/android/exoplayer2/source/c0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d0;->h:Lcom/google/android/exoplayer2/upstream/n;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/d0;->i:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/d0;->p:Lcom/google/android/exoplayer2/upstream/k0;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/d0;->j:Lcom/google/android/exoplayer2/p1;

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/d0;->k:J

    .line 12
    .line 13
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/d0;->l:Lcom/google/android/exoplayer2/upstream/z;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->v(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/p$a;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/d0;->m:Z

    .line 20
    .line 21
    move-object v0, p2

    .line 22
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/c0;-><init>(Lcom/google/android/exoplayer2/upstream/n;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/upstream/k0;Lcom/google/android/exoplayer2/p1;JLcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;Z)V

    .line 23
    .line 24
    .line 25
    return-object p2
.end method

.method public i(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/c0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/c0;->h()V

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
