.class public abstract Lsr8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsr8$a;
    }
.end annotation


# instance fields
.field public gravity:I

.field public highLight:Lcom/app/hubert/guide/model/HighLight;

.field public layout:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field public padding:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lsr8;->layout:I

    .line 3
    iput p2, p0, Lsr8;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lsr8;->layout:I

    .line 6
    iput p2, p0, Lsr8;->gravity:I

    .line 7
    iput p3, p0, Lsr8;->padding:I

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/ViewGroup;Landroid/view/View;)Lsr8$a;
    .locals 3

    new-instance p3, Lsr8$a;

    invoke-direct {p3}, Lsr8$a;-><init>()V

    iget-object v0, p0, Lsr8;->highLight:Lcom/app/hubert/guide/model/HighLight;

    invoke-interface {v0, p2}, Lcom/app/hubert/guide/model/HighLight;->b(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    const/16 v1, 0x30

    const/16 v2, 0x50

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lsr8;->padding:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, p3, Lsr8$a;->b:I

    iget p0, v0, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iput p0, p3, Lsr8$a;->a:I

    goto :goto_0

    :cond_1
    iput v2, p3, Lsr8$a;->e:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iget p0, p0, Lsr8;->padding:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, p3, Lsr8$a;->d:I

    iget p0, v0, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iput p0, p3, Lsr8$a;->a:I

    goto :goto_0

    :cond_2
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lsr8;->padding:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, p3, Lsr8$a;->a:I

    iget p0, v0, Landroid/graphics/RectF;->top:F

    float-to-int p0, p0

    iput p0, p3, Lsr8$a;->b:I

    goto :goto_0

    :cond_3
    iput v2, p3, Lsr8$a;->e:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    iget p0, p0, Lsr8;->padding:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, p3, Lsr8$a;->c:I

    iget p0, v0, Landroid/graphics/RectF;->top:F

    float-to-int p0, p0

    iput p0, p3, Lsr8$a;->b:I

    :goto_0
    return-object p3
.end method

.method public final getGuideLayout(Landroid/view/ViewGroup;Lcom/app/hubert/guide/core/Controller;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lsr8;->layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsr8;->onLayoutInflated(Landroid/view/View;)V

    invoke-virtual {p0, v0, p2}, Lsr8;->onLayoutInflated(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lsr8;->gravity:I

    invoke-virtual {p0, v1, p1, v0}, Lsr8;->a(ILandroid/view/ViewGroup;Landroid/view/View;)Lsr8$a;

    move-result-object v1

    invoke-virtual {v1}, Lsr8$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldq5;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, v0}, Lsr8;->offsetMargin(Lsr8$a;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget p0, v1, Lsr8$a;->e:I

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget p0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p1, v1, Lsr8$a;->a:I

    add-int/2addr p0, p1

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget p1, v1, Lsr8$a;->b:I

    add-int/2addr p0, p1

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget p0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p1, v1, Lsr8$a;->c:I

    add-int/2addr p0, p1

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p0, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p1, v1, Lsr8$a;->d:I

    add-int/2addr p0, p1

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public offsetMargin(Lsr8$a;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLayoutInflated(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public onLayoutInflated(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V
    .locals 0

    .line 2
    return-void
.end method
