.class public final Lcom/google/android/exoplayer2/source/n;
.super Lcom/google/android/exoplayer2/source/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/m$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/n$b;
    }
.end annotation


# instance fields
.field public final h:Lcom/google/android/exoplayer2/n;

.field public final i:Lcom/google/android/exoplayer2/n$h;

.field public final j:Lcom/google/android/exoplayer2/upstream/a$a;

.field public final k:Lcom/google/android/exoplayer2/source/l$a;

.field public final l:Lcom/google/android/exoplayer2/drm/c;

.field public final m:Lcom/google/android/exoplayer2/upstream/f;

.field public final n:I

.field public o:Z

.field public p:J

.field public q:Z

.field public r:Z

.field public s:Lu5b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/upstream/a$a;Lcom/google/android/exoplayer2/source/l$a;Lcom/google/android/exoplayer2/drm/c;Lcom/google/android/exoplayer2/upstream/f;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/n$h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/n;->i:Lcom/google/android/exoplayer2/n$h;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n;->h:Lcom/google/android/exoplayer2/n;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/n;->j:Lcom/google/android/exoplayer2/upstream/a$a;

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/n;->k:Lcom/google/android/exoplayer2/source/l$a;

    .line 7
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/n;->l:Lcom/google/android/exoplayer2/drm/c;

    .line 8
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/n;->m:Lcom/google/android/exoplayer2/upstream/f;

    .line 9
    iput p6, p0, Lcom/google/android/exoplayer2/source/n;->n:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/n;->o:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/n;->p:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/upstream/a$a;Lcom/google/android/exoplayer2/source/l$a;Lcom/google/android/exoplayer2/drm/c;Lcom/google/android/exoplayer2/upstream/f;ILcom/google/android/exoplayer2/source/n$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/n;-><init>(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/upstream/a$a;Lcom/google/android/exoplayer2/source/l$a;Lcom/google/android/exoplayer2/drm/c;Lcom/google/android/exoplayer2/upstream/f;I)V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/source/i$b;Lcb;J)Lcom/google/android/exoplayer2/source/h;
    .locals 13

    move-object v8, p0

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/n;->j:Lcom/google/android/exoplayer2/upstream/a$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/a$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v2

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/n;->s:Lu5b;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/a;->b(Lu5b;)V

    :cond_0
    new-instance v12, Lcom/google/android/exoplayer2/source/m;

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/n;->i:Lcom/google/android/exoplayer2/n$h;

    iget-object v1, v0, Lcom/google/android/exoplayer2/n$h;->a:Landroid/net/Uri;

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/n;->k:Lcom/google/android/exoplayer2/source/l$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->r()Lta8;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/source/l$a;->a(Lta8;)Lcom/google/android/exoplayer2/source/l;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/exoplayer2/source/n;->l:Lcom/google/android/exoplayer2/drm/c;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->m(Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/drm/b$a;

    move-result-object v5

    iget-object v6, v8, Lcom/google/android/exoplayer2/source/n;->m:Lcom/google/android/exoplayer2/upstream/f;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->o(Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/source/j$a;

    move-result-object v7

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/n;->i:Lcom/google/android/exoplayer2/n$h;

    iget-object v10, v0, Lcom/google/android/exoplayer2/n$h;->e:Ljava/lang/String;

    iget v11, v8, Lcom/google/android/exoplayer2/source/n;->n:I

    move-object v0, v12

    move-object v8, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/m;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/drm/c;Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/m$b;Lcb;Ljava/lang/String;I)V

    return-object v12
.end method

.method public e(Lcom/google/android/exoplayer2/source/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/m;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/m;->S()V

    return-void
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/n;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/n;->h:Lcom/google/android/exoplayer2/n;

    return-object p0
.end method

.method public h(JZZ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/n;->p:J

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/n;->o:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/n;->p:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/n;->q:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/n;->r:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/n;->p:J

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/n;->q:Z

    iput-boolean p4, p0, Lcom/google/android/exoplayer2/source/n;->r:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/n;->o:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/n;->w()V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public t(Lu5b;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n;->s:Lu5b;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n;->l:Lcom/google/android/exoplayer2/drm/c;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/c;->prepare()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n;->l:Lcom/google/android/exoplayer2/drm/c;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->r()Lta8;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/c;->a(Landroid/os/Looper;Lta8;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/n;->w()V

    return-void
.end method

.method public v()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/n;->l:Lcom/google/android/exoplayer2/drm/c;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/c;->release()V

    return-void
.end method

.method public final w()V
    .locals 9

    new-instance v8, Lkn9;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/n;->p:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/n;->q:Z

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/n;->r:Z

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/n;->h:Lcom/google/android/exoplayer2/n;

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lkn9;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/n;)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/n;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/n$a;

    invoke-direct {v0, p0, v8}, Lcom/google/android/exoplayer2/source/n$a;-><init>(Lcom/google/android/exoplayer2/source/n;Lcom/google/android/exoplayer2/a0;)V

    move-object v8, v0

    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/source/a;->u(Lcom/google/android/exoplayer2/a0;)V

    return-void
.end method
