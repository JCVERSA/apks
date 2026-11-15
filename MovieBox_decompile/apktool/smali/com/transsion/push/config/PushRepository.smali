.class public final Lcom/transsion/push/config/PushRepository;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/push/config/IDataSource;


# static fields
.field private static e:Lcom/transsion/push/config/PushRepository; = null

.field private static f:J = -0x1L

.field private static g:J = -0x1L


# instance fields
.field private a:Lcom/transsion/core/utils/f;

.field private b:Lcom/transsion/push/config/a;

.field private c:Lcom/transsion/push/bean/ConfigInfo$Config;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "sp_push"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/core/utils/f;->e(Ljava/lang/String;)Lcom/transsion/core/utils/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    :catch_0
    new-instance v0, Lcom/transsion/push/config/a;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/transsion/push/config/a;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    .line 18
    .line 19
    return-void
.end method

.method static synthetic a(Lcom/transsion/push/config/PushRepository;)Lcom/transsion/push/config/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/push/config/PushRepository;->d(Lcom/transsion/push/IClientIdListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "retry_count"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {}, Lcom/transsion/push/utils/g0;->c()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    sget-object v4, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 23
    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v6, "Reporting Failure, Retry Reporting,retryCount\uff1a"

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v6, ", max retryCount\uff1a"

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    if-lt v2, v3, :cond_0

    .line 53
    .line 54
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 55
    .line 56
    const-string v3, "More than the maximum number of retries"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-static {}, Lcom/transsion/push/utils/g0;->b()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    add-long/2addr v2, v4

    .line 70
    invoke-virtual {p0, v2, v3}, Lcom/transsion/push/config/PushRepository;->saveReportTime(J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    invoke-static {}, Lcom/transsion/push/utils/g0;->d()J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    add-long/2addr v0, v2

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/transsion/push/config/PushRepository;->saveReportTime(J)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private d(Lcom/transsion/push/IClientIdListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "mRemoteDataSource is null"

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/transsion/push/IClientIdListener;->onFail(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    new-instance v0, Lcom/transsion/push/config/PushRepository$4;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lcom/transsion/push/config/PushRepository$4;-><init>(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/push/config/PushRepository;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/push/config/PushRepository;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/transsion/push/config/PushRepository;->e:Lcom/transsion/push/config/PushRepository;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/transsion/push/config/PushRepository;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/transsion/push/config/PushRepository;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/transsion/push/config/PushRepository;->e:Lcom/transsion/push/config/PushRepository;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/push/config/PushRepository;->e:Lcom/transsion/push/config/PushRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public getClientId(Lcom/transsion/push/IClientIdListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    const-string v1, "get client id"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "push_client_id"

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/transsion/push/IClientIdListener;->onSuccess(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-string v0, "push_token"

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/CharSequence;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Lcom/transsion/push/config/PushRepository$a;

    .line 45
    .line 46
    invoke-direct {v0, p0, p1}, Lcom/transsion/push/config/PushRepository$a;-><init>(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/transsion/push/utils/FirebaseUtils;->d(Lcom/transsion/push/utils/FirebaseUtils$b;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/push/config/PushRepository;->d(Lcom/transsion/push/IClientIdListener;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public getConfig()Lcom/transsion/push/bean/ConfigInfo$Config;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->c:Lcom/transsion/push/bean/ConfigInfo$Config;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_1
    const-string v2, "push_config"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/transsion/core/utils/f;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 33
    .line 34
    .line 35
    const-class v0, Lcom/transsion/push/bean/ConfigInfo$Config;

    .line 36
    .line 37
    invoke-static {v2, v0}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/transsion/push/bean/ConfigInfo$Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v4, "get config fail, e:"

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-object v1
.end method

.method public getLastTpmsReportTime()J
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    sget-wide v2, Lcom/transsion/push/config/PushRepository;->g:J

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v6, v2, v4

    .line 13
    .line 14
    if-lez v6, :cond_0

    .line 15
    .line 16
    return-wide v2

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_1
    const-string v3, "report_tpms_active_time"

    .line 23
    .line 24
    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/core/utils/f;->h(Ljava/lang/String;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    sput-wide v6, Lcom/transsion/push/config/PushRepository;->g:J

    .line 29
    .line 30
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 31
    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v7, "sLocalTpmsReportTime"

    .line 38
    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget-wide v7, Lcom/transsion/push/config/PushRepository;->g:J

    .line 43
    .line 44
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v2, v6}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-wide v6, Lcom/transsion/push/config/PushRepository;->g:J

    .line 55
    .line 56
    cmp-long v2, v6, v4

    .line 57
    .line 58
    if-gtz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 61
    .line 62
    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    sput-wide v0, Lcom/transsion/push/config/PushRepository;->g:J

    .line 66
    .line 67
    :cond_2
    sget-wide v0, Lcom/transsion/push/config/PushRepository;->g:J

    .line 68
    .line 69
    return-wide v0
.end method

.method public getReportTime()J
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    sget-wide v2, Lcom/transsion/push/config/PushRepository;->f:J

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v6, v2, v4

    .line 13
    .line 14
    if-lez v6, :cond_0

    .line 15
    .line 16
    return-wide v2

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_1
    const-string v3, "report_active_time"

    .line 23
    .line 24
    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/core/utils/f;->h(Ljava/lang/String;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    sput-wide v6, Lcom/transsion/push/config/PushRepository;->f:J

    .line 29
    .line 30
    cmp-long v2, v6, v4

    .line 31
    .line 32
    if-gtz v2, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 35
    .line 36
    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    sput-wide v0, Lcom/transsion/push/config/PushRepository;->f:J

    .line 40
    .line 41
    :cond_2
    sget-wide v0, Lcom/transsion/push/config/PushRepository;->f:J

    .line 42
    .line 43
    return-wide v0
.end method

.method public getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p2

    .line 6
    :cond_0
    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    move-object v1, p2

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/utils/f;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_1
    instance-of v1, p2, Ljava/lang/Boolean;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move-object v1, p2

    .line 26
    check-cast v1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/utils/f;->c(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_2
    instance-of v1, p2, Ljava/lang/Integer;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    move-object v1, p2

    .line 46
    check-cast v1, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/utils/f;->f(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3
    instance-of v1, p2, Ljava/lang/Long;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    move-object v1, p2

    .line 66
    check-cast v1, Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/core/utils/f;->h(Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :cond_4
    instance-of v1, p2, Ljava/lang/Float;

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    move-object v1, p2

    .line 86
    check-cast v1, Ljava/lang/Float;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/utils/f;->d(Ljava/lang/String;F)F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_5
    instance-of v1, p2, Ljava/util/Set;

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    new-instance v1, Ljava/util/HashSet;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/utils/f;->k(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_6
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v1, "Type of "

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, " is not supported."

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    return-object p2

    .line 151
    :goto_0
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v2, "Type of default value is not match with value stored."

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    return-object p2
.end method

.method public getWhiteList()Lcom/transsion/push/bean/ConfigInfo$Whitelist;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-class v1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/transsion/push/bean/ConfigInfo$Whitelist;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :try_start_1
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "push_white_list"

    .line 30
    .line 31
    invoke-static {v2, v3}, Lcom/transsion/crypto/TCrypterSdk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    iput-object v2, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2, v1}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    return-object v1

    .line 51
    :catch_1
    move-exception v1

    .line 52
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v4, "get white list fail, e:"

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v2, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method public isReported()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    const-string v2, "report_active_success"

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lcom/transsion/core/utils/f;->b(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    return v1
.end method

.method public putSpValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p2, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/transsion/core/utils/f;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    instance-of v1, p2, Ljava/lang/Boolean;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    check-cast p2, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/transsion/core/utils/f;->l(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    instance-of v1, p2, Ljava/lang/Integer;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    check-cast p2, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {v0, p1, p2}, Lcom/transsion/core/utils/f;->n(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    instance-of v1, p2, Ljava/lang/Long;

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    check-cast p2, Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    instance-of v1, p2, Ljava/lang/Float;

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    check-cast p2, Ljava/lang/Float;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/transsion/core/utils/f;->m(Ljava/lang/String;F)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    instance-of v1, p2, Ljava/util/Set;

    .line 75
    .line 76
    if-eqz v1, :cond_6

    .line 77
    .line 78
    check-cast p2, Ljava/util/Set;

    .line 79
    .line 80
    invoke-virtual {v0, p1, p2}, Lcom/transsion/core/utils/f;->q(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :goto_0
    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v1, "put sp, Type of default value is not match with value stored."

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_1
    return-void
.end method

.method public removeSpValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/core/utils/f;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public saveConfig(Lcom/transsion/push/bean/ConfigInfo$Config;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/transsion/push/config/PushRepository;->c:Lcom/transsion/push/bean/ConfigInfo$Config;

    .line 9
    .line 10
    const-string v1, "push_config"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/transsion/core/utils/f;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "save config fail, e:"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method public saveReportTime(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Update reporting time\uff0creportTime:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sput-wide p1, Lcom/transsion/push/config/PushRepository;->f:J

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 31
    .line 32
    const-string v1, "report_active_time"

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public saveTpmsReportTime(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Update reporting time\uff0creportTime:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sput-wide p1, Lcom/transsion/push/config/PushRepository;->g:J

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    .line 31
    .line 32
    const-string v1, "report_tpms_active_time"

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public saveWhiteList(Lcom/transsion/push/bean/ConfigInfo$Whitelist;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->apps:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const-string v1, "push_white_list"

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :try_start_1
    invoke-static {p1}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1, v1, v0}, Lcom/transsion/crypto/TCrypterSdk;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    .line 43
    .line 44
    const-class v2, Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    .line 45
    .line 46
    invoke-static {v0, v2}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->apps:Ljava/util/List;

    .line 53
    .line 54
    iget-object v2, p1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->apps:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lcom/transsion/push/bean/ConfigInfo$Apps;

    .line 71
    .line 72
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    new-instance v2, Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    .line 83
    .line 84
    invoke-direct {v2}, Lcom/transsion/push/bean/ConfigInfo$Whitelist;-><init>()V

    .line 85
    .line 86
    .line 87
    iget p1, p1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->version:I

    .line 88
    .line 89
    iput p1, v2, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->version:I

    .line 90
    .line 91
    new-instance p1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .line 95
    .line 96
    iput-object p1, v2, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->apps:Ljava/util/List;

    .line 97
    .line 98
    invoke-static {v2}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {p1, v1, v0}, Lcom/transsion/crypto/TCrypterSdk;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_2
    return-void
.end method

.method public subscribeToTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const-string p1, "subscribe topic is empty"

    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/transsion/push/ITopicListener;->onFail(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "push_client_id"

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    const-string p1, "subscribe clientId is empty"

    .line 43
    .line 44
    invoke-interface {p2, p1}, Lcom/transsion/push/ITopicListener;->onFail(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void

    .line 53
    :cond_3
    new-instance v0, Lcom/transsion/push/config/PushRepository$1;

    .line 54
    .line 55
    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/push/config/PushRepository$1;-><init>(Lcom/transsion/push/config/PushRepository;Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public syncActive()V
    .locals 5

    .line 1
    const-string v0, "push_token"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 18
    .line 19
    const-string v1, "Token is empty"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 30
    .line 31
    const-string v1, "mRemoteDataSource is null"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getDebug()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getTestEnv()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    const-string v0, "https://api.twibida.com/tcm/v2/instance/"

    .line 58
    .line 59
    invoke-static {v0}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-static {v0, v2}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/transsion/push/config/a;->f()Lcom/transsion/push/bean/ConfigInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v2, "push_client_id"

    .line 76
    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 80
    .line 81
    const-string v3, "syncActive onFail"

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v2, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/CharSequence;

    .line 91
    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    invoke-direct {p0}, Lcom/transsion/push/config/PushRepository;->c()V

    .line 99
    .line 100
    .line 101
    :cond_3
    return-void

    .line 102
    :cond_4
    const/4 v1, 0x0

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v3, "retry_count"

    .line 108
    .line 109
    invoke-virtual {p0, v3, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 113
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v4, "get config response data: "

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/transsion/push/bean/ConfigInfo;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v1, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->nextWithApp:Z

    .line 139
    .line 140
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const-string v3, "push_is_next_with_app"

    .line 145
    .line 146
    invoke-virtual {p0, v3, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->nextWithDetail:Z

    .line 150
    .line 151
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v3, "push_is_report_detail"

    .line 156
    .line 157
    invoke-virtual {p0, v3, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->clientId:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p0, v2, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->startPointReport:Z

    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, "push_start_point_report"

    .line 172
    .line 173
    invoke-virtual {p0, v2, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->destroyAppIds:[Ljava/lang/String;

    .line 177
    .line 178
    iget v2, v0, Lcom/transsion/push/bean/ConfigInfo;->syncInfoInterval:I

    .line 179
    .line 180
    invoke-static {v1, v2}, Lcom/transsion/push/utils/k0;->f([Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->w()V

    .line 184
    .line 185
    .line 186
    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->configRefresh:Z

    .line 187
    .line 188
    if-eqz v1, :cond_5

    .line 189
    .line 190
    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->config:Lcom/transsion/push/bean/ConfigInfo$Config;

    .line 191
    .line 192
    if-eqz v1, :cond_5

    .line 193
    .line 194
    iget v2, v1, Lcom/transsion/push/bean/ConfigInfo$Config;->version:I

    .line 195
    .line 196
    if-lez v2, :cond_5

    .line 197
    .line 198
    invoke-virtual {p0, v1}, Lcom/transsion/push/config/PushRepository;->saveConfig(Lcom/transsion/push/bean/ConfigInfo$Config;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->config:Lcom/transsion/push/bean/ConfigInfo$Config;

    .line 202
    .line 203
    iget v1, v1, Lcom/transsion/push/bean/ConfigInfo$Config;->destroy:I

    .line 204
    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const-string v2, "push_self_destroying"

    .line 210
    .line 211
    invoke-virtual {p0, v2, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_5
    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->whitelistRefresh:Z

    .line 215
    .line 216
    if-eqz v1, :cond_6

    .line 217
    .line 218
    iget-object v0, v0, Lcom/transsion/push/bean/ConfigInfo;->whitelist:Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    .line 219
    .line 220
    if-eqz v0, :cond_6

    .line 221
    .line 222
    iget v1, v0, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->version:I

    .line 223
    .line 224
    if-lez v1, :cond_6

    .line 225
    .line 226
    invoke-virtual {p0, v0}, Lcom/transsion/push/config/PushRepository;->saveWhiteList(Lcom/transsion/push/bean/ConfigInfo$Whitelist;)V

    .line 227
    .line 228
    .line 229
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 230
    .line 231
    .line 232
    move-result-wide v0

    .line 233
    invoke-static {}, Lcom/transsion/push/utils/g0;->b()J

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    add-long/2addr v0, v2

    .line 238
    invoke-virtual {p0, v0, v1}, Lcom/transsion/push/config/PushRepository;->saveReportTime(J)V

    .line 239
    .line 240
    .line 241
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 242
    .line 243
    const-string v1, "report_active_success"

    .line 244
    .line 245
    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method public syncSelfDestroying()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 6
    .line 7
    const-string v1, "mRemoteDataSource is null"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getDebug()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getTestEnv()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "https://api.twibida.com/tcm/v2/instance/"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 42
    .line 43
    const-string v1, "gslb not inited"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackReport()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/push/config/a;->e()Lcom/transsion/push/bean/SelfDestroyInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "push_self_destroying_time"

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 67
    .line 68
    const-string v2, "sync self-destroying fail"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-static {}, Lcom/transsion/push/utils/g0;->e()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    add-long/2addr v2, v4

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 91
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v4, "get self-destroying response data: "

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/transsion/push/bean/SelfDestroyInfo;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget v2, v0, Lcom/transsion/push/bean/SelfDestroyInfo;->destroy:I

    .line 117
    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const-string v3, "push_self_destroying"

    .line 123
    .line 124
    invoke-virtual {p0, v3, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget v0, v0, Lcom/transsion/push/bean/SelfDestroyInfo;->interval:I

    .line 128
    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v2, "push_self_destroying_interval"

    .line 134
    .line 135
    invoke-virtual {p0, v2, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    invoke-static {}, Lcom/transsion/push/utils/g0;->e()J

    .line 143
    .line 144
    .line 145
    move-result-wide v4

    .line 146
    add-long/2addr v2, v4

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public unsubscribeFromTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const-string p1, "unsubscribe topic is empty"

    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/transsion/push/ITopicListener;->onFail(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "push_client_id"

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    const-string p1, "unsubscribe clientId is empty"

    .line 43
    .line 44
    invoke-interface {p2, p1}, Lcom/transsion/push/ITopicListener;->onFail(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void

    .line 53
    :cond_3
    new-instance v0, Lcom/transsion/push/config/PushRepository$2;

    .line 54
    .line 55
    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/push/config/PushRepository$2;-><init>(Lcom/transsion/push/config/PushRepository;Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public updateNewToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "push_token"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    const-string v0, "push_is_report_detail"

    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    const-string v0, "report_active_success"

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
