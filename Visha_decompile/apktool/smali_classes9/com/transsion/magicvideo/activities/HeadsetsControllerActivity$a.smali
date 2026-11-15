.class public Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity$a;->a:Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;Luo4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity$a;-><init>(Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "HeadsetsControllerActivity"

    :try_start_0
    const-string p2, "AudioBecomingNoisyReceiver onReceive"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity$a;->a:Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->B0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AudioBecomingNoisyReceiver onReceive error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
