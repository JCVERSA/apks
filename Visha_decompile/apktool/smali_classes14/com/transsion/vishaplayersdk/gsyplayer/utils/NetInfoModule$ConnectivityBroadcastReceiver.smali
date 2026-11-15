.class Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field private isRegistered:Z

.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;


# direct methods
.method private constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule$ConnectivityBroadcastReceiver;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule$ConnectivityBroadcastReceiver;->isRegistered:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;Lcz6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule$ConnectivityBroadcastReceiver;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;)V

    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule$ConnectivityBroadcastReceiver;->isRegistered:Z

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule$ConnectivityBroadcastReceiver;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;->a(Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ConnectivityBroadcastReceiver onReceive error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConnectivityBroadcastReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule$ConnectivityBroadcastReceiver;->isRegistered:Z

    return-void
.end method
