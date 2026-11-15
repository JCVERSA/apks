.class public final Lcom/google/android/exoplayer2/source/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Luk3;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Map;

.field public e:Lcom/google/android/exoplayer2/upstream/a$a;

.field public f:Lj33;

.field public g:Lcom/google/android/exoplayer2/upstream/f;


# direct methods
.method public constructor <init>(Luk3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->a:Luk3;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->b:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->c:Ljava/util/Set;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/d$a;->h(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/d$a;->g(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/d$a;->i(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/d$a;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/d$a;->k(Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/d$a;->j(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/d;->f(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/d;->f(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/d;->f(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/d;->e(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f(I)Lcom/google/android/exoplayer2/source/i$a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/d$a;->l(I)Lw6a;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {v0}, Lw6a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d$a;->f:Lj33;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/i$a;->c(Lj33;)Lcom/google/android/exoplayer2/source/i$a;

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d$a;->g:Lcom/google/android/exoplayer2/upstream/f;

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/i$a;->a(Lcom/google/android/exoplayer2/upstream/f;)Lcom/google/android/exoplayer2/source/i$a;

    :cond_3
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic k(Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/n$b;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/d$a;->a:Luk3;

    invoke-direct {v0, p1, p0}, Lcom/google/android/exoplayer2/source/n$b;-><init>(Lcom/google/android/exoplayer2/upstream/a$a;Luk3;)V

    return-object v0
.end method

.method public final l(I)Lw6a;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/d$a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw6a;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->e:Lcom/google/android/exoplayer2/upstream/a$a;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/a$a;

    const-class v1, Lcom/google/android/exoplayer2/source/i$a;

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    new-instance v1, Ls22;

    invoke-direct {v1, p0, v0}, Ls22;-><init>(Lcom/google/android/exoplayer2/source/d$a;Lcom/google/android/exoplayer2/upstream/a$a;)V

    :goto_0
    move-object v2, v1

    goto :goto_2

    :cond_2
    const-string v0, "com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lr22;

    invoke-direct {v1, v0}, Lr22;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    const-string v3, "com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Lq22;

    invoke-direct {v3, v1, v0}, Lq22;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)V

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_4
    const-string v3, "com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Lp22;

    invoke-direct {v3, v1, v0}, Lp22;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)V

    goto :goto_1

    :cond_5
    const-string v3, "com.google.android.exoplayer2.source.dash.DashMediaSource$Factory"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Lo22;

    invoke-direct {v3, v1, v0}, Lo22;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/d$a;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v2
.end method

.method public m(Lcom/google/android/exoplayer2/upstream/a$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$a;->e:Lcom/google/android/exoplayer2/upstream/a$a;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->e:Lcom/google/android/exoplayer2/upstream/a$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public n(Lj33;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->f:Lj33;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/i$a;->c(Lj33;)Lcom/google/android/exoplayer2/source/i$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/upstream/f;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$a;->g:Lcom/google/android/exoplayer2/upstream/f;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/d$a;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/i$a;->a(Lcom/google/android/exoplayer2/upstream/f;)Lcom/google/android/exoplayer2/source/i$a;

    goto :goto_0

    :cond_0
    return-void
.end method
