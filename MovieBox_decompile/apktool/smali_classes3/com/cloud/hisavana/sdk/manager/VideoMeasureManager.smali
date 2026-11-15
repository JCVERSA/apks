.class public final Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\r\u0010\u0003J\r\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u0017\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010!R\u0014\u0010$\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;",
        "",
        "<init>",
        "()V",
        "Lcom/cloud/hisavana/sdk/o4;",
        "measureImpl",
        "",
        "g",
        "(Lcom/cloud/hisavana/sdk/o4;)V",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adsDTO",
        "f",
        "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V",
        "startMeasure",
        "stopMeasure",
        "Landroid/view/View;",
        "view",
        "",
        "d",
        "(Landroid/view/View;)D",
        "Landroid/os/HandlerThread;",
        "a",
        "Landroid/os/HandlerThread;",
        "handlerThread",
        "Landroid/os/Handler;",
        "b",
        "Landroid/os/Handler;",
        "handler",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "c",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "measureList",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Runnable;",
        "immediateRunnable",
        "e",
        "delayRunnable",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

.field private static final a:Landroid/os/HandlerThread;

.field private static final b:Landroid/os/Handler;

.field private static final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final d:Ljava/lang/Runnable;

.field private static final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    .line 7
    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string v1, "h_video_thread"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->a:Landroid/os/HandlerThread;

    .line 19
    .line 20
    new-instance v1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/c;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/c;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->d:Ljava/lang/Runnable;

    .line 44
    .line 45
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager$a;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager$a;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->e:Ljava/lang/Runnable;

    .line 51
    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/o4;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->j(Lcom/cloud/hisavana/sdk/o4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->d:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/cloud/hisavana/sdk/o4;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/o4;->b()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-eqz v1, :cond_2

    .line 34
    .line 35
    sget-object p0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "current measure list size is "

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "VideoMeasureManager"

    .line 68
    .line 69
    invoke-virtual {p0, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-gtz p0, :cond_3

    .line 77
    .line 78
    sget-object p0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->stopMeasure()V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method private static final j(Lcom/cloud/hisavana/sdk/o4;)V
    .locals 3

    .line 1
    const-string v0, "$measureImpl"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/16 v1, 0x14

    .line 29
    .line 30
    if-le p0, v1, :cond_1

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    sget-object p0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->startMeasure()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "------------->measureList size is "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "VideoMeasureManager"

    .line 67
    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private static final k()V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/cloud/hisavana/sdk/o4;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/o4;->d()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)D
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    int-to-double v3, v3

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    int-to-double v5, v2

    .line 40
    mul-double/2addr v3, v5

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-double v5, v2

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    int-to-double v7, p1

    .line 51
    mul-double/2addr v5, v7

    .line 52
    cmpg-double p1, v5, v0

    .line 53
    .line 54
    if-gtz p1, :cond_2

    .line 55
    .line 56
    return-wide v0

    .line 57
    :cond_2
    const/16 p1, 0x64

    .line 58
    .line 59
    int-to-double v0, p1

    .line 60
    mul-double/2addr v3, v0

    .line 61
    div-double/2addr v3, v5

    .line 62
    return-wide v3

    .line 63
    :cond_3
    :goto_0
    return-wide v0
.end method

.method public final f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "VideoMeasureManager"

    .line 6
    .line 7
    const-string v2, "-------------> remove video ad measure"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v1, Lcom/cloud/hisavana/sdk/manager/d;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/cloud/hisavana/sdk/manager/d;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final g(Lcom/cloud/hisavana/sdk/o4;)V
    .locals 3

    .line 1
    const-string v0, "measureImpl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "VideoMeasureManager"

    .line 11
    .line 12
    const-string v2, "-------------> add video ad measure"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v1, Lcom/cloud/hisavana/sdk/manager/e;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Lcom/cloud/hisavana/sdk/manager/e;-><init>(Lcom/cloud/hisavana/sdk/o4;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final startMeasure()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "current measure list size is "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v3, "VideoMeasureManager"

    .line 29
    .line 30
    invoke-virtual {v0, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-lez v0, :cond_0

    .line 38
    .line 39
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    .line 40
    .line 41
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->d:Ljava/lang/Runnable;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->e:Ljava/lang/Runnable;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final stopMeasure()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "VideoMeasureManager"

    .line 6
    .line 7
    const-string v2, "stop video ad measure"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->d:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->e:Ljava/lang/Runnable;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
