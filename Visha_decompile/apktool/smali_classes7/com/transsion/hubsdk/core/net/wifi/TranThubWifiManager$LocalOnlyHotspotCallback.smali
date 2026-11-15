.class Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;
.super Lcom/transsion/hubsdk/net/wifi/ITranLocalOnlyHotspotCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalOnlyHotspotCallback"
.end annotation


# instance fields
.field mCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;->this$0:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/net/wifi/ITranLocalOnlyHotspotCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;->mCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;->mCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;->onFailed(I)V

    return-void
.end method

.method public onStarted(Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;)V
    .locals 16

    new-instance v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->isHiddenSsid()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getBand()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getChannel()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getSecurityType()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getMaxNumberOfClients()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/hubsdk/net/wifi/TranSoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v15

    move-object v1, v0

    invoke-direct/range {v1 .. v15}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;-><init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;ZIIIIZJZLjava/util/List;Ljava/util/List;)V

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.net.wifi.SoftApConfiguration$Builder"

    invoke-static {v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    const/4 v7, 0x1

    if-ge v5, v6, :cond_0

    const-string v6, "mSsid"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    const-string v6, "android.net.wifi.WifiSsid"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v8, "fromBytes"

    const-class v9, [B

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "mWifiSsid"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v8, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    const-string v6, "mPassphrase"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "mSecurityType"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getSecurityType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0x1e

    if-le v5, v6, :cond_1

    const-string v5, "setBand"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getBand()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v5, "mBand"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getBand()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    const-string v5, "mAutoShutdownEnabled"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "build"

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Liwa;->a(Ljava/lang/Object;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    const-string v3, "android.net.wifi.WifiManager$LocalOnlyHotspotReservation"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    :cond_2
    :goto_2
    move-object/from16 v1, p0

    goto :goto_4

    :goto_3
    invoke-static {}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get LocalOnlyHotspotReservation fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_4
    iget-object v0, v1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;->mCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;

    invoke-interface {v0, v2}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    return-void
.end method

.method public onStopped()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$LocalOnlyHotspotCallback;->mCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;->onStopped()V

    return-void
.end method
