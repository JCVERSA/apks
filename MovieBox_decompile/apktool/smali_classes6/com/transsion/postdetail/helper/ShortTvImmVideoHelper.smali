.class public final Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

.field private static final l:Lkotlin/Lazy;


# instance fields
.field private final a:Ljava/util/List;

.field private b:I

.field private final c:Ljava/util/Map;

.field private final d:Lkotlin/Lazy;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/postdetail/helper/f;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/postdetail/helper/f;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->l:Lkotlin/Lazy;

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
    iput-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->a:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->c:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/postdetail/helper/e;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/transsion/postdetail/helper/e;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->d:Lkotlin/Lazy;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->e:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->f:Z

    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->g:Ljava/util/List;

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->h:Ljava/util/List;

    .line 47
    .line 48
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "k_imm_video_guide"

    .line 55
    .line 56
    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iput-boolean v2, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->e:Z

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "k_short_tv_guide"

    .line 67
    .line 68
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->f:Z

    .line 73
    .line 74
    return-void
.end method

.method private static final B()Landroidx/lifecycle/b0;
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

.method public static synthetic a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->r()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->w(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->B()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->x(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->q(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->l:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Lcom/transsion/moviedetailapi/bean/Video;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->u(Lcom/transsion/moviedetailapi/bean/Video;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->i:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method private static final q(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V
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
    iput p0, p1, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->b:I

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

.method private static final r()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final u(Lcom/transsion/moviedetailapi/bean/Video;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-wide/16 v1, 0xbb8

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j(Ljava/lang/String;J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private static final w(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 6

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p3, "for you preloadItemViews completion, "

    .line 14
    .line 15
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x4

    .line 26
    const/4 v5, 0x0

    .line 27
    const-string v1, "ShortTvImmVideoPlayer"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p2, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->j:Z

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    iget-object p0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->g:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private static final x(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 6

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p3, "detail preloadItemViews completion, "

    .line 14
    .line 15
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x4

    .line 26
    const/4 v5, 0x0

    .line 27
    const-string v1, "ShortTvImmVideoPlayer"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p2, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->j:Z

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    iget-object p0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->h:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final A()V
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
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->e:Z

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

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final n()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->d:Lkotlin/Lazy;

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

.method public final o()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(Landroidx/fragment/app/FragmentActivity;)V
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
    iput v2, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->b:I

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
    iput v2, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->b:I

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
    new-instance v1, Lcom/transsion/postdetail/helper/g;

    .line 54
    .line 55
    invoke-direct {v1, p1, p0}, Lcom/transsion/postdetail/helper/g;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V

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

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final t()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->n()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-lez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v4, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {v4, p0, v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;-><init>(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Lkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x3

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final v(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->j:Z

    .line 8
    .line 9
    move v1, v0

    .line 10
    :goto_0
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x2

    .line 12
    if-ge v1, v3, :cond_0

    .line 13
    .line 14
    new-instance v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 15
    .line 16
    invoke-direct {v3, p1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sget v4, Lcom/transsion/postdetail/R$layout;->item_short_tv_immersion_video:I

    .line 20
    .line 21
    new-instance v5, Lcom/transsion/postdetail/helper/h;

    .line 22
    .line 23
    invoke-direct {v5, p0}, Lcom/transsion/postdetail/helper/h;-><init>(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4, v2, v5}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->a(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 33
    .line 34
    new-instance v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    sget v4, Lcom/transsion/shorttv/R$layout;->short_tv_item_video:I

    .line 40
    .line 41
    new-instance v5, Lcom/transsion/postdetail/helper/i;

    .line 42
    .line 43
    invoke-direct {v5, p0}, Lcom/transsion/postdetail/helper/i;-><init>(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4, v2, v5}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->a(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->g:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->h:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final z(Ljava/util/List;)V
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_2

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
    invoke-virtual {p0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->n()Landroidx/lifecycle/b0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v4, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$saveCache$1;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$saveCache$1;-><init>(Ljava/util/List;Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x3

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method
