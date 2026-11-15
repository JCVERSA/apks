.class public final Lnrd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnrd;

.field public static volatile b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnrd;

    invoke-direct {v0}, Lnrd;-><init>()V

    sput-object v0, Lnrd;->a:Lnrd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lwsd;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnrd;->b()Z

    move-result p0

    const-string v0, "VideoPlayerFactory"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v1, "creating ExoPlayerImpl"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/sdk/a0;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/a0;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExoPlayerImpl init failed, degrading to NoOp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/sdk/h;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/h;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "creating NoOpVideoPlayer (ExoPlayer unavailable)"

    invoke-virtual {p0, v0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/sdk/h;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/h;-><init>()V

    :goto_0
    return-object p0
.end method

.method public final b()Z
    .locals 5

    invoke-static {}, Lr6;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lnrd;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    monitor-enter p0

    :try_start_0
    sget-object v0, Lnrd;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v2, "VideoPlayerFactory"

    const-string v3, "ExoPlayer is found"

    invoke-virtual {v0, v2, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    const-string v2, "VideoPlayerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExoPlayer probe failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "VideoPlayerFactory"

    const-string v2, "ExoPlayer not found, video ads will be degraded gracefully"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lnrd;->b:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    :goto_2
    monitor-exit p0

    return v0

    :goto_3
    monitor-exit p0

    throw v0
.end method
