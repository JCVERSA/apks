.class Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MgtvPlayerBroadcastReceiver"
.end annotation


# instance fields
.field observerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;->observerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private bluetoothStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.profile.extra.STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bluetoothStateChange in.state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MgtvPlayerBroadcastObserver"

    invoke-static {v0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;->observerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->access$200(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnBluetoothHeadsetListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->access$200(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnBluetoothHeadsetListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnBluetoothHeadsetListener;->onBluetoothHeadsetStateChange(I)V

    :cond_0
    const-string p0, "bluetoothStateChange out"

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private connectivityChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p2, "connectivityChange in"

    const-string v0, "MgtvPlayerBroadcastObserver"

    invoke-static {v0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->getCurrentNetworkType(Landroid/content/Context;)I

    move-result p1

    iget-object p0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;->observerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->access$000(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)I

    move-result p2

    if-eq p2, p1, :cond_0

    invoke-static {p0, p1}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->access$002(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectivityChange currentType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->access$100(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnNetworkChangeListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p1}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnNetworkChangeListener;->onNetworkChanged(II)V

    :cond_0
    const-string p0, "connectivityChange out"

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private headsetStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "headsetStateChange in.state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MgtvPlayerBroadcastObserver"

    invoke-static {v0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;->observerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->access$300(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnHeadsetListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->access$300(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnHeadsetListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnHeadsetListener;->onHeadsetStateChange(I)V

    :cond_0
    const-string p0, "headsetStateChange out"

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgtvPlayerBroadcastObserver"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;->bluetoothStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;->connectivityChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;->headsetStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63ecb970 -> :sswitch_2
        -0x45e5283a -> :sswitch_1
        0x2083ec2d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
