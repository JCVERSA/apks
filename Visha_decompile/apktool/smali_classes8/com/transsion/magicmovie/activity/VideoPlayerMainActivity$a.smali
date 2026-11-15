.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->listenEventKeyChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$a;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {}, Lydc;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lzz0;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/transsion/cloud/fragment/CloudDownloadMainFragment;

    invoke-direct {p1}, Lcom/transsion/cloud/fragment/CloudDownloadMainFragment;-><init>()V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$a;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    const/4 p0, 0x1

    invoke-static {p1, p0, p0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$a;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->m2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
