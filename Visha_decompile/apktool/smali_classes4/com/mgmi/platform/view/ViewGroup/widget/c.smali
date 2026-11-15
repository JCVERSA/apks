.class public Lcom/mgmi/platform/view/ViewGroup/widget/c;
.super Lcom/mgmi/platform/view/ViewGroup/widget/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/platform/view/ViewGroup/widget/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgmi/platform/view/ViewGroup/widget/b<",
        "Lcom/mgmi/platform/view/ViewGroup/widget/d;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:F

.field c:F

.field d:F

.field e:Z

.field private f:Lcom/mgmi/ads/api/c/a;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/hardware/SensorManager;

.field private p:Lcom/mgmi/platform/view/ViewGroup/widget/c$a;

.field private q:Landroid/hardware/Sensor;

.field private r:Z

.field private s:Z


# direct methods
.method private a(Landroid/content/Context;)F
    .locals 1

    .line 35
    invoke-static {p1}, Lmpd;->a(Landroid/content/Context;)I

    move-result p0

    .line 36
    invoke-static {p1}, Lmpd;->n(Landroid/content/Context;)I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-le p0, p1, :cond_0

    int-to-float p1, p1

    mul-float/2addr p1, v0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1

    :cond_0
    int-to-float p0, p0

    mul-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static synthetic a(Lcom/mgmi/platform/view/ViewGroup/widget/c;Ldkd;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a(Ldkd;Landroid/view/View;)V

    return-void
.end method

.method private a(Ldkd;Landroid/view/View;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->o:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lm5d;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->o:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2}, Lcom/mgmi/model/VASTAd;->getVastAid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->o:Lcom/mgmi/model/VASTAd;

    invoke-direct {v0, v1, v2, v3}, Lm5d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/model/VASTAd;)V

    .line 16
    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->f:Lcom/mgmi/ads/api/c/a;

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->o:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    invoke-virtual {v0, p2, v1, p1, p0}, Lm5d;->c(Landroid/view/View;Lcom/mgmi/ads/api/c/a;Ldkd;Lcom/mgmi/model/VASTStaticResource;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/mgmi/platform/view/ViewGroup/widget/c;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->r:Z

    return p0
.end method

.method public static synthetic a(Lcom/mgmi/platform/view/ViewGroup/widget/c;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->r:Z

    return p1
.end method

.method private b(Landroid/content/Context;)F
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->w()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->x()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method public static synthetic b(Lcom/mgmi/platform/view/ViewGroup/widget/c;)Lcom/mgmi/ads/api/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->f:Lcom/mgmi/ads/api/c/a;

    return-object p0
.end method

.method private w()I
    .locals 2

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgmi/f/f;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/mgmi/f/f;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->f:Lcom/mgmi/ads/api/c/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgmi/ads/api/c/a;->a()Lcom/mgmi/ads/api/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->f:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/c/a;->a()Lcom/mgmi/ads/api/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/i;->b()I

    move-result v0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->f:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/c/a;->a()Lcom/mgmi/ads/api/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/i;->c()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private x()I
    .locals 2

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgmi/f/f;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/mgmi/f/f;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->f:Lcom/mgmi/ads/api/c/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgmi/ads/api/c/a;->a()Lcom/mgmi/ads/api/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->f:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/c/a;->a()Lcom/mgmi/ads/api/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/i;->b()I

    move-result v0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->f:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/c/a;->a()Lcom/mgmi/ads/api/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/i;->c()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private y()V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->h:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->p:Lcom/mgmi/platform/view/ViewGroup/widget/c$a;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->q:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->q:Landroid/hardware/Sensor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/mgmi/platform/view/ViewGroup/widget/d;)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->g:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->g:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/i;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->setClickType(I)V

    .line 9
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->g:Landroid/widget/ImageView;

    check-cast v0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;

    new-instance v1, Lcom/mgmi/platform/view/ViewGroup/widget/c$1;

    invoke-direct {v1, p0}, Lcom/mgmi/platform/view/ViewGroup/widget/c$1;-><init>(Lcom/mgmi/platform/view/ViewGroup/widget/c;)V

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->setTouch(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/g;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->g:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->g:Landroid/widget/ImageView;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/mgmi/platform/view/ViewGroup/widget/g;)Landroid/view/View;
    .locals 0

    .line 1
    check-cast p1, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {p0, p1}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a(Lcom/mgmi/platform/view/ViewGroup/widget/d;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 5

    .line 17
    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a()V

    .line 18
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    check-cast v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/g;->d()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 20
    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->i:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->w()I

    move-result v1

    .line 22
    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->x()I

    move-result v2

    .line 23
    iget-object v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->i:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 24
    iget-object v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->i:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 25
    iget-object v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    check-cast v4, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgmi/model/i;->j()I

    move-result v4

    int-to-float v4, v4

    int-to-float v1, v1

    mul-float/2addr v4, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 26
    iget-object v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    check-cast v3, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v3}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/model/i;->k()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    float-to-int v1, v4

    .line 27
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    float-to-int v1, v3

    .line 28
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 29
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->b(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 30
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->b(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x33

    .line 31
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->n()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;ILcom/mgmi/model/VASTAd;)V
    .locals 4

    .line 37
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p3}, Lcom/mgmi/model/VASTAd;->getTraceCheck()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 39
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 40
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    const-string v2, "[EV_KEY]"

    const-string v3, "interact_ad"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v2, "[EV_V1]"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    if-eqz v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    check-cast v3, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v3}, Lcom/mgmi/platform/view/ViewGroup/widget/g;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[EV_V2]"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_0
    const-string v2, "[EV_V4]"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 5

    .line 3
    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->b()V

    .line 4
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    check-cast v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/g;->d()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/mgmi/f/f;->a(Landroid/content/Context;)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/mgmi/f/f;->b(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_2

    move v1, v2

    :cond_2
    mul-int/lit8 v2, v1, 0x9

    .line 8
    div-int/lit8 v2, v2, 0x10

    .line 9
    iget-object v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    check-cast v3, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v3}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/model/i;->j()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v3, v1

    .line 10
    iget-object v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    check-cast v4, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgmi/model/i;->k()I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    mul-float/2addr v4, v2

    div-float/2addr v4, v1

    float-to-int v1, v3

    .line 11
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    float-to-int v1, v4

    .line 12
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 13
    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    check-cast v2, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v2}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/i;->g()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 14
    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    check-cast v2, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v2}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/i;->f()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 15
    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->n()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->s:Z

    return-void
.end method

.method public c()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->d()V

    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->y()V

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->o()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a(Z)V

    return-void
.end method

.method public declared-synchronized h()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->o:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    check-cast v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->o:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getInteractItemInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/i;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/model/i;->i()I

    move-result v3

    invoke-virtual {v2}, Lcom/mgmi/model/i;->h()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string v3, "interact"

    invoke-virtual {v2}, Lcom/mgmi/model/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "file/h5_zip"

    invoke-virtual {v2}, Lcom/mgmi/model/i;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "int_tmpl"

    invoke-virtual {v2}, Lcom/mgmi/model/i;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->s:Z

    :cond_2
    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public j()V
    .locals 1

    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->r:Z

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->e()V

    return-void
.end method

.method public k()V
    .locals 1

    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->r:Z

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->n()V

    return-void
.end method

.method public o()V
    .locals 1

    new-instance v0, Lcom/mgmi/platform/view/ViewGroup/widget/c$2;

    invoke-direct {v0, p0}, Lcom/mgmi/platform/view/ViewGroup/widget/c$2;-><init>(Lcom/mgmi/platform/view/ViewGroup/widget/c;)V

    invoke-static {v0}, Lj4d;->b(Ljava/lang/Runnable;)Z

    return-void
.end method
