.class public final Lcom/google/android/exoplayer2/drm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj33;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/google/android/exoplayer2/n$f;

.field public c:Lcom/google/android/exoplayer2/drm/c;

.field public d:Lcom/google/android/exoplayer2/upstream/a$a;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/drm/c;
    .locals 2

    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    iget-object p1, p1, Lcom/google/android/exoplayer2/n$h;->c:Lcom/google/android/exoplayer2/n$f;

    if-eqz p1, :cond_2

    sget v0, Lblb;->a:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/a;->b:Lcom/google/android/exoplayer2/n$f;

    invoke-static {p1, v1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/a;->b:Lcom/google/android/exoplayer2/n$f;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/drm/a;->b(Lcom/google/android/exoplayer2/n$f;)Lcom/google/android/exoplayer2/drm/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/a;->c:Lcom/google/android/exoplayer2/drm/c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/a;->c:Lcom/google/android/exoplayer2/drm/c;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/drm/c;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lcom/google/android/exoplayer2/drm/c;->a:Lcom/google/android/exoplayer2/drm/c;

    return-object p0
.end method

.method public final b(Lcom/google/android/exoplayer2/n$f;)Lcom/google/android/exoplayer2/drm/c;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/a;->d:Lcom/google/android/exoplayer2/upstream/a$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/d$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/d$b;-><init>()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/a;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/d$b;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/d$b;

    move-result-object v0

    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/drm/i;

    iget-object v1, p1, Lcom/google/android/exoplayer2/n$f;->c:Landroid/net/Uri;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/n$f;->h:Z

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/drm/i;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/a$a;)V

    iget-object v0, p1, Lcom/google/android/exoplayer2/n$f;->e:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ldgb;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/drm/i;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;-><init>()V

    iget-object v1, p1, Lcom/google/android/exoplayer2/n$f;->a:Ljava/util/UUID;

    sget-object v2, Lcom/google/android/exoplayer2/drm/h;->d:Lcom/google/android/exoplayer2/drm/g$f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->e(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/g$f;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/n$f;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->b(Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/n$f;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->c(Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/n$f;->j:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->d([I)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->a(Lcom/google/android/exoplayer2/drm/j;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n$f;->c()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->E(I[B)V

    return-object p0
.end method
