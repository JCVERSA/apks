.class public Lcom/iab/omid/library/hisavana/adsession/h;
.super Lcom/iab/omid/library/hisavana/adsession/b;
.source "source.java"


# instance fields
.field private final a:Lcom/iab/omid/library/hisavana/adsession/d;

.field private final b:Lcom/iab/omid/library/hisavana/adsession/c;

.field private final c:Lcom/iab/omid/library/hisavana/internal/f;

.field private d:Lne/a;

.field private e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method constructor <init>(Lcom/iab/omid/library/hisavana/adsession/c;Lcom/iab/omid/library/hisavana/adsession/d;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/iab/omid/library/hisavana/adsession/h;-><init>(Lcom/iab/omid/library/hisavana/adsession/c;Lcom/iab/omid/library/hisavana/adsession/d;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/iab/omid/library/hisavana/adsession/c;Lcom/iab/omid/library/hisavana/adsession/d;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/adsession/b;-><init>()V

    new-instance v0, Lcom/iab/omid/library/hisavana/internal/f;

    invoke-direct {v0}, Lcom/iab/omid/library/hisavana/internal/f;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->c:Lcom/iab/omid/library/hisavana/internal/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->f:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/adsession/h;->b:Lcom/iab/omid/library/hisavana/adsession/c;

    iput-object p2, p0, Lcom/iab/omid/library/hisavana/adsession/h;->a:Lcom/iab/omid/library/hisavana/adsession/d;

    iput-object p3, p0, Lcom/iab/omid/library/hisavana/adsession/h;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iab/omid/library/hisavana/adsession/h;->j(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/d;->b()Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/d;->b()Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/iab/omid/library/hisavana/publisher/b;

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/d;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/d;->f()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p3, v1, p2}, Lcom/iab/omid/library/hisavana/publisher/b;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Lcom/iab/omid/library/hisavana/publisher/a;

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/d;->i()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Lcom/iab/omid/library/hisavana/publisher/a;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->u()V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/iab/omid/library/hisavana/internal/c;->b(Lcom/iab/omid/library/hisavana/adsession/h;)V

    iget-object p2, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    invoke-virtual {p2, p1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->e(Lcom/iab/omid/library/hisavana/adsession/c;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Impression event can only be sent once"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private g(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/c;->c()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/iab/omid/library/hisavana/adsession/h;

    .line 32
    .line 33
    if-eq v1, p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/iab/omid/library/hisavana/adsession/h;->m()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-ne v2, p1, :cond_0

    .line 40
    .line 41
    iget-object v1, v1, Lcom/iab/omid/library/hisavana/adsession/h;->d:Lne/a;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Loaded event can only be sent once"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private j(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lne/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lne/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->d:Lne/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->c:Lcom/iab/omid/library/hisavana/internal/f;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/iab/omid/library/hisavana/internal/f;->c(Landroid/view/View;Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->d:Lne/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->v()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->q()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/hisavana/internal/c;->d(Lcom/iab/omid/library/hisavana/adsession/h;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->l()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 40
    .line 41
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->m()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-ne v0, p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lcom/iab/omid/library/hisavana/adsession/h;->j(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/iab/omid/library/hisavana/adsession/h;->g(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->f:Z

    .line 12
    .line 13
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/hisavana/internal/c;->f(Lcom/iab/omid/library/hisavana/adsession/h;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/i;->d()Lcom/iab/omid/library/hisavana/internal/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/i;->c()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->b(F)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 34
    .line 35
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/a;->a()Lcom/iab/omid/library/hisavana/internal/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/iab/omid/library/hisavana/internal/a;->c()Ljava/util/Date;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->i(Ljava/util/Date;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/iab/omid/library/hisavana/adsession/h;->a:Lcom/iab/omid/library/hisavana/adsession/d;

    .line 49
    .line 50
    invoke-virtual {v0, p0, v1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->f(Lcom/iab/omid/library/hisavana/adsession/h;Lcom/iab/omid/library/hisavana/adsession/d;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lne/a;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/view/View;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    throw p1

    .line 42
    :cond_2
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->d:Lne/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->c:Lcom/iab/omid/library/hisavana/internal/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/f;->a()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->b:Lcom/iab/omid/library/hisavana/adsession/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/adsession/c;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method t()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->f()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->r()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->i:Z

    .line 13
    .line 14
    return-void
.end method

.method u()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->i()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->t()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->j:Z

    .line 13
    .line 14
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->c:Lcom/iab/omid/library/hisavana/internal/f;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/f;->f()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
