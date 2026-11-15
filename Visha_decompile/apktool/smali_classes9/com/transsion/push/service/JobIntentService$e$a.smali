.class public final Lcom/transsion/push/service/JobIntentService$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/push/service/JobIntentService$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/service/JobIntentService$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/app/job/JobWorkItem;

.field public final synthetic b:Lcom/transsion/push/service/JobIntentService$e;


# direct methods
.method public constructor <init>(Lcom/transsion/push/service/JobIntentService$e;Landroid/app/job/JobWorkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/service/JobIntentService$e$a;->b:Lcom/transsion/push/service/JobIntentService$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/push/service/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/push/service/JobIntentService$e$a;->b:Lcom/transsion/push/service/JobIntentService$e;

    iget-object v0, v0, Lcom/transsion/push/service/JobIntentService$e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/push/service/JobIntentService$e$a;->b:Lcom/transsion/push/service/JobIntentService$e;

    iget-object v1, v1, Lcom/transsion/push/service/JobIntentService$e;->c:Landroid/app/job/JobParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/transsion/push/service/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1, p0}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    :try_start_2
    const-string v1, "JobServiceEngineImpl"

    const-string v2, "IllegalArgumentException: Failed to run mParams.completeWork(mJobWork)!"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string v1, "JobServiceEngineImpl"

    const-string v2, "SecurityException: Failed to run mParams.completeWork(mJobWork)!"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/transsion/push/service/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
