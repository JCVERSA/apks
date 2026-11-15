.class public final Lcom/cloud/hisavana/sdk/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a0$a;-><init>()V

    return-void
.end method

.method public static final synthetic b(Lcom/cloud/hisavana/sdk/a0$a;Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/a0$a;->a(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/a$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/a$a;
    .locals 5

    invoke-static {}, Lcom/cloud/hisavana/sdk/a0;->m()Lcom/google/android/exoplayer2/upstream/a$a;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/a0;->n()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/a0;->m()Lcom/google/android/exoplayer2/upstream/a$a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Lcom/cloud/hisavana/net/utils/StorageUtils;->e(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    const-string v1, "getExoCacheDirectory(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v2, Luj5;

    const-wide/32 v3, 0x6400000

    invoke-direct {v2, v3, v4}, Luj5;-><init>(J)V

    new-instance v3, Law9;

    invoke-direct {v3, p1}, Law9;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/b;Lbt1;)V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/a$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/a$c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/a$c;->c(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/a$c;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/c$a;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/a$c;->d(Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/upstream/cache/a$c;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/a0;->h(Lcom/google/android/exoplayer2/upstream/a$a;)V

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    const-string v2, "ExoPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disk cache init failed, fallback to no-cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/c$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/c$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/a0;->h(Lcom/google/android/exoplayer2/upstream/a$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method
