.class public Lcom/doman/core/ig/proxy/MqttAndroidClient;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lf9d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doman/core/ig/proxy/MqttAndroidClient$b;,
        Lcom/doman/core/ig/proxy/MqttAndroidClient$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final b:Lcom/doman/core/ig/proxy/MqttAndroidClient$b;

.field public c:Lcom/doman/core/ig/proxy/MqttService;

.field public d:Ljava/lang/String;

.field public e:Landroid/content/Context;

.field public f:Lbmd;

.field public g:Lggd;

.field public volatile h:Z

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lggd;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Lcld;

.field private n:Lhjd;

.field private o:Lcom/doman/core/ig/proxy/i;

.field private final p:I

.field private q:Z

.field private volatile r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lcom/doman/core/ig/proxy/MqttAndroidClient;Lcom/doman/core/ig/proxy/MqttService;)Lcom/doman/core/ig/proxy/MqttService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    return-object p1
.end method

.method private declared-synchronized a(Landroid/os/Bundle;)Lggd;
    .locals 2

    .line 2
    monitor-enter p0

    :try_start_0
    const-string v0, "MqttService.activityToken"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lggd;

    iget-object v1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic a(Lcom/doman/core/ig/proxy/MqttAndroidClient;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private a(Lggd;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 8
    const-string p0, "MqttService.callbackStatus"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/doman/core/ig/proxy/j;

    sget-object v0, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    if-ne p0, v0, :cond_0

    check-cast p1, Lcom/doman/core/ig/proxy/h;

    invoke-virtual {p1}, Lcom/doman/core/ig/proxy/h;->b()V

    return-void

    :cond_0
    const-string p0, "MqttService.exception"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    check-cast p1, Lcom/doman/core/ig/proxy/h;

    invoke-virtual {p1, p0}, Lcom/doman/core/ig/proxy/h;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    if-eqz p0, :cond_2

    const-string p1, "MqttService"

    const-string/jumbo p2, "simpleAction : token is null"

    invoke-virtual {p0, p1, p2}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/doman/core/ig/proxy/MqttAndroidClient;)Z
    .locals 1

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->r:Z

    return v0
.end method

.method private declared-synchronized b(Landroid/os/Bundle;)Lggd;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, "MqttService.activityToken"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->i:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lggd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic b(Lcom/doman/core/ig/proxy/MqttAndroidClient;)V
    .locals 17

    .line 3
    move-object/from16 v1, p0

    const-string v2, "MqttConnection"

    :try_start_0
    iget-object v0, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v3, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->k:Ljava/lang/String;

    iget-object v4, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->l:Ljava/lang/String;

    iget-object v5, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->m:Lcld;

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcld;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    iget-boolean v3, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->q:Z

    iput-boolean v3, v0, Lcom/doman/core/ig/proxy/MqttService;->b:Z

    iget-object v3, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    iput-object v3, v0, Lcom/doman/core/ig/proxy/MqttService;->a:Ljava/lang/String;

    iget-object v0, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->g:Lggd;

    invoke-virtual {v1, v0}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Lggd;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v4, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    iget-object v5, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->f:Lbmd;

    invoke-virtual {v3, v4}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;)Lcom/doman/core/ig/proxy/e;

    move-result-object v3

    iput-object v5, v3, Lcom/doman/core/ig/proxy/e;->e:Lbmd;

    iput-object v0, v3, Lcom/doman/core/ig/proxy/e;->g:Ljava/lang/String;

    iget-boolean v4, v5, Lbmd;->a:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v4, v4, Lcom/doman/core/ig/proxy/MqttService;->c:Lcom/doman/core/ig/proxy/d;

    iget-object v5, v3, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/doman/core/ig/proxy/d;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v4, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connecting {"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/doman/core/ig/proxy/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "} as {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/doman/core/ig/proxy/e;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "MqttService.activityToken"

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MqttService.invocationContext"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MqttService.callbackAction"

    const-string v6, "connect"

    invoke-virtual {v4, v0, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, v3, Lcom/doman/core/ig/proxy/e;->d:Lcld;

    if-nez v0, :cond_3

    iget-object v0, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "MqttService.errorMessage"

    const-string v5, "Error! No external and internal storage available"

    invoke-virtual {v4, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MqttService.exception"

    new-instance v5, Lcom/mq/mgmi/client/message/q;

    invoke-direct {v5}, Lcom/mq/mgmi/client/message/q;-><init>()V

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v5, v3, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object v7, Lcom/doman/core/ig/proxy/j;->b:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {v0, v5, v7, v4}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_2
    new-instance v7, Lh6d;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lh6d;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Lcom/doman/core/ig/proxy/e;->d:Lcld;

    :cond_3
    new-instance v0, Lcom/doman/core/ig/proxy/e$2;

    invoke-direct {v0, v3, v4, v4}, Lcom/doman/core/ig/proxy/e$2;-><init>(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v7, v3, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    const-string v9, "Do Real connect!"

    if-eqz v7, :cond_6

    :try_start_2
    iget-boolean v7, v3, Lcom/doman/core/ig/proxy/e;->m:Z

    if-eqz v7, :cond_4

    iget-object v0, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v5, "myClient != null and the client is connecting. Connect return directly."

    invoke-virtual {v0, v2, v5}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Connect return:isConnecting:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v3, Lcom/doman/core/ig/proxy/e;->m:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ".disconnected:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v3, Lcom/doman/core/ig/proxy/e;->k:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-boolean v7, v3, Lcom/doman/core/ig/proxy/e;->k:Z

    if-nez v7, :cond_5

    iget-object v0, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v5, "myClient != null and the client is connected and notify!"

    invoke-virtual {v0, v2, v5}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/doman/core/ig/proxy/e;->a(Landroid/os/Bundle;)V

    return-void

    :cond_5
    iget-object v7, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v10, "myClient != null and the client is not connected"

    invoke-virtual {v7, v2, v10}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    invoke-virtual {v7, v2, v9}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/doman/core/ig/proxy/e;->a(Z)V

    iget-object v7, v3, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    iget-object v8, v3, Lcom/doman/core/ig/proxy/e;->e:Lbmd;

    invoke-virtual {v7, v8, v5, v0}, Lcom/mq/mgmi/client/message/h;->e(Lbmd;Ljava/lang/Object;Lv7d;)Lggd;

    return-void

    :cond_6
    new-instance v7, Lcom/doman/core/ig/proxy/a;

    iget-object v10, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    invoke-direct {v7, v10}, Lcom/doman/core/ig/proxy/a;-><init>(Lcom/doman/core/ig/proxy/MqttService;)V

    iput-object v7, v3, Lcom/doman/core/ig/proxy/e;->i:Lcom/doman/core/ig/proxy/a;

    new-instance v7, Lcom/mq/mgmi/client/message/h;

    iget-object v12, v3, Lcom/doman/core/ig/proxy/e;->b:Ljava/lang/String;

    iget-object v13, v3, Lcom/doman/core/ig/proxy/e;->c:Ljava/lang/String;

    iget-object v14, v3, Lcom/doman/core/ig/proxy/e;->d:Lcld;

    iget-object v15, v3, Lcom/doman/core/ig/proxy/e;->i:Lcom/doman/core/ig/proxy/a;

    sget-object v16, Lcom/doman/core/ig/proxy/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lcom/mq/mgmi/client/message/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lcld;Lord;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v7, v3, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    invoke-virtual {v7, v3}, Lcom/mq/mgmi/client/message/h;->h(Lhjd;)V

    iget-object v7, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    invoke-virtual {v7, v2, v9}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/doman/core/ig/proxy/e;->a(Z)V

    iget-object v7, v3, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    iget-object v8, v3, Lcom/doman/core/ig/proxy/e;->e:Lbmd;

    invoke-virtual {v7, v8, v5, v0}, Lcom/mq/mgmi/client/message/h;->e(Lbmd;Ljava/lang/Object;Lv7d;)Lggd;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_1
    :try_start_3
    iget-object v5, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception occurred attempting to connect: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/doman/core/ig/proxy/e;->a(Z)V

    invoke-virtual {v3, v4, v0}, Lcom/doman/core/ig/proxy/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :goto_2
    iget-object v2, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->g:Lggd;

    invoke-interface {v2}, Lggd;->d()Lv7d;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/doman/core/ig/proxy/MqttAndroidClient;->g:Lggd;

    invoke-interface {v2, v1, v0}, Lv7d;->onFailure(Lggd;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method public static synthetic c(Lcom/doman/core/ig/proxy/MqttAndroidClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->h:Z

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lggd;
    .locals 3

    .line 3
    new-instance v0, Lcom/doman/core/ig/proxy/h;

    const/4 v1, 0x0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/doman/core/ig/proxy/h;-><init>(Lcom/doman/core/ig/proxy/MqttAndroidClient;Lv7d;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Lggd;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    invoke-virtual {v2, p0, p1, v1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized a(Lggd;)Ljava/lang/String;
    .locals 2

    .line 5
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->i:Landroid/util/SparseArray;

    iget v1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->j:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget p1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->j:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->j:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "MqttService.callbackToActivity.v0"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->e:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->h:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->k:Ljava/lang/String;

    return-object p0
.end method

.method public close()V
    .locals 5

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->m:Lcld;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcld;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;)Lcom/doman/core/ig/proxy/e;

    move-result-object p0

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "close()"

    invoke-virtual {v0, v1, v2}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mq/mgmi/client/message/h;->close()V
    :try_end_2
    .catch Lcom/mq/mgmi/client/message/n; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/doman/core/ig/proxy/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "MqttService.clientHandle"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_16

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p2, "MqttService.callbackAction"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "connect"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->g:Lggd;

    invoke-direct {p0, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Landroid/os/Bundle;)Lggd;

    invoke-direct {p0, p2, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Lggd;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "connectExtended"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->n:Lhjd;

    instance-of p2, p2, Lekd;

    if-eqz p2, :cond_2

    const-string p2, "MqttService.reconnect"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-string v0, "MqttService.serverURI"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->n:Lhjd;

    check-cast p0, Lekd;

    invoke-interface {p0, p2, p1}, Lekd;->a(ZLjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "messageArrived"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p2, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->n:Lhjd;

    if-eqz p2, :cond_6

    const-string p2, "MqttService.messageId"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "MqttService.destinationName"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.PARCEL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/doman/core/ig/proxy/ParcelableMqttMessage;

    :try_start_0
    iget v1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->p:I

    sget v2, Lcom/doman/core/ig/proxy/MqttAndroidClient$a;->a:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->n:Lhjd;

    invoke-interface {v1, v0, p1}, Lhjd;->a(Ljava/lang/String;Ltod;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/doman/core/ig/proxy/MqttService;->c:Lcom/doman/core/ig/proxy/d;

    invoke-interface {p1, p0, p2}, Lcom/doman/core/ig/proxy/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    return-void

    :cond_4
    sget-object p0, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    return-void

    :cond_5
    iput-object p2, p1, Lcom/doman/core/ig/proxy/ParcelableMqttMessage;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->n:Lhjd;

    invoke-interface {p0, v0, p1}, Lhjd;->a(Ljava/lang/String;Ltod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-void

    :cond_7
    const-string/jumbo v0, "subscribe"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Landroid/os/Bundle;)Lggd;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Lggd;Landroid/os/Bundle;)V

    return-void

    :cond_8
    const-string/jumbo v0, "unsubscribe"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Landroid/os/Bundle;)Lggd;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Lggd;Landroid/os/Bundle;)V

    return-void

    :cond_9
    const-string v0, "send"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->b(Landroid/os/Bundle;)Lggd;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Lggd;Landroid/os/Bundle;)V

    return-void

    :cond_a
    const-string v0, "messageDelivered"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Landroid/os/Bundle;)Lggd;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->n:Lhjd;

    if-eqz v0, :cond_b

    const-string v0, "MqttService.callbackStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/doman/core/ig/proxy/j;

    sget-object v0, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    if-ne p1, v0, :cond_b

    instance-of p1, p2, Lyad;

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->n:Lhjd;

    check-cast p2, Lyad;

    invoke-interface {p0, p2}, Lhjd;->a(Lyad;)V

    :cond_b
    return-void

    :cond_c
    const-string v0, "onConnectionLost"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MqttService.exception"

    if-eqz v0, :cond_e

    iget-object p2, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->n:Lhjd;

    if-eqz p2, :cond_d

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->n:Lhjd;

    invoke-interface {p0, p1}, Lhjd;->a(Ljava/lang/Throwable;)V

    :cond_d
    return-void

    :cond_e
    const-string v0, "disconnect"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Landroid/os/Bundle;)Lggd;

    move-result-object p1

    if-eqz p1, :cond_f

    check-cast p1, Lcom/doman/core/ig/proxy/h;

    invoke-virtual {p1}, Lcom/doman/core/ig/proxy/h;->b()V

    :cond_f
    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->n:Lhjd;

    if-eqz p0, :cond_10

    invoke-interface {p0, p2}, Lhjd;->a(Ljava/lang/Throwable;)V

    :cond_10
    return-void

    :cond_11
    const-string/jumbo v0, "trace"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->o:Lcom/doman/core/ig/proxy/i;

    if-eqz p2, :cond_14

    const-string p2, "MqttService.traceSeverity"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "MqttService.errorMessage"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MqttService.traceTag"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->o:Lcom/doman/core/ig/proxy/i;

    invoke-interface {p0, v2, v0}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    const-string v3, "error"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->o:Lcom/doman/core/ig/proxy/i;

    invoke-interface {p0, v2, v0}, Lcom/doman/core/ig/proxy/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->o:Lcom/doman/core/ig/proxy/i;

    invoke-interface {p0, v2, v0, p1}, Lcom/doman/core/ig/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_14
    return-void

    :cond_15
    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    if-eqz p0, :cond_16

    const-string p1, "MqttService"

    const-string p2, "Callback action doesn\'t exist."

    invoke-virtual {p0, p1, p2}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_0
    return-void
.end method
