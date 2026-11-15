.class public Lcom/transsion/api/gateway/GateWaySdk;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static a:Z

.field public static b:Lokhttp3/OkHttpClient;

.field public static c:Z

.field public static d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lcom/transsion/api/gateway/config/WorkMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/api/gateway/GateWaySdk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/api/gateway/GateWaySdk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    sget-object v0, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    .line 16
    .line 17
    sput-object v0, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/transsion/api/gateway/GateWaySdk;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/GateWaySdk;->isOkhttpIntegrated()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lcom/transsion/api/gateway/GateWaySdk;->c:Z

    .line 15
    .line 16
    new-instance v0, Landroid/content/IntentFilter;

    .line 17
    .line 18
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v1, Lcom/transsion/api/gateway/receiver/a;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/transsion/api/gateway/receiver/a;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "registerReceiver fail, e:"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public static getActivateSigHosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getActivateSigPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getHost()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "apigateway.tmctool.com"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    return-object v1
.end method

.method public static getIsInited()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/api/gateway/GateWaySdk;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public static getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->b:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 6
    .line 7
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/transsion/api/gateway/GateWaySdk;->b:Lokhttp3/OkHttpClient;

    .line 28
    .line 29
    :cond_0
    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->b:Lokhttp3/OkHttpClient;

    .line 30
    .line 31
    return-object v0
.end method

.method public static getSecret()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/16 v3, 0x80

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v2, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    if-eq v2, v3, :cond_1

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 45
    .line 46
    const-string v2, "gateway_secret_online"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 56
    .line 57
    const-string v2, "gateway_secret_test"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object v0

    .line 64
    :goto_0
    sget-object v2, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method public static getWorkMode()Lcom/transsion/api/gateway/config/WorkMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {p0}, Lcom/transsion/api/gateway/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 11
    invoke-static {p0}, Lcom/transsion/api/gateway/GateWaySdk;->a(Landroid/content/Context;)V

    .line 12
    sget-object p0, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    .line 13
    sput-object p0, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    const/4 p0, 0x1

    .line 14
    sput-boolean p0, Lcom/transsion/api/gateway/GateWaySdk;->a:Z

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/api/gateway/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/transsion/api/gateway/GateWaySdk;->a(Landroid/content/Context;)V

    .line 3
    sput-object p2, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    .line 4
    new-instance p2, Lcom/transsion/api/gateway/GateWaySdk$a;

    invoke-direct {p2, p0, p1}, Lcom/transsion/api/gateway/GateWaySdk$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/api/gateway/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    .line 5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "/gateway/metric/add"

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "/gateway/sdk/v1/config"

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 8
    invoke-static {p1, p0}, Lcom/transsion/api/gateway/GateWaySdk;->setActivateSignConfig(Ljava/util/List;Ljava/util/List;)V

    const/4 p0, 0x1

    .line 9
    sput-boolean p0, Lcom/transsion/api/gateway/GateWaySdk;->a:Z

    return-void
.end method

.method public static isOkhttpIntegrated()Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lokhttp3/OkHttpClient;->Companion:Lokhttp3/OkHttpClient$Companion;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    return v0

    .line 5
    :catch_0
    const/4 v0, 0x0

    .line 6
    return v0
.end method

.method public static setActivateSignConfig(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-lez p0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/transsion/api/gateway/GateWaySdk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public static setOkHttpClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sput-object p0, Lcom/transsion/api/gateway/GateWaySdk;->b:Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    :cond_0
    return-void
.end method
