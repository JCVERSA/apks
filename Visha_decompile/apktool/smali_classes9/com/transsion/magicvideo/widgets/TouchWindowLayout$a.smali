.class public Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;J)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->c(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->e(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;Landroid/view/MotionEvent;)V

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->b()V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->d(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    iget-object v0, v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->d(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->longPressChangeSpeed(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->d(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->f(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
