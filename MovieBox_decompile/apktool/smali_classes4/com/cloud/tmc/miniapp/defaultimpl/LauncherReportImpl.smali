.class public final Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;


# instance fields
.field public final OooO00o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "LauncherReport"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final OooO00o(ILcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    .line 3
    const-string v1, "miniProcessId"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4
    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIsNewUserStatus()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "com.cloud.tmc.miniapp.process_id"

    if-eqz v1, :cond_0

    .line 5
    :try_start_1
    iget-object p0, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v1, "reportCache ->reportMiniProcessId"

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p0, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    .line 7
    new-instance v1, Lcom/cloud/tmc/integration/model/CacheReportBean;

    .line 8
    const-string v3, ""

    const/4 v4, 0x0

    .line 9
    invoke-direct {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/integration/model/CacheReportBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/CacheReportBean;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportMiniProcessId -> pid ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object p0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 15
    new-instance v1, Landroid/content/Intent;

    .line 16
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v2, "miniGaid"

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 21
    :goto_0
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v0, "reportMiniProcessId"

    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static final OooO00o(Ljava/lang/String;JLcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    sget-object v1, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    .line 44
    const-string v1, "miniAppId"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "usageTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 46
    sget-object v1, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    invoke-virtual {v1, p0}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterectMFAHWithBookPrivacy(Ljava/lang/String;)Z

    move-result v2

    .line 47
    sget-object v3, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIsNewUserStatus()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "com.cloud.tmc.miniapp.use_time"

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    iget-object p0, p3, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportMiniAppUseTime -> usageTime ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object p0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 52
    new-instance p1, Landroid/content/Intent;

    .line 53
    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    const-string p2, "miniGaid"

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 58
    :cond_1
    :goto_0
    iget-object p1, p3, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportCache ->reportMiniAppUseTime "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance p1, Lcom/cloud/tmc/integration/model/CacheReportBean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p2, ""

    if-nez p0, :cond_2

    move-object v2, p2

    goto :goto_1

    :cond_2
    move-object v2, p0

    .line 60
    :goto_1
    :try_start_2
    invoke-virtual {v1, p0}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterectMFAH(Ljava/lang/String;)Z

    move-result v3

    .line 61
    invoke-direct {p1, v2, v4, v3, v0}, Lcom/cloud/tmc/integration/model/CacheReportBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 62
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->getInterceptRealMFAHMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p3, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v1, "reportCache ->mfah reportMiniAppUseTime"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    if-nez p0, :cond_3

    move-object p0, p2

    :cond_3
    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/CacheReportBean;)V

    goto :goto_2

    .line 65
    :cond_4
    sget-object p0, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/CacheReportBean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-void

    .line 66
    :goto_3
    iget-object p1, p3, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string p2, "reportMiniAppUseTime"

    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public static final OooO00o(Ljava/lang/String;Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V
    .locals 5

    const-string v0, "$appId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    sget-object v1, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    .line 24
    const-string v1, "miniAppId"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIsNewUserStatus()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "com.cloud.tmc.miniapp.addhome_success"

    if-eqz v1, :cond_0

    .line 26
    :try_start_1
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v3, "reportCache ->reportMiniAddhomeSuccess"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    .line 28
    new-instance v3, Lcom/cloud/tmc/integration/model/CacheReportBean;

    const/4 v4, 0x0

    .line 29
    invoke-direct {v3, p0, v2, v4, v0}, Lcom/cloud/tmc/integration/model/CacheReportBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 30
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/CacheReportBean;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportMiniAddhomeSuccess -> appId ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object p0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 35
    new-instance v1, Landroid/content/Intent;

    .line 36
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v2, "miniGaid"

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 41
    :goto_0
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v0, "reportMiniAddhomeSuccess"

    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "tag:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ",bundle:"

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_2
    return-void
.end method

.method public reportAllCacheData(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public reportCacheData(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO0O0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public reportMiniAddhomeSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 7
    .line 8
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/h;

    .line 9
    .line 10
    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/h;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "reportMiniAddhomeSuccess"

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public reportMiniAppStartRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public reportMiniAppStartTime(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "startType"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    .line 12
    .line 13
    const-string v2, "miniAppId"

    .line 14
    .line 15
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "startTime"

    .line 19
    .line 20
    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p4, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 27
    .line 28
    invoke-virtual {p4, p1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterectMFAHWithBookPrivacy(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sget-object v2, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIsNewUserStatus()Z

    .line 35
    .line 36
    .line 37
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const-string v3, "com.cloud.tmc.miniapp.start_time"

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 46
    .line 47
    new-instance p4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v0, "reportMiniAppStartTime -> startTime ->"

    .line 53
    .line 54
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    new-instance p2, Landroid/content/Intent;

    .line 76
    .line 77
    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p3, "miniGaid"

    .line 81
    .line 82
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    invoke-virtual {v1, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto :goto_3

    .line 105
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 106
    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v0, "reportCache ->reportMiniAppStartTime "

    .line 113
    .line 114
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance p2, Lcom/cloud/tmc/integration/model/CacheReportBean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    const-string p3, ""

    .line 130
    .line 131
    if-nez p1, :cond_2

    .line 132
    .line 133
    move-object v0, p3

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    move-object v0, p1

    .line 136
    :goto_1
    const/4 v2, 0x0

    .line 137
    :try_start_2
    invoke-direct {p2, v0, v3, v2, v1}, Lcom/cloud/tmc/integration/model/CacheReportBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p4}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->getInterceptRealMFAHMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 141
    .line 142
    .line 143
    move-result-object p4

    .line 144
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p4

    .line 148
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p4

    .line 154
    if-eqz p4, :cond_4

    .line 155
    .line 156
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 157
    .line 158
    const-string v0, "reportCache ->mfah startTime"

    .line 159
    .line 160
    invoke-static {p4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object p4, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    .line 164
    .line 165
    if-nez p1, :cond_3

    .line 166
    .line 167
    move-object p1, p3

    .line 168
    :cond_3
    invoke-virtual {p4, p1, p2}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/CacheReportBean;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/CacheReportBean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .line 176
    .line 177
    :goto_2
    return-void

    .line 178
    :goto_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 179
    .line 180
    const-string p3, "reportMiniAppStartTime"

    .line 181
    .line 182
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    :cond_5
    :goto_4
    return-void
.end method

.method public reportMiniAppUseTime(Ljava/lang/String;J)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/g;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/g;-><init>(Ljava/lang/String;JLcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :catchall_0
    return-void
.end method

.method public reportMiniProcessId(I)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/i;

    .line 4
    .line 5
    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/i;-><init>(ILcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "reportMiniProcessId"

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
