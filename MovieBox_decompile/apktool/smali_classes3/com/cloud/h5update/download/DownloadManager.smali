.class public final Lcom/cloud/h5update/download/DownloadManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/h5update/download/DownloadManager$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/cloud/h5update/download/DownloadManager$a;

.field private static final h:Lkotlin/Lazy;


# instance fields
.field private a:I

.field private b:Ljava/util/concurrent/LinkedBlockingDeque;

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private d:Ljava/util/Map;

.field private e:Lokhttp3/OkHttpClient;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/h5update/download/DownloadManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/h5update/download/DownloadManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/h5update/download/DownloadManager;->g:Lcom/cloud/h5update/download/DownloadManager$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    sget-object v1, Lcom/cloud/h5update/download/DownloadManager$Companion$instance$2;->INSTANCE:Lcom/cloud/h5update/download/DownloadManager$Companion$instance$2;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/cloud/h5update/download/DownloadManager;->h:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/cloud/h5update/download/DownloadManager;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/h5update/download/DownloadManager;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/h5update/download/DownloadManager;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic c(Lcom/cloud/h5update/download/DownloadManager;Lcom/cloud/h5update/download/DownloadTask;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/h5update/download/DownloadManager;->b(Lcom/cloud/h5update/download/DownloadTask;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final e()I
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method

.method private final g()Lokhttp3/OkHttpClient;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0xf

    .line 7
    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Builder().connectTimeout\u2026TimeUnit.SECONDS).build()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private final j(Landroid/content/Context;ILokhttp3/OkHttpClient;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadManager;->f:Landroid/content/Context;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-ge p2, p1, :cond_1

    .line 5
    .line 6
    :cond_0
    move p2, p1

    .line 7
    goto :goto_0

    .line 8
    :cond_1
    const/16 p1, 0xf

    .line 9
    .line 10
    if-gt p2, p1, :cond_0

    .line 11
    .line 12
    :goto_0
    iput p2, p0, Lcom/cloud/h5update/download/DownloadManager;->a:I

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    .line 16
    iget v2, p0, Lcom/cloud/h5update/download/DownloadManager;->a:I

    .line 17
    .line 18
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 21
    .line 22
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 23
    .line 24
    .line 25
    const-wide/16 v3, 0x14

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    move v1, v2

    .line 29
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    check-cast p1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadManager;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 46
    .line 47
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadManager;->d:Ljava/util/Map;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/cloud/h5update/download/DownloadManager;->e:Lokhttp3/OkHttpClient;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 58
    .line 59
    const-string p2, "null cannot be cast to non-null type java.util.concurrent.LinkedBlockingDeque<java.lang.Runnable>"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public static synthetic k(Lcom/cloud/h5update/download/DownloadManager;Landroid/content/Context;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/h5update/download/DownloadManager;->e()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/h5update/download/DownloadManager;->i(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Lcom/cloud/h5update/download/DownloadTask;Z)V
    .locals 2

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/cloud/h5update/download/DownloadManager;->d:Ljava/util/Map;

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/h5update/download/DownloadTask;->getDownloadEntity()Lcom/cloud/h5update/bean/DownloadEntity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-ne p2, v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/h5update/download/DownloadTask;->getDownloadEntity()Lcom/cloud/h5update/bean/DownloadEntity;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    xor-int/2addr v1, v0

    .line 49
    if-ne v1, v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadManager;->e:Lokhttp3/OkHttpClient;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/cloud/h5update/download/DownloadTask;->setClient(Lokhttp3/OkHttpClient;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadManager;->d:Ljava/util/Map;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/cloud/h5update/download/DownloadManager;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 72
    .line 73
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_2

    .line 81
    .line 82
    iget-object p2, p0, Lcom/cloud/h5update/download/DownloadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 83
    .line 84
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadManager;->d:Ljava/util/Map;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/cloud/h5update/download/DownloadTask;

    .line 22
    .line 23
    :cond_2
    :goto_0
    return-void
.end method

.method public final f()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/cloud/h5update/download/DownloadTask;
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadManager;->d:Ljava/util/Map;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/cloud/h5update/download/DownloadTask;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    sget-object v1, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/cloud/h5update/utils/l;->h(Ljava/lang/String;)Lcom/cloud/h5update/bean/DownloadEntity;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    new-instance v0, Lcom/cloud/h5update/download/DownloadTask;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lcom/cloud/h5update/download/DownloadTask;-><init>(Lcom/cloud/h5update/bean/DownloadEntity;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-object v0

    .line 40
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method public final i(Landroid/content/Context;I)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/h5update/download/DownloadManager;->g()Lokhttp3/OkHttpClient;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/h5update/download/DownloadManager;->j(Landroid/content/Context;ILokhttp3/OkHttpClient;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/h5update/utils/l;->h(Ljava/lang/String;)Lcom/cloud/h5update/bean/DownloadEntity;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    new-instance v1, Ljava/io/File;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getFilePath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getFileName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    :cond_0
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getTotalSize()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    cmp-long p1, v1, v3

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    :cond_1
    return v0
.end method

.method public final m(Lcom/cloud/h5update/download/DownloadTask;)V
    .locals 3

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, p1, v2, v0, v1}, Lcom/cloud/h5update/download/DownloadManager;->c(Lcom/cloud/h5update/download/DownloadManager;Lcom/cloud/h5update/download/DownloadTask;ZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
