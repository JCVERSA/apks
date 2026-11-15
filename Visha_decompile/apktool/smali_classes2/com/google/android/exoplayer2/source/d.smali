.class public final Lcom/google/android/exoplayer2/source/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/d$b;,
        Lcom/google/android/exoplayer2/source/d$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/d$a;

.field public b:Lcom/google/android/exoplayer2/upstream/a$a;

.field public c:Lcom/google/android/exoplayer2/source/i$a;

.field public d:Lcom/google/android/exoplayer2/upstream/f;

.field public e:J

.field public f:J

.field public g:J

.field public h:F

.field public i:F

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Luk3;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/c$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/c$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/source/d;-><init>(Lcom/google/android/exoplayer2/upstream/a$a;Luk3;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/a$a;Luk3;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d;->b:Lcom/google/android/exoplayer2/upstream/a$a;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/source/d$a;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/d$a;-><init>(Luk3;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->a:Lcom/google/android/exoplayer2/source/d$a;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/d$a;->m(Lcom/google/android/exoplayer2/upstream/a$a;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/d;->e:J

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/d;->f:J

    .line 8
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/d;->g:J

    const p1, -0x800001

    .line 9
    iput p1, p0, Lcom/google/android/exoplayer2/source/d;->h:F

    .line 10
    iput p1, p0, Lcom/google/android/exoplayer2/source/d;->i:F

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/k;)[Lnk3;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/d;->g(Lcom/google/android/exoplayer2/k;)[Lnk3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/d;->j(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/d;->k(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/k;)[Lnk3;
    .locals 2

    sget-object v0, Lp2a;->a:Lp2a;

    invoke-interface {v0, p0}, Lp2a;->a(Lcom/google/android/exoplayer2/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lu4a;

    invoke-interface {v0, p0}, Lp2a;->b(Lcom/google/android/exoplayer2/k;)Lo2a;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lu4a;-><init>(Lo2a;Lcom/google/android/exoplayer2/k;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/d$b;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/d$b;-><init>(Lcom/google/android/exoplayer2/k;)V

    :goto_0
    const/4 p0, 0x1

    new-array p0, p0, [Lnk3;

    const/4 v0, 0x0

    aput-object v1, p0, v0

    return-object p0
.end method

.method public static h(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/source/i;)Lcom/google/android/exoplayer2/source/i;
    .locals 12

    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/n$d;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/n$d;->b:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    iget-wide v3, v0, Lcom/google/android/exoplayer2/n$d;->c:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/n$d;->e:Z

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;

    invoke-static {v1, v2}, Lblb;->t0(J)J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/n$d;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/n$d;->c:J

    invoke-static {v1, v2}, Lblb;->t0(J)J

    move-result-wide v7

    iget-object p0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/n$d;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/n$d;->f:Z

    xor-int/lit8 v9, v1, 0x1

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/n$d;->d:Z

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/n$d;->e:Z

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/i;JJZZZ)V

    return-object v0
.end method

.method public static j(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/i$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static k(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 1

    :try_start_0
    const-class v0, Lcom/google/android/exoplayer2/upstream/a$a;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/i$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/f;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/d;->m(Lcom/google/android/exoplayer2/upstream/f;)Lcom/google/android/exoplayer2/source/d;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/i;
    .locals 8

    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    iget-object v0, v0, Lcom/google/android/exoplayer2/n$h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "ssai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/d;->c:Lcom/google/android/exoplayer2/source/i$a;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/i$a;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/source/i$a;->b(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/i;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    iget-object v1, v0, Lcom/google/android/exoplayer2/n$h;->a:Landroid/net/Uri;

    iget-object v0, v0, Lcom/google/android/exoplayer2/n$h;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lblb;->i0(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d;->a:Lcom/google/android/exoplayer2/source/d$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/d$a;->f(I)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No suitable media source factory found for content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lzi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$g;->b()Lcom/google/android/exoplayer2/n$g$a;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/n$g;->b:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/d;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/n$g$a;->k(J)Lcom/google/android/exoplayer2/n$g$a;

    :cond_1
    iget-object v2, p1, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    iget v2, v2, Lcom/google/android/exoplayer2/n$g;->e:F

    const v3, -0x800001

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/d;->h:F

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/n$g$a;->j(F)Lcom/google/android/exoplayer2/n$g$a;

    :cond_2
    iget-object v2, p1, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    iget v2, v2, Lcom/google/android/exoplayer2/n$g;->f:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/source/d;->i:F

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/n$g$a;->h(F)Lcom/google/android/exoplayer2/n$g$a;

    :cond_3
    iget-object v2, p1, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/n$g;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/d;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/n$g$a;->i(J)Lcom/google/android/exoplayer2/n$g$a;

    :cond_4
    iget-object v2, p1, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/n$g;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/d;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/n$g$a;->g(J)Lcom/google/android/exoplayer2/n$g$a;

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$g$a;->f()Lcom/google/android/exoplayer2/n$g;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/n$g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n;->b()Lcom/google/android/exoplayer2/n$c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n$c;->c(Lcom/google/android/exoplayer2/n$g;)Lcom/google/android/exoplayer2/n$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n$c;->a()Lcom/google/android/exoplayer2/n;

    move-result-object p1

    :cond_6
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/i$a;->b(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/i;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    invoke-static {v1}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/n$h;

    iget-object v1, v1, Lcom/google/android/exoplayer2/n$h;->f:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/i;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/d;->j:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/n$l;

    iget-object v6, v6, Lcom/google/android/exoplayer2/n$l;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/n$l;

    iget-object v6, v6, Lcom/google/android/exoplayer2/n$l;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/k$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/n$l;

    iget v6, v6, Lcom/google/android/exoplayer2/n$l;->d:I

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/k$b;->g0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/n$l;

    iget v6, v6, Lcom/google/android/exoplayer2/n$l;->e:I

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/k$b;->c0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/n$l;

    iget-object v6, v6, Lcom/google/android/exoplayer2/n$l;->f:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/k$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/n$l;

    iget-object v6, v6, Lcom/google/android/exoplayer2/n$l;->g:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v0

    new-instance v6, Lm22;

    invoke-direct {v6, v0}, Lm22;-><init>(Lcom/google/android/exoplayer2/k;)V

    new-instance v0, Lcom/google/android/exoplayer2/source/n$b;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/d;->b:Lcom/google/android/exoplayer2/upstream/a$a;

    invoke-direct {v0, v7, v6}, Lcom/google/android/exoplayer2/source/n$b;-><init>(Lcom/google/android/exoplayer2/upstream/a$a;Luk3;)V

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/d;->d:Lcom/google/android/exoplayer2/upstream/f;

    if-eqz v6, :cond_7

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/n$b;->h(Lcom/google/android/exoplayer2/upstream/f;)Lcom/google/android/exoplayer2/source/n$b;

    :cond_7
    add-int/lit8 v6, v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/n$l;

    iget-object v7, v7, Lcom/google/android/exoplayer2/n$l;->a:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/n;->e(Ljava/lang/String;)Lcom/google/android/exoplayer2/n;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/n$b;->e(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/n;

    move-result-object v0

    aput-object v0, v2, v6

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/source/s$b;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/d;->b:Lcom/google/android/exoplayer2/upstream/a$a;

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/source/s$b;-><init>(Lcom/google/android/exoplayer2/upstream/a$a;)V

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/d;->d:Lcom/google/android/exoplayer2/upstream/f;

    if-eqz v6, :cond_9

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/s$b;->b(Lcom/google/android/exoplayer2/upstream/f;)Lcom/google/android/exoplayer2/source/s$b;

    :cond_9
    add-int/lit8 v6, v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/n$l;

    invoke-virtual {v0, v7, v4, v5}, Lcom/google/android/exoplayer2/source/s$b;->a(Lcom/google/android/exoplayer2/n$l;J)Lcom/google/android/exoplayer2/source/s;

    move-result-object v0

    aput-object v0, v2, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/i;)V

    :cond_b
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/d;->h(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/source/i;)Lcom/google/android/exoplayer2/source/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/d;->i(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/source/i;)Lcom/google/android/exoplayer2/source/i;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lj33;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/d;->l(Lj33;)Lcom/google/android/exoplayer2/source/d;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/source/i;)Lcom/google/android/exoplayer2/source/i;
    .locals 0

    iget-object p0, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2
.end method

.method public l(Lj33;)Lcom/google/android/exoplayer2/source/d;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->a:Lcom/google/android/exoplayer2/source/d$a;

    const-string v1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v1}, Lzi;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj33;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/d$a;->n(Lj33;)V

    return-object p0
.end method

.method public m(Lcom/google/android/exoplayer2/upstream/f;)Lcom/google/android/exoplayer2/source/d;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lzi;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/f;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->d:Lcom/google/android/exoplayer2/upstream/f;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->a:Lcom/google/android/exoplayer2/source/d$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/d$a;->o(Lcom/google/android/exoplayer2/upstream/f;)V

    return-object p0
.end method
