.class public abstract Landroidx/media3/exoplayer/source/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/r;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/util/HashSet;

.field private final c:Landroidx/media3/exoplayer/source/s$a;

.field private final d:Landroidx/media3/exoplayer/drm/r$a;

.field private e:Landroid/os/Looper;

.field private f:Landroidx/media3/common/e0;

.field private g:Lx1/f4;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    .line 18
    .line 19
    new-instance v0, Landroidx/media3/exoplayer/source/s$a;

    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/media3/exoplayer/source/s$a;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/exoplayer/source/s$a;

    .line 25
    .line 26
    new-instance v0, Landroidx/media3/exoplayer/drm/r$a;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/media3/exoplayer/drm/r$a;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Landroidx/media3/exoplayer/drm/r$a;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method protected final A(Landroidx/media3/common/e0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->f:Landroidx/media3/common/e0;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/media3/exoplayer/source/r$c;

    .line 20
    .line 21
    invoke-interface {v1, p0, p1}, Landroidx/media3/exoplayer/source/r$c;->a(Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method protected abstract B()V
.end method

.method public synthetic b()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lf2/k;->c(Landroidx/media3/exoplayer/source/r;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public synthetic c()Landroidx/media3/common/e0;
    .locals 1

    .line 1
    invoke-static {p0}, Lf2/k;->b(Landroidx/media3/exoplayer/source/r;)Landroidx/media3/common/e0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(Landroid/os/Handler;Landroidx/media3/exoplayer/source/s;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/exoplayer/source/s$a;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/s$a;->h(Landroid/os/Handler;Landroidx/media3/exoplayer/source/s;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e(Landroidx/media3/exoplayer/source/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/exoplayer/source/s$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/s$a;->E(Landroidx/media3/exoplayer/source/s;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/r;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Landroidx/media3/exoplayer/drm/r$a;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/drm/r$a;->g(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/r;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final j(Landroidx/media3/exoplayer/drm/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Landroidx/media3/exoplayer/drm/r$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/drm/r$a;->t(Landroidx/media3/exoplayer/drm/r;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l(Landroidx/media3/exoplayer/source/r$c;Lw1/n;Lx1/f4;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 15
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    .line 16
    .line 17
    .line 18
    iput-object p3, p0, Landroidx/media3/exoplayer/source/a;->g:Lx1/f4;

    .line 19
    .line 20
    iget-object p3, p0, Landroidx/media3/exoplayer/source/a;->f:Landroidx/media3/common/e0;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    .line 32
    .line 33
    iget-object p3, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/a;->z(Lw1/n;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    if-eqz p3, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->m(Landroidx/media3/exoplayer/source/r$c;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p0, p3}, Landroidx/media3/exoplayer/source/r$c;->a(Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_2
    return-void
.end method

.method public final m(Landroidx/media3/exoplayer/source/r$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->w()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public synthetic n(Landroidx/media3/common/t;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf2/k;->d(Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final o(Landroidx/media3/exoplayer/source/r$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->f:Landroidx/media3/common/e0;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->g:Lx1/f4;

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->B()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->p(Landroidx/media3/exoplayer/source/r$c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final p(Landroidx/media3/exoplayer/source/r$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->v()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public synthetic q(Landroidx/media3/common/t;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf2/k;->a(Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/t;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected final r(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Landroidx/media3/exoplayer/drm/r$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/drm/r$a;->u(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected final s(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Landroidx/media3/exoplayer/drm/r$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/drm/r$a;->u(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected final t(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/exoplayer/source/s$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/s$a;->H(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected final u(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/exoplayer/source/s$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/source/s$a;->H(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected v()V
    .locals 0

    .line 1
    return-void
.end method

.method protected w()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final x()Lx1/f4;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->g:Lx1/f4;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx1/f4;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method protected abstract z(Lw1/n;)V
.end method
