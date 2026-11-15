.class public LOooO0OO/OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:LOooO0OO/OooO0O0;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/transsion/palmsdk/PalmAuthParam;

.field public volatile c:Z

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO0OO/OooO0O0;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO0O0;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LOooO0OO/OooO0O0;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)LOooO0OO/OooO0O0;
    .locals 2

    sget-object v0, LOooO0OO/OooO0O0;->e:LOooO0OO/OooO0O0;

    if-nez v0, :cond_1

    const-class v0, LOooO0OO/OooO0O0;

    monitor-enter v0

    :try_start_0
    sget-object v1, LOooO0OO/OooO0O0;->e:LOooO0OO/OooO0O0;

    if-nez v1, :cond_0

    new-instance v1, LOooO0OO/OooO0O0;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0;-><init>(Landroid/content/Context;)V

    sput-object v1, LOooO0OO/OooO0O0;->e:LOooO0OO/OooO0O0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, LOooO0OO/OooO0O0;->e:LOooO0OO/OooO0O0;

    return-object p0
.end method

.method public static synthetic d(LOooO0OO/OooO0O0;Z)Z
    .locals 0

    iput-boolean p1, p0, LOooO0OO/OooO0O0;->c:Z

    return p1
.end method


# virtual methods
.method public final b(Lcom/transsion/palmsdk/PalmID$a;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LOooO0OO/OooO0O0;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    const v2, 0x9ca9

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->hasTudc()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LOooO0OO/OooO0O0;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getTudcSpName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnj7;->a(Ljava/lang/String;)Lnj7;

    move-result-object v1

    iget-object v3, p0, LOooO0OO/OooO0O0;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lnj7;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lxj7;->a()Lxj7;

    move-result-object v2

    new-instance v3, LOooO0OO/OooO0O0$OooO0OO;

    invoke-direct {v3, p0, v1}, LOooO0OO/OooO0O0$OooO0OO;-><init>(LOooO0OO/OooO0O0;Lnj7;)V

    invoke-virtual {v2, v3}, Lxj7;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LOooO0OO/OooO0O0;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-boolean v0, p0, LOooO0OO/OooO0O0;->c:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    :try_start_2
    const-string v1, "TUDC not logged in"

    invoke-interface {p1, v2, v1}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :cond_1
    iget-object v1, p0, LOooO0OO/OooO0O0;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iput-boolean v0, p0, LOooO0OO/OooO0O0;->c:Z

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_2

    :try_start_6
    const-string v1, "Not logged in"

    invoke-interface {p1, v2, v1}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_0
    iget-object v2, p0, LOooO0OO/OooO0O0;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iput-boolean v0, p0, LOooO0OO/OooO0O0;->c:Z

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "handleTudcConversion error: "

    invoke-static {v0}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0, p0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    if-eqz p1, :cond_2

    const-string p0, "TUDC conversion failed: "

    invoke-static {p0}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, 0x9ca6

    invoke-interface {p1, v0, p0}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :catchall_2
    move-exception p0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0
.end method

.method public c(Lcom/transsion/palmsdk/PalmID$a;Z)V
    .locals 4

    :try_start_0
    iget-object v0, p0, LOooO0OO/OooO0O0;->a:Landroid/content/Context;

    invoke-static {v0}, Lvj7;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "refreshIfNeed network unavailable"

    invoke-virtual {p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string p2, "network unavailable"

    const v0, 0x9ca7

    invoke-interface {p1, v0, p2}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto/16 :goto_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, LOooO0OO/OooO0O0;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, LOooO0OO/OooO0O0;->c:Z

    if-eqz v1, :cond_3

    sget-object p2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "Token refresh already in progress, skipping..."

    invoke-virtual {p2, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const-string p2, "Token refresh in progress"

    const v1, 0x9cab

    invoke-interface {p1, v1, p2}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, LOooO0OO/OooO0O0;->c:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    iget-object v1, p0, LOooO0OO/OooO0O0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/palmsdk/account/XNManager;->j(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshIfNeed isLogged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isSync = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    new-instance v0, LOooO0OO/OooO0O0$a;

    invoke-direct {v0, p0, p1}, LOooO0OO/OooO0O0$a;-><init>(LOooO0OO/OooO0O0;Lcom/transsion/palmsdk/PalmID$a;)V

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object p2

    iget-object v1, p0, LOooO0OO/OooO0O0;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Lcom/transsion/palmsdk/account/XNManager;->k(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/palmsdk/PalmID$a;)Z

    goto :goto_4

    :cond_4
    invoke-static {}, Lxj7;->a()Lxj7;

    move-result-object p2

    new-instance v1, LOooO0OO/OooO0O0$OooO0O0;

    invoke-direct {v1, p0, v0}, LOooO0OO/OooO0O0$OooO0O0;-><init>(LOooO0OO/OooO0O0;Lcom/transsion/palmsdk/PalmID$a;)V

    invoke-virtual {p2, v1}, Lxj7;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0, p1}, LOooO0OO/OooO0O0;->b(Lcom/transsion/palmsdk/PalmID$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    iget-object v0, p0, LOooO0OO/OooO0O0;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, LOooO0OO/OooO0O0;->c:Z

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "refreshIfNeed error: "

    invoke-static {v0}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    const-string p0, "Token refresh failed: "

    invoke-static {p0}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p2, 0x9ca6

    invoke-interface {p1, p2, p0}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    :cond_6
    :goto_4
    return-void

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method
