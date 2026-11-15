.class public final Lcom/transsnet/downloader/manager/DownloadStatusIconManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lzw/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;

.field private static final i:Lkotlin/Lazy;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Ljava/util/List;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->h:Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsnet/downloader/manager/q;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/q;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->i:Lkotlin/Lazy;

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
    new-instance v0, Lcom/transsnet/downloader/manager/r;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/r;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->b:Ljava/util/List;

    .line 21
    .line 22
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "k_download_done_status"

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->g:Z

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->q()Lcom/transsnet/downloader/manager/g;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, p0}, Lcom/transsnet/downloader/manager/g;->x(Lzw/b;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic b()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->p()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lcom/transsnet/downloader/manager/DownloadStatusIconManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->s()Lcom/transsnet/downloader/manager/DownloadStatusIconManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic g(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic h(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic i(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic j(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->t(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic n(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->f:I

    .line 2
    .line 3
    return-void
.end method

.method private static final p()Lcom/transsnet/downloader/manager/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final q()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final s()Lcom/transsnet/downloader/manager/DownloadStatusIconManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final t(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->b:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lzw/e;

    .line 20
    .line 21
    invoke-interface {v1, p1, p2}, Lzw/e;->a(II)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;IIILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, -0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->t(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Lcom/transsnet/downloader/callback/DownloadTaskStat;)V
    .locals 7

    .line 1
    const-string v0, "downloadTaskStat"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$onChange$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$onChange$1;-><init>(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;Lcom/transsnet/downloader/callback/DownloadTaskStat;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final o(Lzw/e;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->q()Lcom/transsnet/downloader/manager/g;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/transsnet/downloader/manager/g;->D()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final r()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$initDownloadUnreadList$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$initDownloadUnreadList$1;-><init>(Lcom/transsnet/downloader/manager/DownloadStatusIconManager;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final v(Lzw/e;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final w(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "k_download_done_status"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->g:Z

    .line 13
    .line 14
    return-void
.end method
