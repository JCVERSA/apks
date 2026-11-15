.class public Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;->a:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;->a:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;->a:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;->a:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->onScreenScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;->a:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;->a:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;->a:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->onScreenScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;->a:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;->a:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    iget-object v0, v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    invoke-interface {v0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;->a:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->onScreenEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method
