.class public final Lcom/transsion/player/orplayer/ORPlayerPreloadManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

.field private static final j:Lkotlin/Lazy;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/player/orplayer/x;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/player/orplayer/x;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ORPlayerPreload"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-wide/16 v0, 0xfa0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->b:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->c:J

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    .line 39
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Lcom/aliyun/loader/MediaLoader;->setOnLoadStatusListener(Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, "video_cache"

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-static {v1, v2, v0}, Lcom/aliyun/player/AliPlayerGlobalSettings;->enableLocalCache(ZILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 99
    .line 100
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :goto_1
    return-void
.end method

.method public static synthetic a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final d()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final l(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->h:J

    .line 6
    .line 7
    sget-object v2, Lsn/e;->a:Lsn/e;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "startPreload, url = "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/4 v6, 0x4

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v2 .. v7}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-wide v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->c:J

    .line 39
    .line 40
    invoke-virtual {v0, p1, v1, v2}, Lcom/aliyun/loader/MediaLoader;->load(Ljava/lang/String;J)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 7

    .line 1
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "cancelAll"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v4, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$cancelAll$1;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-direct {v4, v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$cancelAll$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    :cond_1
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    :goto_0
    return p1
.end method

.method public final g(Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lsn/e;->a:Lsn/e;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "pause, but not contains, PausedContains =  "

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", url = "

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v5, 0x4

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static/range {v1 .. v6}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    sget-object v7, Lsn/e;->a:Lsn/e;

    .line 55
    .line 56
    iget-object v8, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v1, "pause, url = "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    const/4 v11, 0x4

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    invoke-static/range {v7 .. v12}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    const-string v0, ""

    .line 95
    .line 96
    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lcom/aliyun/loader/MediaLoader;->pause(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_2

    .line 112
    .line 113
    iget-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 114
    .line 115
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v0, "first(...)"

    .line 120
    .line 121
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    check-cast p1, Ljava/lang/String;

    .line 125
    .line 126
    iput-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 127
    .line 128
    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_2

    .line 146
    .line 147
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 148
    .line 149
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_2
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 7

    .line 1
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-object v4, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v6, "pauseAll, paused size = "

    .line 25
    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ", urlsCache size = "

    .line 33
    .line 34
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ", curUrl = "

    .line 41
    .line 42
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, " "

    .line 49
    .line 50
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v4, 0x4

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-lez v0, :cond_0

    .line 70
    .line 71
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/aliyun/loader/MediaLoader;->pause(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    const-string v0, ""

    .line 88
    .line 89
    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 90
    .line 91
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 109
    .line 110
    .line 111
    :cond_1
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->b:J

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j(Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j(Ljava/lang/String;J)V
    .locals 6

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    iput-wide p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->c:J

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string p3, "start preload, contains return~ url = "

    .line 30
    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v4, 0x4

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string p3, "start preload, pause contains resume~ url = "

    .line 66
    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/4 v4, 0x4

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-lez p2, :cond_2

    .line 90
    .line 91
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iput-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2, p1}, Lcom/aliyun/loader/MediaLoader;->resume(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_3
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 113
    .line 114
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_4

    .line 119
    .line 120
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 123
    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string p3, "is preloaded, return, url = "

    .line 130
    .line 131
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const/4 v4, 0x4

    .line 142
    const/4 v5, 0x0

    .line 143
    const/4 v3, 0x0

    .line 144
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_4
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 149
    .line 150
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-lez p2, :cond_7

    .line 155
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide p2

    .line 160
    iget-wide v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->h:J

    .line 161
    .line 162
    sub-long/2addr p2, v0

    .line 163
    const-wide/16 v0, 0x1388

    .line 164
    .line 165
    cmp-long p2, p2, v0

    .line 166
    .line 167
    if-lez p2, :cond_6

    .line 168
    .line 169
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 170
    .line 171
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 172
    .line 173
    const/4 v4, 0x4

    .line 174
    const/4 v5, 0x0

    .line 175
    const-string v2, "last is more than 5 sec, preload new url"

    .line 176
    .line 177
    const/4 v3, 0x0

    .line 178
    invoke-static/range {v0 .. v5}, Lsn/e;->i(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 182
    .line 183
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-nez p2, :cond_5

    .line 188
    .line 189
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 190
    .line 191
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    const-string p3, "first(...)"

    .line 196
    .line 197
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    check-cast p2, Ljava/lang/String;

    .line 201
    .line 202
    iput-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 203
    .line 204
    invoke-direct {p0, p2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 208
    .line 209
    iget-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 215
    .line 216
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_5
    iput-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 221
    .line 222
    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_6
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 227
    .line 228
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 229
    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string p3, "start preload, add to cache, url = "

    .line 236
    .line 237
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    const/4 v4, 0x4

    .line 248
    const/4 v5, 0x0

    .line 249
    const/4 v3, 0x0

    .line 250
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 254
    .line 255
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_7
    iput-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 260
    .line 261
    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_1
    return-void
.end method

.method public final k()V
    .locals 7

    .line 1
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-object v4, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v6, "resumeAll, paused size = "

    .line 25
    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ", urlsCache size = "

    .line 33
    .line 34
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ", curUrl = "

    .line 41
    .line 42
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, " "

    .line 49
    .line 50
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v4, 0x4

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-lez v0, :cond_0

    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "iterator(...)"

    .line 87
    .line 88
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Ljava/lang/String;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-lez v2, :cond_1

    .line 110
    .line 111
    iget-object v2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2, v1}, Lcom/aliyun/loader/MediaLoader;->resume(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public onCanceled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCompleted(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "preload complete, url = "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lsn/e;->i(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "first(...)"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {p0, v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string v0, ""

    .line 68
    .line 69
    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 70
    .line 71
    :goto_0
    if-eqz p1, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v6, -0x12c

    .line 6
    .line 7
    if-ne p2, v6, :cond_0

    .line 8
    .line 9
    const-string v2, "is preloaded code"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v2, "errorCode"

    .line 13
    .line 14
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "preload error, "

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " = "

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ", errorMsg= "

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p3, ", url = "

    .line 44
    .line 45
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v4, 0x4

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    .line 63
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-nez p3, :cond_1

    .line 68
    .line 69
    iget-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    .line 71
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    const-string v0, "first(...)"

    .line 76
    .line 77
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    check-cast p3, Ljava/lang/String;

    .line 81
    .line 82
    iput-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 83
    .line 84
    invoke-direct {p0, p3}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 95
    .line 96
    invoke-virtual {p3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    if-ne p2, v6, :cond_2

    .line 100
    .line 101
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_2
    return-void
.end method
