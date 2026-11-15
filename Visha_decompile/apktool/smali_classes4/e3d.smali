.class public Le3d;
.super Ls7;
.source "SourceFile"


# instance fields
.field public final a:Lu7;

.field public final b:Lt7;

.field public final c:Lped;

.field public d:Lv1d;

.field public e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

.field public f:Z

.field public g:Z

.field public final h:Ljava/lang/String;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lt7;Lu7;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Le3d;-><init>(Lt7;Lu7;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lt7;Lu7;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ls7;-><init>()V

    new-instance v0, Lped;

    invoke-direct {v0}, Lped;-><init>()V

    iput-object v0, p0, Le3d;->c:Lped;

    const/4 v0, 0x0

    iput-boolean v0, p0, Le3d;->f:Z

    iput-boolean v0, p0, Le3d;->g:Z

    iput-object p1, p0, Le3d;->b:Lt7;

    iput-object p2, p0, Le3d;->a:Lu7;

    iput-object p3, p0, Le3d;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le3d;->j(Landroid/view/View;)V

    invoke-virtual {p2}, Lu7;->b()Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lu7;->b()Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/iab/omid/library/hisavana/publisher/b;

    invoke-virtual {p2}, Lu7;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lu7;->f()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p3, v1, p2}, Lcom/iab/omid/library/hisavana/publisher/b;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Le3d;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Lk3d;

    invoke-virtual {p2}, Lu7;->i()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Lk3d;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    :goto_2
    iget-object p2, p0, Le3d;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->u()V

    invoke-static {}, Li8d;->e()Li8d;

    move-result-object p2

    invoke-virtual {p2, p0}, Li8d;->b(Le3d;)V

    iget-object p0, p0, Le3d;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->d(Lt7;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Le3d;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Le3d;->c:Lped;

    invoke-virtual {p0, p1, p2, p3}, Lped;->c(Landroid/view/View;Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Le3d;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le3d;->d:Lv1d;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    invoke-virtual {p0}, Le3d;->v()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le3d;->g:Z

    invoke-virtual {p0}, Le3d;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->q()V

    invoke-static {}, Li8d;->e()Li8d;

    move-result-object v0

    invoke-virtual {v0, p0}, Li8d;->d(Le3d;)V

    invoke-virtual {p0}, Le3d;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->l()V

    const/4 v0, 0x0

    iput-object v0, p0, Le3d;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Le3d;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le3d;->m()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Le3d;->j(Landroid/view/View;)V

    invoke-virtual {p0}, Le3d;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a()V

    invoke-virtual {p0, p1}, Le3d;->g(Landroid/view/View;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Le3d;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le3d;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Le3d;->f:Z

    invoke-static {}, Li8d;->e()Li8d;

    move-result-object v0

    invoke-virtual {v0, p0}, Li8d;->f(Le3d;)V

    invoke-static {}, Lwid;->d()Lwid;

    move-result-object v0

    invoke-virtual {v0}, Lwid;->c()F

    move-result v0

    iget-object v1, p0, Le3d;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    invoke-virtual {v1, v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->b(F)V

    iget-object v0, p0, Le3d;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    invoke-static {}, Li3d;->a()Li3d;

    move-result-object v1

    invoke-virtual {v1}, Li3d;->c()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->i(Ljava/util/Date;)V

    iget-object v0, p0, Le3d;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    iget-object v1, p0, Le3d;->a:Lu7;

    invoke-virtual {v0, p0, v1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->e(Le3d;Lu7;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-boolean p0, p0, Le3d;->i:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Impression event can only be sent once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Li8d;->e()Li8d;

    move-result-object v0

    invoke-virtual {v0}, Li8d;->c()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le3d;

    if-eq v1, p0, :cond_0

    invoke-virtual {v1}, Le3d;->m()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v1, v1, Le3d;->d:Lv1d;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Le3d;->o()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1d;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final i()V
    .locals 1

    iget-boolean p0, p0, Le3d;->j:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Loaded event can only be sent once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lv1d;

    invoke-direct {v0, p1}, Lv1d;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Le3d;->d:Lv1d;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le3d;->h:Ljava/lang/String;

    return-object p0
.end method

.method public l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;
    .locals 0

    iget-object p0, p0, Le3d;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    return-object p0
.end method

.method public m()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Le3d;->d:Lv1d;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public n()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Le3d;->c:Lped;

    invoke-virtual {p0}, Lped;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Le3d;->f:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Le3d;->g:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Le3d;->g:Z

    return p0
.end method

.method public r()Z
    .locals 0

    iget-object p0, p0, Le3d;->b:Lt7;

    invoke-virtual {p0}, Lt7;->b()Z

    move-result p0

    return p0
.end method

.method public s()Z
    .locals 0

    iget-boolean p0, p0, Le3d;->f:Z

    return p0
.end method

.method public t()V
    .locals 1

    invoke-virtual {p0}, Le3d;->f()V

    invoke-virtual {p0}, Le3d;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le3d;->i:Z

    return-void
.end method

.method public u()V
    .locals 1

    invoke-virtual {p0}, Le3d;->i()V

    invoke-virtual {p0}, Le3d;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->t()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le3d;->j:Z

    return-void
.end method

.method public v()V
    .locals 1

    iget-boolean v0, p0, Le3d;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Le3d;->c:Lped;

    invoke-virtual {p0}, Lped;->f()V

    return-void
.end method
