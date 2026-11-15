.class public Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver$a;
.implements Lil6$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity$a;
    }
.end annotation


# instance fields
.field public N:Z

.field public O:Landroid/media/AudioManager;

.field public P:Landroid/content/ComponentName;

.field public Q:Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->N:Z

    return-void
.end method


# virtual methods
.method public B0()V
    .locals 0

    return-void
.end method

.method public C0(ILandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public D0()V
    .locals 3

    const-string v0, "HeadsetsControllerActivity"

    const-string v1, "registerHeadsetsControllerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity$a;-><init>(Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;Luo4;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->Q:Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lil6;->c(Lil6$c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->P:Landroid/content/ComponentName;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->O:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->P:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :goto_0
    return-void
.end method

.method public final E0(ILandroid/view/KeyEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->N:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljf;->n(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->C0(ILandroid/view/KeyEvent;)V

    :cond_1
    return-void
.end method

.method public F0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->Q:Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity$a;

    const-string v1, "HeadsetsControllerActivity"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterHeadsetsControllerListener error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v0, v2, :cond_1

    invoke-static {p0}, Lil6;->g(Lil6$c;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->O:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "unregisterHeadsetsControllerListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->O:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->P:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :goto_1
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaButtonEventKeyUp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mActivityResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->N:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadsetsControllerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->E0(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHeadsetsKeyUp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mActivityResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->N:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadsetsControllerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->E0(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver;->a(Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver;->b(Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver$a;)V

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->N:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->N:Z

    return-void
.end method
