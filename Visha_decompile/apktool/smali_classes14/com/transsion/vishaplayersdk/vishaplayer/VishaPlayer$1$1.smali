.class Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;->this$1:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;->this$1:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;

    iget-object v2, v2, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-static {v2}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->access$100(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;->this$1:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-static {v0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->C(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;->this$1:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-static {v0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->D(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;->this$1:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->access$200(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;->this$1:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->access$300(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;->this$1:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->access$400(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;->this$1:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->access$500(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;->this$1:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isShortVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onClickBlank, short video, pause or play"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1$1;->this$1:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
