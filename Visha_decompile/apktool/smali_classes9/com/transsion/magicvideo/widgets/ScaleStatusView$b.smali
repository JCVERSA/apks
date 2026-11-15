.class public Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/ScaleStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/ScaleStatusView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;->a:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;->a:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;->a:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;->a:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method
