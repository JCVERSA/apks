.class public abstract Lcom/google/android/exoplayer2/source/c;
.super Lcom/google/android/exoplayer2/source/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/c$a;,
        Lcom/google/android/exoplayer2/source/c$b;
    }
.end annotation


# instance fields
.field public final h:Ljava/util/HashMap;

.field public i:Landroid/os/Handler;

.field public j:Lu5b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic w(Lcom/google/android/exoplayer2/source/c;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/a0;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/c;->A(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/a0;)V

    return-void
.end method


# virtual methods
.method public final synthetic A(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/a0;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/c;->B(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/a0;)V

    return-void
.end method

.method public abstract B(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/a0;)V
.end method

.method public final C(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/i;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->a(Z)V

    new-instance v0, Lkd1;

    invoke-direct {v0, p0, p1}, Lkd1;-><init>(Lcom/google/android/exoplayer2/source/c;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/exoplayer2/source/c$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/c$a;-><init>(Lcom/google/android/exoplayer2/source/c;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    new-instance v3, Lcom/google/android/exoplayer2/source/c$b;

    invoke-direct {v3, p2, v0, v1}, Lcom/google/android/exoplayer2/source/c$b;-><init>(Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/source/i$c;Lcom/google/android/exoplayer2/source/c$a;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->i:Landroid/os/Handler;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/i;->d(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/j;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->i:Landroid/os/Handler;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/i;->i(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/b;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->j:Lu5b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->r()Lta8;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1}, Lcom/google/android/exoplayer2/source/i;->k(Lcom/google/android/exoplayer2/source/i$c;Lu5b;Lta8;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->s()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/source/i;->g(Lcom/google/android/exoplayer2/source/i$c;)V

    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/c$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/i;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/c$b;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/c$b;->b:Lcom/google/android/exoplayer2/source/i$c;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/i;->g(Lcom/google/android/exoplayer2/source/i$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/c$b;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/c$b;->b:Lcom/google/android/exoplayer2/source/i$c;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/i;->f(Lcom/google/android/exoplayer2/source/i$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Lu5b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c;->j:Lu5b;

    invoke-static {}, Lblb;->u()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c;->i:Landroid/os/Handler;

    return-void
.end method

.method public v()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/c$b;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/c$b;->b:Lcom/google/android/exoplayer2/source/i$c;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/i;->a(Lcom/google/android/exoplayer2/source/i$c;)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/c$b;->c:Lcom/google/android/exoplayer2/source/c$a;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/i;->b(Lcom/google/android/exoplayer2/source/j;)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/c$b;->c:Lcom/google/android/exoplayer2/source/c$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/i;->j(Lcom/google/android/exoplayer2/drm/b;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public x(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/source/i$b;
    .locals 0

    return-object p2
.end method

.method public y(Ljava/lang/Object;J)J
    .locals 0

    return-wide p2
.end method

.method public z(Ljava/lang/Object;I)I
    .locals 0

    return p2
.end method
