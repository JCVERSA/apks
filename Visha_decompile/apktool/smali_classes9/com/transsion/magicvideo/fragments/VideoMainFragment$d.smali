.class public Lcom/transsion/magicvideo/fragments/VideoMainFragment$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Y0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroid/view/Choreographer$FrameCallback;

.field public final synthetic d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;ZLandroid/view/Choreographer$FrameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$d;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iput-boolean p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$d;->b:Z

    iput-object p3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$d;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$d;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$d;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$d;->b:Z

    invoke-static {p1, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->R0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$d;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
