.class public final Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$b;
    }
.end annotation


# instance fields
.field private final a:Lmn/j;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private final d:Lcom/transsion/player/longvideo/helper/w;

.field private final e:Lkotlin/jvm/functions/Function1;

.field private f:Z

.field private g:Ljava/util/List;

.field private final h:Lcom/transsion/subtitle/VideoSubtitleControl;

.field private i:Z

.field private j:Lcom/transsion/baselib/db/download/DownloadBean;

.field private k:Lln/a;

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Landroid/view/ViewGroup;

.field private final o:Lcom/transsion/player/longvideo/helper/n0;

.field private final p:Lkotlinx/coroutines/n0;

.field private final q:Lkotlin/Lazy;

.field private final r:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lmn/j;Ljava/lang/String;Ljava/util/List;Lcom/transsion/player/longvideo/helper/w;Lkotlin/jvm/functions/Function1;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "viewBinding"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "dubs"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "callback"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a:Lmn/j;

    move-object/from16 v4, p2

    .line 3
    iput-object v4, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->b:Ljava/lang/String;

    .line 4
    iput-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->c:Ljava/util/List;

    .line 5
    iput-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    move-object/from16 v2, p5

    .line 6
    iput-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->e:Lkotlin/jvm/functions/Function1;

    move/from16 v2, p6

    .line 7
    iput-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->f:Z

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->g:Ljava/util/List;

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    .line 10
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->p:Lkotlinx/coroutines/n0;

    .line 11
    new-instance v3, Lcom/transsion/player/longvideo/helper/g0;

    invoke-direct {v3}, Lcom/transsion/player/longvideo/helper/g0;-><init>()V

    invoke-static {v3}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->q:Lkotlin/Lazy;

    .line 12
    new-instance v3, Lcom/transsion/player/longvideo/helper/i0;

    invoke-direct {v3}, Lcom/transsion/player/longvideo/helper/i0;-><init>()V

    invoke-static {v3}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->r:Lkotlin/Lazy;

    .line 13
    new-instance v3, Landroidx/lifecycle/v0;

    invoke-virtual/range {p1 .. p1}, Lmn/j;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v15, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v3, v5}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v5, Lcom/transsion/player/longvideo/helper/n0;

    invoke-virtual {v3, v5}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v3

    check-cast v3, Lcom/transsion/player/longvideo/helper/n0;

    iput-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->o:Lcom/transsion/player/longvideo/helper/n0;

    .line 14
    sget-object v5, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v5}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    const-string v6, "subtitle_land_guide"

    invoke-virtual {v5, v6, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    .line 15
    invoke-virtual/range {p1 .. p1}, Lmn/j;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Landroidx/fragment/app/FragmentActivity;

    .line 16
    sget-object v2, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {v2}, Lcom/transsion/baselib/helper/d;->d()F

    move-result v8

    .line 17
    iget-object v9, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->c:Ljava/util/List;

    .line 18
    new-instance v2, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 19
    new-instance v10, Lcom/transsion/player/longvideo/helper/j0;

    invoke-direct {v10}, Lcom/transsion/player/longvideo/helper/j0;-><init>()V

    .line 20
    new-instance v11, Lcom/transsion/player/longvideo/helper/k0;

    invoke-direct {v11, v0}, Lcom/transsion/player/longvideo/helper/k0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v12, Lcom/transsion/player/longvideo/helper/l0;

    invoke-direct {v12, v0}, Lcom/transsion/player/longvideo/helper/l0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v13, Lcom/transsion/player/longvideo/helper/m0;

    invoke-direct {v13, v0}, Lcom/transsion/player/longvideo/helper/m0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v14, Lcom/transsion/player/longvideo/helper/y;

    invoke-direct {v14, v0}, Lcom/transsion/player/longvideo/helper/y;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v7, Lcom/transsion/player/longvideo/helper/z;

    invoke-direct {v7, v0}, Lcom/transsion/player/longvideo/helper/z;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v5, Lcom/transsion/player/longvideo/helper/a0;

    invoke-direct {v5, v0}, Lcom/transsion/player/longvideo/helper/a0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    move-object/from16 v16, v5

    move-object v5, v2

    move-object/from16 v17, v7

    move-object/from16 v7, p2

    move-object v4, v15

    move-object/from16 v15, v17

    .line 21
    invoke-direct/range {v5 .. v16}, Lcom/transsion/subtitle/VideoSubtitleControl;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;FLjava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 22
    sget-object v5, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    invoke-virtual {v2, v5}, Lcom/transsion/subtitle/VideoSubtitleControl;->O(Lcom/transsion/subtitle/helper/LocalVideoUiType;)V

    .line 23
    new-instance v5, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$a;

    invoke-direct {v5, v0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$a;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    invoke-virtual {v2, v5}, Lcom/transsion/subtitle/VideoSubtitleControl;->g0(Llt/a;)V

    .line 24
    new-instance v5, Lcom/transsion/player/longvideo/helper/b0;

    invoke-direct {v5, v0}, Lcom/transsion/player/longvideo/helper/b0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    invoke-virtual {v2, v5}, Lcom/transsion/subtitle/VideoSubtitleControl;->c0(Lkotlin/jvm/functions/Function1;)V

    .line 25
    iput-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 26
    iget-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->f:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 27
    iput-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    .line 28
    :cond_0
    invoke-virtual {v3}, Lcom/transsion/player/longvideo/helper/n0;->b()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lmn/j;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    new-instance v3, Lcom/transsion/player/longvideo/helper/h0;

    invoke-direct {v3, v0}, Lcom/transsion/player/longvideo/helper/h0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v4, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$c;

    invoke-direct {v4, v3}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v1, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lmn/j;Ljava/lang/String;Ljava/util/List;Lcom/transsion/player/longvideo/helper/w;Lkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x1

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;-><init>(Lmn/j;Ljava/lang/String;Ljava/util/List;Lcom/transsion/player/longvideo/helper/w;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/subtitle/VideoSubtitleControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->N()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->O()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final E()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->g:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "subtitle_is_search_downloaded"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-string v2, "subtitle_land_guide"

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iput-boolean v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iput-boolean v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-interface {v0, v1, v3}, Lcom/transsion/player/longvideo/helper/w;->b(ZZ)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private final F(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->i:Z

    .line 3
    .line 4
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    sget-object v2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v7, "\u6d41\u5a92\u4f53\uff0c\u5f00\u59cb\u64ad\u653e\u68c0\u6d4b\u5b57\u5e55\uff0cname:"

    .line 30
    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, " subjectId:"

    .line 38
    .line 39
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, " subtitleResId:"

    .line 46
    .line 47
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v2, v3, v0}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lcom/transsion/player/longvideo/helper/c0;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/transsion/player/longvideo/helper/c0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, p1, v1}, Lcom/transsion/subtitle/h;->e(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private static final G(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->g:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a:Lmn/j;

    .line 12
    .line 13
    invoke-virtual {p0}, Lmn/j;->getRoot()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance p1, Lcom/transsion/player/longvideo/helper/d0;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/transsion/player/longvideo/helper/d0;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final H()V
    .locals 0

    .line 1
    return-void
.end method

.method private final J()Landroid/widget/ImageView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method private final K()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a:Lmn/j;

    .line 6
    .line 7
    iget-object v0, v0, Lmn/j;->o:Lmn/k;

    .line 8
    .line 9
    iget-object v0, v0, Lmn/k;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method private final L()Landroid/widget/TextView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method private final N()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->r:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private final O()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->q:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final P(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/transsion/player/longvideo/helper/w;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final Q(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->p:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v3, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p1, p0, v1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final U(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a:Lmn/j;

    .line 2
    .line 3
    iget-object p1, p1, Lmn/j;->o:Lmn/k;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->m:Landroid/view/View;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final V(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-interface {p1, v0, v0}, Lcom/transsion/player/longvideo/helper/w;->b(ZZ)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    .line 8
    .line 9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    sget p2, Lcom/transsion/subtitle/R$string;->subtitle_turn_on_toast:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget p2, Lcom/transsion/subtitle/R$string;->subtitle_turn_off_toast:I

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "getString(...)"

    .line 25
    .line 26
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2}, Lcom/transsion/player/longvideo/helper/w;->c(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->w(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final a0(Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 8

    .line 1
    sget-object v7, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->K()Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a:Lmn/j;

    .line 8
    .line 9
    iget-object v3, v0, Lmn/j;->A:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 10
    .line 11
    iget-object v4, v0, Lmn/j;->z:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 12
    .line 13
    iget-object v5, v0, Lmn/j;->k:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v0, p1

    .line 17
    move-object v1, v7

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/subtitle/VideoSubtitleControl;->Z(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/widget/TextView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Landroid/view/ViewGroup;Z)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/transsion/player/longvideo/helper/x;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/helper/x;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->i0(Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/transsion/player/longvideo/helper/e0;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/helper/e0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/transsion/player/longvideo/helper/f0;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/transsion/player/longvideo/helper/f0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v7, v0, v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->E(Lcom/transsion/subtitle/helper/LocalVideoUiType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->g0()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final b0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->I()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move v3, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v1

    .line 15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->J()Landroid/widget/ImageView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    move v1, v2

    .line 27
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_3
    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->L()Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_5

    .line 35
    .line 36
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    sget p1, Lcom/transsion/postdetail/R$string;->play_loading:I

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    sget p1, Lcom/transsion/postdetail/R$string;->turn_on_short:I

    .line 46
    .line 47
    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->t(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "switchView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->V(Landroid/view/View;Z)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic d()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->k0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final d0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "settingView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->U(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->u(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->x(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g0()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static synthetic h()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->H()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->v(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->c0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;ZZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->s(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;ZZ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final k0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static synthetic l(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->P(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->b0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->r(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lht/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->q(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lht/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->G(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final q(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lht/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->N(Lht/a;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final r(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final s(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;ZZ)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    .line 5
    .line 6
    invoke-interface {p0, v0, p2}, Lcom/transsion/player/longvideo/helper/w;->b(ZZ)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-interface {p0, p1, v0}, Lcom/transsion/player/longvideo/helper/w;->b(ZZ)V

    .line 14
    .line 15
    .line 16
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final t(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "lanName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lan"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->o:Lcom/transsion/player/longvideo/helper/n0;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/helper/n0;->d()Landroidx/lifecycle/b0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lkotlin/Pair;

    .line 18
    .line 19
    invoke-direct {v1, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    .line 26
    .line 27
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/player/longvideo/helper/w;->g(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method private static final u(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->e:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final v(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->o:Lcom/transsion/player/longvideo/helper/n0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/helper/n0;->c()Landroidx/lifecycle/b0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Lcom/transsion/player/longvideo/helper/w;->e(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method private static final w(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/player/longvideo/helper/w;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final x(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/w;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final synthetic y(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->F(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic z(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/player/longvideo/helper/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/w;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final I()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final M()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->F()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->M()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final S()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->i:Z

    .line 11
    .line 12
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    sget-object v3, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v8, "\u6d41\u5a92\u4f53\uff0c\u7f51\u7edc\u8fde\u63a5\u6210\u529f\u5f00\u59cb\u68c0\u6d4b\u5b57\u5e55\uff0cname:"

    .line 38
    .line 39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, " subjectId:"

    .line 46
    .line 47
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, " subtitleResId:"

    .line 54
    .line 55
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v2, v3, v4, v1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x2

    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-static {v1, v0, v3, v2, v3}, Lcom/transsion/subtitle/h$b;->a(Lcom/transsion/subtitle/h;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method public final T(Lln/a;Lln/c;)V
    .locals 98

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "bean"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "playStream"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->i:Z

    .line 19
    .line 20
    iput-object v1, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->k:Lln/a;

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lln/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lln/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lln/c;->h()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual/range {p2 .. p2}, Lln/c;->c()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual/range {p1 .. p1}, Lln/a;->p()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual/range {p2 .. p2}, Lln/c;->g()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    invoke-virtual/range {p1 .. p1}, Lln/a;->o()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v37

    .line 62
    invoke-virtual/range {p1 .. p1}, Lln/a;->e()I

    .line 63
    .line 64
    .line 65
    move-result v28

    .line 66
    invoke-virtual/range {p1 .. p1}, Lln/a;->l()I

    .line 67
    .line 68
    .line 69
    move-result v29

    .line 70
    invoke-virtual/range {p1 .. p1}, Lln/a;->p()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v40

    .line 74
    iget-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->b:Ljava/lang/String;

    .line 75
    .line 76
    move-object/from16 v38, v2

    .line 77
    .line 78
    new-instance v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 79
    .line 80
    move-object v6, v2

    .line 81
    const v96, 0xffff

    .line 82
    .line 83
    .line 84
    const/16 v97, 0x0

    .line 85
    .line 86
    const/4 v12, 0x0

    .line 87
    const/4 v13, 0x0

    .line 88
    const/4 v14, 0x0

    .line 89
    const/4 v15, 0x0

    .line 90
    const/16 v16, 0x0

    .line 91
    .line 92
    const-wide/16 v17, 0x0

    .line 93
    .line 94
    const/16 v19, 0x0

    .line 95
    .line 96
    const/16 v20, 0x0

    .line 97
    .line 98
    const/16 v21, 0x0

    .line 99
    .line 100
    const-wide/16 v22, 0x0

    .line 101
    .line 102
    const-wide/16 v24, 0x0

    .line 103
    .line 104
    const/16 v26, 0x0

    .line 105
    .line 106
    const/16 v27, 0x0

    .line 107
    .line 108
    const/16 v30, 0x0

    .line 109
    .line 110
    const/16 v31, 0x0

    .line 111
    .line 112
    const/16 v32, 0x0

    .line 113
    .line 114
    const/16 v33, 0x0

    .line 115
    .line 116
    const/16 v34, 0x0

    .line 117
    .line 118
    const/16 v35, 0x0

    .line 119
    .line 120
    const/16 v36, 0x0

    .line 121
    .line 122
    const/16 v39, 0x0

    .line 123
    .line 124
    const-wide/16 v41, 0x0

    .line 125
    .line 126
    const/16 v43, 0x0

    .line 127
    .line 128
    const/16 v44, 0x0

    .line 129
    .line 130
    const/16 v45, 0x0

    .line 131
    .line 132
    const/16 v46, 0x0

    .line 133
    .line 134
    const-wide/16 v47, 0x0

    .line 135
    .line 136
    const/16 v49, 0x0

    .line 137
    .line 138
    const/16 v50, 0x0

    .line 139
    .line 140
    const-wide/16 v51, 0x0

    .line 141
    .line 142
    const/16 v53, 0x0

    .line 143
    .line 144
    const-wide/16 v54, 0x0

    .line 145
    .line 146
    const/16 v56, 0x0

    .line 147
    .line 148
    const/16 v57, 0x0

    .line 149
    .line 150
    const/16 v58, 0x0

    .line 151
    .line 152
    const/16 v59, 0x0

    .line 153
    .line 154
    const/16 v60, 0x0

    .line 155
    .line 156
    const/16 v61, 0x0

    .line 157
    .line 158
    const/16 v62, 0x0

    .line 159
    .line 160
    const/16 v63, 0x0

    .line 161
    .line 162
    const/16 v64, 0x0

    .line 163
    .line 164
    const/16 v65, 0x0

    .line 165
    .line 166
    const/16 v66, 0x0

    .line 167
    .line 168
    const/16 v67, 0x0

    .line 169
    .line 170
    const/16 v68, 0x0

    .line 171
    .line 172
    const/16 v69, 0x0

    .line 173
    .line 174
    const/16 v70, 0x0

    .line 175
    .line 176
    const/16 v71, 0x0

    .line 177
    .line 178
    const/16 v72, 0x0

    .line 179
    .line 180
    const/16 v73, 0x0

    .line 181
    .line 182
    const/16 v74, 0x0

    .line 183
    .line 184
    const/16 v75, 0x0

    .line 185
    .line 186
    const/16 v76, 0x0

    .line 187
    .line 188
    const/16 v77, 0x0

    .line 189
    .line 190
    const/16 v78, 0x0

    .line 191
    .line 192
    const/16 v79, 0x0

    .line 193
    .line 194
    const/16 v80, 0x0

    .line 195
    .line 196
    const/16 v81, 0x0

    .line 197
    .line 198
    const/16 v82, 0x0

    .line 199
    .line 200
    const/16 v83, 0x0

    .line 201
    .line 202
    const/16 v84, 0x0

    .line 203
    .line 204
    const/16 v85, 0x0

    .line 205
    .line 206
    const/16 v86, 0x0

    .line 207
    .line 208
    const/16 v87, 0x0

    .line 209
    .line 210
    const/16 v88, 0x0

    .line 211
    .line 212
    const/16 v89, 0x0

    .line 213
    .line 214
    const/16 v90, 0x0

    .line 215
    .line 216
    const/16 v91, 0x0

    .line 217
    .line 218
    const/16 v92, 0x0

    .line 219
    .line 220
    const/16 v93, 0x0

    .line 221
    .line 222
    const v94, -0x580c0020

    .line 223
    .line 224
    .line 225
    const/16 v95, -0x1

    .line 226
    .line 227
    const-string v10, ""

    .line 228
    .line 229
    invoke-direct/range {v6 .. v97}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p2 .. p2}, Lln/c;->k()Z

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setStream(Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setStreamVideoDetail(Z)V

    .line 240
    .line 241
    .line 242
    invoke-virtual/range {p1 .. p1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    if-eqz v6, :cond_1

    .line 247
    .line 248
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    goto :goto_0

    .line 253
    :cond_1
    move-object v6, v5

    .line 254
    :goto_0
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoId(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {p1 .. p1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    if-eqz v6, :cond_2

    .line 262
    .line 263
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    if-eqz v6, :cond_2

    .line 268
    .line 269
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    goto :goto_1

    .line 274
    :cond_2
    move-object v6, v5

    .line 275
    :goto_1
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoCollectionId(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p1 .. p1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    if-eqz v6, :cond_3

    .line 283
    .line 284
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    goto :goto_2

    .line 289
    :cond_3
    move-object v6, v5

    .line 290
    :goto_2
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoName(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual/range {p1 .. p1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    if-eqz v6, :cond_4

    .line 298
    .line 299
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    if-eqz v6, :cond_4

    .line 304
    .line 305
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionName()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    goto :goto_3

    .line 310
    :cond_4
    move-object v6, v5

    .line 311
    :goto_3
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoCollectionName(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual/range {p1 .. p1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    if-eqz v6, :cond_5

    .line 319
    .line 320
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    if-eqz v6, :cond_5

    .line 325
    .line 326
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getPosition()Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    goto :goto_4

    .line 331
    :cond_5
    move-object v6, v5

    .line 332
    :goto_4
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoPosition(Ljava/lang/Integer;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual/range {p1 .. p1}, Lln/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    if-eqz v6, :cond_6

    .line 340
    .line 341
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    goto :goto_5

    .line 346
    :cond_6
    move-object v6, v5

    .line 347
    :goto_5
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoType(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual/range {p1 .. p1}, Lln/a;->q()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual/range {p2 .. p2}, Lln/c;->d()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleIdType(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iput-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 365
    .line 366
    :goto_6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 367
    .line 368
    sget-object v2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 369
    .line 370
    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    iget-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 375
    .line 376
    if-eqz v3, :cond_7

    .line 377
    .line 378
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    goto :goto_7

    .line 383
    :cond_7
    move-object v3, v5

    .line 384
    :goto_7
    iget-object v6, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 385
    .line 386
    if-eqz v6, :cond_8

    .line 387
    .line 388
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string v7, "subtitle onSetNewDataSource\uff0cugcVideoId:"

    .line 398
    .line 399
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v3, " CollectionId:"

    .line 406
    .line 407
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v1, v2, v3, v4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 418
    .line 419
    .line 420
    iget-object v1, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 421
    .line 422
    iget-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 423
    .line 424
    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->h0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 425
    .line 426
    .line 427
    iget-object v1, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 428
    .line 429
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    invoke-direct {v0, v1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->Q(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 433
    .line 434
    .line 435
    return-void
.end method

.method public final W(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 1

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->LAND:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->E()V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$b;->a:[I

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    aget p1, v0, p1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    sget-object p1, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Lcom/transsion/subtitle/helper/LocalVideoUiType;->PORTRAIT:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    sget-object p1, Lcom/transsion/subtitle/helper/LocalVideoUiType;->LAND:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->O(Lcom/transsion/subtitle/helper/LocalVideoUiType;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final X(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->R(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->T()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->X()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final e0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->b0(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f0(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->n:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a0(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h0(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "dubs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->c:Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->p0(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final i0(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->q0(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j0(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->r0(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
