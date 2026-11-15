.class public Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;,
        Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnBluetoothHeadsetListener;,
        Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnHeadsetListener;,
        Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnNetworkChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MgtvPlayerBroadcastObserver"

.field public static final TYPE_NONE:I = -0x1


# instance fields
.field private lock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCurrentNetType:I

.field private onBluetoothHeadsetListener:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnBluetoothHeadsetListener;

.field private onHeadsetListener:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnHeadsetListener;

.field private onNetworkChangeListener:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnNetworkChangeListener;

.field private receiver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->mCurrentNetType:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->lock:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->mCurrentNetType:I

    return p0
.end method

.method public static synthetic access$002(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->mCurrentNetType:I

    return p1
.end method

.method public static synthetic access$100(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnNetworkChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->onNetworkChangeListener:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnNetworkChangeListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnBluetoothHeadsetListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->onBluetoothHeadsetListener:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnBluetoothHeadsetListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnHeadsetListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->onHeadsetListener:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnHeadsetListener;

    return-object p0
.end method

.method public static getCurrentNetworkType(Landroid/content/Context;)I
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->unregister()V

    return-void
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->receiver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;

    if-eqz v1, :cond_0

    const-string p0, "MgtvPlayerBroadcastObserver"

    const-string v1, "already register"

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->getCurrentNetworkType(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->mCurrentNetType:I

    new-instance v2, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;-><init>(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;)V

    iput-object v2, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->receiver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;

    iget-object p0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "MgtvPlayerBroadcastObserver"

    const-string v1, "registerReceiver"

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOnBluetoothHeadsetListener(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnBluetoothHeadsetListener;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->onBluetoothHeadsetListener:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnBluetoothHeadsetListener;

    return-object p0
.end method

.method public setOnHeadsetListener(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnHeadsetListener;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->onHeadsetListener:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnHeadsetListener;

    return-object p0
.end method

.method public setOnNetworkChangeListener(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnNetworkChangeListener;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->onNetworkChangeListener:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnNetworkChangeListener;

    return-object p0
.end method

.method public unregister()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->receiver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->receiver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$MgtvPlayerBroadcastReceiver;

    const-string p0, "MgtvPlayerBroadcastObserver"

    const-string v1, "unregisterReceiver"

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
