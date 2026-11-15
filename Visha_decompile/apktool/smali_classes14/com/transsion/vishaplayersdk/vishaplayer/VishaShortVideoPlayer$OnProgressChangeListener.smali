.class public interface abstract Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$OnProgressChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnProgressChangeListener"
.end annotation


# virtual methods
.method public abstract onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V
    .param p1    # Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0
    .param p1    # Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0
    .param p1    # Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
