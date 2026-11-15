.class public Lcom/transsion/magicvideo/activities/VideoPlayerActivity$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/activities/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$d;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "VideoPlayer_Activity"

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.MY_PACKAGE_SUSPENDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "onReceive ACTION_MY_PACKAGE_SUSPENDED finish"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$d;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->finish()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$d;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->a1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "onReceive ACTION_SCREEN_OFF finish"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$d;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->finish()V

    :cond_2
    invoke-static {}, Lpp3;->w()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {}, Lpp3;->j()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$d;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz p0, :cond_5

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->o0(Z)V

    goto :goto_1

    :cond_3
    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$d;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->l1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    goto :goto_1

    :cond_4
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$d;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz p0, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->o0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method
