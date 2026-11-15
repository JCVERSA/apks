.class public Lcom/mgmi/ads/api/a/i;
.super Lcom/mgmi/ads/api/a/e;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/a/b/a/b;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Z

.field private u:Lcom/mgtv/a/b/c;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTFloatAd;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lh4d;

.field private x:Lcom/mgmi/ads/api/c/a;

.field private y:Lcom/mgtv/a/b/c$a;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh4d;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/e;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/mgmi/ads/api/a/i;->B:I

    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/i;->C:Z

    iput-object p2, p0, Lcom/mgmi/ads/api/a/i;->w:Lh4d;

    iput-object p3, p0, Lcom/mgmi/ads/api/a/i;->x:Lcom/mgmi/ads/api/c/a;

    iput-object p4, p0, Lcom/mgmi/ads/api/a/i;->y:Lcom/mgtv/a/b/c$a;

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/a/i;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/ads/api/a/i;->v:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/a/i;Lcom/mgmi/platform/view/a;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;Lcom/mgmi/g/a;Lh4d;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/mgmi/ads/api/a/i;->a(Lcom/mgmi/platform/view/a;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;Lcom/mgmi/g/a;Lh4d;)V

    return-void
.end method

.method private a(Lcom/mgmi/platform/view/a;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;Lcom/mgmi/g/a;Lh4d;)V
    .locals 6

    .line 25
    iget-object p3, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    .line 26
    const-string p5, "parseCorner"

    const-string v0, "cornneradsloader"

    invoke-static {v0, p5}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p5, p0, Lcom/mgmi/ads/api/a/i;->v:Ljava/util/List;

    if-eqz p5, :cond_c

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_c

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 28
    :cond_0
    iget-object p5, p0, Lcom/mgmi/ads/api/a/i;->v:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/mgmi/model/VASTFloatAd;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v2, p0, Lcom/mgmi/ads/api/a/i;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/model/VASTFloatAd;

    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {p0, v3}, Lcom/mgmi/ads/api/a/i;->a(Lcom/mgmi/model/VASTFloatAd;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {v3}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 34
    new-instance v2, Lcom/mgmi/ads/api/a/j;

    invoke-direct {v2}, Lcom/mgmi/ads/api/a/j;-><init>()V

    .line 35
    :try_start_0
    invoke-virtual {v2, p3, v1}, Lcom/mgmi/ads/api/a/j;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :catchall_0
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseCorner\uff1a"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    if-nez p1, :cond_4

    move-object v2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "jili_corner"

    invoke-static {v2, p3}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p5}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result p3

    const/16 v3, 0x9

    if-ne p3, v3, :cond_5

    goto/16 :goto_2

    .line 38
    :cond_5
    const-string p3, "start parseCorner"

    invoke-static {v0, p3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/mgmi/ads/api/a/i;->a(Landroid/view/ViewGroup;Lcom/mgmi/ads/api/a;)Z

    move-result p3

    .line 40
    invoke-virtual {p5, p1}, Lcom/mgmi/model/VASTFloatAd;->setEntry(Lcom/mgmi/platform/view/a;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEntry:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/mgmi/ads/api/e/d;->a(Lcom/mgmi/platform/view/a;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_c

    .line 43
    iget-object p3, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-nez p3, :cond_8

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_9

    .line 44
    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    .line 45
    :cond_9
    iget-object p3, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    invoke-virtual {p3, p1}, Lcom/mgtv/a/b/c;->a(Lcom/mgmi/platform/view/a;)V

    .line 46
    iget-object p3, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    invoke-virtual {p3, p4}, Lcom/mgtv/a/b/c;->a(Lcom/mgmi/g/a;)V

    .line 47
    iget-object p3, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    invoke-virtual {p3, p5}, Lcom/mgtv/a/b/c;->a(Lcom/mgmi/model/VASTFloatAd;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 48
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->w()Z

    move-result p3

    if-nez p3, :cond_b

    .line 49
    iget-object p2, p0, Lcom/mgmi/ads/api/a/i;->y:Lcom/mgtv/a/b/c$a;

    if-eqz p2, :cond_a

    .line 50
    invoke-interface {p2, p1}, Lcom/mgtv/a/b/c$a;->b(Lcom/mgmi/platform/view/a;)V

    .line 51
    :cond_a
    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_c

    .line 52
    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->d()V

    goto :goto_2

    .line 53
    :cond_b
    invoke-virtual {p5}, Lcom/mgmi/model/VASTFloatAd;->isPlayerUse()Z

    move-result p3

    if-nez p3, :cond_c

    .line 54
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->t()F

    move-result v3

    invoke-virtual {p5}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v4

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object v5

    const/4 v1, 0x1

    const-string v2, "ADS_VIDEO_WIDGET_CORNNER"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mgmi/ads/api/a/i;->a(ZLjava/lang/String;FILcom/mgmi/ads/api/a;)V

    :cond_c
    :goto_2
    return-void
.end method

.method private a(ZLjava/lang/String;FILcom/mgmi/ads/api/a;)V
    .locals 0

    if-eqz p5, :cond_1

    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    new-instance p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-direct {p0, p2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p3}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setTriggeringTime(F)V

    .line 86
    invoke-virtual {p0, p4}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setDuration(I)V

    .line 87
    sget-object p1, Lcom/mgmi/ads/api/a$a;->AD_HAS_ADS:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p5, p1, p0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    goto :goto_0

    .line 88
    :cond_0
    sget-object p0, Lcom/mgmi/ads/api/a$a;->AD_NO_ADS:Lcom/mgmi/ads/api/a$a;

    new-instance p1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-direct {p1, p2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p0, p1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/mgmi/ads/api/a;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lcom/mgtv/a/b/c;

    invoke-direct {v0}, Lcom/mgtv/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    .line 91
    invoke-virtual {v0, p0}, Lcom/mgtv/a/b/a/a;->a(Lcom/mgtv/a/b/a/b;)V

    if-eqz p2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    invoke-virtual {v0, p2}, Lcom/mgtv/a/b/a/a;->a(Lcom/mgmi/ads/api/a;)V

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/mgtv/a/b/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    .line 94
    :cond_1
    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public B()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/b/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->g_()V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/b/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->g_()V

    :cond_0
    return-void
.end method

.method public D()Z
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mgmi/ads/api/a/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->t()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x1ae1e

    if-ne v0, v1, :cond_0

    .line 11
    new-instance v0, Lcom/mgmi/model/n;

    invoke-direct {v0}, Lcom/mgmi/model/n;-><init>()V

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(Lcom/mgmi/g/a;)Lcom/mgmi/model/n;

    move-result-object v0

    .line 12
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p2}, Lcom/mgmi/model/n;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/model/n;

    move-result-object p2

    .line 14
    invoke-virtual {p2, v2}, Lcom/mgmi/model/n;->c(I)Lcom/mgmi/model/n;

    move-result-object p2

    const/16 v0, 0x1126

    invoke-virtual {p2, v0}, Lcom/mgmi/model/n;->a(I)Lcom/mgmi/model/n;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/mgmi/model/n;->b(I)Lcom/mgmi/model/n;

    move-result-object p2

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/mgmi/model/n;->a(Ljava/lang/String;)Lcom/mgmi/model/n;

    move-result-object p0

    .line 15
    invoke-static {p1, p0}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/model/n;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 16
    :cond_0
    new-instance v0, Lcom/mgmi/model/n;

    invoke-direct {v0}, Lcom/mgmi/model/n;-><init>()V

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(Lcom/mgmi/g/a;)Lcom/mgmi/model/n;

    move-result-object v0

    .line 17
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/g/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->b(I)Lcom/mgmi/model/n;

    move-result-object v0

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/g/a;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(I)Lcom/mgmi/model/n;

    move-result-object v0

    .line 18
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mgmi/model/n;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/model/n;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/mgmi/model/n;->c(I)Lcom/mgmi/model/n;

    move-result-object p2

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/mgmi/model/n;->a(Ljava/lang/String;)Lcom/mgmi/model/n;

    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/mgmi/ads/api/a/i;->A:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/mgmi/model/n;->b(Ljava/lang/String;)V

    .line 20
    iget p0, p0, Lcom/mgmi/ads/api/a/i;->B:I

    invoke-virtual {p2, p0}, Lcom/mgmi/model/n;->d(I)V

    .line 21
    invoke-static {p1, p2}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/model/n;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->a()V

    .line 82
    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->s()V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->p()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/mgmi/ads/api/a;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    const-string p1, "2"

    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/b/c;->a(J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/mgmi/ads/api/a/e;->a(Landroid/view/ViewGroup;)V

    .line 56
    iget-object p1, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgmi/ads/api/a/i;->v:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    iget-object v0, p0, Lcom/mgmi/ads/api/a/i;->v:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p1, v0}, Lcom/mgtv/a/b/c;->a(Lcom/mgmi/model/VASTFloatAd;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->d()V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a/d;)V
    .locals 1

    .line 5
    iget-boolean p0, p0, Lcom/mgmi/ads/api/a/i;->z:Z

    if-eqz p0, :cond_0

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/app/live/float"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/g/a;->t()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/app/live"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/app/player"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/platform/view/a;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;Lcom/mgmi/g/a;Lh4d;)V
    .locals 8

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAds\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jili_corner"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    :cond_1
    if-eqz p1, :cond_4

    .line 64
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/mgmi/ads/api/a/i;->v:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 66
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    :cond_2
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/view/a;->b()Lcom/mgmi/model/VASTFloatAd;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/e;->c(Lcom/mgmi/ads/api/a/d;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/a/i;->v:Ljava/util/List;

    .line 70
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->b()Lcom/mgmi/model/VASTFloatAd;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/mgmi/ads/api/a/i;->a(Lcom/mgmi/platform/view/a;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;Lcom/mgmi/g/a;Lh4d;)V

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->d()V

    goto :goto_1

    .line 73
    :cond_4
    new-instance v0, Lcom/mgmi/ads/api/a/i$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/mgmi/ads/api/a/i$1;-><init>(Lcom/mgmi/ads/api/a/i;Lcom/mgmi/platform/view/a;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;Lcom/mgmi/g/a;Lh4d;)V

    const-string p2, "coner"

    invoke-virtual {p0, p1, v0, p2}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/e$a;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTFloatAd;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    .line 23
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public b()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->g_()V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/b/c;->a(J)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/i;->z:Z

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/i;->C:Z

    .line 3
    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/a/a;->c(Z)V

    :cond_0
    return-void
.end method

.method public n()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public o()V
    .locals 0

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
    .locals 0

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->f_()V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->f_()V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->f_()V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/c;->f_()V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    const-string v0, "2"

    invoke-virtual {p0, v0}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 1

    iget-object p0, p0, Lcom/mgmi/ads/api/a/i;->u:Lcom/mgtv/a/b/c;

    if-eqz p0, :cond_0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
