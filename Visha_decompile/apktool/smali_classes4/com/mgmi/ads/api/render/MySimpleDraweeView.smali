.class public Lcom/mgmi/ads/api/render/MySimpleDraweeView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/render/MySimpleDraweeView$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Lcom/mgmi/ads/api/render/MySimpleDraweeView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(FFFF)V
    .locals 8

    iget-object v0, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->e:Lcom/mgmi/ads/api/render/MySimpleDraweeView$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v7, v1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/mgmi/ads/api/render/MySimpleDraweeView$a;->a(Landroid/view/View;FFFFFF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->d:F

    iget v0, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->b:F

    iget v2, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->a:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->d:F

    iget v3, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->c:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->b:F

    iget v4, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->d:F

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->a(FFFF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->b:F

    iput v0, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->a:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->d:F

    iput v0, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->c:F

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->e:Lcom/mgmi/ads/api/render/MySimpleDraweeView$a;

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setTapclickListener(Lcom/mgmi/ads/api/render/MySimpleDraweeView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->e:Lcom/mgmi/ads/api/render/MySimpleDraweeView$a;

    return-void
.end method
