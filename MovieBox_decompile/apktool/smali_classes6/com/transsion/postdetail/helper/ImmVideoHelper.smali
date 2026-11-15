.class public final Lcom/transsion/postdetail/helper/ImmVideoHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/helper/ImmVideoHelper$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

.field private static final i:Lkotlin/Lazy;


# instance fields
.field private final a:Ljava/util/List;

.field private b:I

.field private final c:Ljava/util/Map;

.field private final d:Lkotlin/Lazy;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/postdetail/helper/c;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/postdetail/helper/c;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->i:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->a:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->c:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/postdetail/helper/b;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/transsion/postdetail/helper/b;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->d:Lkotlin/Lazy;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->e:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->f:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->g:Z

    .line 35
    .line 36
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "k_imm_video_guide"

    .line 43
    .line 44
    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iput-boolean v2, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->e:Z

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "k_short_tv_guide"

    .line 55
    .line 56
    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iput-boolean v2, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->g:Z

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "k_imm_video_guide_from_trending"

    .line 67
    .line 68
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->f:Z

    .line 73
    .line 74
    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ImmVideoHelper;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->l(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ImmVideoHelper;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->v()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/postdetail/helper/ImmVideoHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->m()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/postdetail/helper/ImmVideoHelper;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->q(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final l(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ImmVideoHelper;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-static {p0}, Landroidx/core/view/d2;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    :goto_0
    if-eqz p0, :cond_3

    .line 33
    .line 34
    invoke-static {p0}, Landroidx/appcompat/widget/x;->a(Landroid/graphics/Insets;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/high16 v1, 0x42200000    # 40.0f

    .line 39
    .line 40
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-le v0, v1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/x;->a(Landroid/graphics/Insets;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    iput p0, p1, Lcom/transsion/postdetail/helper/ImmVideoHelper;->b:I

    .line 52
    .line 53
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "on get navigation gesture height = "

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v4, 0x4

    .line 73
    const/4 v5, 0x0

    .line 74
    const-string v1, "ImmVideoHelper"

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    :goto_1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 82
    .line 83
    const/4 v10, 0x4

    .line 84
    const/4 v11, 0x0

    .line 85
    const-string v7, "ImmVideoHelper"

    .line 86
    .line 87
    const-string v8, "is open navigation bar 2"

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private static final m()Lcom/transsion/postdetail/helper/ImmVideoHelper;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final q(Ljava/util/List;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, Ljava/util/Collection;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    xor-int/2addr v0, v1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Video;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-wide/16 v1, 0xbb8

    .line 34
    .line 35
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j(Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private static final v()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final j()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Landroidx/fragment/app/FragmentActivity;)V
    .locals 9

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iput v2, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->b:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x32

    .line 21
    .line 22
    if-le v0, v1, :cond_1

    .line 23
    .line 24
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 25
    .line 26
    const/4 v7, 0x4

    .line 27
    const/4 v8, 0x0

    .line 28
    const-string v4, "ImmVideoHelper"

    .line 29
    .line 30
    const-string v5, "is open navigation bar"

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput v2, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->b:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_0
    if-eqz v0, :cond_3

    .line 52
    .line 53
    new-instance v1, Lcom/transsion/postdetail/helper/d;

    .line 54
    .line 55
    invoke-direct {v1, p1, p0}, Lcom/transsion/postdetail/helper/d;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ImmVideoHelper;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final p()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

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
    new-instance v4, Lcom/transsion/postdetail/helper/ImmVideoHelper$loadCache$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$loadCache$1;-><init>(Lcom/transsion/postdetail/helper/ImmVideoHelper;Lkotlin/coroutines/Continuation;)V

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

.method public final r(Ljava/util/List;)V
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v4, Lcom/transsion/postdetail/helper/ImmVideoHelper$saveCache$1;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$saveCache$1;-><init>(Ljava/util/List;Lcom/transsion/postdetail/helper/ImmVideoHelper;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final s(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast v0, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    xor-int/2addr v0, v1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->f()V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->Companion:Lcom/transsion/moviedetailapi/bean/PostSubjectItem$a;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem$a;->a(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->a:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "ImmVideoPlayer"

    .line 6
    .line 7
    const-string v2, "-- setVideoGuideShown"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->e:Z

    .line 15
    .line 16
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "k_imm_video_guide"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final u()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "ImmVideoPlayer"

    .line 6
    .line 7
    const-string v2, "-- setVideoGuideShownFromTrending"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->f:Z

    .line 15
    .line 16
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "k_imm_video_guide_from_trending"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    return-void
.end method
