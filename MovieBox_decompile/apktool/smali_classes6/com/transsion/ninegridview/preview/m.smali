.class public final synthetic Lcom/transsion/ninegridview/preview/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

.field public final synthetic c:Lcom/transsion/ninegridview/ImageInfo;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Lcom/transsion/ninegridview/ImageInfo;Landroid/widget/ImageView;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/ninegridview/preview/m;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/ninegridview/preview/m;->b:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/ninegridview/preview/m;->c:Lcom/transsion/ninegridview/ImageInfo;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/ninegridview/preview/m;->d:Landroid/widget/ImageView;

    .line 11
    .line 12
    iput p5, p0, Lcom/transsion/ninegridview/preview/m;->e:F

    .line 13
    .line 14
    iput p6, p0, Lcom/transsion/ninegridview/preview/m;->f:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/m;->a:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/m;->b:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ninegridview/preview/m;->c:Lcom/transsion/ninegridview/ImageInfo;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/ninegridview/preview/m;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/ninegridview/preview/m;->e:F

    .line 10
    .line 11
    iget v5, p0, Lcom/transsion/ninegridview/preview/m;->f:F

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->f0(Landroid/view/View;Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Lcom/transsion/ninegridview/ImageInfo;Landroid/widget/ImageView;FFLandroid/animation/ValueAnimator;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
