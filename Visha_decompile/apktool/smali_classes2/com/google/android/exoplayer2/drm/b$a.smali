.class public Lcom/google/android/exoplayer2/drm/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/b$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/i$b;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/drm/b$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/i$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/b$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/drm/b$a;->a:I

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/b$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/drm/b$a;->n(Lcom/google/android/exoplayer2/drm/b;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/drm/b$a;->o(Lcom/google/android/exoplayer2/drm/b;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/drm/b$a;->p(Lcom/google/android/exoplayer2/drm/b;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/b$a;->q(Lcom/google/android/exoplayer2/drm/b;I)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/b$a;->r(Lcom/google/android/exoplayer2/drm/b;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/drm/b$a;->s(Lcom/google/android/exoplayer2/drm/b;)V

    return-void
.end method


# virtual methods
.method public g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/b;)V
    .locals 1

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/b$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/google/android/exoplayer2/drm/b$a$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/b$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/b;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/b$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->b:Lcom/google/android/exoplayer2/drm/b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lf33;

    invoke-direct {v3, p0, v2}, Lf33;-><init>(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;)V

    invoke-static {v1, v3}, Lblb;->z0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/b$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->b:Lcom/google/android/exoplayer2/drm/b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lb33;

    invoke-direct {v3, p0, v2}, Lb33;-><init>(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;)V

    invoke-static {v1, v3}, Lblb;->z0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/b$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->b:Lcom/google/android/exoplayer2/drm/b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->a:Landroid/os/Handler;

    new-instance v3, Ld33;

    invoke-direct {v3, p0, v2}, Ld33;-><init>(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;)V

    invoke-static {v1, v3}, Lblb;->z0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/b$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->b:Lcom/google/android/exoplayer2/drm/b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lz23;

    invoke-direct {v3, p0, v2, p1}, Lz23;-><init>(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;I)V

    invoke-static {v1, v3}, Lblb;->z0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/b$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->b:Lcom/google/android/exoplayer2/drm/b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lv23;

    invoke-direct {v3, p0, v2, p1}, Lv23;-><init>(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;Ljava/lang/Exception;)V

    invoke-static {v1, v3}, Lblb;->z0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/b$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->b:Lcom/google/android/exoplayer2/drm/b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lx23;

    invoke-direct {v3, p0, v2}, Lx23;-><init>(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/drm/b;)V

    invoke-static {v1, v3}, Lblb;->z0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic n(Lcom/google/android/exoplayer2/drm/b;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->a:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/b$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/drm/b;->j(ILcom/google/android/exoplayer2/source/i$b;)V

    return-void
.end method

.method public final synthetic o(Lcom/google/android/exoplayer2/drm/b;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->a:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/b$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/drm/b;->m(ILcom/google/android/exoplayer2/source/i$b;)V

    return-void
.end method

.method public final synthetic p(Lcom/google/android/exoplayer2/drm/b;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->a:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/b$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/drm/b;->l(ILcom/google/android/exoplayer2/source/i$b;)V

    return-void
.end method

.method public final synthetic q(Lcom/google/android/exoplayer2/drm/b;I)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/b$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/b;->n(ILcom/google/android/exoplayer2/source/i$b;)V

    iget v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->a:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/b$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/exoplayer2/drm/b;->k(ILcom/google/android/exoplayer2/source/i$b;I)V

    return-void
.end method

.method public final synthetic r(Lcom/google/android/exoplayer2/drm/b;Ljava/lang/Exception;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->a:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/b$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/exoplayer2/drm/b;->o(ILcom/google/android/exoplayer2/source/i$b;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic s(Lcom/google/android/exoplayer2/drm/b;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->a:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/b$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/drm/b;->u(ILcom/google/android/exoplayer2/source/i$b;)V

    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/drm/b;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/b$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/b$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/b$a$a;->b:Lcom/google/android/exoplayer2/drm/b;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/b$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public u(ILcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/drm/b$a;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/b$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/b$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/drm/b$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/i$b;)V

    return-object v0
.end method
