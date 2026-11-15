.class public Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;
    }
.end annotation


# instance fields
.field protected a:J

.field protected b:J

.field c:Ljava/lang/Runnable;

.field private d:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

.field private e:Z

.field private f:F

.field private g:F

.field private h:I

.field private i:Lcom/mgmi/model/VASTAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->a:J

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->b:J

    new-instance p1, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$1;

    invoke-direct {p1, p0}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$1;-><init>(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;)V

    iput-object p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;)Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->d:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    return-object p0
.end method

.method private a(FFFF)Ldkd;
    .locals 8

    .line 3
    new-instance v7, Ldkd;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float v6, p0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ldkd;-><init>(FFFFFF)V

    return-object v7
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->e:Z

    return p1
.end method

.method private b(FFFF)Ldkd;
    .locals 8

    .line 2
    new-instance v7, Ldkd;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float v6, p0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ldkd;-><init>(FFFFFF)V

    return-object v7
.end method

.method public static synthetic b(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->e:Z

    return p0
.end method

.method public static synthetic c(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;)Lcom/mgmi/model/VASTAd;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->i:Lcom/mgmi/model/VASTAd;

    return-object p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->h:I

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    const/4 v5, 0x3

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    iget p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->h:I

    if-ne v3, p1, :cond_9

    iget-object p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_2
    iget v2, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->h:I

    const-string v6, "cli_1"

    if-ne v3, v2, :cond_3

    iget-object v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->e:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->d:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    if-eqz v0, :cond_9

    iput-boolean v4, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->e:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->b(FFFF)Ldkd;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->d:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    invoke-interface {v0, p0, p1, v6}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;->a(Landroid/view/View;Ldkd;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    if-ne v4, v2, :cond_4

    iget-object p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->d:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->i:Lcom/mgmi/model/VASTAd;

    invoke-interface {p1, p0, v6}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;->a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    if-ne v5, v2, :cond_7

    iget v2, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->f:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->g:F

    sub-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-wide v2, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->b:J

    long-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-wide v1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->b:J

    long-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->d:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->a(FFFF)Ldkd;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->d:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    invoke-interface {v0, p0, p1, v6}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;->a(Landroid/view/View;Ldkd;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->d:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->i:Lcom/mgmi/model/VASTAd;

    const-string v0, "scroll"

    invoke-interface {p1, p0, v0}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;->a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->d:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->a(FFFF)Ldkd;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->d:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    invoke-interface {v0, p0, p1, v6}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;->a(Landroid/view/View;Ldkd;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iput v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->f:F

    iput v1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->g:F

    iget p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->h:I

    if-ne v3, p1, :cond_9

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->e:Z

    iget-object p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->c:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->a:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_1
    return v4
.end method

.method public setClickType(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->h:I

    return-void
.end method

.method public setTouch(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->d:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    return-void
.end method
