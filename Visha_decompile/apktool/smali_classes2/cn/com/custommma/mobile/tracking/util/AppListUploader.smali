.class public Lcn/com/custommma/mobile/tracking/util/AppListUploader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcn/com/custommma/mobile/tracking/util/AppListUploader;

.field public static c:Z

.field public static d:Landroid/content/Context;


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->d:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->a:J

    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic b(Lcn/com/custommma/mobile/tracking/util/AppListUploader;J)J
    .locals 0

    iput-wide p1, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->a:J

    return-wide p1
.end method

.method public static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->c:Z

    return p0
.end method

.method public static e(Landroid/content/Context;)Lcn/com/custommma/mobile/tracking/util/AppListUploader;
    .locals 2

    sget-object v0, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->b:Lcn/com/custommma/mobile/tracking/util/AppListUploader;

    if-nez v0, :cond_1

    const-class v0, Lcn/com/custommma/mobile/tracking/util/AppListUploader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->b:Lcn/com/custommma/mobile/tracking/util/AppListUploader;

    if-nez v1, :cond_0

    new-instance v1, Lcn/com/custommma/mobile/tracking/util/AppListUploader;

    invoke-direct {v1, p0}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->b:Lcn/com/custommma/mobile/tracking/util/AppListUploader;

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
    sget-object p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->b:Lcn/com/custommma/mobile/tracking/util/AppListUploader;

    return-object p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Lva1;)V
    .locals 10

    iget-object v0, p2, Lva1;->k:Ltf;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Ltf;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Ltf;->b:I

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lva1;->b:Lsw2;

    iget-object v2, v2, Lsw2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_uploadtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-wide v1, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    sget-object v1, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->d:Landroid/content/Context;

    const-string v2, "cn.com.mma.mobile.tracking.mgmi_ssp_other"

    invoke-static {v1, v2, v9}, Lng9;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->a:J

    :cond_1
    iget v1, v0, Ltf;->b:I

    mul-int/lit16 v1, v1, 0xe10

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v7, v3, v5

    iget-wide v3, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->a:J

    add-long/2addr v3, v1

    cmp-long v1, v7, v3

    if-lez v1, :cond_4

    const/4 v1, 0x1

    sput-boolean v1, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->c:Z

    iget-object v1, v0, Ltf;->a:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Ltf;->a:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Ltf;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v5, p1

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lva1;->b:Lsw2;

    iget-object v1, v1, Lsw2;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ltf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, v0, Ltf;->a:Ljava/lang/String;

    goto :goto_0

    :goto_2
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v3 .. v9}, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;-><init>(Lcn/com/custommma/mobile/tracking/util/AppListUploader;Ljava/lang/String;Lva1;JLjava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public declared-synchronized f(Ljava/lang/String;Lva1;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->d(Ljava/lang/String;Lva1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
