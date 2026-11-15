.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$l;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->ensureInAppBackCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$l;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    sget-boolean v0, Lpp3;->u:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$l;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->Z1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$l;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->i2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$l;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {v0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$l;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->n2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    return-void
.end method
