.class public Lcom/mgmi/ads/api/e/h;
.super Lcom/mgmi/ads/api/e/d;
.source "SourceFile"

# interfaces
.implements Lh4d$b;
.implements Lcom/mgtv/a/b/a/b;
.implements Lcom/mgtv/a/b/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/e/h$a;,
        Lcom/mgmi/ads/api/e/h$b;
    }
.end annotation


# instance fields
.field protected d:Lcom/mgtv/a/b/d;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lcom/mgmi/ads/api/c/a;

.field private j:Lcom/mgmi/model/r;

.field private k:Lcom/mgmi/ads/api/e/h$b;

.field private l:I

.field private m:Z

.field private n:Lh4d;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/platform/view/a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Landroid/os/Handler;

.field private r:Lcom/mgmi/ads/api/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mgmi/model/r;Lcom/mgmi/ads/api/c/a;Lcom/mgmi/ads/api/d/b;Lcom/mgmi/g/a;)V
    .locals 0

    invoke-direct {p0, p5, p4}, Lcom/mgmi/ads/api/e/d;-><init>(Lcom/mgmi/g/a;Lcom/mgmi/ads/api/d/b;)V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/mgmi/ads/api/e/h;->f:Z

    iput p4, p0, Lcom/mgmi/ads/api/e/h;->g:I

    iput p4, p0, Lcom/mgmi/ads/api/e/h;->h:I

    sget-object p5, Lcom/mgmi/ads/api/e/h$b;->Idle:Lcom/mgmi/ads/api/e/h$b;

    iput-object p5, p0, Lcom/mgmi/ads/api/e/h;->k:Lcom/mgmi/ads/api/e/h$b;

    iput p4, p0, Lcom/mgmi/ads/api/e/h;->l:I

    iput-boolean p4, p0, Lcom/mgmi/ads/api/e/h;->m:Z

    new-instance p4, Lcom/mgmi/ads/api/e/h$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5, p0}, Lcom/mgmi/ads/api/e/h$a;-><init>(Landroid/os/Looper;Lcom/mgmi/ads/api/e/h;)V

    iput-object p4, p0, Lcom/mgmi/ads/api/e/h;->q:Landroid/os/Handler;

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/mgmi/ads/api/e/h;->e:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/mgmi/ads/api/e/h;->i:Lcom/mgmi/ads/api/c/a;

    new-instance p1, Lh4d;

    const-wide/16 p4, 0x64

    invoke-direct {p1, p4, p5}, Lh4d;-><init>(J)V

    iput-object p1, p0, Lcom/mgmi/ads/api/e/h;->n:Lh4d;

    iput-object p2, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {p2}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ads/api/e/h;->o:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/h;->b()V

    invoke-direct {p0, p3}, Lcom/mgmi/ads/api/e/h;->a(Lcom/mgmi/ads/api/c/a;)V

    return-void
.end method

.method private a(J)Lcom/mgmi/platform/view/a;
    .locals 5

    .line 11
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->o:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/platform/view/a;

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->s()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/platform/view/a;

    invoke-direct {p0, p1, p2, v3}, Lcom/mgmi/ads/api/e/h;->a(JLcom/mgmi/platform/view/a;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/a;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/a;->f()V

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v1
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/e/h;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->o:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/e/h;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/ads/api/e/h;->o:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/mgmi/ads/api/c/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method private a(JLcom/mgmi/platform/view/a;)Z
    .locals 3

    .line 6
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/e/d;->a(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7
    const-string p0, "jili_corner"

    const-string p1, "cnt\u903b\u8f91\u8fc7\u6ee4"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 8
    :cond_0
    iget-boolean p0, p3, Lcom/mgmi/platform/view/a;->e:Z

    if-nez p0, :cond_1

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->q()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->C()J

    move-result-wide v1

    cmp-long p0, p1, v1

    if-ltz p0, :cond_1

    .line 9
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p0

    if-nez p0, :cond_1

    .line 10
    invoke-virtual {p3, v0}, Lcom/mgmi/platform/view/a;->b(Z)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/e/h;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgmi/ads/api/e/h;->p:Z

    return p1
.end method

.method private d(Lcom/mgmi/platform/view/a;)Z
    .locals 1

    .line 14
    iget-boolean p0, p1, Lcom/mgmi/platform/view/a;->e:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Lcom/mgmi/platform/view/a;->b(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private e(Lcom/mgmi/platform/view/a;)V
    .locals 9

    .line 7
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    const-string v0, "LIveVideoAdManager"

    const-string v1, "geCornerAd"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Lcom/mgmi/ads/api/a/i;

    iget-object v1, p0, Lcom/mgmi/ads/api/e/h;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/mgmi/ads/api/e/h;->n:Lh4d;

    iget-object v3, p0, Lcom/mgmi/ads/api/e/h;->i:Lcom/mgmi/ads/api/c/a;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/mgmi/ads/api/a/i;-><init>(Landroid/content/Context;Lh4d;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;)V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/a/i;->b(Z)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/mgmi/platform/view/a;->a(Lcom/mgmi/ads/api/a/i;)V

    :cond_1
    move-object v2, v0

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/e;->k()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/i;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 14
    :goto_0
    new-instance v0, Lcom/mgmi/ads/api/a/c;

    invoke-direct {v0}, Lcom/mgmi/ads/api/a/c;-><init>()V

    iget-object v1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/a/c;->a(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/c;

    move-result-object v0

    const-string v1, "ADS_VIDEO_WIDGET"

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/a/c;->b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mgmi/ads/api/a/d;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/ads/api/a/d;

    move-result-object v3

    .line 15
    iget-object v5, p0, Lcom/mgmi/ads/api/e/h;->i:Lcom/mgmi/ads/api/c/a;

    iget-object v7, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    iget-object v8, p0, Lcom/mgmi/ads/api/e/h;->n:Lh4d;

    move-object v4, p1

    move-object v6, p0

    invoke-virtual/range {v2 .. v8}, Lcom/mgmi/ads/api/a/i;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/platform/view/a;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;Lcom/mgmi/g/a;Lh4d;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private s()Z
    .locals 3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mgtv/a/b/d;

    invoke-direct {v0}, Lcom/mgtv/a/b/d;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    invoke-virtual {v0, p0}, Lcom/mgtv/a/b/a/a;->a(Lcom/mgtv/a/b/a/b;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mgtv/a/b/a/a;->a(Lcom/mgmi/ads/api/a;)V

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    iget-object v1, p0, Lcom/mgmi/ads/api/e/h;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/mgmi/ads/api/e/h;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v2}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/a/b/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    :cond_1
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private t()V
    .locals 6

    invoke-direct {p0}, Lcom/mgmi/ads/api/e/h;->u()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/platform/view/a;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->s()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    invoke-direct {p0, v3}, Lcom/mgmi/ads/api/e/h;->e(Lcom/mgmi/platform/view/a;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private u()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/platform/view/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->o:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/platform/view/a;

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->s()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/platform/view/a;

    invoke-direct {p0, v3}, Lcom/mgmi/ads/api/e/h;->d(Lcom/mgmi/platform/view/a;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/platform/view/a;

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->f()V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v1

    :cond_3
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private v()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mgmi/ads/api/a;->isContentPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mgmi/ads/api/e/h;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mgmi/ads/api/e/h;->l:I

    :cond_0
    iget-object v2, p0, Lcom/mgmi/ads/api/e/h;->o:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/platform/view/a;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/mgmi/ads/api/a/i;->b(J)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/mgmi/ads/api/e/h;->a(J)Lcom/mgmi/platform/view/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->s()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/e/h;->e(Lcom/mgmi/platform/view/a;)V

    :cond_3
    return-void
.end method

.method private w()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/ads/api/e/h;->l:I

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/platform/view/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAdCycle get entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->t()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->s()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIveVideoAdManager"

    invoke-static {v2, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->n:Lh4d;

    invoke-virtual {v0, p0}, Lh4d;->b(Lh4d$b;)V

    return-void
.end method

.method private x()V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    iput-object v1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    :cond_0
    sget-object v0, Lcom/mgmi/ads/api/a$a;->START_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    iget-object v2, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/b;->a()V

    :cond_2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/platform/view/a;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/mgmi/ads/api/e/h;->d(Lcom/mgmi/platform/view/a;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/i;->b()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/ads/api/e/h;->g:I

    iput v0, p0, Lcom/mgmi/ads/api/e/h;->h:I

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/h;->m()Z

    return-void
.end method

.method private y()V
    .locals 2

    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->o:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/platform/view/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/i;->w()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private z()V
    .locals 2

    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->o:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/platform/view/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/i;->C()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/h;->v()V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    const p2, 0x324b0

    if-ne p1, p2, :cond_0

    .line 90
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/h;->x()V

    goto :goto_0

    :cond_0
    const p2, 0x927c0

    if-ne p1, p2, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/h;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz p2, :cond_1

    .line 94
    sget-object p2, Lcom/mgmi/ads/api/a$a;->AD_PLAYER_ON_FIRST_FRAME:Lcom/mgmi/ads/api/a$a;

    .line 95
    invoke-virtual {p1}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->t()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 97
    new-instance p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v0, "ADS_ONLINE_VIDEO"

    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    goto :goto_0

    .line 98
    :cond_0
    new-instance p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v0, "ADS_VIDEO_WIDGET"

    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V
    .locals 5

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnlineVideoAdManager noticeAdControl type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LIveVideoAdManager"

    invoke-static {v0, p2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object p2, Lcom/mgmi/ads/api/h;->AD_PLAY_END:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 20
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_1b

    .line 21
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/h;->x()V

    goto/16 :goto_6

    .line 22
    :cond_0
    sget-object p2, Lcom/mgmi/ads/api/h;->PAUSEPLAYER:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 23
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/h;->y()V

    .line 24
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/h;->e()V

    goto/16 :goto_6

    .line 25
    :cond_1
    sget-object p2, Lcom/mgmi/ads/api/h;->RESUMEPLAYER:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 26
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/h;->z()V

    .line 27
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/h;->f()V

    goto/16 :goto_6

    .line 28
    :cond_2
    sget-object p2, Lcom/mgmi/ads/api/h;->PAUSE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 29
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/h;->e()V

    goto/16 :goto_6

    .line 30
    :cond_3
    sget-object p2, Lcom/mgmi/ads/api/h;->RESUME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 31
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/f/e;->e()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/f/e;->f()Z

    move-result p1

    if-nez p1, :cond_4

    .line 32
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/h;->z()V

    .line 33
    :cond_4
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/h;->f()V

    goto/16 :goto_6

    .line 34
    :cond_5
    sget-object p2, Lcom/mgmi/ads/api/h;->AD_PLAY_FIRST_FRAME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_b

    .line 35
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    const/4 p2, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/16 v3, 0x11ee

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->t()I

    move-result p1

    if-ne p1, v0, :cond_8

    .line 36
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/g/a;->x()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 37
    invoke-virtual {p0, v1, v0}, Lcom/mgmi/ads/api/e/h;->a(IZ)V

    goto/16 :goto_6

    .line 38
    :cond_6
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/g/a;->b()I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 39
    invoke-virtual {p0, v2, v0}, Lcom/mgmi/ads/api/e/h;->a(IZ)V

    goto/16 :goto_6

    .line 40
    :cond_7
    invoke-virtual {p0, v2, p2}, Lcom/mgmi/ads/api/e/h;->a(IZ)V

    goto/16 :goto_6

    .line 41
    :cond_8
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->t()I

    move-result p1

    const/4 v4, 0x5

    if-ne p1, v4, :cond_1b

    .line 42
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/g/a;->x()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 43
    invoke-virtual {p0, v1, v0}, Lcom/mgmi/ads/api/e/h;->a(IZ)V

    goto/16 :goto_6

    .line 44
    :cond_9
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/g/a;->b()I

    move-result p1

    if-ne p1, v3, :cond_a

    .line 45
    invoke-virtual {p0, v2, v0}, Lcom/mgmi/ads/api/e/h;->a(IZ)V

    goto/16 :goto_6

    .line 46
    :cond_a
    invoke-virtual {p0, v2, p2}, Lcom/mgmi/ads/api/e/h;->a(IZ)V

    goto/16 :goto_6

    .line 47
    :cond_b
    sget-object p2, Lcom/mgmi/ads/api/h;->AD_ONPAUSE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    sget-object v1, Lcom/mgmi/ads/api/h;->AD_ONRESUME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_5

    .line 48
    :cond_c
    sget-object p2, Lcom/mgmi/ads/api/h;->CONTENT_FIRST_FRAME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto/16 :goto_6

    .line 49
    :cond_d
    sget-object p2, Lcom/mgmi/ads/api/h;->CONTENT_ONEND:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 50
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->o:Ljava/util/List;

    if-eqz p0, :cond_1b

    .line 51
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1b

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/platform/view/a;

    if-eqz p1, :cond_e

    .line 54
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 55
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/a/i;->a()V

    goto :goto_0

    .line 56
    :cond_f
    sget-object p2, Lcom/mgmi/ads/api/h;->HARLFSCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 57
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->o:Ljava/util/List;

    if-eqz p1, :cond_11

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_11

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgmi/platform/view/a;

    if-eqz p2, :cond_10

    .line 61
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 62
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/ads/api/a/i;->y()V

    goto :goto_1

    .line 63
    :cond_11
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 64
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    const-string p1, "2"

    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 65
    :cond_12
    sget-object p2, Lcom/mgmi/ads/api/h;->FULLSCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 66
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->o:Ljava/util/List;

    if-eqz p1, :cond_14

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_14

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgmi/platform/view/a;

    if-eqz p2, :cond_13

    .line 70
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 71
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/ads/api/a/i;->z()V

    goto :goto_2

    .line 72
    :cond_14
    iget-object p1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 73
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 74
    :cond_15
    sget-object p2, Lcom/mgmi/ads/api/h;->DISPLAY_TYPE_FULL_VIDEO:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    sget-object p2, Lcom/mgmi/ads/api/h;->DISPLAY_TYPE_FULL_SCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_3

    .line 75
    :cond_16
    sget-object p2, Lcom/mgmi/ads/api/h;->AD_PLAY_ERROR:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 76
    iput-boolean v0, p0, Lcom/mgmi/ads/api/e/h;->m:Z

    goto :goto_6

    .line 77
    :cond_17
    :goto_3
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1b

    .line 79
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/platform/view/a;

    if-eqz p1, :cond_18

    .line 81
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 82
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/ads/api/a/i;->w()V

    .line 83
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/a/i;->C()V

    goto :goto_4

    .line 84
    :cond_19
    :goto_5
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 86
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->f_()V

    goto :goto_6

    .line 87
    :cond_1a
    sget-object p2, Lcom/mgmi/ads/api/h;->AD_ONRESUME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 88
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    :cond_1b
    :goto_6
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/mgmi/ads/api/e/h;->m:Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/mgmi/platform/view/a;)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(Lcom/mgmi/platform/view/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/mgmi/ads/api/e/b;->c()Z

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/mgmi/ads/api/e/h$b;->Running:Lcom/mgmi/ads/api/e/h$b;

    iput-object v0, p0, Lcom/mgmi/ads/api/e/h;->k:Lcom/mgmi/ads/api/e/h$b;

    .line 5
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->n:Lh4d;

    invoke-virtual {v0}, Lh4d;->d()Lh4d;

    .line 6
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/h;->k()V

    .line 7
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/h;->t()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mgmi/ads/api/e/d;->d()V

    .line 2
    const-string v0, "LIveVideoAdManager"

    const-string v1, "mgmi admanager destory"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->n:Lh4d;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lh4d;->e()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/platform/view/a;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/i;->a()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    const-string v0, "LIveVideoAdManager"

    const-string v1, "mgmi admanager pause"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->k:Lcom/mgmi/ads/api/e/h$b;

    sget-object v1, Lcom/mgmi/ads/api/e/h$b;->Running:Lcom/mgmi/ads/api/e/h$b;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->n:Lh4d;

    invoke-virtual {v0}, Lh4d;->a()V

    .line 4
    sget-object v0, Lcom/mgmi/ads/api/e/h$b;->Paused:Lcom/mgmi/ads/api/e/h$b;

    iput-object v0, p0, Lcom/mgmi/ads/api/e/h;->k:Lcom/mgmi/ads/api/e/h$b;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->f_()V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "LIveVideoAdManager"

    const-string v1, "mgmi admanager resume"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->k:Lcom/mgmi/ads/api/e/h$b;

    sget-object v1, Lcom/mgmi/ads/api/e/h$b;->Paused:Lcom/mgmi/ads/api/e/h$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->n:Lh4d;

    invoke-virtual {v0}, Lh4d;->d()Lh4d;

    sget-object v0, Lcom/mgmi/ads/api/e/h$b;->Running:Lcom/mgmi/ads/api/e/h$b;

    iput-object v0, p0, Lcom/mgmi/ads/api/e/h;->k:Lcom/mgmi/ads/api/e/h$b;

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->t()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    sget-object v1, Lcom/mgmi/ads/api/a$a;->START_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    iget-object v2, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {v2}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1, v0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/platform/view/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/mgmi/ads/api/e/h;->d(Lcom/mgmi/platform/view/a;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/i;->b()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/ads/api/e/h;->g:I

    iput v0, p0, Lcom/mgmi/ads/api/e/h;->h:I

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/h;->m()Z

    :cond_3
    return-void
.end method

.method public h()V
    .locals 2

    invoke-super {p0}, Lcom/mgmi/ads/api/e/b;->h()V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->k:Lcom/mgmi/ads/api/e/h$b;

    sget-object v1, Lcom/mgmi/ads/api/e/h$b;->Paused:Lcom/mgmi/ads/api/e/h$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->n:Lh4d;

    invoke-virtual {v0}, Lh4d;->d()Lh4d;

    sget-object v0, Lcom/mgmi/ads/api/e/h$b;->Running:Lcom/mgmi/ads/api/e/h$b;

    iput-object v0, p0, Lcom/mgmi/ads/api/e/h;->k:Lcom/mgmi/ads/api/e/h$b;

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 5

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->i:Lcom/mgmi/ads/api/c/a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/mgmi/model/r;->g()Lcom/mgmi/model/VASTAd;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->g()Lcom/mgmi/model/VASTAd;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/mgmi/ads/api/e/h;->s()Z

    move-result v1

    iget-object v2, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mgmi/ads/api/e/h;->e:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v3, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {v3}, Lcom/mgmi/model/r;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/mgtv/a/b/d;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    iget-object v1, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {v1}, Lcom/mgmi/model/r;->a()I

    move-result v1

    iput v1, p0, Lcom/mgmi/ads/api/e/h;->g:I

    iget-object v1, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {v1}, Lcom/mgmi/model/r;->b()I

    move-result v1

    iput v1, p0, Lcom/mgmi/ads/api/e/h;->h:I

    iget-object v1, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/mgmi/ads/api/e/h;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v2}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/mgmi/ads/api/e/h;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mgmi/ads/api/d/b;->a(Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;Lcom/mgmi/ads/api/c/a;)V

    iget-object v1, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {v1}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/mgmi/ads/api/a$a;->START_PLAY_AD:Lcom/mgmi/ads/api/a$a;

    new-instance v3, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v4, "PRE_VIDEO_START"

    invoke-direct {v3, v4}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_3
    iget-object v1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/mgmi/ads/api/e/h;->j:Lcom/mgmi/model/r;

    invoke-virtual {v1, v2}, Lcom/mgtv/a/b/d;->a(Lcom/mgmi/model/r;)V

    :cond_4
    iget-object v1, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/mgtv/a/b/d;->a(Lcom/mgmi/model/VASTAd;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    iget v1, p0, Lcom/mgmi/ads/api/e/h;->g:I

    invoke-virtual {v0, v1}, Lcom/mgtv/a/b/a/a;->a(I)V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    iget v1, p0, Lcom/mgmi/ads/api/e/h;->h:I

    invoke-virtual {v0, v1}, Lcom/mgtv/a/b/a/a;->b(I)V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    invoke-virtual {v0}, Lcom/mgtv/a/b/d;->d()V

    iget-object p0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/b;->f()V

    goto :goto_0

    :cond_5
    :try_start_0
    iget-object p0, p0, Lcom/mgmi/ads/api/e/h;->d:Lcom/mgtv/a/b/d;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/mgtv/a/b/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/h;->m()Z

    :cond_8
    :goto_2
    return-void
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->r:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mgmi/ads/api/a/a;

    iget-object v1, p0, Lcom/mgmi/ads/api/e/h;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mgmi/ads/api/a/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mgmi/ads/api/e/h;->r:Lcom/mgmi/ads/api/a/d;

    new-instance v2, Lcom/mgmi/ads/api/e/h$1;

    invoke-direct {v2, p0}, Lcom/mgmi/ads/api/e/h$1;-><init>(Lcom/mgmi/ads/api/e/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/ads/api/a/a;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/a$a;)V

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h;->i:Lcom/mgmi/ads/api/c/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/mgmi/ads/api/e/h;->f:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string p0, "LIveVideoAdManager"

    const-string v0, "admanager is run"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/mgmi/ads/api/e/h;->f:Z

    sget-object v0, Lcom/mgmi/ads/api/e/h$b;->Running:Lcom/mgmi/ads/api/e/h$b;

    iput-object v0, p0, Lcom/mgmi/ads/api/e/h;->k:Lcom/mgmi/ads/api/e/h$b;

    invoke-direct {p0}, Lcom/mgmi/ads/api/e/h;->w()V

    return v1
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/mgmi/ads/api/e/h;->a(IZ)V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 2

    sget-object v0, Lcom/mgmi/ads/api/h;->AD_PLAY_END:Lcom/mgmi/ads/api/h;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/e/h;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    return-void
.end method
