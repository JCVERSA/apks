.class public interface abstract Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MODE_DRAGING:I = 0x2

.field public static final MODE_DRAGING_2:I = 0x3

.field public static final MODE_OUT:I = -0x1

.field public static final MODE_SCALEING:I = 0x1


# virtual methods
.method public abstract controlVideoRect([F)V
.end method

.method public abstract getScaleMode()I
.end method

.method public abstract hideScaleStateView()V
.end method

.method public abstract isInScaleMode()Z
.end method

.method public abstract isTouchDrag(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isValueRestored()Z
.end method

.method public abstract onDragStatusChange(Z)V
.end method

.method public abstract onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onPointerCount(I)V
.end method

.method public abstract onRestoreClick()Z
.end method

.method public abstract onScale(Landroid/view/ScaleGestureDetector;)Z
.end method

.method public abstract onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
.end method

.method public abstract onScaleEnd(Landroid/view/ScaleGestureDetector;)V
.end method

.method public abstract onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
