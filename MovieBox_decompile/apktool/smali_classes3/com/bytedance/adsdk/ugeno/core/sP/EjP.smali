.class public Lcom/bytedance/adsdk/ugeno/core/sP/EjP;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private Dq:Z

.field private EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

.field private HiB:Lcom/bytedance/adsdk/ugeno/core/TEQ;

.field private Jcg:Landroid/content/Context;

.field private Sj:F

.field private TKC:I

.field private sP:F

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/TEQ;Z)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj:F

    .line 11
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->sP:F

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->TKC:I

    .line 13
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Jcg:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    .line 15
    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->HiB:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    .line 16
    iput-boolean p4, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Dq:Z

    .line 17
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->sP()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/TEQ;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj:F

    .line 3
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->sP:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->TKC:I

    .line 5
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Jcg:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    .line 7
    iput-boolean p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Dq:Z

    .line 8
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->sP()V

    return-void
.end method

.method private sP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "slideThreshold"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->TKC:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC()Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "slideDirection"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->vS:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj:F

    .line 2
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->sP:F

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/aa;Lcom/bytedance/adsdk/ugeno/sP/TKC;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj:F

    const/4 v3, 0x1

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->sP:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    :cond_1
    return v2

    .line 5
    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    .line 7
    iget-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Dq:Z

    if-eqz v3, :cond_3

    .line 8
    iget v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->sP:F

    sub-float v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj()V

    .line 10
    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->HiB:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    invoke-interface {p1, p3, p2, p2}, Lcom/bytedance/adsdk/ugeno/core/aa;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/aa$sP;Lcom/bytedance/adsdk/ugeno/core/aa$Sj;)V

    return v1

    .line 11
    :cond_3
    iget v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->TKC:I

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj()V

    .line 13
    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    invoke-interface {p1, p3, p2, p2}, Lcom/bytedance/adsdk/ugeno/core/aa;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/aa$sP;Lcom/bytedance/adsdk/ugeno/core/aa$Sj;)V

    return v1

    .line 14
    :cond_4
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Jcg:Landroid/content/Context;

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj:F

    sub-float/2addr v0, v4

    invoke-static {v3, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->sP(Landroid/content/Context;F)I

    move-result v0

    .line 15
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Jcg:Landroid/content/Context;

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->sP:F

    sub-float/2addr p3, v4

    invoke-static {v3, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->sP(Landroid/content/Context;F)I

    move-result p3

    .line 16
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->vS:Ljava/lang/String;

    const-string v4, "up"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    neg-int v0, p3

    goto :goto_0

    .line 17
    :cond_5
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->vS:Ljava/lang/String;

    const-string v4, "down"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 18
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->vS:Ljava/lang/String;

    const-string v4, "left"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    neg-int v0, v0

    goto :goto_0

    .line 19
    :cond_6
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->vS:Ljava/lang/String;

    const-string v4, "right"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 20
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    int-to-double v7, p3

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    double-to-int v0, v3

    goto :goto_0

    :cond_8
    move v0, p3

    .line 21
    :goto_0
    iget p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->TKC:I

    if-lt v0, p3, :cond_a

    if-eqz p1, :cond_9

    .line 22
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj()V

    .line 23
    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    invoke-interface {p1, p3, p2, p2}, Lcom/bytedance/adsdk/ugeno/core/aa;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/aa$sP;Lcom/bytedance/adsdk/ugeno/core/aa$Sj;)V

    return v1

    .line 24
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj()V

    goto :goto_1

    .line 25
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj()V

    return v2

    .line 26
    :cond_b
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->Sj:F

    .line 27
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/EjP;->sP:F

    :goto_1
    return v1
.end method
