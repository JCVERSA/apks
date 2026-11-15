.class public Lcom/mgtv/a/d/d/a;
.super Lcom/mgtv/a/d/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/d/b/b<",
        "Lcom/mgmi/model/VASTFloatAd;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mgtv/a/d/b/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/mgtv/a/d/d/a;->a:I

    iput p1, p0, Lcom/mgtv/a/d/d/a;->b:I

    return-void
.end method

.method private b(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 8

    .line 12
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->j()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 13
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 16
    invoke-direct {p0}, Lcom/mgtv/a/d/d/a;->x()I

    move-result p1

    if-gtz p1, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 19
    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 21
    iget v1, v1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    int-to-double v2, v1

    const-wide v4, 0x400228f5c28f5c29L    # 2.27

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 22
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    div-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->j()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width  adw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " w "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " width "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 26
    :cond_3
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 27
    :cond_4
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result p1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_c

    .line 28
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p1

    const v1, 0x43d08000    # 417.0f

    invoke-static {p1, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p1

    .line 30
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42900000    # 72.0f

    invoke-static {v1, v2}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1

    .line 31
    :cond_5
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p1

    const v1, 0x43848000    # 265.0f

    invoke-static {p1, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p1

    .line 32
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v1, v2}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v1

    .line 33
    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->j()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 36
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getAdWratio()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_b

    .line 37
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result v2

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_9

    .line 38
    invoke-direct {p0}, Lcom/mgtv/a/d/d/a;->x()I

    move-result v2

    if-gtz v2, :cond_7

    .line 39
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 40
    iget v2, v2, Landroid/graphics/Point;->y:I

    :cond_7
    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    int-to-double v6, v1

    mul-double/2addr v6, v4

    .line 41
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v2

    int-to-double v4, v2

    mul-double/2addr v6, v4

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v3

    :cond_8
    :goto_3
    int-to-double v2, v3

    div-double/2addr v6, v2

    double-to-int p1, v6

    goto :goto_4

    .line 42
    :cond_9
    invoke-direct {p0}, Lcom/mgtv/a/d/d/a;->x()I

    move-result v2

    if-gtz v2, :cond_a

    .line 43
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 44
    iget v2, v2, Landroid/graphics/Point;->x:I

    :cond_a
    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    int-to-double v6, v1

    mul-double/2addr v6, v4

    .line 45
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v2

    int-to-double v4, v2

    mul-double/2addr v6, v4

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v3

    goto :goto_3

    .line 46
    :cond_b
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    invoke-static {v1, v3}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v1

    .line 47
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    invoke-static {v3, p1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p1

    .line 48
    :goto_4
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->j()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    :goto_5
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/d/d/a;->c()V

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/a/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    invoke-virtual {p1, v0}, Lcom/mgtv/a/d/b/a;->a(Lcom/mgtv/a/d/b/d;)V

    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/d/a;->a(Lcom/mgmi/model/VASTFloatAd;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {v1}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object p0

    invoke-static {v0, p0, p1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private w()Z
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private x()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private y()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private z()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    instance-of v0, p0, Lcom/mgtv/a/d/d/a/a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/a/d/d/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/d/a/a;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)I
    .locals 6

    .line 79
    invoke-direct {p0}, Lcom/mgtv/a/d/d/a;->x()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 80
    iget-object v2, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz v2, :cond_0

    .line 81
    invoke-interface {v2}, Lcom/mgtv/a/d/b/d;->b()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 82
    invoke-static {p1}, Lmpd;->g(Landroid/content/Context;)I

    move-result p1

    add-int/lit16 v3, p1, 0x12c

    if-le v0, v3, :cond_2

    :goto_1
    move v0, p1

    goto :goto_2

    .line 83
    :cond_1
    invoke-static {p1}, Lmpd;->a(Landroid/content/Context;)I

    move-result p1

    if-le v0, p1, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    :goto_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get vv (viewContainerW , videoWidth) = ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ) sc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sland = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-le v0, v2, :cond_3

    sub-int/2addr v0, v2

    .line 85
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mgtv/a/d/d/a;->a:I

    return v0

    :cond_3
    return v1

    .line 86
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get vv Point sland = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 87
    invoke-static {p1}, Lmpd;->g(Landroid/content/Context;)I

    move-result p1

    goto :goto_3

    .line 88
    :cond_5
    invoke-static {p1}, Lmpd;->a(Landroid/content/Context;)I

    move-result p1

    :goto_3
    if-nez p1, :cond_6

    return v1

    .line 89
    :cond_6
    iget-object p2, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz p2, :cond_7

    .line 90
    invoke-interface {p2}, Lcom/mgtv/a/d/b/d;->b()I

    move-result p2

    goto :goto_4

    :cond_7
    move p2, p1

    :goto_4
    if-le p1, p2, :cond_8

    sub-int/2addr p1, p2

    .line 91
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/mgtv/a/d/d/a;->a:I

    return p1

    :cond_8
    return v1
.end method

.method public a(Lcom/mgmi/model/VASTFloatAd;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 13

    .line 6
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    .line 7
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/mgtv/a/d/d/a;->a(Landroid/content/Context;Z)I

    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mgtv/a/d/d/a;->d(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    :cond_1
    move v0, v1

    move v3, v0

    .line 11
    :goto_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v6

    const/high16 v7, 0x41f00000    # 30.0f

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result p1

    const/16 v1, 0x53

    .line 14
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x425c0000    # 55.0f

    const/high16 v2, 0x42200000    # 40.0f

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p1

    const/high16 v5, 0x43840000    # 264.0f

    invoke-static {p1, v5}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 16
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 17
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr p0, v3

    iput p0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_7

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x43240000    # 164.0f

    invoke-static {p1, v0}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 19
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 20
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v7}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 21
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_7

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v3

    const/4 v6, 0x7

    const/16 v9, 0x51

    if-ne v3, v6, :cond_4

    .line 23
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 24
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p0

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p0, p1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_7

    .line 25
    :cond_4
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_8

    .line 26
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result p1

    const-wide v1, 0x3fc5c28f5c28f5c3L    # 0.17

    if-eqz p1, :cond_6

    .line 27
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/mgtv/a/d/b/d;->b()I

    move-result p1

    if-lez p1, :cond_5

    .line 28
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    invoke-interface {p0}, Lcom/mgtv/a/d/b/d;->b()I

    move-result p0

    int-to-double v5, p0

    mul-double/2addr v5, v1

    double-to-int p1, v5

    .line 29
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 30
    iput p0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    .line 31
    :cond_5
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lmpd;->g(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    int-to-double v5, p0

    mul-double/2addr v5, v1

    double-to-int p1, v5

    .line 32
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 33
    iput p0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    .line 34
    :cond_6
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/mgtv/a/d/b/d;->b()I

    move-result p1

    if-lez p1, :cond_7

    .line 35
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    invoke-interface {p0}, Lcom/mgtv/a/d/b/d;->b()I

    move-result p0

    int-to-double v5, p0

    mul-double/2addr v5, v1

    double-to-int p1, v5

    .line 36
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 37
    iput p0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    .line 38
    :cond_7
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lmpd;->i(Landroid/content/Context;)I

    move-result p0

    int-to-double v5, p0

    mul-double/2addr v5, v1

    double-to-int p1, v5

    .line 39
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 40
    iput p0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 41
    :goto_1
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_7

    .line 42
    :cond_8
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v3

    const/16 v6, 0xb

    if-ne v3, v6, :cond_9

    .line 43
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v7}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 44
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 45
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 46
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_7

    .line 47
    :cond_9
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_a

    goto/16 :goto_7

    .line 48
    :cond_a
    iget-object v2, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    const-string v3, " ) adsl == null"

    const-string v5, " , "

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/mgtv/a/d/b/d;->b()I

    move-result v2

    if-lez v2, :cond_e

    .line 49
    iget-object v2, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    invoke-interface {v2}, Lcom/mgtv/a/d/b/d;->b()I

    move-result v2

    .line 50
    iget-object v6, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    invoke-interface {v6}, Lcom/mgtv/a/d/b/d;->a()I

    move-result v6

    .line 51
    invoke-direct {p0}, Lcom/mgtv/a/d/d/a;->x()I

    move-result v7

    .line 52
    invoke-direct {p0}, Lcom/mgtv/a/d/d/a;->y()I

    move-result v9

    if-eqz v6, :cond_b

    if-eqz v2, :cond_b

    if-gt v6, v9, :cond_b

    if-le v2, v7, :cond_c

    :cond_b
    move v2, v7

    move v6, v9

    :cond_c
    sub-int/2addr v9, v6

    .line 53
    div-int/lit8 v9, v9, 0x2

    if-gez v9, :cond_d

    goto :goto_2

    :cond_d
    move v1, v9

    .line 54
    :goto_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get v1 (width , height) = ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " )"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 55
    :cond_e
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result v2

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x41800000    # 16.0f

    if-eqz v2, :cond_f

    .line 56
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 57
    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v9, v2

    mul-float/2addr v9, v7

    div-float/2addr v9, v6

    float-to-int v6, v9

    move v12, v6

    move v6, v2

    move v2, v12

    goto :goto_3

    .line 58
    :cond_f
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 59
    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v9, v2

    mul-float/2addr v9, v6

    div-float/2addr v9, v7

    float-to-int v6, v9

    .line 60
    :goto_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get v2 (width , height) = ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    :goto_4
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getRight()F

    move-result v7

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v7, v7, v9

    const/high16 v10, 0x42c80000    # 100.0f

    if-eqz v7, :cond_10

    const/4 v7, 0x5

    .line 62
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getRight()F

    move-result v7

    int-to-float v2, v2

    mul-float/2addr v7, v2

    div-float/2addr v7, v10

    float-to-int v2, v7

    add-int v7, v2, v0

    .line 64
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 65
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get v3 (tempRight , offsetx) = ( "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 66
    :cond_10
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getLeft()F

    move-result v3

    int-to-float v2, v2

    mul-float/2addr v3, v2

    div-float/2addr v3, v10

    float-to-int v2, v3

    add-int/2addr v2, v0

    .line 68
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 69
    :goto_5
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getTop()F

    move-result v0

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_11

    .line 70
    iget v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v0, v0, 0x30

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 71
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getTop()F

    move-result v0

    int-to-float v2, v6

    mul-float/2addr v0, v2

    div-float/2addr v0, v10

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 72
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6

    .line 73
    :cond_11
    iget v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 74
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getBottom()F

    move-result v0

    int-to-float v2, v6

    mul-float/2addr v0, v2

    div-float/2addr v0, v10

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 75
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 76
    :goto_6
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 77
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p1, :cond_12

    .line 78
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/mgtv/a/d/b/a;->a(Ljava/lang/String;)V

    :cond_12
    :goto_7
    return-object v4
.end method

.method public a()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->a()V

    .line 93
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/d/a;->e(Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/mgtv/a/d/b/a;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->b()V

    .line 52
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 2
    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-direct {p0, v0}, Lcom/mgtv/a/d/d/a;->b(Lcom/mgmi/model/VASTFloatAd;)V

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->j()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    const p1, 0x19258

    .line 5
    const-string v0, "corner key is empty"

    const-string v1, ""

    invoke-interface {p0, v1, p1, v0}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {v1}, Lcom/mgtv/a/d/b/a;->j()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v2, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mgtv/a/d/b/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mgmi/model/VASTAd;)Lcom/mgtv/a/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    invoke-interface {p1, v0}, Lcom/mgtv/a/c/c;->a(Lcom/mgtv/a/c/e;)V

    .line 10
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/d/a;->h()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1}, Lcom/mgtv/a/c/a;->a(ZZI)V

    .line 11
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast p0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mgtv/a/c/a;->a(I)V

    :cond_3
    return-void
.end method

.method public c()V
    .locals 1

    .line 4
    new-instance v0, Lcom/mgtv/a/d/d/a/a;

    invoke-direct {v0}, Lcom/mgtv/a/d/d/a/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/d/a;->a(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/d/a;->b(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0}, Lcom/mgtv/a/d/d/a;->w()Z

    move-result p0

    return p0
.end method

.method public d(Landroid/content/Context;)I
    .locals 4

    .line 10
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result v0

    .line 11
    invoke-direct {p0}, Lcom/mgtv/a/d/d/a;->y()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Lcom/mgtv/a/d/b/d;->a()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Lcom/mgmi/platform/e;->e()I

    move-result v0

    add-int/lit16 v3, v0, 0x12c

    if-le v1, v3, :cond_1

    move v1, v0

    :cond_1
    if-le v1, p1, :cond_2

    sub-int/2addr v1, p1

    .line 15
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mgtv/a/d/d/a;->b:I

    return v1

    :cond_2
    return v2

    :cond_3
    if-eqz v0, :cond_4

    .line 16
    invoke-static {p1}, Lmpd;->i(Landroid/content/Context;)I

    move-result p1

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_1
    if-nez p1, :cond_5

    return v2

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz v0, :cond_6

    .line 18
    invoke-interface {v0}, Lcom/mgtv/a/d/b/d;->a()I

    move-result v0

    goto :goto_2

    :cond_6
    move v0, p1

    :goto_2
    if-le p1, v0, :cond_7

    sub-int/2addr p1, v0

    .line 19
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/mgtv/a/d/d/a;->b:I

    return p1

    :cond_7
    return v2
.end method

.method public d()V
    .locals 2

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->j:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {p0, v0}, Lcom/mgtv/a/d/d/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 23
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getVoteMessage()Lcom/mgmi/model/t;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgmi/model/t;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 25
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    invoke-virtual {v0}, Lcom/mgmi/model/t;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mgtv/a/c/c;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mgtv/a/c/c;->a(Ljava/lang/String;)Z

    .line 28
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/mgtv/a/d/d/a;->z()V

    .line 29
    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/b;->d(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 3
    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    .line 4
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    .line 5
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/a/d/d/a;->d()V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {p1}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {p1}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, v0}, Lcom/mgtv/a/d/d/a;->a(Lcom/mgmi/model/VASTFloatAd;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-direct {p0, p1}, Lcom/mgtv/a/d/d/a;->b(Lcom/mgmi/model/VASTFloatAd;)V

    return-void
.end method

.method public h()Z
    .locals 5

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/16 v4, 0x14

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast p0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
