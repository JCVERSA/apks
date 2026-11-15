.class public Lcom/mgmi/ads/api/e/a/a;
.super Lcom/mgmi/ads/api/e/d;
.source "SourceFile"

# interfaces
.implements Lh4d$b;
.implements Lcom/mgmi/a/a;
.implements Lcom/mgmi/ads/api/e/j$c;
.implements Lcom/mgtv/a/b/a/b;
.implements Lcom/mgtv/a/b/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/e/a/a$a;
    }
.end annotation


# instance fields
.field private A:J

.field private B:I

.field private C:Lcom/mgmi/ads/api/b/a;

.field private D:Z

.field private E:Z

.field private F:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/mgmi/ads/api/i;

.field private H:Lcom/mgmi/a/b;

.field private I:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mgmi/model/r;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/mgmi/model/r;

.field private K:I

.field private L:F

.field private M:Z

.field private N:J

.field private O:Z

.field protected d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/mgtv/a/b/d;

.field protected f:Lcom/mgtv/a/b/e;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/mgmi/model/r;

.field protected i:Lcom/mgmi/ads/api/c/a;

.field protected j:Lcom/mgmi/model/r;

.field protected k:Lh4d;

.field protected l:Lcom/mgmi/ads/api/a/e;

.field protected final m:Landroid/os/Handler;

.field n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/mgmi/model/j;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/mgmi/platform/view/a;

.field private x:Lcom/mgmi/ads/api/e/a/a$a;

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mgmi/model/r;Lcom/mgmi/ads/api/c/a;Lcom/mgmi/ads/api/d/b;Lcom/mgmi/g/a;)V
    .locals 2

    invoke-direct {p0, p5, p4}, Lcom/mgmi/ads/api/e/d;-><init>(Lcom/mgmi/g/a;Lcom/mgmi/ads/api/d/b;)V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/mgmi/ads/api/e/a/a;->o:Z

    iput p4, p0, Lcom/mgmi/ads/api/e/a/a;->s:I

    iput p4, p0, Lcom/mgmi/ads/api/e/a/a;->t:I

    iput p4, p0, Lcom/mgmi/ads/api/e/a/a;->u:I

    iput p4, p0, Lcom/mgmi/ads/api/e/a/a;->v:I

    sget-object p5, Lcom/mgmi/ads/api/e/a/a$a;->Idle:Lcom/mgmi/ads/api/e/a/a$a;

    iput-object p5, p0, Lcom/mgmi/ads/api/e/a/a;->x:Lcom/mgmi/ads/api/e/a/a$a;

    iput-boolean p4, p0, Lcom/mgmi/ads/api/e/a/a;->y:Z

    iput p4, p0, Lcom/mgmi/ads/api/e/a/a;->z:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mgmi/ads/api/e/a/a;->A:J

    iput p4, p0, Lcom/mgmi/ads/api/e/a/a;->B:I

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/mgmi/ads/api/e/a/a;->D:Z

    iput-boolean p4, p0, Lcom/mgmi/ads/api/e/a/a;->E:Z

    iput p4, p0, Lcom/mgmi/ads/api/e/a/a;->K:I

    const/high16 p5, 0x3f800000    # 1.0f

    iput p5, p0, Lcom/mgmi/ads/api/e/a/a;->L:F

    iput-boolean p4, p0, Lcom/mgmi/ads/api/e/a/a;->M:Z

    iput-wide v0, p0, Lcom/mgmi/ads/api/e/a/a;->N:J

    iput-boolean p4, p0, Lcom/mgmi/ads/api/e/a/a;->O:Z

    new-instance p5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p5, p0, Lcom/mgmi/ads/api/e/a/a;->m:Landroid/os/Handler;

    iput-boolean p4, p0, Lcom/mgmi/ads/api/e/a/a;->n:Z

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->m()V

    new-instance p1, Lh4d;

    const-wide/16 p4, 0x64

    invoke-direct {p1, p4, p5}, Lh4d;-><init>(J)V

    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->k:Lh4d;

    iput-object p2, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-direct {p0, p3}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/ads/api/c/a;)V

    return-void
.end method

.method private A()V
    .locals 2

    const-string v0, "notifyNotHasAiAd result11 = "

    const-string v1, "PatchOnlineVideoAdManager"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "notifyNotHasAiAd result2 = "

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_NO_AIAD:Lcom/mgmi/ads/api/a$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_1
    return-void
.end method

.method private B()V
    .locals 0

    return-void
.end method

.method private C()V
    .locals 2

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

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

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/i;->s()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private D()V
    .locals 2

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

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

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/i;->t()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private E()V
    .locals 0

    return-void
.end method

.method private F()V
    .locals 4

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    iget v1, p0, Lcom/mgmi/ads/api/e/a/a;->r:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    iget v1, p0, Lcom/mgmi/ads/api/e/a/a;->u:I

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setmMIDAdTotalTime(I)V

    iget-object v1, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v2}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mgmi/ads/api/d/b;->a(Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;Lcom/mgmi/ads/api/c/a;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mgmi/ads/api/e/a/a;->N:J

    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/mgtv/a/b/d;->a(Lcom/mgmi/model/VASTAd;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/mgmi/ads/api/e/a/a;->v:I

    invoke-virtual {v0, v1}, Lcom/mgtv/a/b/a/a;->b(I)V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    iget v1, p0, Lcom/mgmi/ads/api/e/a/a;->u:I

    invoke-virtual {v0, v1}, Lcom/mgtv/a/b/a/a;->a(I)V

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {p0}, Lcom/mgtv/a/b/d;->d()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/mgtv/a/b/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    const-string p0, "PatchOnlineVideoAdManager"

    const-string v0, "mid play fail"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private G()V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_HAS_FOCUS:Lcom/mgmi/ads/api/a$a;

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p0

    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v2, "ADS_VIDEO_WIDGET_FOCUS"

    invoke-direct {v1, v2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method

.method private H()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->q:Lcom/mgmi/model/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/model/j;->a()V

    :cond_0
    return-void
.end method

.method private I()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->I:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->J:Lcom/mgmi/model/r;

    return-void
.end method

.method private J()V
    .locals 0

    return-void
.end method

.method private K()V
    .locals 7

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/mgmi/ads/api/a;->getContentCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    long-to-int v3, v3

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a;->isContentPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/mgmi/ads/api/e/a/a;->z:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mgmi/ads/api/e/a/a;->z:I

    :cond_2
    invoke-virtual {v0}, Lcom/mgmi/ads/api/a;->isContentPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v4

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/mgmi/ads/api/a/i;->a(J)V

    goto :goto_0

    :cond_5
    int-to-long v3, v3

    iget-wide v5, p0, Lcom/mgmi/ads/api/e/a/a;->A:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    iput-wide v3, p0, Lcom/mgmi/ads/api/e/a/a;->A:J

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->H:Lcom/mgmi/a/b;

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1, v2, p0}, Lcom/mgmi/a/b;->a(JLcom/mgmi/model/r;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private L()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/ads/api/e/a/a;->z:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mgmi/ads/api/e/a/a;->A:J

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->k:Lh4d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lh4d;->b(Lh4d$b;)V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mgmi/ads/api/a$a;->START_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v2, "PRE_VIDEO_END"

    invoke-direct {v1, v2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {v2}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/b;->a()V

    iget-object p0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/d/b;->a(Z)V

    :cond_1
    return-void
.end method

.method private N()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mgmi/ads/api/e/a/a;->N:J

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/e/a/a;->a(Z)V

    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgtv/a/b/a/a;->s()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/e/i;->b()V

    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->M()V

    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/platform/view/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/ads/api/a/i;->b()V

    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/mgmi/ads/api/e/a/a;->s:I

    iput v0, p0, Lcom/mgmi/ads/api/e/a/a;->t:I

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->t()Z

    const-string p0, "mgmiad"

    const-string v0, "PatchOnlineVideoAdManager.onPreAdOver"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private O()V
    .locals 2

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

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

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/i;->x()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private P()V
    .locals 5

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/platform/view/a;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgmi/ads/api/a/i;->a()V

    invoke-virtual {v3, v1}, Lcom/mgmi/platform/view/a;->a(Lcom/mgmi/ads/api/a/i;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    :cond_3
    return-void
.end method

.method private Q()V
    .locals 2

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

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

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/i;->B()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private R()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/mgmi/ads/api/e/a/a;->r:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getVastAid()I

    move-result v0

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/platform/view/a;

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->v()I

    move-result v3

    if-ne v0, v3, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/platform/view/a;

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->z()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/platform/view/a;

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/a;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method private S()V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mgmi/ads/api/e/a/a;->N:J

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getVastAdPres()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->H()V

    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v0

    iget-object v3, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {v3, v2}, Lcom/mgmi/ads/api/d/b;->a(Z)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    iget-object v3, p0, Lcom/mgmi/ads/api/e/a/a;->w:Lcom/mgmi/platform/view/a;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->y()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/mgmi/ads/api/e/a/a;->w:Lcom/mgmi/platform/view/a;

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->t()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    if-eqz v0, :cond_5

    sget-object v3, Lcom/mgmi/ads/api/a$a;->ON_FOCUSHEAD_COMPLETE:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, v3, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    sget-object v3, Lcom/mgmi/ads/api/a$a;->RESUME_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    iget-boolean v4, p0, Lcom/mgmi/ads/api/e/a/a;->p:Z

    if-eqz v4, :cond_4

    new-instance v4, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v5, "ADS_TYPE_BACK_VIDEO"

    invoke-direct {v4, v5}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v5, "ADS_TYPE_VIDEO_WIDGET_MID_END"

    invoke-direct {v4, v5}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/platform/view/a;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/ads/api/a/i;->B()V

    goto :goto_2

    :cond_7
    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->h:Lcom/mgmi/model/r;

    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    iput v2, p0, Lcom/mgmi/ads/api/e/a/a;->u:I

    iput v2, p0, Lcom/mgmi/ads/api/e/a/a;->v:I

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->w:Lcom/mgmi/platform/view/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->B()V

    :cond_8
    invoke-direct {p0, v2}, Lcom/mgmi/ads/api/e/a/a;->a(Z)V

    return-void
.end method

.method private T()Z
    .locals 3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mgtv/a/b/d;

    invoke-direct {v0}, Lcom/mgtv/a/b/d;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {v0, p0}, Lcom/mgtv/a/b/a/a;->a(Lcom/mgtv/a/b/a/b;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mgtv/a/b/a/a;->a(Lcom/mgmi/ads/api/a;)V

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v2}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/a/b/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    :cond_1
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private U()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a;->isFullScreen()Z

    move-result v0

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/platform/view/a;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/i;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/i;->n()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mgmi/ads/api/a/i;->c(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method private a(Lcom/mgmi/ads/api/c/a;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/e/a/a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->C()V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/e/a/a;J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/mgmi/ads/api/e/a/a;->a(J)V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/e/a/a;Lcom/mgmi/platform/view/a;Lcom/mgmi/model/r;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/mgmi/ads/api/e/a/a;->c(Lcom/mgmi/platform/view/a;Lcom/mgmi/model/r;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/e/a/a;ZLjava/lang/String;FII)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p5}, Lcom/mgmi/ads/api/e/a/a;->a(ZLjava/lang/String;FII)V

    return-void
.end method

.method private a(Lcom/mgmi/model/VASTAd;)V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-nez v0, :cond_1

    .line 24
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->T()Z

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v2}, Lcom/mgmi/model/r;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mgtv/a/b/d;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/e/a/a;->a(Z)V

    .line 28
    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v0, :cond_2

    .line 29
    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v1}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mgmi/ads/api/d/b;->a(Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;Lcom/mgmi/ads/api/c/a;)V

    .line 30
    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 31
    sget-object v1, Lcom/mgmi/ads/api/a$a;->START_PLAY_AD:Lcom/mgmi/ads/api/a$a;

    .line 32
    new-instance v2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v3, "PRE_VIDEO_START"

    invoke-direct {v2, v3}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    .line 34
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgmi/ads/api/e/a/a;->N:J

    .line 35
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_3

    .line 36
    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1}, Lcom/mgtv/a/b/d;->a(Lcom/mgmi/model/r;)V

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/mgtv/a/b/d;->a(Lcom/mgmi/model/VASTAd;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 38
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_5

    .line 39
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mgtv/a/b/a/a;->a(I)V

    .line 40
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mgtv/a/b/a/a;->b(I)V

    .line 41
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {p1}, Lcom/mgtv/a/b/d;->d()V

    .line 42
    iget-object p0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p0, :cond_5

    .line 43
    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/b;->f()V

    goto :goto_0

    .line 44
    :cond_4
    :try_start_0
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p0, :cond_5

    .line 45
    invoke-virtual {p0}, Lcom/mgtv/a/b/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_0
    return-void

    .line 46
    :cond_6
    :goto_1
    const-string p0, "mgmiad"

    const-string p1, "PatchOnlineVideoAdManager.toPlayPreAd mContainer == null || mModel == null || mContainer.getViewParent() == null"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/mgmi/platform/view/a;I)V
    .locals 3

    .line 93
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/platform/view/a;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/i;->u()V

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->s()V

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    if-nez p1, :cond_3

    return-void

    .line 103
    :cond_3
    new-instance p1, Lcom/mgmi/ads/api/e/a/a$3;

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v1}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object v1

    const-string v2, "ADS_VIDEO_WIDGET"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/mgmi/ads/api/e/a/a$3;-><init>(Lcom/mgmi/ads/api/e/a/a;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    .line 104
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {p1}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 105
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/ads/api/b/a;->a(Lcom/mgmi/ads/api/a;)V

    .line 106
    :cond_4
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mgmi/ads/api/b/a;->a(Z)V

    if-lez p2, :cond_6

    .line 107
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    invoke-virtual {p1, p2}, Lcom/mgmi/ads/api/b/a;->a(I)V

    .line 108
    invoke-static {}, Lcom/mgmi/ads/api/e/e;->a()Lcom/mgmi/ads/api/e/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/e/e;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    if-eqz p1, :cond_5

    .line 109
    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    const-string p2, "feed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    const-string p2, "chat_room"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    .line 110
    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    const-string p2, "social"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    const-string p2, "live"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 111
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    invoke-virtual {p1}, Lcom/mgmi/ads/api/b/a;->b()V

    goto :goto_1

    .line 112
    :cond_5
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    invoke-virtual {p1}, Lcom/mgmi/ads/api/b/a;->a()V

    .line 113
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p0, :cond_7

    .line 114
    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/d/b;->a(Z)V

    :cond_7
    return-void
.end method

.method private a(Lcom/mgmi/platform/view/a;Lcom/mgmi/model/r;)V
    .locals 7

    .line 115
    invoke-virtual {p2}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    .line 116
    invoke-virtual {p2}, Lcom/mgmi/model/r;->j()I

    move-result v0

    iput v0, p0, Lcom/mgmi/ads/api/e/a/a;->u:I

    .line 117
    invoke-virtual {p2}, Lcom/mgmi/model/r;->c()I

    move-result p2

    iput p2, p0, Lcom/mgmi/ads/api/e/a/a;->v:I

    const/4 p2, 0x0

    .line 118
    iput p2, p0, Lcom/mgmi/ads/api/e/a/a;->r:I

    .line 119
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->w:Lcom/mgmi/platform/view/a;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->i()V

    :cond_0
    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->t()F

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    .line 123
    :cond_1
    iget-wide v0, p0, Lcom/mgmi/ads/api/e/a/a;->A:J

    long-to-float v0, v0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_2

    .line 124
    iget v5, p0, Lcom/mgmi/ads/api/e/a/a;->u:I

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/e/a/a;->a(I)Lcom/mgmi/model/VASTAd;

    move-result-object v0

    iget-wide v1, p0, Lcom/mgmi/ads/api/e/a/a;->A:J

    invoke-static {v0, p1, v1, v2}, Lcom/mgmi/a/b;->a(Lcom/mgmi/model/VASTAd;Lcom/mgmi/platform/view/a;J)I

    move-result v6

    const/4 v2, 0x1

    const-string v3, "ADS_TYPE_VIDEO_WIDGET_MID"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mgmi/ads/api/e/a/a;->a(ZLjava/lang/String;FII)V

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isInteractAd()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 126
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->updateInteractResource()V

    .line 127
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseMid mMIDAdTotalTime="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mgmi/ads/api/e/a/a;->u:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PatchOnlineVideoAdManager"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    .line 20
    :try_start_0
    iput-boolean p1, p0, Lcom/mgmi/ads/api/e/a/a;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(ZLjava/lang/String;FII)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 366
    new-instance p1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-direct {p1, p2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1, p3}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setTriggeringTime(F)V

    .line 368
    invoke-virtual {p1, p4}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setDuration(I)V

    .line 369
    invoke-virtual {p1, p5}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setCountDown(I)V

    .line 370
    sget-object p2, Lcom/mgmi/ads/api/a$a;->AD_HAS_ADS:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p0, p2, p1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    goto :goto_0

    .line 371
    :cond_0
    sget-object p1, Lcom/mgmi/ads/api/a$a;->AD_NO_ADS:Lcom/mgmi/ads/api/a$a;

    new-instance p3, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-direct {p3, p2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(I)V
    .locals 3

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/a/b/d;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/mgtv/a/b/d;->b(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 49
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 51
    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {p1}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/a;->isFullScreen()Z

    move-result p1

    .line 52
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_2

    :cond_2
    const-string p1, "2"

    :goto_2
    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    if-ne p1, v1, :cond_4

    .line 53
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->O()V

    goto :goto_4

    .line 54
    :cond_4
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/f/e;->e()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/f/e;->f()Z

    move-result p1

    if-nez p1, :cond_5

    .line 55
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->Q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 56
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    return-void
.end method

.method private b(J)V
    .locals 2

    .line 5
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/platform/view/a;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/i;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mgmi/ads/api/a/i;->c(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/mgmi/ads/api/e/a/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->D()V

    return-void
.end method

.method public static synthetic b(Lcom/mgmi/ads/api/e/a/a;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mgmi/ads/api/e/a/a;->c(J)V

    return-void
.end method

.method private b(Lcom/mgmi/platform/view/a;Lcom/mgmi/model/r;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->z()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 43
    iput-object p2, p0, Lcom/mgmi/ads/api/e/a/a;->J:Lcom/mgmi/model/r;

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->I:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->I:Ljava/util/HashMap;

    :cond_1
    if-eqz p2, :cond_2

    .line 46
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->I:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 4

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/mgmi/ads/api/e/a/a;->r:I

    .line 13
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 14
    const-string v0, "PatchOnlineVideoAdManager"

    const-string v1, "Admanager start play mid ad"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/platform/view/a;

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/i;->u()V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    .line 23
    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-nez v0, :cond_3

    .line 25
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->T()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    invoke-virtual {v0, v2, v3}, Lcom/mgtv/a/b/d;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 29
    :cond_4
    iput-boolean p1, p0, Lcom/mgmi/ads/api/e/a/a;->D:Z

    .line 30
    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p1, :cond_5

    .line 31
    invoke-virtual {p1}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 32
    sget-object v0, Lcom/mgmi/ads/api/a$a;->PAUSE_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    .line 34
    sget-object v0, Lcom/mgmi/ads/api/a$a;->START_PLAY_AD:Lcom/mgmi/ads/api/a$a;

    .line 35
    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v2, "ADS_TYPE_VIDEO_WIDGET_MID"

    invoke-direct {v1, v2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    .line 36
    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p1, :cond_5

    .line 37
    invoke-virtual {p1}, Lcom/mgmi/ads/api/d/b;->f()V

    .line 38
    :cond_5
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->E()V

    .line 39
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->F()V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mgmi/ads/api/e/a/a;->D:Z

    nop

    :cond_6
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/mgmi/ads/api/e/a/a;)Lcom/mgmi/a/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->H:Lcom/mgmi/a/b;

    return-object p0
.end method

.method private c(J)V
    .locals 1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAvPlayerClockFrameComePts time="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "zhengfeng"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/mgmi/ads/api/e/a/a;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mgmi/ads/api/e/a/a;->b(J)V

    return-void
.end method

.method private c(Lcom/mgmi/platform/view/a;Lcom/mgmi/model/r;)V
    .locals 10

    .line 18
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p2}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 20
    iput-object p2, p0, Lcom/mgmi/ads/api/e/a/a;->h:Lcom/mgmi/model/r;

    .line 21
    invoke-virtual {p2}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->isInteractAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p2}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->updateInteractResource()V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->h:Lcom/mgmi/model/r;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 25
    sget-object v1, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_SUCCESS:Lcom/mgmi/ads/api/a$a;

    .line 26
    new-instance v2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v3, "ADS_TYPE_BACK_VIDEO"

    invoke-direct {v2, v3}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    .line 27
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->t()F

    move-result v7

    invoke-virtual {p2}, Lcom/mgmi/model/r;->j()I

    move-result v8

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/e/a/a;->a(I)Lcom/mgmi/model/VASTAd;

    move-result-object v0

    iget-wide v1, p0, Lcom/mgmi/ads/api/e/a/a;->A:J

    invoke-static {v0, p1, v1, v2}, Lcom/mgmi/a/b;->a(Lcom/mgmi/model/VASTAd;Lcom/mgmi/platform/view/a;J)I

    move-result v9

    const/4 v5, 0x1

    const-string v6, "ADS_TYPE_BACK_VIDEO"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/mgmi/ads/api/e/a/a;->a(ZLjava/lang/String;FII)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 28
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    const-string v0, "PatchOnlineVideoAdManager"

    const-string v1, "mid load it is bad vast data so skip"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/platform/view/a;Lcom/mgmi/model/r;)V

    .line 31
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/mgmi/ads/api/e/a/a;->b(Lcom/mgmi/platform/view/a;Lcom/mgmi/model/r;)V

    return-void
.end method

.method private f(Lcom/mgmi/platform/view/a;)V
    .locals 2

    .line 11
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->j()V

    .line 13
    :cond_2
    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/e/a/a;->b(Z)V

    return-void
.end method

.method private g(Lcom/mgmi/platform/view/a;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->z()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->J:Lcom/mgmi/model/r;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->J:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 4
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->J:Lcom/mgmi/model/r;

    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->h:Lcom/mgmi/model/r;

    .line 5
    invoke-virtual {p1}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->J:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isInteractAd()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->J:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->updateInteractResource()V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->h:Lcom/mgmi/model/r;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 10
    sget-object p0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_SUCCESS:Lcom/mgmi/ads/api/a$a;

    .line 11
    new-instance v0, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v1, "ADS_TYPE_BACK_VIDEO"

    invoke-direct {v0, v1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_1
    return v3

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->I:Ljava/util/HashMap;

    if-nez v0, :cond_3

    return v1

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->v()I

    move-result v0

    .line 15
    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->I:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/r;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 18
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/platform/view/a;Lcom/mgmi/model/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    :cond_5
    return v1
.end method

.method private h(Lcom/mgmi/platform/view/a;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/a/a;->j(Lcom/mgmi/platform/view/a;)Z

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/a/a;->g(Lcom/mgmi/platform/view/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/mgmi/ads/api/a/c;

    invoke-direct {v0}, Lcom/mgmi/ads/api/a/c;-><init>()V

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/a/a;->i(Lcom/mgmi/platform/view/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/a/c;->b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    invoke-interface {v0, v1}, Lcom/mgmi/ads/api/a/d;->b(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mgmi/ads/api/a/d;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/ads/api/a/d;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/mgmi/ads/api/a/e;

    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mgmi/ads/api/a/e;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/mgmi/ads/api/e/a/a$4;

    invoke-direct {v2, p0, p1}, Lcom/mgmi/ads/api/e/a/a$4;-><init>(Lcom/mgmi/ads/api/e/a/a;Lcom/mgmi/platform/view/a;)V

    const-string p0, "paster"

    invoke-virtual {v1, v0, v2, p0}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/e$a;Ljava/lang/String;)V

    return-void
.end method

.method private i(Lcom/mgmi/platform/view/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    .line 2
    const-string p0, "ADS_VIDEO_WIDGET_FOCUS"

    return-object p0

    .line 3
    :cond_0
    const-string p0, "ADS_VIDEO_WIDGET"

    return-object p0
.end method

.method private j(Lcom/mgmi/platform/view/a;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->j()I

    move-result v0

    iput v0, p0, Lcom/mgmi/ads/api/e/a/a;->u:I

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->c()I

    move-result v0

    iput v0, p0, Lcom/mgmi/ads/api/e/a/a;->v:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/mgmi/ads/api/e/a/a;->r:I

    .line 5
    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->w:Lcom/mgmi/platform/view/a;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->i()V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->t()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isInteractAd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->updateInteractResource()V

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseMid mMIDAdTotalTime="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mgmi/ads/api/e/a/a;->u:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PatchOnlineVideoAdManager"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private k(Lcom/mgmi/platform/view/a;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->s()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 7
    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->w:Lcom/mgmi/platform/view/a;

    .line 8
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/a/a;->h(Lcom/mgmi/platform/view/a;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->s()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->s()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->s()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 11
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/a/a;->l(Lcom/mgmi/platform/view/a;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->s()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/mgmi/platform/c;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/a/a;->m(Lcom/mgmi/platform/view/a;)V

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/a/a;->e(Lcom/mgmi/platform/view/a;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private l(Lcom/mgmi/platform/view/a;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    return-void
.end method

.method private m(Lcom/mgmi/platform/view/a;)V
    .locals 0

    .line 2
    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->G:Lcom/mgmi/ads/api/i;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mgmi/ads/api/e/a/a$1;

    invoke-direct {v1, p0}, Lcom/mgmi/ads/api/e/a/a$1;-><init>(Lcom/mgmi/ads/api/e/a/a;)V

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/i;->a(Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->G:Lcom/mgmi/ads/api/i;

    new-instance v1, Lcom/mgmi/ads/api/e/a/a$2;

    invoke-direct {v1, p0}, Lcom/mgmi/ads/api/e/a/a$2;-><init>(Lcom/mgmi/ads/api/e/a/a;)V

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/i;->a(Lcom/hunantv/media/widget/IVideoView$OnFrameListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/mgmi/model/VASTAd;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_3

    .line 87
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->h:Lcom/mgmi/model/r;

    if-nez p0, :cond_0

    return-object v3

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 89
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v2, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    return-object p0

    :cond_2
    :goto_0
    return-object v3

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v2, :cond_4

    goto :goto_1

    .line 92
    :cond_4
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    return-object p0

    :cond_5
    :goto_1
    return-object v3
.end method

.method public a()V
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/mgmi/ads/api/e/a/a;->y:Z

    if-eqz v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->K()V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    const p2, 0x324b0

    if-ne p1, p2, :cond_1

    .line 378
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->t()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->N()V

    goto :goto_0

    .line 380
    :cond_0
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->t()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 381
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->S()V

    goto :goto_0

    :cond_1
    const p2, 0x927c0

    if-ne p1, p2, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 383
    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p2, :cond_1

    .line 384
    sget-object p2, Lcom/mgmi/ads/api/a$a;->AD_PLAYER_ON_FIRST_FRAME:Lcom/mgmi/ads/api/a$a;

    .line 385
    invoke-virtual {p1}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 386
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->t()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 387
    new-instance p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v0, "ADS_ONLINE_VIDEO"

    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    goto :goto_0

    .line 388
    :cond_0
    new-instance p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v0, "ADS_VIDEO_WIDGET"

    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    aget-object p1, p2, v1

    check-cast p1, Lcom/mgmi/platform/view/a;

    .line 321
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/a/a;->f(Lcom/mgmi/platform/view/a;)V

    goto :goto_0

    .line 322
    :cond_1
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 323
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->G:Lcom/mgmi/ads/api/i;

    if-eqz p0, :cond_6

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/i;->a(J)V

    goto :goto_0

    .line 325
    :cond_2
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 326
    aget-object p2, p2, v0

    check-cast p2, Lcom/mgmi/platform/view/a;

    if-ltz p1, :cond_3

    .line 327
    invoke-direct {p0, p2, p1}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/platform/view/a;I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    .line 328
    invoke-direct {p0, p2, p1}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/platform/view/a;I)V

    goto :goto_0

    .line 329
    :cond_4
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->G()V

    goto :goto_0

    .line 330
    :cond_5
    aget-object p1, p2, v1

    check-cast p1, Lcom/mgmi/platform/view/a;

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/e/a/a;->k(Lcom/mgmi/platform/view/a;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 3

    .line 331
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    const-string v0, "PatchOnlineVideoAdManager"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/ads/api/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 332
    const-string p0, "requestPauseAd and mVideoCountDownView run"

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 333
    :cond_0
    iget-boolean p1, p0, Lcom/mgmi/ads/api/e/a/a;->D:Z

    if-nez p1, :cond_1

    .line 334
    const-string p0, "canShowPause forbidden"

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 335
    :cond_1
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_2

    .line 336
    const-string p0, "requestPauseAd but no entry"

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 337
    :cond_2
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 338
    const-string p0, "requestPauseAd pre and mid is showing"

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 339
    :cond_3
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/platform/view/a;

    .line 340
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->s()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 341
    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/e/a/a;->d(Lcom/mgmi/platform/view/a;)V

    :cond_6
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 0

    .line 3
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V
    .locals 9

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PatchOnlineVideoAdManager noticeAdControl type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PatchOnlineVideoAdManager"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/mgmi/ads/api/e/a/a;->n:Z

    .line 130
    sget-object v1, Lcom/mgmi/ads/api/h;->AD_PLAY_END:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_43

    .line 132
    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->t()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->N()V

    goto/16 :goto_11

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->S()V

    goto/16 :goto_11

    .line 135
    :cond_1
    sget-object v1, Lcom/mgmi/ads/api/h;->PAUSEPLAYER:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "vod"

    if-eqz v1, :cond_3

    .line 136
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/mgmi/f/e;->f(Z)V

    .line 137
    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 138
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mgmi/f/e;->b(Z)V

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {p1}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/a/a;->a(Landroid/view/ViewGroup;)V

    .line 140
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->O()V

    .line 141
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->e()V

    goto/16 :goto_11

    .line 142
    :cond_3
    sget-object v1, Lcom/mgmi/ads/api/h;->CLEAR_ALL_MIDDER_AD:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->P()V

    goto/16 :goto_11

    .line 144
    :cond_4
    sget-object v1, Lcom/mgmi/ads/api/h;->RESUMEPLAYER:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "live"

    const-string v5, "social"

    const-string v6, "chat_room"

    const-string v7, "feed"

    const/4 v8, 0x0

    if-eqz v1, :cond_9

    .line 145
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mgmi/f/e;->f(Z)V

    .line 146
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz p1, :cond_5

    .line 147
    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->s()V

    .line 148
    iput-object v8, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    .line 149
    :cond_5
    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 150
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/mgmi/f/e;->b(Z)V

    .line 151
    :cond_6
    :try_start_0
    iget-boolean p1, p0, Lcom/mgmi/ads/api/e/a/a;->n:Z

    if-nez p1, :cond_8

    .line 152
    invoke-static {}, Lcom/mgmi/ads/api/e/e;->a()Lcom/mgmi/ads/api/e/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/e/e;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    .line 153
    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 154
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->Q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 155
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->f()V

    goto/16 :goto_11

    .line 157
    :cond_9
    sget-object v1, Lcom/mgmi/ads/api/h;->PAUSE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 158
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->k()V

    .line 159
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->O()V

    goto/16 :goto_11

    .line 160
    :cond_a
    sget-object v1, Lcom/mgmi/ads/api/h;->RESUME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 161
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->l()V

    .line 162
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/f/e;->e()Z

    move-result p1

    if-nez p1, :cond_43

    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/f/e;->f()Z

    move-result p1

    if-nez p1, :cond_43

    .line 163
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->Q()V

    goto/16 :goto_11

    .line 164
    :cond_b
    sget-object v1, Lcom/mgmi/ads/api/h;->RESUME_CORNER:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 165
    :try_start_1
    iget-boolean p1, p0, Lcom/mgmi/ads/api/e/a/a;->n:Z

    if-nez p1, :cond_43

    .line 166
    invoke-static {}, Lcom/mgmi/ads/api/e/e;->a()Lcom/mgmi/ads/api/e/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/e/e;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    .line 167
    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    .line 168
    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->Q()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_11

    .line 169
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_11

    .line 170
    :cond_d
    sget-object v1, Lcom/mgmi/ads/api/h;->PAUSE_CORNER:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 171
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->O()V

    goto/16 :goto_11

    .line 172
    :cond_e
    sget-object v1, Lcom/mgmi/ads/api/h;->CONTENT_FIRST_FRAME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 173
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->D()V

    .line 174
    iget-object p0, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    if-eqz p0, :cond_43

    invoke-virtual {p0}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 175
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/mgmi/f/e;->b(Z)V

    goto/16 :goto_11

    .line 176
    :cond_f
    sget-object v1, Lcom/mgmi/ads/api/h;->SET_DISPLAY_SIZE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_11

    .line 177
    :cond_10
    sget-object v1, Lcom/mgmi/ads/api/h;->AD_PLAY_FIRST_FRAME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-wide/16 p1, -0x1

    .line 178
    iput-wide p1, p0, Lcom/mgmi/ads/api/e/a/a;->N:J

    .line 179
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    const/16 p2, 0x8

    const/4 v1, 0x4

    const/16 v3, 0x11ee

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->t()I

    move-result p1

    if-ne p1, v2, :cond_13

    .line 180
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->J()V

    .line 181
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/g/a;->x()I

    move-result p1

    if-ne p1, v3, :cond_11

    .line 182
    invoke-virtual {p0, p2, v2}, Lcom/mgmi/ads/api/e/a/a;->a(IZ)V

    goto :goto_5

    .line 183
    :cond_11
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/g/a;->b()I

    move-result p1

    if-ne p1, v3, :cond_12

    .line 184
    invoke-virtual {p0, v1, v2}, Lcom/mgmi/ads/api/e/a/a;->a(IZ)V

    goto :goto_5

    .line 185
    :cond_12
    invoke-virtual {p0, v1, v0}, Lcom/mgmi/ads/api/e/a/a;->a(IZ)V

    .line 186
    :goto_5
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->y()V

    goto/16 :goto_11

    .line 187
    :cond_13
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->t()I

    move-result p1

    const/4 v4, 0x5

    if-ne p1, v4, :cond_43

    .line 188
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/g/a;->x()I

    move-result p1

    if-ne p1, v3, :cond_14

    .line 189
    invoke-virtual {p0, p2, v2}, Lcom/mgmi/ads/api/e/a/a;->a(IZ)V

    goto :goto_6

    .line 190
    :cond_14
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->m()Lcom/mgmi/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/g/a;->b()I

    move-result p1

    if-ne p1, v3, :cond_15

    .line 191
    invoke-virtual {p0, v1, v2}, Lcom/mgmi/ads/api/e/a/a;->a(IZ)V

    goto :goto_6

    .line 192
    :cond_15
    invoke-virtual {p0, v1, v0}, Lcom/mgmi/ads/api/e/a/a;->a(IZ)V

    .line 193
    :goto_6
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->y()V

    .line 194
    invoke-direct {p0, v2}, Lcom/mgmi/ads/api/e/a/a;->a(Z)V

    goto/16 :goto_11

    .line 195
    :cond_16
    sget-object v1, Lcom/mgmi/ads/api/h;->AD_ONPAUSE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    sget-object v3, Lcom/mgmi/ads/api/h;->AD_ONRESUME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_10

    .line 196
    :cond_17
    sget-object v1, Lcom/mgmi/ads/api/h;->CONTENT_ONEND:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 197
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_19

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 200
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgmi/platform/view/a;

    if-eqz p2, :cond_18

    .line 201
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 202
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/ads/api/a/i;->a()V

    goto :goto_7

    .line 203
    :cond_19
    iput-boolean v0, p0, Lcom/mgmi/ads/api/e/a/a;->p:Z

    .line 204
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->h:Lcom/mgmi/model/r;

    if-eqz p1, :cond_1a

    .line 205
    invoke-virtual {p1}, Lcom/mgmi/model/r;->i()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    .line 206
    iput-boolean v2, p0, Lcom/mgmi/ads/api/e/a/a;->p:Z

    .line 207
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->h:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->k()I

    move-result p1

    iput p1, p0, Lcom/mgmi/ads/api/e/a/a;->u:I

    .line 208
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->h:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->c()I

    move-result p1

    iput p1, p0, Lcom/mgmi/ads/api/e/a/a;->v:I

    .line 209
    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/e/a/a;->b(Z)V

    goto/16 :goto_11

    .line 210
    :cond_1a
    iget-object p0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p0, :cond_43

    .line 211
    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 212
    sget-object p1, Lcom/mgmi/ads/api/a$a;->RESUME_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    .line 213
    new-instance p2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v0, "ADS_TYPE_VIDEO_WIDGET_MID_END"

    invoke-direct {p2, v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    goto/16 :goto_11

    .line 215
    :cond_1b
    sget-object v1, Lcom/mgmi/ads/api/h;->HARLFSCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 216
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    const-string p2, "2"

    if-eqz p1, :cond_1c

    .line 217
    invoke-virtual {p1, p2}, Lcom/mgmi/ads/api/c/a;->a(Ljava/lang/String;)V

    .line 218
    :cond_1c
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 221
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/platform/view/a;

    if-eqz v0, :cond_1d

    .line 222
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 223
    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/i;->y()V

    goto :goto_8

    .line 224
    :cond_1e
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 225
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    invoke-virtual {p1, p2}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    .line 226
    :cond_1f
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 227
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {p0, p2}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    .line 228
    :cond_20
    :try_start_2
    invoke-static {}, Lcom/mgmi/ads/api/e/l;->a()Lcom/mgmi/ads/api/e/l;

    move-result-object p0

    sget-object p1, Lcom/mgmi/ads/api/e/l;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/l;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_11

    :catch_2
    move-exception p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_11

    .line 230
    :cond_21
    sget-object v1, Lcom/mgmi/ads/api/h;->FULLSCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 231
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_23

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 234
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgmi/platform/view/a;

    if-eqz p2, :cond_22

    .line 235
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 236
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/ads/api/a/i;->z()V

    goto :goto_9

    .line 237
    :cond_23
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    const-string p2, "1"

    if-eqz p1, :cond_24

    .line 238
    invoke-virtual {p1, p2}, Lcom/mgmi/ads/api/c/a;->a(Ljava/lang/String;)V

    .line 239
    :cond_24
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 240
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    invoke-virtual {p1, p2}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    .line 241
    :cond_25
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 242
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {p0, p2}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 243
    :cond_26
    sget-object v1, Lcom/mgmi/ads/api/h;->DISPLAY_TYPE_FULL_VIDEO:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    sget-object v1, Lcom/mgmi/ads/api/h;->DISPLAY_TYPE_FULL_SCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto/16 :goto_e

    .line 244
    :cond_27
    sget-object v1, Lcom/mgmi/ads/api/h;->PIP_ENTER:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 245
    iput-boolean v2, p0, Lcom/mgmi/ads/api/e/a/a;->M:Z

    .line 246
    invoke-static {}, Lcom/mgmi/ads/api/e/e;->a()Lcom/mgmi/ads/api/e/e;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/mgmi/ads/api/e/e;->a(Z)V

    .line 247
    iget-object p2, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz p2, :cond_28

    .line 248
    invoke-virtual {p2}, Lcom/mgtv/a/b/a/a;->s()V

    .line 249
    iput-object v8, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    .line 250
    :cond_28
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 251
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2a

    .line 252
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_29
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 253
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgmi/platform/view/a;

    if-eqz p2, :cond_29

    .line 254
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 255
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mgmi/ads/api/a/i;->c(Z)V

    .line 256
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/ads/api/a/i;->v()V

    goto :goto_a

    .line 257
    :cond_2a
    invoke-static {}, Lcom/mgmi/ads/api/e/k;->a()Lcom/mgmi/ads/api/e/k;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/k;->a(Lcom/mgmi/ads/api/h;)V

    goto/16 :goto_11

    .line 258
    :cond_2b
    sget-object v1, Lcom/mgmi/ads/api/h;->PIP_QUIT:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 259
    iput-boolean v0, p0, Lcom/mgmi/ads/api/e/a/a;->M:Z

    .line 260
    invoke-static {}, Lcom/mgmi/ads/api/e/e;->a()Lcom/mgmi/ads/api/e/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mgmi/ads/api/e/e;->a(Z)V

    .line 261
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/mgmi/ads/api/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 262
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    invoke-virtual {p1}, Lcom/mgmi/ads/api/b/a;->a()V

    .line 263
    :cond_2c
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 264
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_43

    .line 265
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2d
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 266
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/platform/view/a;

    if-eqz p1, :cond_2d

    .line 267
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 268
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/mgmi/ads/api/a/i;->c(Z)V

    .line 269
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/a/i;->B()V

    goto :goto_b

    .line 270
    :cond_2e
    sget-object v1, Lcom/mgmi/ads/api/h;->PIP_SIZE_CHANGED:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto/16 :goto_11

    .line 271
    :cond_2f
    sget-object v1, Lcom/mgmi/ads/api/h;->AD_PLAY_ERROR:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 272
    iput-boolean v2, p0, Lcom/mgmi/ads/api/e/a/a;->E:Z

    goto/16 :goto_11

    .line 273
    :cond_30
    sget-object v1, Lcom/mgmi/ads/api/h;->SHOW_TIME_ANIM_END:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto/16 :goto_11

    .line 274
    :cond_31
    sget-object v1, Lcom/mgmi/ads/api/h;->ONLAYOUT:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/high16 p1, 0x3f800000    # 1.0f

    .line 275
    iput p1, p0, Lcom/mgmi/ads/api/e/a/a;->L:F

    .line 276
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 277
    :try_start_3
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/mgmi/ads/api/e/a/a;->L:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_3
    move-exception p2

    .line 278
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    iput p1, p0, Lcom/mgmi/ads/api/e/a/a;->L:F

    goto :goto_c

    .line 280
    :cond_32
    iput p1, p0, Lcom/mgmi/ads/api/e/a/a;->L:F

    .line 281
    :goto_c
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 282
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_34

    .line 283
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_33
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 284
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgmi/platform/view/a;

    if-eqz p2, :cond_33

    .line 285
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 286
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    iget v0, p0, Lcom/mgmi/ads/api/e/a/a;->L:F

    invoke-virtual {p2, v0}, Lcom/mgmi/ads/api/a/i;->a(F)V

    goto :goto_d

    .line 287
    :cond_34
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->U()V

    goto/16 :goto_11

    .line 288
    :cond_35
    sget-object p2, Lcom/mgmi/ads/api/h;->SHOW_TIME_CLICK_FULL_SCREEN:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    goto/16 :goto_11

    .line 289
    :cond_36
    sget-object p2, Lcom/mgmi/ads/api/h;->DISPLAY_IS_INVISIBLE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 290
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 291
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->f_()V

    goto/16 :goto_11

    .line 292
    :cond_37
    sget-object p2, Lcom/mgmi/ads/api/h;->DISPLAY_IS_VISIBLE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 293
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 294
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    goto/16 :goto_11

    .line 295
    :cond_38
    sget-object p2, Lcom/mgmi/ads/api/h;->TURN_ON_AD_SOUND:Lcom/mgmi/ads/api/h;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 296
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/mgmi/f/e;->a(Z)V

    goto/16 :goto_11

    .line 297
    :cond_39
    sget-object p2, Lcom/mgmi/ads/api/h;->TURN_OFF_AD_SOUND:Lcom/mgmi/ads/api/h;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 298
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/mgmi/f/e;->a(Z)V

    goto/16 :goto_11

    .line 299
    :cond_3a
    sget-object p2, Lcom/mgmi/ads/api/h;->MEDIA_NORMAL_SIZE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 300
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->U()V

    goto/16 :goto_11

    .line 301
    :cond_3b
    sget-object p2, Lcom/mgmi/ads/api/h;->MEDIA_SMALL_SIZE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 302
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->U()V

    goto/16 :goto_11

    .line 303
    :cond_3c
    sget-object p2, Lcom/mgmi/ads/api/h;->UPDATE_VIP_TXT:Lcom/mgmi/ads/api/h;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    goto/16 :goto_11

    .line 304
    :cond_3d
    sget-object p2, Lcom/mgmi/ads/api/h;->FLOAT_MODE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 305
    invoke-direct {p0, v2}, Lcom/mgmi/ads/api/e/a/a;->b(I)V

    goto :goto_11

    .line 306
    :cond_3e
    sget-object p2, Lcom/mgmi/ads/api/h;->NORMAL_MODE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 307
    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/e/a/a;->b(I)V

    goto :goto_11

    .line 308
    :cond_3f
    :goto_e
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 309
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_43

    .line 310
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_40
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 311
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/platform/view/a;

    if-eqz p1, :cond_40

    .line 312
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    if-eqz p2, :cond_40

    .line 313
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/ads/api/a/i;->v()V

    .line 314
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/a/i;->B()V

    goto :goto_f

    .line 315
    :cond_41
    :goto_10
    iget-object p2, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p2, :cond_43

    invoke-virtual {p2}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p2

    if-eqz p2, :cond_43

    .line 316
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 317
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->f_()V

    goto :goto_11

    .line 318
    :cond_42
    sget-object p2, Lcom/mgmi/ads/api/h;->AD_ONRESUME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 319
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    :cond_43
    :goto_11
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/i;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->G:Lcom/mgmi/ads/api/i;

    return-void
.end method

.method public a(Lcom/mgmi/model/r;)V
    .locals 5

    .line 342
    invoke-virtual {p1}, Lcom/mgmi/model/r;->e()Ljava/util/List;

    move-result-object p1

    .line 343
    const-string v0, "parsePauseAd"

    const-string v1, "PatchOnlineVideoAdManager"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v0, :cond_4

    .line 345
    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 346
    invoke-virtual {v0}, Lcom/mgmi/ads/api/a;->isContentPlaying()Z

    move-result v2

    if-nez v2, :cond_5

    .line 347
    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v2

    if-nez v2, :cond_5

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    return-void

    .line 349
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v2, :cond_2

    return-void

    .line 350
    :cond_2
    new-instance v2, Lcom/mgtv/a/b/e;

    invoke-direct {v2}, Lcom/mgtv/a/b/e;-><init>()V

    iput-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    .line 351
    invoke-virtual {v2, v0}, Lcom/mgtv/a/b/a/a;->a(Lcom/mgmi/ads/api/a;)V

    .line 352
    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    iget-object v3, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v4}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mgtv/a/b/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    const/4 v2, 0x0

    .line 353
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/VASTAd;

    .line 354
    iget-object v3, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    invoke-virtual {v3, p1}, Lcom/mgtv/a/b/e;->a(Ljava/util/List;)Z

    .line 355
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz p0, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->d()V

    .line 357
    :cond_3
    const-string p0, "parsePauseAd sdd "

    invoke-static {v1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object p0, Lcom/mgmi/ads/api/a$a;->AD_PAUSED_SUCCESS:Lcom/mgmi/ads/api/a$a;

    .line 359
    new-instance p1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v1, "ADS_TYPE_PAUSED"

    invoke-direct {p1, v1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v2}, Lcom/mgmi/model/VASTAd;->getAdStyle()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setPauseType(I)V

    .line 361
    invoke-virtual {v0, p0, p1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    .line 362
    invoke-static {v2}, Lcom/mgmi/ads/api/render/b;->a(Lcom/mgmi/model/VASTAd;)V

    goto :goto_0

    .line 363
    :cond_4
    const-string p0, "parsePauseAd  isEmpty "

    invoke-static {v1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 372
    iput-boolean p1, p0, Lcom/mgmi/ads/api/e/a/a;->E:Z

    .line 373
    iget-object p2, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    const-string p3, "PatchOnlineVideoAdManager"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {p2}, Lcom/mgtv/a/b/a/a;->t()I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 374
    const-string p1, "ad play error and notiey start"

    invoke-static {p3, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->x()V

    goto :goto_0

    .line 376
    :cond_0
    iget-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->t()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_1

    .line 377
    const-string p0, "ad play error and notiey resume"

    invoke-static {p3, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a;->F:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(JLcom/mgmi/platform/view/a;)Z
    .locals 10

    .line 47
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->G:Lcom/mgmi/ads/api/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 49
    :cond_1
    invoke-static {p3}, Lcom/mgmi/ads/api/e/d;->a(Lcom/mgmi/platform/view/a;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 50
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->D()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/d;->a(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "jili_corner"

    if-nez p1, :cond_2

    .line 51
    const-string p0, "cnt\u903b\u8f91\u8fc7\u6ee4"

    invoke-static {p2, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 52
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    .line 53
    div-long/2addr v4, v6

    .line 54
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->m()J

    move-result-wide v6

    .line 55
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->C()J

    move-result-wide v8

    .line 56
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->n()Z

    move-result p1

    if-nez p1, :cond_3

    cmp-long p1, v4, v8

    if-gez p1, :cond_3

    .line 57
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->d()V

    return v1

    .line 58
    :cond_3
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->n()Z

    move-result p1

    if-nez p1, :cond_5

    cmp-long p1, v4, v6

    if-nez p1, :cond_5

    .line 59
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p1

    .line 60
    const-string v0, ","

    if-nez p1, :cond_4

    .line 61
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->q()Z

    move-result p0

    if-nez p0, :cond_10

    .line 62
    invoke-virtual {p3, v1}, Lcom/mgmi/platform/view/a;->b(Z)V

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "adsLoader == null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 64
    :cond_4
    invoke-virtual {p3, v3}, Lcom/mgmi/platform/view/a;->b(Z)V

    .line 65
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->B()V

    .line 66
    invoke-virtual {p1, v2}, Lcom/mgmi/ads/api/a/i;->a(Landroid/view/ViewGroup;)V

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u5230\u70b9\u6e32\u67d3\uff1anatureTime"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    cmp-long p0, v4, v8

    if-ltz p0, :cond_10

    cmp-long p0, v4, v6

    if-gez p0, :cond_10

    .line 68
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->n()Z

    move-result p0

    if-nez p0, :cond_10

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->q()Z

    move-result p0

    if-nez p0, :cond_10

    .line 69
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->p()Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    .line 70
    :cond_6
    invoke-virtual {p3, v1}, Lcom/mgmi/platform/view/a;->b(Z)V

    return v3

    .line 71
    :cond_7
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->t()F

    move-result v0

    float-to-long v4, v0

    const-wide/16 v6, 0xa

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    goto :goto_0

    :cond_8
    move-wide v6, v8

    .line 72
    :goto_0
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->n()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->w()Z

    move-result v0

    if-eqz v0, :cond_a

    cmp-long v0, p1, v6

    if-ltz v0, :cond_9

    cmp-long v0, p1, v4

    if-lez v0, :cond_a

    .line 73
    :cond_9
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->d()V

    return v1

    .line 74
    :cond_a
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->w()Z

    move-result v0

    if-nez v0, :cond_b

    cmp-long p0, p1, v4

    if-ltz p0, :cond_10

    .line 75
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->n()Z

    move-result p0

    if-nez p0, :cond_10

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->q()Z

    move-result p0

    if-nez p0, :cond_10

    return v3

    :cond_b
    cmp-long v0, v4, p1

    if-nez v0, :cond_e

    .line 76
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->w()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->n()Z

    move-result v0

    if-nez v0, :cond_e

    .line 77
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object p1

    if-nez p1, :cond_c

    .line 78
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->q()Z

    move-result p0

    if-nez p0, :cond_10

    .line 79
    invoke-virtual {p3, v1}, Lcom/mgmi/platform/view/a;->b(Z)V

    return v3

    .line 80
    :cond_c
    invoke-virtual {p1}, Lcom/mgmi/ads/api/a/i;->A()Z

    move-result p2

    if-nez p2, :cond_d

    .line 81
    invoke-virtual {p3, v3}, Lcom/mgmi/platform/view/a;->b(Z)V

    .line 82
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->B()V

    .line 83
    invoke-virtual {p1, v2}, Lcom/mgmi/ads/api/a/i;->a(Landroid/view/ViewGroup;)V

    :cond_d
    return v1

    :cond_e
    cmp-long p0, p1, v6

    if-ltz p0, :cond_10

    cmp-long p0, p1, v4

    if-gez p0, :cond_10

    .line 84
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->n()Z

    move-result p0

    if-nez p0, :cond_10

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->w()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->q()Z

    move-result p0

    if-nez p0, :cond_10

    .line 85
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->p()Z

    move-result p0

    if-nez p0, :cond_f

    return v1

    .line 86
    :cond_f
    invoke-virtual {p3, v1}, Lcom/mgmi/platform/view/a;->b(Z)V

    return v3

    :cond_10
    return v1
.end method

.method public b()Lcom/mgmi/ads/api/e/b;
    .locals 0

    .line 1
    return-object p0
.end method

.method public b(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/mgmi/ads/api/e/a/a;->o:Z

    iput-boolean p0, p1, Lcom/mgmi/ads/api/e/j$d;->d:Z

    .line 58
    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/i;->b(Lcom/mgmi/ads/api/e/j$d;)V

    return-void
.end method

.method public b(Lcom/mgmi/platform/view/a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->B()V

    return-void
.end method

.method public c(Lcom/mgmi/platform/view/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()Z
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/mgmi/ads/api/e/b;->c()Z

    .line 6
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mgmi/f/e;->g(Z)V

    .line 8
    sget-object v1, Lcom/mgmi/ads/api/e/a/a$a;->Running:Lcom/mgmi/ads/api/e/a/a$a;

    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->x:Lcom/mgmi/ads/api/e/a/a$a;

    .line 9
    new-instance v1, Lcom/mgmi/a/b;

    invoke-direct {v1, p0}, Lcom/mgmi/a/b;-><init>(Lcom/mgmi/a/a;)V

    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->H:Lcom/mgmi/a/b;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->I:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->J:Lcom/mgmi/model/r;

    .line 12
    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/e/a/a;->a(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->z()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/mgmi/ads/api/e/a/a;->N:J

    .line 15
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->k:Lh4d;

    invoke-virtual {v0, p0}, Lh4d;->b(Lh4d$b;)V

    .line 16
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->k:Lh4d;

    invoke-virtual {v0}, Lh4d;->d()Lh4d;

    .line 17
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->s()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public d()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/mgmi/ads/api/e/d;->d()V

    .line 2
    const-string v0, "PatchOnlineVideoAdManager"

    const-string v1, "mgmi admanager destory"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->k:Lh4d;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lh4d;->e()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/mgmi/ads/api/b/a;->e()V

    .line 7
    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    .line 10
    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/platform/view/a;

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {v2}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/ads/api/a/i;->a()V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->l:Lcom/mgmi/ads/api/a/e;

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/e;->a()V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    .line 21
    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->H:Lcom/mgmi/a/b;

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {v0}, Lcom/mgmi/a/b;->a()V

    .line 24
    :cond_7
    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->G:Lcom/mgmi/ads/api/i;

    .line 25
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->I()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/mgmi/ads/api/e/a/a;->L:F

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/mgmi/ads/api/e/a/a;->B:I

    return-void
.end method

.method public d(Lcom/mgmi/platform/view/a;)V
    .locals 2

    .line 28
    const-string v0, "PatchOnlineVideoAdManager"

    const-string v1, "gePausetAd"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/mgmi/ads/api/a/c;

    invoke-direct {v0}, Lcom/mgmi/ads/api/a/c;-><init>()V

    iget-object v1, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/a/c;->a(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/c;

    move-result-object v0

    const-string v1, "ADS_TYPE_PAUSED"

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/a/c;->b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mgmi/ads/api/a/d;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/ads/api/a/d;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->l:Lcom/mgmi/ads/api/a/e;

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Lcom/mgmi/ads/api/a/e;

    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mgmi/ads/api/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->l:Lcom/mgmi/ads/api/a/e;

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->l:Lcom/mgmi/ads/api/a/e;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/e;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->l:Lcom/mgmi/ads/api/a/e;

    new-instance v1, Lcom/mgmi/ads/api/e/a/a$5;

    invoke-direct {v1, p0}, Lcom/mgmi/ads/api/e/a/a$5;-><init>(Lcom/mgmi/ads/api/e/a/a;)V

    const-string p0, "pause"

    invoke-virtual {v0, p1, v1, p0}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/e$a;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    const-string v0, "PatchOnlineVideoAdManager"

    const-string v1, "mgmi admanager pause"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->x:Lcom/mgmi/ads/api/e/a/a$a;

    sget-object v1, Lcom/mgmi/ads/api/e/a/a$a;->Running:Lcom/mgmi/ads/api/e/a/a$a;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->k:Lh4d;

    invoke-virtual {v0}, Lh4d;->a()V

    .line 4
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/b/a;->f()V

    .line 6
    :cond_0
    sget-object v0, Lcom/mgmi/ads/api/e/a/a$a;->Paused:Lcom/mgmi/ads/api/e/a/a$a;

    iput-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->x:Lcom/mgmi/ads/api/e/a/a$a;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->f_()V

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->f_()V

    :cond_3
    return-void
.end method

.method public e(Lcom/mgmi/platform/view/a;)V
    .locals 9

    .line 11
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v0

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Lcom/mgmi/ads/api/a/i;

    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->k:Lh4d;

    iget-object v3, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/mgmi/ads/api/a/i;-><init>(Landroid/content/Context;Lh4d;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/mgmi/platform/view/a;->a(Lcom/mgmi/ads/api/a/i;)V

    :cond_1
    move-object v2, v0

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/e;->k()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/i;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 16
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

    .line 17
    iget-boolean v0, p0, Lcom/mgmi/ads/api/e/a/a;->M:Z

    invoke-virtual {v2, v0}, Lcom/mgmi/ads/api/a/i;->c(Z)V

    .line 18
    iget-object v5, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    iget-object v7, p0, Lcom/mgmi/ads/api/e/b;->a:Lcom/mgmi/g/a;

    iget-object v8, p0, Lcom/mgmi/ads/api/e/a/a;->k:Lh4d;

    move-object v4, p1

    move-object v6, p0

    invoke-virtual/range {v2 .. v8}, Lcom/mgmi/ads/api/a/i;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/platform/view/a;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;Lcom/mgmi/g/a;Lh4d;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    const-string v0, "PatchOnlineVideoAdManager"

    const-string v1, "mgmi admanager resume"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->x:Lcom/mgmi/ads/api/e/a/a$a;

    sget-object v1, Lcom/mgmi/ads/api/e/a/a$a;->Paused:Lcom/mgmi/ads/api/e/a/a$a;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->k:Lh4d;

    invoke-virtual {v0}, Lh4d;->d()Lh4d;

    .line 4
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/b/a;->h()V

    .line 6
    :cond_0
    sget-object v0, Lcom/mgmi/ads/api/e/a/a$a;->Running:Lcom/mgmi/ads/api/e/a/a$a;

    iput-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->x:Lcom/mgmi/ads/api/e/a/a$a;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->g_()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    :cond_3
    return-void
.end method

.method public g()V
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->t()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 20
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    .line 21
    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    .line 22
    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/mgmi/ads/api/a$a;->START_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    .line 24
    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v3, "PRE_VIDEO_END"

    invoke-direct {v1, v3}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object v3, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {v3}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {v3, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {v0, v2}, Lcom/mgmi/ads/api/d/b;->a(Z)V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/platform/view/a;

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 33
    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/i;->b()V

    goto :goto_0

    .line 34
    :cond_3
    iput v2, p0, Lcom/mgmi/ads/api/e/a/a;->s:I

    .line 35
    iput v2, p0, Lcom/mgmi/ads/api/e/a/a;->t:I

    .line 36
    invoke-direct {p0, v2}, Lcom/mgmi/ads/api/e/a/a;->a(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->t()Z

    goto/16 :goto_3

    .line 38
    :cond_4
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 39
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    .line 40
    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    .line 41
    sget-object v0, Lcom/mgmi/ads/api/a$a;->RESUME_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    .line 42
    iget-object v3, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v3, :cond_6

    .line 43
    invoke-virtual {v3}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 44
    iget-boolean v4, p0, Lcom/mgmi/ads/api/e/a/a;->p:Z

    if-eqz v4, :cond_5

    .line 45
    new-instance v4, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v5, "ADS_TYPE_BACK_VIDEO"

    invoke-direct {v4, v5}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    goto :goto_1

    .line 46
    :cond_5
    new-instance v4, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v5, "ADS_TYPE_VIDEO_WIDGET_MID_END"

    invoke-direct {v4, v5}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    .line 47
    :goto_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    invoke-virtual {v0, v2}, Lcom/mgmi/ads/api/d/b;->a(Z)V

    .line 48
    :cond_6
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/platform/view/a;

    if-eqz v3, :cond_7

    .line 52
    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 53
    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/ads/api/a/i;->B()V

    goto :goto_2

    .line 54
    :cond_8
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->R()V

    .line 55
    iput-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->g:Ljava/util/List;

    .line 56
    iput v2, p0, Lcom/mgmi/ads/api/e/a/a;->u:I

    .line 57
    iput v2, p0, Lcom/mgmi/ads/api/e/a/a;->v:I

    .line 58
    invoke-direct {p0, v2}, Lcom/mgmi/ads/api/e/a/a;->a(Z)V

    :cond_9
    :goto_3
    return-void
.end method

.method public h()V
    .locals 2

    .line 6
    invoke-super {p0}, Lcom/mgmi/ads/api/e/b;->h()V

    .line 7
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->x:Lcom/mgmi/ads/api/e/a/a$a;

    sget-object v1, Lcom/mgmi/ads/api/e/a/a$a;->Paused:Lcom/mgmi/ads/api/e/a/a$a;

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->k:Lh4d;

    invoke-virtual {v0}, Lh4d;->d()Lh4d;

    .line 9
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/b/a;->h()V

    .line 11
    :cond_0
    sget-object v0, Lcom/mgmi/ads/api/e/a/a$a;->Running:Lcom/mgmi/ads/api/e/a/a$a;

    iput-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->x:Lcom/mgmi/ads/api/e/a/a$a;

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    :cond_2
    return-void
.end method

.method public i()V
    .locals 1

    .line 4
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/mgtv/a/b/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 12
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/mgtv/a/b/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    const-string v0, "PatchOnlineVideoAdManager"

    const-string v1, "mgmi admanager onSyspause"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->f_()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->f_()V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    const-string v0, "PatchOnlineVideoAdManager"

    const-string v1, "mgmi admanager onSysResume"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->f:Lcom/mgtv/a/b/e;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 0

    .line 1
    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MidVideoCountDownView"

    const-string v1, "MidVideoCountDownView getValid"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/b/a;->g()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/mgmi/ads/api/e/a/a;->a(IZ)V

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

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .locals 3

    const-string v0, "PatchOnlineVideoAdManager.startPrePlay"

    const-string v1, "mgmiad"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->p()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->A()V

    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->g()Lcom/mgmi/model/VASTAd;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->f()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {v0}, Lcom/mgmi/model/r;->g()Lcom/mgmi/model/VASTAd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/model/VASTAd;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "PatchOnlineVideoAdManager.startPrePlay-nopre-end"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->t()Z

    return-void

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->M()V

    const-string p0, "PatchOnlineVideoAdManager.startPrePlay mContainer == null || mModel == null || mContainer.getViewParent() == null"

    invoke-static {v1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->i:Lcom/mgmi/ads/api/c/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/mgmi/ads/api/e/a/a;->y:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string p0, "PatchOnlineVideoAdManager"

    const-string v0, "admanager is run"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/mgmi/ads/api/e/a/a;->y:Z

    sget-object v0, Lcom/mgmi/ads/api/e/a/a$a;->Running:Lcom/mgmi/ads/api/e/a/a$a;

    iput-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->x:Lcom/mgmi/ads/api/e/a/a$a;

    invoke-direct {p0}, Lcom/mgmi/ads/api/e/a/a;->L()V

    return v1
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a;->C:Lcom/mgmi/ads/api/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->e:Lcom/mgtv/a/b/d;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public v()Z
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a;->isOpenBarrage()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public w()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ads/api/e/a/a;->z:I

    return p0
.end method

.method public x()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/e/b;->b:Lcom/mgmi/ads/api/d/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/d/b;->i()Lcom/mgmi/ads/api/a;

    move-result-object v0

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    invoke-virtual {p0}, Lcom/mgmi/model/r;->g()Lcom/mgmi/model/VASTAd;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getAdStyle()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    new-instance p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v1, "PRE_VIDEO_START"

    invoke-direct {p0, v1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_FINISH_SHOWTIME:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, v1, p0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 0

    return-void
.end method
