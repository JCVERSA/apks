.class public Likd;
.super Lja1;
.source "SourceFile"


# static fields
.field public static a:Likd;

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ADSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Likd;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lja1;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Likd;
    .locals 3

    const-class v0, Likd;

    monitor-enter v0

    :try_start_0
    sget-object v1, Likd;->a:Likd;

    if-nez v1, :cond_1

    const-class v1, Likd;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Likd;->a:Likd;

    if-nez v2, :cond_0

    new-instance v2, Likd;

    invoke-direct {v2}, Likd;-><init>()V

    sput-object v2, Likd;->a:Likd;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    sget-object v1, Likd;->a:Likd;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Likd;->b:Z

    return v0
.end method


# virtual methods
.method public getGlobalTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ADSDK_S"

    return-object p0
.end method
