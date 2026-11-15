.class public Lcom/iab/omid/library/mmadbridge/adsession/h;
.super Lcom/iab/omid/library/mmadbridge/adsession/b;
.source "source.java"


# instance fields
.field private final a:Lcom/iab/omid/library/mmadbridge/adsession/d;

.field private final b:Lcom/iab/omid/library/mmadbridge/adsession/c;

.field private final c:Lcom/iab/omid/library/mmadbridge/internal/f;

.field private d:Lte/a;

.field private e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method constructor <init>(Lcom/iab/omid/library/mmadbridge/adsession/c;Lcom/iab/omid/library/mmadbridge/adsession/d;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;-><init>(Lcom/iab/omid/library/mmadbridge/adsession/c;Lcom/iab/omid/library/mmadbridge/adsession/d;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/iab/omid/library/mmadbridge/adsession/c;Lcom/iab/omid/library/mmadbridge/adsession/d;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/iab/omid/library/mmadbridge/adsession/b;-><init>()V

    new-instance v0, Lcom/iab/omid/library/mmadbridge/internal/f;

    invoke-direct {v0}, Lcom/iab/omid/library/mmadbridge/internal/f;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->c:Lcom/iab/omid/library/mmadbridge/internal/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->f:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->b:Lcom/iab/omid/library/mmadbridge/adsession/c;

    iput-object p2, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->a:Lcom/iab/omid/library/mmadbridge/adsession/d;

    iput-object p3, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->m(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->c()Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->c()Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/iab/omid/library/mmadbridge/publisher/b;

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->g()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p3, v1, p2}, Lcom/iab/omid/library/mmadbridge/publisher/b;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Lcom/iab/omid/library/mmadbridge/publisher/a;

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->j()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Lcom/iab/omid/library/mmadbridge/publisher/a;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->y()V

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->e()Lcom/iab/omid/library/mmadbridge/internal/c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/iab/omid/library/mmadbridge/internal/c;->b(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    iget-object p2, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    invoke-virtual {p2, p1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->e(Lcom/iab/omid/library/mmadbridge/adsession/c;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->i:Z

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

.method private i(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->e()Lcom/iab/omid/library/mmadbridge/internal/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/c;->c()Ljava/util/Collection;

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
    check-cast v1, Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 32
    .line 33
    if-eq v1, p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->n()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-ne v2, p1, :cond_0

    .line 40
    .line 41
    iget-object v1, v1, Lcom/iab/omid/library/mmadbridge/adsession/h;->d:Lte/a;

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

.method private l()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->j:Z

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

.method private m(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lte/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lte/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->d:Lte/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->c:Lcom/iab/omid/library/mmadbridge/internal/f;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/iab/omid/library/mmadbridge/internal/f;->c(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->d:Lte/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->e()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->u()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->e()Lcom/iab/omid/library/mmadbridge/internal/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mmadbridge/internal/c;->d(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->o()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 40
    .line 41
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "AdView is null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lre/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->n()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne v0, p1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->m(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->i(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->c:Lcom/iab/omid/library/mmadbridge/internal/f;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/f;->f()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->c:Lcom/iab/omid/library/mmadbridge/internal/f;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/f;->g(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->f:Z

    .line 8
    .line 9
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->e()Lcom/iab/omid/library/mmadbridge/internal/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mmadbridge/internal/c;->f(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/i;->d()Lcom/iab/omid/library/mmadbridge/internal/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/i;->c()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b(F)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 30
    .line 31
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/a;->a()Lcom/iab/omid/library/mmadbridge/internal/a;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/internal/a;->c()Ljava/util/Date;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->l(Ljava/util/Date;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->a:Lcom/iab/omid/library/mmadbridge/adsession/d;

    .line 45
    .line 46
    invoke-virtual {v0, p0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->f(Lcom/iab/omid/library/mmadbridge/adsession/h;Lcom/iab/omid/library/mmadbridge/adsession/d;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->p()Z

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
    check-cast v1, Lte/a;

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

.method k(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->l()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->m(Lorg/json/JSONObject;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->j:Z

    .line 13
    .line 14
    return-void
.end method

.method public n()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->d:Lte/a;

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

.method public o()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->c:Lcom/iab/omid/library/mmadbridge/internal/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/f;->a()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

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

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->b:Lcom/iab/omid/library/mmadbridge/adsession/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/c;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->b:Lcom/iab/omid/library/mmadbridge/adsession/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/c;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method x()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->v()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->i:Z

    .line 13
    .line 14
    return-void
.end method

.method y()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->l()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->x()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->j:Z

    .line 13
    .line 14
    return-void
.end method
