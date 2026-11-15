.class public final Lcom/google/android/exoplayer2/source/s;
.super Lcom/google/android/exoplayer2/source/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/s$b;
    }
.end annotation


# instance fields
.field public final h:Lcom/google/android/exoplayer2/upstream/b;

.field public final i:Lcom/google/android/exoplayer2/upstream/a$a;

.field public final j:Lcom/google/android/exoplayer2/k;

.field public final k:J

.field public final l:Lcom/google/android/exoplayer2/upstream/f;

.field public final m:Z

.field public final n:Lcom/google/android/exoplayer2/a0;

.field public final o:Lcom/google/android/exoplayer2/n;

.field public p:Lu5b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/n$l;Lcom/google/android/exoplayer2/upstream/a$a;JLcom/google/android/exoplayer2/upstream/f;ZLjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    move-object v2, p3

    .line 3
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/s;->i:Lcom/google/android/exoplayer2/upstream/a$a;

    move-wide v2, p4

    .line 4
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/s;->k:J

    move-object/from16 v4, p6

    .line 5
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/s;->l:Lcom/google/android/exoplayer2/upstream/f;

    move/from16 v4, p7

    .line 6
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/s;->m:Z

    .line 7
    new-instance v4, Lcom/google/android/exoplayer2/n$c;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/n$c;-><init>()V

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/n$c;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/n$c;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/n$l;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/n$c;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/n$c;

    move-result-object v4

    .line 10
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/n$c;->g(Ljava/util/List;)Lcom/google/android/exoplayer2/n$c;

    move-result-object v4

    move-object/from16 v5, p8

    .line 11
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/n$c;->h(Ljava/lang/Object;)Lcom/google/android/exoplayer2/n$c;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/n$c;->a()Lcom/google/android/exoplayer2/n;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/s;->o:Lcom/google/android/exoplayer2/n;

    .line 13
    new-instance v4, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    iget-object v5, v1, Lcom/google/android/exoplayer2/n$l;->b:Ljava/lang/String;

    const-string/jumbo v6, "text/x-unknown"

    .line 14
    invoke-static {v5, v6}, Lzq6;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/n$l;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplayer2/n$l;->d:I

    .line 16
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k$b;->g0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplayer2/n$l;->e:I

    .line 17
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k$b;->c0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/n$l;->f:Ljava/lang/String;

    .line 18
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    .line 19
    iget-object v5, v1, Lcom/google/android/exoplayer2/n$l;->g:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/s;->j:Lcom/google/android/exoplayer2/k;

    .line 21
    new-instance v4, Lcom/google/android/exoplayer2/upstream/b$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/b$b;-><init>()V

    iget-object v1, v1, Lcom/google/android/exoplayer2/n$l;->a:Landroid/net/Uri;

    .line 22
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/upstream/b$b;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v1

    const/4 v4, 0x1

    .line 23
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/upstream/b$b;->b(I)Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/b$b;->a()Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/s;->h:Lcom/google/android/exoplayer2/upstream/b;

    .line 25
    new-instance v9, Lkn9;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-wide v2, p4

    invoke-direct/range {v1 .. v8}, Lkn9;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/n;)V

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/s;->n:Lcom/google/android/exoplayer2/a0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/n$l;Lcom/google/android/exoplayer2/upstream/a$a;JLcom/google/android/exoplayer2/upstream/f;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/s$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/s;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/n$l;Lcom/google/android/exoplayer2/upstream/a$a;JLcom/google/android/exoplayer2/upstream/f;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/source/i$b;Lcb;J)Lcom/google/android/exoplayer2/source/h;
    .locals 10

    new-instance p2, Lcom/google/android/exoplayer2/source/r;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/s;->h:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/s;->i:Lcom/google/android/exoplayer2/upstream/a$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/s;->p:Lu5b;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/s;->j:Lcom/google/android/exoplayer2/k;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/s;->k:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/s;->l:Lcom/google/android/exoplayer2/upstream/f;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->o(Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/source/j$a;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/s;->m:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/r;-><init>(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/upstream/a$a;Lu5b;Lcom/google/android/exoplayer2/k;JLcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/source/j$a;Z)V

    return-object p2
.end method

.method public e(Lcom/google/android/exoplayer2/source/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/r;->k()V

    return-void
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/n;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/s;->o:Lcom/google/android/exoplayer2/n;

    return-object p0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public t(Lu5b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/s;->p:Lu5b;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/s;->n:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->u(Lcom/google/android/exoplayer2/a0;)V

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method
