.class public final Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\tH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lcom/transsion/vishatransfer/manager/WifiTransferManager;",
        "getInstance",
        "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
        "context",
        "Landroid/app/Application;",
        "ERROR_CODE_PERMISSION",
        "",
        "ERROR_CODE_WIFI_NOT_ENABLED",
        "ERROR_CODE_OTHERS",
        "ERROR_CODE_CALL_API_UNKNOW",
        "ERROR_CODE_CALL_API_UNSUPPORTED",
        "ERROR_CODE_CALL_AIP_BUSY",
        "ERROR_CODE_CONNECT_FAILED",
        "ERROR_CODE_GET_CONNECTION_INFO_FAILED",
        "ERROR_CODE_HOT_SPOT_OPEN",
        "isHotspotEnabled",
        "",
        "isHotspotEnabledCommon",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;-><init>()V

    return-void
.end method

.method private final isHotspotEnabledCommon(Landroid/app/Application;)Z
    .locals 4

    const-string p0, "null cannot be cast to non-null type kotlin.Int"

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {p1, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWifiApState"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "WIFI_AP_STATE_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public final getInstance(Landroid/app/Application;)Lcom/transsion/vishatransfer/manager/ITransferHelper;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getInstance$cp()Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getInstance$cp()Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;-><init>(Landroid/app/Application;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$setInstance$cp(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final isHotspotEnabled()Z
    .locals 2

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;->isHotspotEnabledCommon(Landroid/app/Application;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager;->isWifiApEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
