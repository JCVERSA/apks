.class public Lcom/transsion/magicvideo/activities/VideoPlayerActivity$f;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->G1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$f;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$f;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    return-void
.end method

.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$f;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object v0, v0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$f;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$f;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->onBackPressed()V

    return-void
.end method

.method public handleOnBackStarted(Landroidx/activity/BackEventCompat;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$f;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->o1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    return-void
.end method
