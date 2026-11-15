.class public Lcom/transsion/cloud/upload/service/UploadService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/upload/service/UploadService$c;,
        Lcom/transsion/cloud/upload/service/UploadService$d;
    }
.end annotation


# instance fields
.field public volatile b:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

.field public c:Lcom/transsion/cloud/upload/service/UploadService$c;

.field public d:Lnhb;

.field public final e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;->UNKNOWN:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    iput-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService;->b:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    new-instance v0, Lcom/transsion/cloud/upload/service/UploadService$b;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/upload/service/UploadService$b;-><init>(Lcom/transsion/cloud/upload/service/UploadService;)V

    iput-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService;->c:Lcom/transsion/cloud/upload/service/UploadService$c;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/cloud/upload/service/UploadService;)Lnhb;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService;->e()Lnhb;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/cloud/upload/service/UploadService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/upload/service/UploadService;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/cloud/upload/service/UploadService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService;->i()V

    return-void
.end method


# virtual methods
.method public final e()Lnhb;
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService;->d:Lnhb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/cloud/upload/service/UploadService$a;

    const-string v1, "visha_cloud_UploadService"

    invoke-direct {v0, p0, v1}, Lcom/transsion/cloud/upload/service/UploadService$a;-><init>(Lcom/transsion/cloud/upload/service/UploadService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService;->d:Lnhb;

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService;->d:Lnhb;

    return-object p0
.end method

.method public final f()V
    .locals 3

    new-instance v0, Lcom/transsion/cloud/upload/service/UploadService$c;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/upload/service/UploadService$c;-><init>(Lcom/transsion/cloud/upload/service/UploadService;)V

    iput-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService;->c:Lcom/transsion/cloud/upload/service/UploadService$c;

    new-instance v0, Lcom/transsion/cloud/upload/service/UploadService$d;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/upload/service/UploadService$d;-><init>(Lcom/transsion/cloud/upload/service/UploadService;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloud/upload/service/UploadService;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v1, v2}, Lw6c;->y(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v1, "visha_cloud_UploadService"

    invoke-static {v1, v0}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService;->g()V

    return-void
.end method

.method public g()V
    .locals 1

    new-instance v0, Lcom/transsion/cloud/upload/service/UploadService$1;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/upload/service/UploadService$1;-><init>(Lcom/transsion/cloud/upload/service/UploadService;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Ljava/util/List;)Ljava/util/List;
    .locals 8

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->s:Z

    if-eqz v0, :cond_0

    const-string p0, "visha_cloud_UploadService"

    const-string p1, "haveClearAllCloudTask not recover task!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v2, p0, Lcom/transsion/cloud/upload/service/UploadService;->c:Lcom/transsion/cloud/upload/service/UploadService$c;

    invoke-static {v2}, Lcom/transsion/cloud/upload/service/UploadService$c;->C(Lcom/transsion/cloud/upload/service/UploadService$c;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget v3, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-ne v3, v5, :cond_1

    iput v5, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    goto :goto_2

    :cond_1
    const/16 v6, 0x9

    if-ne v3, v6, :cond_2

    iput v6, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    goto :goto_2

    :cond_2
    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    :goto_1
    iput v3, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    :goto_2
    if-nez v2, :cond_5

    new-instance v2, Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-direct {v2, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;-><init>(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService;->e()Lnhb;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/cloud/upload/task/NewUploadTask;->register(Lnhb;)V

    iget-object v3, p0, Lcom/transsion/cloud/upload/service/UploadService;->c:Lcom/transsion/cloud/upload/service/UploadService$c;

    iget-object v6, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    iget v7, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    if-ne v7, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-static {v3, v6, v2, v4}, Lcom/transsion/cloud/upload/service/UploadService$c;->F(Lcom/transsion/cloud/upload/service/UploadService$c;Ljava/lang/String;Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    iget v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    if-ne v1, v5, :cond_5

    invoke-virtual {v2}, Lcom/transsion/cloud/upload/task/NewUploadTask;->resumeTranscoding()V

    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/upload/service/UploadService;->c:Lcom/transsion/cloud/upload/service/UploadService$c;

    invoke-virtual {v1}, Lcom/transsion/cloud/upload/service/UploadService$c;->O()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService;->c:Lcom/transsion/cloud/upload/service/UploadService$c;

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->M()I

    move-result p0

    const/16 v2, 0x2713

    invoke-static {v0, v2, v1, p0}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->l(Landroid/content/Context;III)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService;->c:Lcom/transsion/cloud/upload/service/UploadService$c;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService;->f()V

    const-string p0, "visha_cloud_UploadService"

    const-string v0, "UploadService created"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "onDestroy"

    const-string v1, "visha_cloud_UploadService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, p0}, Lw6c;->H(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {v1}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p0, "visha_cloud_UploadService"

    const-string p1, "onStartCommand"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
