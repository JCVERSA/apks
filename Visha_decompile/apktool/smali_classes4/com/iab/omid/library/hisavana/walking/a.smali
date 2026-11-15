.class public Lcom/iab/omid/library/hisavana/walking/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/hisavana/walking/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashSet;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/HashSet;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashSet;

.field public final i:Ljava/util/Map;

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->e:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->f:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->h:Ljava/util/HashSet;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final b(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->i:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->i:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final c(Landroid/view/View;Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notAttached"

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iab/omid/library/hisavana/walking/a;->b(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const-string p0, "noWindowFocus"

    return-object p0

    :cond_1
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Lghd;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->d:Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->j:Z

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->h:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final e(Le3d;)V
    .locals 2

    invoke-virtual {p1}, Le3d;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Libd;

    invoke-virtual {p0, v1, p1}, Lcom/iab/omid/library/hisavana/walking/a;->f(Libd;Le3d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Libd;Le3d;)V
    .locals 2

    invoke-virtual {p1}, Libd;->c()Lv1d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/iab/omid/library/hisavana/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/hisavana/walking/a$a;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Le3d;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/iab/omid/library/hisavana/walking/a$a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/iab/omid/library/hisavana/walking/a$a;

    invoke-virtual {p2}, Le3d;->k()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/iab/omid/library/hisavana/walking/a$a;-><init>(Libd;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public g(Landroid/view/View;)Lcom/iab/omid/library/hisavana/walking/a$a;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/hisavana/walking/a$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public i()Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->f:Ljava/util/HashSet;

    return-object p0
.end method

.method public j(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public k()Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->e:Ljava/util/HashSet;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->h:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public m(Landroid/view/View;)Lcom/iab/omid/library/hisavana/walking/c;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/iab/omid/library/hisavana/walking/c;->a:Lcom/iab/omid/library/hisavana/walking/c;

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->j:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/iab/omid/library/hisavana/walking/c;->b:Lcom/iab/omid/library/hisavana/walking/c;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/iab/omid/library/hisavana/walking/c;->c:Lcom/iab/omid/library/hisavana/walking/c;

    :goto_0
    return-object p0
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->j:Z

    return-void
.end method

.method public o()V
    .locals 6

    invoke-static {}, Li8d;->e()Li8d;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Li8d;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le3d;

    invoke-virtual {v1}, Le3d;->m()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Le3d;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Le3d;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_3

    invoke-static {v2}, Lghd;->e(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/iab/omid/library/hisavana/walking/a;->h:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, v2, v4}, Lcom/iab/omid/library/hisavana/walking/a;->c(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/iab/omid/library/hisavana/walking/a;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/iab/omid/library/hisavana/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/iab/omid/library/hisavana/walking/a;->e(Le3d;)V

    goto :goto_0

    :cond_2
    const-string v1, "noWindowFocus"

    if-eq v4, v1, :cond_0

    iget-object v1, p0, Lcom/iab/omid/library/hisavana/walking/a;->f:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iab/omid/library/hisavana/walking/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/iab/omid/library/hisavana/walking/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/iab/omid/library/hisavana/walking/a;->f:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iab/omid/library/hisavana/walking/a;->g:Ljava/util/HashMap;

    const-string v2, "noAdView"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public p(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a;->i:Ljava/util/Map;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
