.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhhb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->triggerUpgradeSdkCheck()V
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

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$k;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$k;->d()V

    return-void
.end method


# virtual methods
.method public a(Lehb;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkUpgradeTask onRequestSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p1, Lehb;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$k;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    new-instance v0, Lo4c;

    invoke-direct {v0, p0}, Lo4c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$k;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkUpgradeTask onRequestFail: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayerMain_Activity"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$k;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->l2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    return-void
.end method
