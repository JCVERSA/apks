.class public Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$b;->b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$b;->b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->S(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Lcom/transsion/playercommon/player/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/playercommon/player/b;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$b;->b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->S(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Lcom/transsion/playercommon/player/b;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->pause(Z)V

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
