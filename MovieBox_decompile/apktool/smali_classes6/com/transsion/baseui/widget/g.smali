.class public final synthetic Lcom/transsion/baseui/widget/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Lcom/transsion/baseui/widget/NewcomerGuideView;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable;IILandroid/view/ViewGroup$LayoutParams;IIIILcom/transsion/baseui/widget/NewcomerGuideView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/baseui/widget/g;->a:Landroid/graphics/drawable/GradientDrawable;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/baseui/widget/g;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/baseui/widget/g;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/baseui/widget/g;->d:Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    iput p5, p0, Lcom/transsion/baseui/widget/g;->e:I

    .line 13
    .line 14
    iput p6, p0, Lcom/transsion/baseui/widget/g;->f:I

    .line 15
    .line 16
    iput p7, p0, Lcom/transsion/baseui/widget/g;->g:I

    .line 17
    .line 18
    iput p8, p0, Lcom/transsion/baseui/widget/g;->h:I

    .line 19
    .line 20
    iput-object p9, p0, Lcom/transsion/baseui/widget/g;->i:Lcom/transsion/baseui/widget/NewcomerGuideView;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/g;->a:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/baseui/widget/g;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/baseui/widget/g;->c:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/baseui/widget/g;->d:Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/baseui/widget/g;->e:I

    .line 10
    .line 11
    iget v5, p0, Lcom/transsion/baseui/widget/g;->f:I

    .line 12
    .line 13
    iget v6, p0, Lcom/transsion/baseui/widget/g;->g:I

    .line 14
    .line 15
    iget v7, p0, Lcom/transsion/baseui/widget/g;->h:I

    .line 16
    .line 17
    iget-object v8, p0, Lcom/transsion/baseui/widget/g;->i:Lcom/transsion/baseui/widget/NewcomerGuideView;

    .line 18
    .line 19
    move-object v9, p1

    .line 20
    invoke-static/range {v0 .. v9}, Lcom/transsion/baseui/widget/NewcomerGuideView;->h(Landroid/graphics/drawable/GradientDrawable;IILandroid/view/ViewGroup$LayoutParams;IIIILcom/transsion/baseui/widget/NewcomerGuideView;Landroid/animation/ValueAnimator;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
