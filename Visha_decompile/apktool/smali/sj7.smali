.class public Lsj7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/transsion/palmsdk/PalmAuthParam;

.field public c:LOooO0OO/OooO00o;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/palmsdk/PalmAuthParam;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsj7;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lsj7;->a:Landroid/content/Context;

    iput-object p2, p0, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    return-void
.end method

.method public static a(Lsj7;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    iget-object v1, p0, Lsj7;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/palmsdk/account/XNManager;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->isBindTransID()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsj7;->a:Landroid/content/Context;

    invoke-static {v0}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object v0

    const-string v1, "linked_pkg"

    iget-object v0, v0, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {v0, v1}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsj7;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lvj7;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    sget-object v3, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PalmInitManager palm intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", linkedPkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/palmsdk/auth/OooO0o;

    iget-object v3, p0, Lsj7;->a:Landroid/content/Context;

    iget-object p0, p0, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, p0, v4}, Lcom/transsion/palmsdk/auth/OooO0o;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/transsion/palmsdk/PalmAuthParam;Lcom/transsion/palmsdk/PalmID$e;)V

    iput-boolean v2, v0, Lcom/transsion/palmsdk/auth/OooO0o;->g:Z

    invoke-virtual {v0}, Lcom/transsion/palmsdk/auth/OooO0o;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "PalmInitManager handleSystemAccountBinding error: "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Lsj7;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    iget-object v1, p0, Lsj7;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/palmsdk/account/XNManager;->j(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    iget-object p0, p0, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "version"

    const-string v2, "2.0.1.03"

    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isLogged"

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Lwj;

    const-string v0, "sdk_init"

    const/16 v2, 0x1e1e

    invoke-direct {p0, v0, v2}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V

    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "PalmInitManager init analytics sent"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "PalmInitManager sendInitAnalytics error: "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppProcess()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lsj7;->d:Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lsj7;->a:Landroid/content/Context;

    invoke-static {v2}, Lvj7;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lsj7;->d:Z

    :goto_0
    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PalmInitManager process mode determined - isMainProcess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lsj7;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v3, "PalmInitManager determineProcessMode error: "

    invoke-static {v3}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v3, v2}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    iput-boolean v0, p0, Lsj7;->d:Z

    :goto_2
    return-void
.end method

.method public d()LOooO0OO/OooO00o;
    .locals 0

    iget-object p0, p0, Lsj7;->c:LOooO0OO/OooO00o;

    return-object p0
.end method

.method public e()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lsj7;->f()V

    invoke-virtual {p0}, Lsj7;->b()V

    iget-boolean v0, p0, Lsj7;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lxj7;->a()Lxj7;

    move-result-object v0

    new-instance v1, LOooO0o0/OooO0OO;

    invoke-direct {v1, p0}, LOooO0o0/OooO0OO;-><init>(Lsj7;)V

    invoke-virtual {v0, v1}, Lxj7;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lsj7;->i()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lsj7;->g()V

    :goto_0
    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PalmInitManager initSDK completed - isMainProcess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lsj7;->d:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", version="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "2.0.1.03"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "PalmInitManager initSDK error: "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    :goto_2
    return-void
.end method

.method public final f()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lsj7;->a:Landroid/content/Context;

    const-string v1, ""

    const/16 v2, 0x1e1e

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/ga/AthenaAnalytics;->O(Landroid/content/Context;Ljava/lang/String;IZ)V

    iget-object p0, p0, Lsj7;->a:Landroid/content/Context;

    const-string v0, "account.palm.tech"

    const-string v1, "auth-account.palm.tech"

    const-string v2, "api-cloud.palm.tech"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "PalmInitManager third party libs initialized"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "PalmInitManager initThirdPartyLibs error: "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/PalmAuthParam;->getServerMode()I

    move-result p0

    sput p0, Lbw7;->a:I

    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "PalmInitManager sub process initialization completed"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "PalmInitManager initSubProcess error: "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    :goto_0
    return-void
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lsj7;->d:Z

    return p0
.end method

.method public final i()V
    .locals 4

    :try_start_0
    new-instance v0, LOooO0OO/OooO00o;

    iget-object v1, p0, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-direct {v0, v1}, LOooO0OO/OooO00o;-><init>(Lcom/transsion/palmsdk/PalmAuthParam;)V

    iput-object v0, p0, Lsj7;->c:LOooO0OO/OooO00o;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "intent.action.PALM_ID_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->ignorePalmApp()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lsj7;->a:Landroid/content/Context;

    iget-object v2, p0, Lsj7;->c:LOooO0OO/OooO00o;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lsj7;->a:Landroid/content/Context;

    iget-object v2, p0, Lsj7;->c:LOooO0OO/OooO00o;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const-string v1, "intent.action.SILENT_LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lsj7;->a:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object p0, p0, Lsj7;->c:LOooO0OO/OooO00o;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "PalmInitManager broadcast receivers registered"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "PalmInitManager registerBroadcastReceivers error: "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    :goto_2
    return-void
.end method
