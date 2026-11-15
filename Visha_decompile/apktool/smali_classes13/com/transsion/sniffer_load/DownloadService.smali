.class public Lcom/transsion/sniffer_load/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/DownloadService$b;,
        Lcom/transsion/sniffer_load/DownloadService$c;,
        Lcom/transsion/sniffer_load/DownloadService$d;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/sniffer_load/DownloadService$b;

.field public c:Lcom/transsion/sniffer_load/DownloadService$c;

.field public final d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field public volatile e:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/transsion/sniffer_load/DownloadService$a;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/DownloadService$a;-><init>(Lcom/transsion/sniffer_load/DownloadService;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadService;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    sget-object v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->UNKNOWN:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadService;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/sniffer_load/DownloadService;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService;->b:Lcom/transsion/sniffer_load/DownloadService$b;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/sniffer_load/DownloadService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService;->f()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/sniffer_load/DownloadService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService;->k()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/lzy/okgo/model/Progress;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/DownloadService;->j(Lcom/lzy/okgo/model/Progress;)Z

    move-result p0

    return p0
.end method

.method public static j(Lcom/lzy/okgo/model/Progress;)Z
    .locals 3

    invoke-static {}, Lpp3;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "breakpoint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http response code is 416"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public final f()V
    .locals 4

    const-string v0, "migration_completed"

    const-string v1, "visha_DownloadService"

    :try_start_0
    const-string v2, "download_migration"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Starting download records migration check..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lp13;->c()V

    invoke-static {}, Lp13;->f()V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "Download records migration completed"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "Download records migration already completed, skipping"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during download records migration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final g()V
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/DownloadService$b;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/DownloadService$b;-><init>(Lcom/transsion/sniffer_load/DownloadService;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadService;->b:Lcom/transsion/sniffer_load/DownloadService$b;

    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object v0

    sget-object v1, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->sM3U8DownloadListener:Ltz2;

    invoke-virtual {v0, v1}, Lyv5;->g(Ltz2;)V

    new-instance v0, Lcom/transsion/sniffer_load/DownloadService$c;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/DownloadService$c;-><init>(Lcom/transsion/sniffer_load/DownloadService;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadService;->c:Lcom/transsion/sniffer_load/DownloadService$c;

    const-string v1, "visha_DownloadService"

    invoke-static {v1, v0}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    new-instance v0, Lcom/transsion/sniffer_load/DownloadService$1;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/DownloadService$1;-><init>(Lcom/transsion/sniffer_load/DownloadService;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService;->h()V

    return-void
.end method

.method public h()V
    .locals 1

    new-instance v0, Lcom/transsion/sniffer_load/DownloadService$2;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/DownloadService$2;-><init>(Lcom/transsion/sniffer_load/DownloadService;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/model/Progress;

    iget-object v6, p0, Lcom/transsion/sniffer_load/DownloadService;->b:Lcom/transsion/sniffer_load/DownloadService$b;

    invoke-static {v6}, Lcom/transsion/sniffer_load/DownloadService$b;->D(Lcom/transsion/sniffer_load/DownloadService$b;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget v7, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v7, v5, :cond_0

    move v4, v7

    :cond_0
    iput v4, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-nez v6, :cond_2

    new-instance v6, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-direct {v6, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    new-instance v4, Lcom/transsion/sniffer_load/DownloadService$d;

    invoke-direct {v4, p0}, Lcom/transsion/sniffer_load/DownloadService$d;-><init>(Lcom/transsion/sniffer_load/DownloadService;)V

    invoke-virtual {v6, v4}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->register(Luz2;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object v4, p0, Lcom/transsion/sniffer_load/DownloadService;->b:Lcom/transsion/sniffer_load/DownloadService$b;

    iget-object v7, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v1, v5, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v4, v7, v6, v2}, Lcom/transsion/sniffer_load/DownloadService$b;->H(Lcom/transsion/sniffer_load/DownloadService$b;Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->s:Z

    const-string v1, "visha_DownloadService"

    if-eqz p1, :cond_4

    const-string p0, "haveClearAllCloudTask not restore task!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lzy/okgo/model/Progress;

    iget-object v6, p0, Lcom/transsion/sniffer_load/DownloadService;->b:Lcom/transsion/sniffer_load/DownloadService$b;

    invoke-static {v6}, Lcom/transsion/sniffer_load/DownloadService$b;->D(Lcom/transsion/sniffer_load/DownloadService$b;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget v7, p2, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v7, v5, :cond_5

    goto :goto_2

    :cond_5
    move v7, v4

    :goto_2
    iput v7, p2, Lcom/lzy/okgo/model/Progress;->status:I

    iget-object v7, p2, Lcom/lzy/okgo/model/Progress;->cloudFileId:Ljava/lang/String;

    if-nez v7, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore cloudFileId is null:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    if-nez v6, :cond_8

    new-instance v6, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    invoke-direct {v6, p2}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    new-instance v7, Lcom/transsion/sniffer_load/DownloadService$d;

    invoke-direct {v7, p0}, Lcom/transsion/sniffer_load/DownloadService$d;-><init>(Lcom/transsion/sniffer_load/DownloadService;)V

    invoke-virtual {v6, v7}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->register(Luz2;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object v7, p0, Lcom/transsion/sniffer_load/DownloadService;->b:Lcom/transsion/sniffer_load/DownloadService$b;

    iget-object v8, p2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    iget p2, p2, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne p2, v5, :cond_7

    move p2, v3

    goto :goto_3

    :cond_7
    move p2, v2

    :goto_3
    invoke-static {v7, v8, v6, p2}, Lcom/transsion/sniffer_load/DownloadService$b;->H(Lcom/transsion/sniffer_load/DownloadService$b;Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    :goto_4
    return-object v0
.end method

.method public final k()V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService;->b:Lcom/transsion/sniffer_load/DownloadService$b;

    invoke-virtual {v1}, Lcom/transsion/sniffer_load/DownloadService$b;->R()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService;->b:Lcom/transsion/sniffer_load/DownloadService$b;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->O()I

    move-result p0

    const/16 v2, 0x2711

    invoke-static {v0, v2, v1, p0}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->c(Landroid/content/Context;III)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "visha_DownloadService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService;->b:Lcom/transsion/sniffer_load/DownloadService$b;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "visha_DownloadService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService;->g()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "onDestroy"

    const-string v1, "visha_DownloadService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, p0}, Lw6c;->H(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {v1}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p0, "visha_DownloadService"

    const-string p1, "onStartCommand"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
