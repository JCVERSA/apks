.class Lcom/transsion/publish/view/ZoomImageView$a;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/ZoomImageView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/ZoomImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$a;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$a;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/publish/view/ZoomImageView;->scale(Landroid/view/ScaleGestureDetector;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$a;->a:Lcom/transsion/publish/view/ZoomImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/publish/view/ZoomImageView;->scaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
