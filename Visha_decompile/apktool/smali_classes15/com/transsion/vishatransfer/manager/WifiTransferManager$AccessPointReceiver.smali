.class final Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessPointReceiver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;",
        "accessReceiverActionListener",
        "<init>",
        "(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Lzfb;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;",
        "",
        "TAG",
        "Ljava/lang/String;",
        "vishatransferlib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final accessReceiverActionListener:Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;-><init>(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;->accessReceiverActionListener:Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    .line 5
    const-string p1, "AccessPointReceiver"

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;-><init>(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x69a8390a

    if-eq v0, v1, :cond_2

    const p2, -0x532207c3

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;->accessReceiverActionListener:Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz p0, :cond_4

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onPeersAvailable(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;->accessReceiverActionListener:Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz p0, :cond_4

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onConnectionChanged(Landroid/net/NetworkInfo;I)V

    :cond_4
    :goto_0
    return-void
.end method
