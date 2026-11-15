.class public Lcom/google/android/exoplayer2/drm/s$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/s$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/o$b;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/drm/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/s$a;->n(Lcom/google/android/exoplayer2/drm/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/s$a;->o(Lcom/google/android/exoplayer2/drm/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/s$a;->p(Lcom/google/android/exoplayer2/drm/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;->q(Lcom/google/android/exoplayer2/drm/s;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;->r(Lcom/google/android/exoplayer2/drm/s;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/s$a;->s(Lcom/google/android/exoplayer2/drm/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic n(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/s;->A(ILcom/google/android/exoplayer2/source/o$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic o(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/s;->p(ILcom/google/android/exoplayer2/source/o$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic p(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/s;->F(ILcom/google/android/exoplayer2/source/o$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic q(Lcom/google/android/exoplayer2/drm/s;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/s;->s(ILcom/google/android/exoplayer2/source/o$b;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 11
    .line 12
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/drm/s;->B(ILcom/google/android/exoplayer2/source/o$b;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic r(Lcom/google/android/exoplayer2/drm/s;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/drm/s;->w(ILcom/google/android/exoplayer2/source/o$b;Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic s(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/s;->C(ILcom/google/android/exoplayer2/source/o$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    .line 10
    .line 11
    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lcom/google/android/exoplayer2/drm/r;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/r;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lcom/google/android/exoplayer2/drm/p;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/p;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lcom/google/android/exoplayer2/drm/q;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/q;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lcom/google/android/exoplayer2/drm/o;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/drm/o;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lcom/google/android/exoplayer2/drm/m;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/drm/m;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lcom/google/android/exoplayer2/drm/n;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/n;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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

.method public u(ILcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/drm/s$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
