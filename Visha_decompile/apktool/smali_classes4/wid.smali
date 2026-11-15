.class public Lwid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr9d$a;
.implements Lg8d;


# static fields
.field public static f:Lwid;


# instance fields
.field public a:F

.field public final b:Lhbd;

.field public final c:Lt6d;

.field public d:Lq9d;

.field public e:Li8d;


# direct methods
.method public constructor <init>(Lhbd;Lt6d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lwid;->a:F

    iput-object p1, p0, Lwid;->b:Lhbd;

    iput-object p2, p0, Lwid;->c:Lt6d;

    return-void
.end method

.method public static d()Lwid;
    .locals 3

    sget-object v0, Lwid;->f:Lwid;

    if-nez v0, :cond_0

    new-instance v0, Lt6d;

    invoke-direct {v0}, Lt6d;-><init>()V

    new-instance v1, Lhbd;

    invoke-direct {v1}, Lhbd;-><init>()V

    new-instance v2, Lwid;

    invoke-direct {v2, v1, v0}, Lwid;-><init>(Lhbd;Lt6d;)V

    sput-object v2, Lwid;->f:Lwid;

    :cond_0
    sget-object v0, Lwid;->f:Lwid;

    return-object v0
.end method


# virtual methods
.method public final a()Li8d;
    .locals 1

    .line 1
    iget-object v0, p0, Lwid;->e:Li8d;

    if-nez v0, :cond_0

    invoke-static {}, Li8d;->e()Li8d;

    move-result-object v0

    iput-object v0, p0, Lwid;->e:Li8d;

    :cond_0
    iget-object p0, p0, Lwid;->e:Li8d;

    return-object p0
.end method

.method public a(F)V
    .locals 1

    .line 2
    iput p1, p0, Lwid;->a:F

    invoke-virtual {p0}, Lwid;->a()Li8d;

    move-result-object p0

    invoke-virtual {p0}, Li8d;->a()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le3d;

    invoke-virtual {v0}, Le3d;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->b(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    invoke-static {}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->q()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->o()V

    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lwid;->c:Lt6d;

    invoke-virtual {v0}, Lt6d;->a()Lh3d;

    move-result-object v0

    iget-object v1, p0, Lwid;->b:Lhbd;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, p1, v0, p0}, Lhbd;->a(Landroid/os/Handler;Landroid/content/Context;Lh3d;Lg8d;)Lq9d;

    move-result-object p1

    iput-object p1, p0, Lwid;->d:Lq9d;

    return-void
.end method

.method public c()F
    .locals 0

    iget p0, p0, Lwid;->a:F

    return p0
.end method

.method public e()V
    .locals 1

    invoke-static {}, Lu6d;->k()Lu6d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr9d;->b(Lr9d$a;)V

    invoke-static {}, Lu6d;->k()Lu6d;

    move-result-object v0

    invoke-virtual {v0}, Lr9d;->i()V

    invoke-static {}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->q()V

    iget-object p0, p0, Lwid;->d:Lq9d;

    invoke-virtual {p0}, Lq9d;->d()V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-static {}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->s()V

    invoke-static {}, Lu6d;->k()Lu6d;

    move-result-object v0

    invoke-virtual {v0}, Lr9d;->j()V

    iget-object p0, p0, Lwid;->d:Lq9d;

    invoke-virtual {p0}, Lq9d;->e()V

    return-void
.end method
