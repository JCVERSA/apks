.class public Landroidx/media3/exoplayer/drm/r$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/r$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/exoplayer/source/r$b;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/drm/r$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    .line 5
    iput-object p3, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/r$a;->p(Landroidx/media3/exoplayer/drm/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/r$a;->s(Landroidx/media3/exoplayer/drm/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/r$a;->q(Landroidx/media3/exoplayer/drm/r;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/r$a;->n(Landroidx/media3/exoplayer/drm/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/r$a;->r(Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/r$a;->o(Landroidx/media3/exoplayer/drm/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic n(Landroidx/media3/exoplayer/drm/r;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/r;->p(ILandroidx/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic o(Landroidx/media3/exoplayer/drm/r;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/r;->z(ILandroidx/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic p(Landroidx/media3/exoplayer/drm/r;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/r;->C(ILandroidx/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic q(Landroidx/media3/exoplayer/drm/r;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2}, Landroidx/media3/exoplayer/drm/r;->y(ILandroidx/media3/exoplayer/source/r$b;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic r(Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2}, Landroidx/media3/exoplayer/drm/r;->A(ILandroidx/media3/exoplayer/source/r$b;Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic s(Landroidx/media3/exoplayer/drm/r;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/r;->F(ILandroidx/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public g(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/r;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    new-instance v1, Landroidx/media3/exoplayer/drm/r$a$a;

    .line 10
    .line 11
    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/drm/r$a$a;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/r;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Landroidx/media3/exoplayer/drm/q;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/q;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Landroidx/media3/exoplayer/drm/o;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/o;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Landroidx/media3/exoplayer/drm/p;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/p;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Landroidx/media3/exoplayer/drm/m;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1}, Landroidx/media3/exoplayer/drm/m;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public l(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Landroidx/media3/exoplayer/drm/l;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1}, Landroidx/media3/exoplayer/drm/l;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Landroidx/media3/exoplayer/drm/n;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/n;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public t(Landroidx/media3/exoplayer/drm/r;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public u(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/drm/r$a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/exoplayer/drm/r$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
