.class public Lcom/cloud/hisavana/sdk/b4;
.super Lcom/cloud/sdk/commonutil/util/c;
.source "source.java"


# static fields
.field private static a:Lcom/cloud/hisavana/sdk/b4;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ADSDK"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/cloud/hisavana/sdk/b4;->b:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/sdk/commonutil/util/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized b()Lcom/cloud/hisavana/sdk/b4;
    .locals 3

    .line 1
    const-class v0, Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/b4;->a:Lcom/cloud/hisavana/sdk/b4;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const-class v1, Lcom/cloud/hisavana/sdk/b4;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v2, Lcom/cloud/hisavana/sdk/b4;->a:Lcom/cloud/hisavana/sdk/b4;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Lcom/cloud/hisavana/sdk/b4;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/b4;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcom/cloud/hisavana/sdk/b4;->a:Lcom/cloud/hisavana/sdk/b4;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v1

    .line 26
    goto :goto_2

    .line 27
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    throw v2

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    :goto_2
    sget-object v1, Lcom/cloud/hisavana/sdk/b4;->a:Lcom/cloud/hisavana/sdk/b4;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 35
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    throw v1
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/cloud/hisavana/sdk/b4;->b:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public getGlobalTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ADSDK_S"

    .line 2
    .line 3
    return-object v0
.end method
