.class public Lcom/iab/omid/library/hisavana/internal/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/iab/omid/library/hisavana/internal/d$a;
.implements Lje/c;


# static fields
.field private static f:Lcom/iab/omid/library/hisavana/internal/i;


# instance fields
.field private a:F

.field private final b:Lje/e;

.field private final c:Lje/b;

.field private d:Lje/d;

.field private e:Lcom/iab/omid/library/hisavana/internal/c;


# direct methods
.method public constructor <init>(Lje/e;Lje/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->a:F

    .line 6
    .line 7
    iput-object p1, p0, Lcom/iab/omid/library/hisavana/internal/i;->b:Lje/e;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/iab/omid/library/hisavana/internal/i;->c:Lje/b;

    .line 10
    .line 11
    return-void
.end method

.method private a()Lcom/iab/omid/library/hisavana/internal/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->e:Lcom/iab/omid/library/hisavana/internal/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->e:Lcom/iab/omid/library/hisavana/internal/c;

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->e:Lcom/iab/omid/library/hisavana/internal/c;

    return-object v0
.end method

.method public static d()Lcom/iab/omid/library/hisavana/internal/i;
    .locals 3

    .line 1
    sget-object v0, Lcom/iab/omid/library/hisavana/internal/i;->f:Lcom/iab/omid/library/hisavana/internal/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lje/b;

    .line 6
    .line 7
    invoke-direct {v0}, Lje/b;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lje/e;

    .line 11
    .line 12
    invoke-direct {v1}, Lje/e;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/iab/omid/library/hisavana/internal/i;

    .line 16
    .line 17
    invoke-direct {v2, v1, v0}, Lcom/iab/omid/library/hisavana/internal/i;-><init>(Lje/e;Lje/b;)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcom/iab/omid/library/hisavana/internal/i;->f:Lcom/iab/omid/library/hisavana/internal/i;

    .line 21
    .line 22
    :cond_0
    sget-object v0, Lcom/iab/omid/library/hisavana/internal/i;->f:Lcom/iab/omid/library/hisavana/internal/i;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 2
    iput p1, p0, Lcom/iab/omid/library/hisavana/internal/i;->a:F

    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/internal/i;->a()Lcom/iab/omid/library/hisavana/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/c;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/hisavana/adsession/h;

    invoke-virtual {v1}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->b(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->q()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->o()V

    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->c:Lje/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lje/b;->a()Lje/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/iab/omid/library/hisavana/internal/i;->b:Lje/e;

    .line 8
    .line 9
    new-instance v2, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, p1, v0, p0}, Lje/e;->a(Landroid/os/Handler;Landroid/content/Context;Lje/a;Lje/c;)Lje/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/iab/omid/library/hisavana/internal/i;->d:Lje/d;

    .line 19
    .line 20
    return-void
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->a:F

    .line 2
    .line 3
    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/b;->k()Lcom/iab/omid/library/hisavana/internal/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/hisavana/internal/d;->b(Lcom/iab/omid/library/hisavana/internal/d$a;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/b;->k()Lcom/iab/omid/library/hisavana/internal/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/d;->i()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->q()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->d:Lje/d;

    .line 23
    .line 24
    invoke-virtual {v0}, Lje/d;->d()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->s()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/b;->k()Lcom/iab/omid/library/hisavana/internal/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/d;->j()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->d:Lje/d;

    .line 16
    .line 17
    invoke-virtual {v0}, Lje/d;->e()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
