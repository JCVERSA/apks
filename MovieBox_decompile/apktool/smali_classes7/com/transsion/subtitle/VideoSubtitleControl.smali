.class public final Lcom/transsion/subtitle/VideoSubtitleControl;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final A:Lkotlin/Lazy;

.field private B:Ljava/util/Map;

.field private final C:Lcom/transsion/subtitle/VideoSubtitleControl$b;

.field private final D:Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;

.field private E:J

.field private final F:Ljava/util/Set;

.field private G:Z

.field private H:Ljava/lang/String;

.field private final I:Lcom/transsion/subtitle/VideoSubtitleControl$c;

.field private final a:Landroidx/fragment/app/FragmentActivity;

.field private final b:Ljava/lang/String;

.field private c:F

.field private d:Ljava/util/List;

.field private final e:Lkotlin/jvm/functions/Function1;

.field private final f:Lkotlin/jvm/functions/Function2;

.field private final g:Lkotlin/jvm/functions/Function3;

.field private final h:Lkotlin/jvm/functions/Function1;

.field private final i:Lkotlin/jvm/functions/Function1;

.field private final j:Lkotlin/jvm/functions/Function1;

.field private final k:Lkotlin/jvm/functions/Function2;

.field private l:Ljava/util/List;

.field private m:Z

.field private n:J

.field private o:Z

.field private p:Lcom/transsion/baselib/db/download/DownloadBean;

.field private q:Lcom/transsion/subtitle/helper/d;

.field private r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

.field private final s:Lkotlinx/coroutines/n0;

.field private t:Ljava/util/Map;

.field private u:Landroid/view/ViewGroup;

.field private final v:Ljava/util/Map;

.field private final w:Ljava/util/Map;

.field private x:Lkotlin/jvm/functions/Function1;

.field private y:Ljava/util/Map;

.field private z:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;FLjava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dubs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleSelected"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioSelected"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setSublistData"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleSelectedBilingual"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->c:F

    .line 5
    iput-object p4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->d:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->e:Lkotlin/jvm/functions/Function1;

    .line 7
    iput-object p6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->f:Lkotlin/jvm/functions/Function2;

    .line 8
    iput-object p7, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->g:Lkotlin/jvm/functions/Function3;

    .line 9
    iput-object p8, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->h:Lkotlin/jvm/functions/Function1;

    .line 10
    iput-object p9, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->i:Lkotlin/jvm/functions/Function1;

    .line 11
    iput-object p10, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->j:Lkotlin/jvm/functions/Function1;

    .line 12
    iput-object p11, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->k:Lkotlin/jvm/functions/Function2;

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 14
    sget-object p2, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 15
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->s:Lkotlinx/coroutines/n0;

    .line 16
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 17
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->v:Ljava/util/Map;

    .line 18
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->w:Ljava/util/Map;

    .line 19
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->y:Ljava/util/Map;

    .line 20
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->z:Ljava/util/Map;

    .line 21
    new-instance p2, Lcom/transsion/subtitle/b;

    invoke-direct {p2}, Lcom/transsion/subtitle/b;-><init>()V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->A:Lkotlin/Lazy;

    .line 22
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->B:Ljava/util/Map;

    .line 23
    new-instance p2, Lcom/transsion/subtitle/VideoSubtitleControl$b;

    invoke-direct {p2, p0}, Lcom/transsion/subtitle/VideoSubtitleControl$b;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->C:Lcom/transsion/subtitle/VideoSubtitleControl$b;

    .line 24
    new-instance p3, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;

    invoke-direct {p3, p0}, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    iput-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->D:Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;

    .line 25
    new-instance p4, Lcom/transsion/subtitle/helper/d;

    invoke-direct {p4, p1}, Lcom/transsion/subtitle/helper/d;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->q:Lcom/transsion/subtitle/helper/d;

    .line 26
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class p4, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> init{} --> VideoSubtitleControl --> \u521b\u5efa\u4e86"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 27
    sget-object p1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object p4

    invoke-interface {p4, p3}, Lcom/transsion/subtitle/h;->b(Lcom/transsion/subtitle_download/a;)V

    .line 28
    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/transsion/subtitle/h;->d(Llt/c;)V

    .line 29
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    .line 30
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    .line 31
    new-instance p1, Lcom/transsion/subtitle/VideoSubtitleControl$c;

    invoke-direct {p1, p0}, Lcom/transsion/subtitle/VideoSubtitleControl$c;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->I:Lcom/transsion/subtitle/VideoSubtitleControl$c;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;FLjava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p4

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_1

    :cond_1
    move-object/from16 v12, p10

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v13, p11

    .line 33
    invoke-direct/range {v2 .. v13}, Lcom/transsion/subtitle/VideoSubtitleControl;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;FLjava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->W(Lht/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic B(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->Y(Lht/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->G:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic D(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->d0(Lht/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final G()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->A:Lkotlin/Lazy;

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

.method private final H()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v2, v3}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->turnOff(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method

.method private final I()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/transsion/subtitle/helper/c;->a()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 6
    .line 7
    const-class v2, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, " --> initDefaultSubtitle() --> cur language = "

    .line 30
    .line 31
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, " -- country = "

    .line 38
    .line 39
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const-string v4, "k_subtitle_language"

    .line 59
    .line 60
    const-string v5, ""

    .line 61
    .line 62
    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move-object v4, v6

    .line 77
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v7, " --> initDefaultSubtitle() --> savedDiffId = "

    .line 90
    .line 91
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v7, " -- savedLan = "

    .line 98
    .line 99
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v1, v7}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    move-object v8, v5

    .line 119
    move-object v7, v6

    .line 120
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_8

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    check-cast v9, Lht/a;

    .line 131
    .line 132
    invoke-virtual {v9}, Lht/a;->d()Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-nez v10, :cond_2

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {v9}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v10}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    const-string v11, "en"

    .line 148
    .line 149
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    if-eqz v10, :cond_3

    .line 154
    .line 155
    move-object v6, v9

    .line 156
    :cond_3
    if-eqz v4, :cond_4

    .line 157
    .line 158
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-nez v10, :cond_5

    .line 163
    .line 164
    :cond_4
    invoke-virtual {v9}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-virtual {v10}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanAbbr()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-eqz v10, :cond_5

    .line 181
    .line 182
    invoke-virtual {v9}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    sget-object v7, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    new-instance v11, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v10, " --> initDefaultSubtitle() --> \u6ca1\u6709\u81ea\u5df1\u9009\u62e9\u7684\u9ed8\u8ba4\u8bed\u8a00\uff0c\u4f7f\u7528\u624b\u673a\u8bed\u8a00 -- phone set def language = "

    .line 205
    .line 206
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-virtual {v7, v10}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :goto_2
    move-object v7, v9

    .line 220
    goto :goto_1

    .line 221
    :cond_5
    invoke-virtual {v9}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    invoke-virtual {v10}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    if-eqz v10, :cond_6

    .line 234
    .line 235
    invoke-virtual {v9}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    sget-object v7, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    new-instance v11, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v10, " --> initDefaultSubtitle() --> \u4f7f\u7528\u4e4b\u524d\u9009\u62e9\u7684\u5b57\u5e55 saved flag = "

    .line 258
    .line 259
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    invoke-virtual {v7, v10}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_6
    if-eqz v4, :cond_7

    .line 274
    .line 275
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    if-nez v10, :cond_1

    .line 280
    .line 281
    :cond_7
    invoke-virtual {v9}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    invoke-virtual {v10}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v10

    .line 293
    if-eqz v10, :cond_1

    .line 294
    .line 295
    invoke-virtual {v9}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    sget-object v7, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    new-instance v11, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v10, " --> initDefaultSubtitle() --> \u4f7f\u7528\u4e4b\u524d\u9009\u62e9\u7684\u8bed\u8a00 local set savedLan = "

    .line 318
    .line 319
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    invoke-virtual {v7, v10}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_8
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-nez v0, :cond_c

    .line 338
    .line 339
    if-eqz v6, :cond_9

    .line 340
    .line 341
    invoke-virtual {v6}, Lht/a;->d()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_9

    .line 346
    .line 347
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 356
    .line 357
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v1, " --> initDefaultSubtitle() --> \u6ca1\u6709\u8bbe\u7f6e\u9ed8\u8ba4\u8bed\u8a00 --> english set def language = "

    .line 370
    .line 371
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_9
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 386
    .line 387
    check-cast v0, Ljava/util/Collection;

    .line 388
    .line 389
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-nez v0, :cond_c

    .line 394
    .line 395
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 396
    .line 397
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_b

    .line 406
    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    check-cast v1, Lht/a;

    .line 412
    .line 413
    invoke-virtual {v1}, Lht/a;->d()Z

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    if-eqz v3, :cond_a

    .line 418
    .line 419
    invoke-virtual {v1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    move-object v6, v1

    .line 428
    goto :goto_3

    .line 429
    :cond_b
    move-object v6, v7

    .line 430
    :goto_3
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-nez v0, :cond_d

    .line 435
    .line 436
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 437
    .line 438
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v1, " --> initDefaultSubtitle() --> \u53ef\u80fd\u5916\u90e8\u53ea\u8bfb\u53d6\u5230\u4e86\u6570\u636e\u5e93\u524d\u9762\u6ca1\u4e0b\u8f7d\u7684\u5b57\u5e55 --> \u6ca1\u6709\u5bf9\u5e94\u7684\u8bed\u8a00\uff0c\u4e0d\u8bbe\u7f6e\uff0c\u9700\u8981\u7528\u6237\u624b\u52a8\u8bbe\u7f6e\u6216\u5f53\u524d\u4e0b\u8f7d\u540e\u81ea\u52a8\u8bbe\u7f6e\u4e0a"

    .line 451
    .line 452
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    return-void

    .line 463
    :cond_c
    move-object v6, v7

    .line 464
    :cond_d
    :goto_4
    iput-object v8, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    .line 465
    .line 466
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->g:Lkotlin/jvm/functions/Function3;

    .line 467
    .line 468
    if-eqz v6, :cond_e

    .line 469
    .line 470
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    if-eqz v1, :cond_e

    .line 475
    .line 476
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    if-nez v1, :cond_f

    .line 481
    .line 482
    :cond_e
    move-object v1, v5

    .line 483
    :cond_f
    if-eqz v6, :cond_11

    .line 484
    .line 485
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    if-eqz v2, :cond_11

    .line 490
    .line 491
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    if-nez v2, :cond_10

    .line 496
    .line 497
    goto :goto_5

    .line 498
    :cond_10
    move-object v5, v2

    .line 499
    :cond_11
    :goto_5
    const/4 v2, 0x1

    .line 500
    if-eqz v6, :cond_12

    .line 501
    .line 502
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    if-eqz v3, :cond_12

    .line 507
    .line 508
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    goto :goto_6

    .line 513
    :cond_12
    move v3, v2

    .line 514
    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-interface {v0, v1, v5, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    if-eqz v6, :cond_14

    .line 522
    .line 523
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    if-eqz v0, :cond_14

    .line 528
    .line 529
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    if-eqz v0, :cond_14

    .line 534
    .line 535
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 536
    .line 537
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    :cond_13
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    if-eqz v3, :cond_14

    .line 550
    .line 551
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    check-cast v3, Ljava/util/Map$Entry;

    .line 556
    .line 557
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    check-cast v3, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 562
    .line 563
    if-eqz v3, :cond_13

    .line 564
    .line 565
    invoke-virtual {v3, v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setDefaultSubtitle(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    goto :goto_7

    .line 569
    :cond_14
    if-eqz v6, :cond_15

    .line 570
    .line 571
    invoke-virtual {v6, v2}, Lht/a;->l(Z)V

    .line 572
    .line 573
    .line 574
    :cond_15
    if-eqz v6, :cond_17

    .line 575
    .line 576
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    if-eqz v0, :cond_17

    .line 581
    .line 582
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    if-eqz v0, :cond_17

    .line 587
    .line 588
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 589
    .line 590
    .line 591
    move-result-wide v0

    .line 592
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 593
    .line 594
    sget-object v4, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 595
    .line 596
    invoke-virtual {v4}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    new-instance v5, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .line 604
    .line 605
    const-string v7, "default delayDuration = "

    .line 606
    .line 607
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    invoke-virtual {v3, v4, v5, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 618
    .line 619
    .line 620
    iget-object v3, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 621
    .line 622
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    :cond_16
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    if-eqz v4, :cond_17

    .line 635
    .line 636
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    check-cast v4, Ljava/util/Map$Entry;

    .line 641
    .line 642
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    check-cast v4, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 647
    .line 648
    if-eqz v4, :cond_16

    .line 649
    .line 650
    invoke-virtual {v4, v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    .line 651
    .line 652
    .line 653
    goto :goto_8

    .line 654
    :cond_17
    if-eqz v6, :cond_18

    .line 655
    .line 656
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    .line 657
    .line 658
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    :cond_18
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 662
    .line 663
    const-string v1, "top"

    .line 664
    .line 665
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 670
    .line 671
    invoke-direct {p0, v6, v0, v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->d0(Lht/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    .line 672
    .line 673
    .line 674
    return-void
.end method

.method private final J(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/transsion/subtitle/VideoSubtitleControl$a;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/transsion/subtitle/VideoSubtitleControl$a;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->initSubtitle(Lk5/a;Z)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 14
    .line 15
    const-class v0, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " --> vdSubtitle --> initSubtitle() --> null"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private final L()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

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
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lht/a;

    .line 22
    .line 23
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isInner()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    if-le v2, v0, :cond_2

    .line 38
    .line 39
    move v1, v0

    .line 40
    :cond_2
    return v1
.end method

.method private final P(Z)V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 2
    .line 3
    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> onSubtitleSwitchClick() --> turnOn = "

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " --> \u5b57\u5e55\u5f00\u5173\u72b6\u6001\u53d8\u5316"

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "Off"

    .line 38
    .line 39
    const-string v1, ""

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iput-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->l0()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iput-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->H()V

    .line 52
    .line 53
    .line 54
    :goto_0
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    .line 57
    .line 58
    check-cast v0, Ljava/util/Collection;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Iterable;

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lht/a;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->g:Lkotlin/jvm/functions/Function3;

    .line 77
    .line 78
    invoke-virtual {v0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    move-object v3, v1

    .line 89
    :cond_1
    invoke-virtual {v0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-nez v4, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move-object v1, v4

    .line 101
    :goto_1
    invoke-virtual {v0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v2, v3, v1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->g:Lkotlin/jvm/functions/Function3;

    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-interface {v1, v0, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 128
    .line 129
    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->L()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->m0()V

    .line 136
    .line 137
    .line 138
    :cond_5
    return-void
.end method

.method private final U(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "bilingual"

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method private final V(Lht/a;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    :cond_1
    move-object v1, v2

    .line 31
    :cond_2
    const-string v3, "subject_id"

    .line 32
    .line 33
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    :cond_3
    move-object v1, v2

    .line 47
    :cond_4
    const-string v3, "resource_id"

    .line 48
    .line 49
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_5

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    goto :goto_0

    .line 66
    :cond_5
    move v3, v1

    .line 67
    :goto_0
    const/4 v4, 0x0

    .line 68
    if-lez v3, :cond_7

    .line 69
    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_6

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    goto :goto_1

    .line 87
    :cond_6
    move-object v3, v4

    .line 88
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const-string v5, "ep"

    .line 93
    .line 94
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_7
    if-eqz p1, :cond_8

    .line 98
    .line 99
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_8

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    :cond_8
    if-lez v1, :cond_a

    .line 110
    .line 111
    if-eqz p1, :cond_9

    .line 112
    .line 113
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_9

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    goto :goto_2

    .line 128
    :cond_9
    move-object v1, v4

    .line 129
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v3, "se"

    .line 134
    .line 135
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_a
    if-eqz p1, :cond_b

    .line 139
    .line 140
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_b

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-nez v1, :cond_c

    .line 151
    .line 152
    :cond_b
    move-object v1, v2

    .line 153
    :cond_c
    const-string v3, "lan"

    .line 154
    .line 155
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    if-eqz p1, :cond_d

    .line 159
    .line 160
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-eqz v1, :cond_d

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-nez v1, :cond_e

    .line 171
    .line 172
    :cond_d
    move-object v1, v2

    .line 173
    :cond_e
    const-string v3, "lan_name"

    .line 174
    .line 175
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    if-eqz p1, :cond_10

    .line 179
    .line 180
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-eqz v1, :cond_10

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-nez v1, :cond_f

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_f
    move-object v2, v1

    .line 194
    :cond_10
    :goto_3
    const-string v1, "id"

    .line 195
    .line 196
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    if-eqz p1, :cond_11

    .line 200
    .line 201
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-eqz p1, :cond_11

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    :cond_11
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const-string v1, "type"

    .line 220
    .line 221
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    if-eqz p2, :cond_12

    .line 225
    .line 226
    const-string p1, "1"

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_12
    const-string p1, "0"

    .line 230
    .line 231
    :goto_4
    const-string p2, "result"

    .line 232
    .line 233
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 237
    .line 238
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    .line 239
    .line 240
    const-string v1, "subtitle_switch"

    .line 241
    .line 242
    invoke-virtual {p1, p2, v1, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    .line 244
    .line 245
    :cond_13
    :goto_5
    return-void
.end method

.method private final W(Lht/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->B:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_a

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->B:Ljava/util/Map;

    .line 31
    .line 32
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, ""

    .line 41
    .line 42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    :cond_2
    move-object v1, v2

    .line 61
    :cond_3
    const-string v3, "subject_id"

    .line 62
    .line 63
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    :cond_4
    move-object v1, v2

    .line 77
    :cond_5
    const-string v3, "resource_id"

    .line 78
    .line 79
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-lez v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v3, "ep"

    .line 105
    .line 106
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-lez v1, :cond_7

    .line 118
    .line 119
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v3, "se"

    .line 132
    .line 133
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :cond_7
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-nez v1, :cond_8

    .line 145
    .line 146
    move-object v1, v2

    .line 147
    :cond_8
    const-string v3, "lan"

    .line 148
    .line 149
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-nez v1, :cond_9

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_9
    move-object v2, v1

    .line 164
    :goto_0
    const-string v1, "lan_name"

    .line 165
    .line 166
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const-string v2, "id"

    .line 178
    .line 179
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    const-string v1, "type"

    .line 195
    .line 196
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 200
    .line 201
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    .line 202
    .line 203
    const-string v2, "subtitle_sync"

    .line 204
    .line 205
    invoke-virtual {p1, v1, v2, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    .line 207
    .line 208
    :cond_a
    :goto_1
    return-void
.end method

.method private final Y(Lht/a;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isInner()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "k_subtitle_language"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 36
    .line 37
    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object v2, v3

    .line 54
    :goto_0
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-object v4, v3

    .line 68
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, " --> saveSelectedFlag() --> saveSelectId = "

    .line 77
    .line 78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " -- id = "

    .line 85
    .line 86
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move-object v1, v3

    .line 117
    :goto_2
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleSelectId(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->x:Lkotlin/jvm/functions/Function1;

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    move-object v1, v3

    .line 138
    :goto_3
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    new-instance v7, Lcom/transsion/subtitle/VideoSubtitleControl$saveSelectedFlag$1;

    .line 150
    .line 151
    invoke-direct {v7, p0, p1, v3}, Lcom/transsion/subtitle/VideoSubtitleControl$saveSelectedFlag$1;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;Lkotlin/coroutines/Continuation;)V

    .line 152
    .line 153
    .line 154
    const/4 v8, 0x3

    .line 155
    const/4 v9, 0x0

    .line 156
    const/4 v5, 0x0

    .line 157
    const/4 v6, 0x0

    .line 158
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public static synthetic a(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->n0(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final a0(Lcom/transsion/subtitle/VideoSubtitleControl;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->z:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->m0()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static synthetic b(Lcom/transsion/subtitle/VideoSubtitleControl;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->a0(Lcom/transsion/subtitle/VideoSubtitleControl;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/transsion/subtitle/VideoSubtitleControl;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lht/a;ZLcom/avery/subtitle/widget/SimpleSubtitleView;Z)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/subtitle/VideoSubtitleControl;->e0(Lcom/transsion/subtitle/VideoSubtitleControl;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lht/a;ZLcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/subtitle/VideoSubtitleControl;->s0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final d0(Lht/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V
    .locals 9

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :cond_0
    move-object v1, v0

    .line 18
    :cond_1
    iput-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const-class v2, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 22
    .line 23
    if-nez p1, :cond_5

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p2, p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->turnOff(Z)V

    .line 29
    .line 30
    .line 31
    const/16 p1, 0x8

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz p3, :cond_3

    .line 43
    .line 44
    const-string v2, "topBean"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const-string v2, "bottomBean"

    .line 48
    .line 49
    :goto_0
    if-eqz p2, :cond_4

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " --> setSubtitle() --> "

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " == null --> isTop = "

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p3, " --> view.hashCode = "

    .line 80
    .line 81
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    if-eqz p2, :cond_8

    .line 96
    .line 97
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-nez v1, :cond_6

    .line 109
    .line 110
    move-object v1, v0

    .line 111
    :cond_6
    invoke-static {p1}, Lcom/transsion/subtitle/helper/c;->b(Lht/a;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p2, v1, v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_7
    move-object v0, v1

    .line 130
    :goto_1
    invoke-static {p1}, Lcom/transsion/subtitle/helper/c;->b(Lht/a;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    new-instance v8, Lcom/transsion/subtitle/e;

    .line 135
    .line 136
    move-object v2, v8

    .line 137
    move-object v3, p0

    .line 138
    move-object v4, p2

    .line 139
    move-object v5, p1

    .line 140
    move v6, p3

    .line 141
    move-object v7, p2

    .line 142
    invoke-direct/range {v2 .. v7}, Lcom/transsion/subtitle/e;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lht/a;ZLcom/avery/subtitle/widget/SimpleSubtitleView;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v0, v1, v8}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->selectSubtitle(Ljava/lang/String;Ljava/lang/String;Lk5/b;)V

    .line 146
    .line 147
    .line 148
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->x:Lkotlin/jvm/functions/Function1;

    .line 149
    .line 150
    if-eqz p2, :cond_9

    .line 151
    .line 152
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_8
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p2, " --> setSubtitle() --> subtitleView ==null --> isTop = "

    .line 179
    .line 180
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/a;->b(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    :goto_2
    return-void
.end method

.method public static final synthetic e(Lcom/transsion/subtitle/VideoSubtitleControl;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final e0(Lcom/transsion/subtitle/VideoSubtitleControl;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lht/a;ZLcom/avery/subtitle/widget/SimpleSubtitleView;Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {p0, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p1, p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->turnOff(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->refreshImmediately()V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0, p2}, Lcom/transsion/subtitle/h;->g(Lht/a;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-object p0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 42
    .line 43
    const-class p1, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 50
    .line 51
    .line 52
    move-result-object p5

    .line 53
    invoke-virtual {p5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p5

    .line 57
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result p4

    .line 61
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, " --> setSubtitle() --> refreshImmediately() --> \u5c55\u793a\u5b57\u5e55 --> bean.dbBean.name = "

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, " --> isTop = "

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, "  --> view.hashCode = "

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, " -- path = "

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public static final synthetic f(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/subtitle/VideoSubtitleControl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic h(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/subtitle/helper/LocalVideoUiType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlinx/coroutines/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->s:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/subtitle/VideoSubtitleControl;ZZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->j0(ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic l(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/subtitle/helper/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->q:Lcom/transsion/subtitle/helper/d;

    .line 2
    .line 3
    return-object p0
.end method

.method private final l0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

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
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    add-int/lit8 v4, v2, 0x1

    .line 22
    .line 23
    if-gez v2, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 26
    .line 27
    .line 28
    :cond_0
    check-cast v3, Lht/a;

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    if-eq v2, v5, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 37
    .line 38
    const-string v5, "bottom"

    .line 39
    .line 40
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 45
    .line 46
    invoke-direct {p0, v3, v2, v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->d0(Lht/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 51
    .line 52
    const-string v6, "top"

    .line 53
    .line 54
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 59
    .line 60
    invoke-direct {p0, v3, v2, v5}, Lcom/transsion/subtitle/VideoSubtitleControl;->d0(Lht/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    .line 61
    .line 62
    .line 63
    :goto_1
    move v2, v4

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    return-void
.end method

.method public static final synthetic m(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method private final m0()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2, v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->j0(ZZ)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    sget-object v3, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->x:Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 20
    .line 21
    sget-object v5, Lcom/transsion/subtitle/helper/LocalVideoUiType;->LAND:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 22
    .line 23
    if-ne v4, v5, :cond_1

    .line 24
    .line 25
    move v4, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v4, v2

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "Off"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-object v6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 37
    .line 38
    iget-object v7, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v8, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 41
    .line 42
    iget-object v9, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->q:Lcom/transsion/subtitle/helper/d;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1, v9}, Lcom/transsion/subtitle/helper/d;->h(Lcom/transsion/subtitle/helper/LocalVideoUiType;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    iget-object v11, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual/range {v3 .. v11}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;->b(ZZLjava/util/List;Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->I:Lcom/transsion/subtitle/VideoSubtitleControl$c;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->F0(Llt/b;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lcom/transsion/subtitle/d;

    .line 73
    .line 74
    invoke-direct {v2, p0}, Lcom/transsion/subtitle/d;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->J0(Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "fragment_subtitle_main_dialog"

    .line 81
    .line 82
    invoke-virtual {v1, v0, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static final synthetic n(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final n0(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->o0(Lht/a;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/subtitle/VideoSubtitleControl;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->c:F

    .line 2
    .line 3
    return p0
.end method

.method private final o0(Lht/a;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 2
    .line 3
    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-boolean v3, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->G:Z

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, " --> subtitleSelectFromSearch() --> \u641c\u7d22\u5b57\u5e55\u9009\u4e2d --> \u76f4\u63a5\u8bbe\u7f6e\u4f7f\u7528 --> isOpenBilingual = "

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->G:Z

    .line 35
    .line 36
    const-string v2, ""

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 43
    .line 44
    check-cast v0, Ljava/lang/Iterable;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "1st"

    .line 55
    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lht/a;

    .line 63
    .line 64
    invoke-virtual {v5}, Lht/a;->f()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_0

    .line 69
    .line 70
    invoke-virtual {v5}, Lht/a;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_0

    .line 79
    .line 80
    invoke-virtual {v5, v3}, Lht/a;->l(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v2}, Lht/a;->g(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v5, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v6, " --> subtitleSelectFromSearch() --> \u8fd9\u91cc\u9ed8\u8ba4\u66ff\u6362 1st --> it.isSelect = false"

    .line 101
    .line 102
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v5, v6}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 114
    .line 115
    check-cast v0, Ljava/lang/Iterable;

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_8

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Lht/a;

    .line 132
    .line 133
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_2

    .line 154
    .line 155
    invoke-virtual {v3, v4}, Lht/a;->l(Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v6}, Lht/a;->g(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget-object v3, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v5, " --> subtitleSelectFromSearch() --> \u8fd9\u91cc\u9ed8\u8ba4\u66ff\u6362 1st --> it.isSelect = true"

    .line 176
    .line 177
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v3, v5}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 189
    .line 190
    check-cast v0, Ljava/lang/Iterable;

    .line 191
    .line 192
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_5

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    check-cast v5, Lht/a;

    .line 207
    .line 208
    invoke-virtual {v5}, Lht/a;->f()Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-eqz v6, :cond_4

    .line 213
    .line 214
    invoke-virtual {v5, v3}, Lht/a;->l(Z)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_5
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v3, " --> subtitleSelectFromSearch() --> \u80fd\u4ece\u641c\u7d22\u9009\u4e2d\u56de\u8c03\uff0c\u4e00\u5b9a\u5728\u5b57\u5e55\u5217\u8868\u91cc\u9762\u4e86"

    .line 233
    .line 234
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v0, v3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 245
    .line 246
    check-cast v0, Ljava/lang/Iterable;

    .line 247
    .line 248
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-eqz v3, :cond_7

    .line 257
    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    check-cast v3, Lht/a;

    .line 263
    .line 264
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_6

    .line 285
    .line 286
    invoke-virtual {v3, v4}, Lht/a;->l(Z)V

    .line 287
    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_7
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v3, " --> subtitleSelectFromSearch() --> \u627e\u5230ID\u76f8\u540c\u7684\u54ea\u4e2a\u8bbe\u7f6e \u9009\u4e2d"

    .line 305
    .line 306
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-virtual {v0, v3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :cond_8
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 317
    .line 318
    const-string v3, "top"

    .line 319
    .line 320
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 325
    .line 326
    invoke-direct {p0, p1, v0, v4}, Lcom/transsion/subtitle/VideoSubtitleControl;->d0(Lht/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    .line 327
    .line 328
    .line 329
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 330
    .line 331
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v1, " --> subtitleSelectFromSearch() --> \u8bbe\u7f6e\u5b57\u5e55 --> bean.id = "

    .line 352
    .line 353
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->j:Lkotlin/jvm/functions/Function1;

    .line 367
    .line 368
    if-eqz p1, :cond_b

    .line 369
    .line 370
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    if-eqz v0, :cond_a

    .line 375
    .line 376
    sget v1, Lcom/transsion/subtitle/R$string;->subtitle_switch_toast:I

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    if-nez v0, :cond_9

    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_9
    move-object v2, v0

    .line 386
    :cond_a
    :goto_4
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    :cond_b
    return-void
.end method

.method public static final synthetic p(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->g:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->k:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final s0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
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

.method public static final synthetic t(Lcom/transsion/subtitle/VideoSubtitleControl;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->u:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->G()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lcom/transsion/subtitle/VideoSubtitleControl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->G:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic x(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->P(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->U(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic z(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->V(Lht/a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final E(Lcom/transsion/subtitle/helper/LocalVideoUiType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "uitType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "switchCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "settingCallback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->y:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->z:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final F()Ljava/util/Map;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final M()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 2
    .line 3
    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> onDestroy()"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->stop()V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 67
    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->destroy()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->m:Z

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->v:Ljava/util/Map;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ljava/util/Map;

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_3

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Ljava/util/Map$Entry;

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 133
    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->destroy()V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 149
    .line 150
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->y:Ljava/util/Map;

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->z:Ljava/util/Map;

    .line 168
    .line 169
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 170
    .line 171
    .line 172
    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->D:Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;

    .line 179
    .line 180
    invoke-interface {v1, v2}, Lcom/transsion/subtitle/h;->c(Lcom/transsion/subtitle_download/a;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->C:Lcom/transsion/subtitle/VideoSubtitleControl$b;

    .line 188
    .line 189
    invoke-interface {v1, v2}, Lcom/transsion/subtitle/h;->f(Llt/c;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-interface {v0}, Lcom/transsion/subtitle/h;->reset()V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final N(Lht/a;)V
    .locals 7

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 7
    .line 8
    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {p1}, Lht/a;->d()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, " --> onDetailPageSubtitleSelect--> "

    .line 43
    .line 44
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, ", "

    .line 51
    .line 52
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lht/a;->d()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v3, 0x0

    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->I:Lcom/transsion/subtitle/VideoSubtitleControl$c;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, p1, v3, v1}, Lcom/transsion/subtitle/VideoSubtitleControl$c;->e(Lht/a;Lht/a;Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    sget-object v2, Lyg/l;->a:Lyg/l;

    .line 86
    .line 87
    invoke-virtual {v2}, Lyg/l;->e()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_1

    .line 92
    .line 93
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 94
    .line 95
    sget v0, Lcom/transsion/baseui/R$string;->base_network_fail:I

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const/4 v4, 0x2

    .line 106
    invoke-virtual {v2, v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setStatus(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 114
    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    :cond_2
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, " --> DetailPage downloadSubtitle() --> \u5185\u7f6e\u5b57\u5e55\u5217\u8868\uff0c\u4e0b\u8f7d\u5b57\u5e55\uff0cname = "

    .line 154
    .line 155
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, ", subtype = "

    .line 162
    .line 163
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v1, ",\"  download subtitleName = "

    .line 170
    .line 171
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v1, ", subResourceId = "

    .line 178
    .line 179
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v1, "~"

    .line 186
    .line 187
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-interface {v0, p1}, Lcom/transsion/subtitle/h;->h(Lht/a;)V

    .line 204
    .line 205
    .line 206
    :goto_0
    return-void
.end method

.method public final O(Lcom/transsion/subtitle/helper/LocalVideoUiType;)V
    .locals 10

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->m:Z

    .line 9
    .line 10
    const-string v1, "bottom"

    .line 11
    .line 12
    const-class v2, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 13
    .line 14
    const-string v3, "top"

    .line 15
    .line 16
    if-eqz v0, :cond_8

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->v:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Map;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iput-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->w:Ljava/util/Map;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 38
    .line 39
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/view/ViewGroup;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->u:Landroid/view/ViewGroup;

    .line 46
    .line 47
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 54
    .line 55
    iget-object v6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    .line 56
    .line 57
    invoke-interface {v6}, Ljava/util/Set;->size()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v4, " --> onLocalUiChanged() --> currentUiType = "

    .line 70
    .line 71
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, " --> subtitleSelectList.size = "

    .line 78
    .line 79
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v0, v4}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    .line 93
    .line 94
    check-cast v0, Ljava/lang/Iterable;

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_8

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lht/a;

    .line 111
    .line 112
    iget-boolean v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->G:Z

    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    if-eqz v5, :cond_7

    .line 116
    .line 117
    invoke-virtual {v4}, Lht/a;->a()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    const/4 v8, 0x0

    .line 126
    if-eqz v7, :cond_5

    .line 127
    .line 128
    const v9, 0xc652

    .line 129
    .line 130
    .line 131
    if-eq v7, v9, :cond_3

    .line 132
    .line 133
    const v6, 0xc968

    .line 134
    .line 135
    .line 136
    if-eq v7, v6, :cond_1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_1
    const-string v6, "2nd"

    .line 140
    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-nez v5, :cond_2

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_2
    iget-object v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 149
    .line 150
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast v5, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 155
    .line 156
    :goto_1
    move v6, v8

    .line 157
    goto :goto_3

    .line 158
    :cond_3
    const-string v7, "1st"

    .line 159
    .line 160
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-nez v5, :cond_4

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    iget-object v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 168
    .line 169
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    const-string v7, ""

    .line 177
    .line 178
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-nez v5, :cond_6

    .line 183
    .line 184
    :goto_2
    const/4 v5, 0x0

    .line 185
    goto :goto_1

    .line 186
    :cond_6
    iget-object v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 187
    .line 188
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    check-cast v5, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 193
    .line 194
    :goto_3
    invoke-direct {p0, v4, v5, v6}, Lcom/transsion/subtitle/VideoSubtitleControl;->d0(Lht/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_7
    iget-object v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 199
    .line 200
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    check-cast v5, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 205
    .line 206
    invoke-direct {p0, v4, v5, v6}, Lcom/transsion/subtitle/VideoSubtitleControl;->d0(Lht/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_8
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->q:Lcom/transsion/subtitle/helper/d;

    .line 211
    .line 212
    if-eqz v0, :cond_9

    .line 213
    .line 214
    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 215
    .line 216
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    check-cast v3, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 221
    .line 222
    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 223
    .line 224
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 229
    .line 230
    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->u:Landroid/view/ViewGroup;

    .line 231
    .line 232
    invoke-virtual {v0, v3, v1, p1, v4}, Lcom/transsion/subtitle/helper/d;->i(Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;)V

    .line 233
    .line 234
    .line 235
    :cond_9
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v0, " --> onLocalUiChanged() --> \u9875\u9762\u5207\u6362\u5237\u65b0\u5b57\u5e55\u4f4d\u7f6e\u4fe1\u606f"

    .line 250
    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method public final Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->pause()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public final R(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->E:J

    .line 2
    .line 3
    return-void
.end method

.method public final S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->resume()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public final T()V
    .locals 0

    .line 1
    return-void
.end method

.method public final X()V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->reset()V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 56
    .line 57
    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " --> reset() --> \u91cd\u7f6e\u8d44\u6e90"

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Lcom/transsion/subtitle/h;->reset()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final Z(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/widget/TextView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->m:Z

    .line 7
    .line 8
    iput-object p5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->u:Landroid/view/ViewGroup;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 11
    .line 12
    const-string v1, "top"

    .line 13
    .line 14
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    .line 18
    .line 19
    const-string v2, "bottom"

    .line 20
    .line 21
    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    if-eqz p6, :cond_0

    .line 25
    .line 26
    new-instance p6, Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-direct {p6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-interface {p6, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->v:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object p6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->w:Ljava/util/Map;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->u:Landroid/view/ViewGroup;

    .line 45
    .line 46
    invoke-interface {p6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_0
    sget-object p6, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 50
    .line 51
    invoke-virtual {p6}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 52
    .line 53
    .line 54
    move-result-object p6

    .line 55
    invoke-interface {p6}, Lcom/transsion/subtitle/h;->reset()V

    .line 56
    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    new-instance p6, Lcom/transsion/subtitle/c;

    .line 61
    .line 62
    invoke-direct {p6, p0}, Lcom/transsion/subtitle/c;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    if-eqz p3, :cond_2

    .line 69
    .line 70
    invoke-direct {p0, p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->J(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    if-eqz p4, :cond_3

    .line 74
    .line 75
    invoke-direct {p0, p4}, Lcom/transsion/subtitle/VideoSubtitleControl;->J(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->q:Lcom/transsion/subtitle/helper/d;

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    invoke-virtual {p2, p3, p4, p1, p5}, Lcom/transsion/subtitle/helper/d;->i(Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    sget-object p2, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 86
    .line 87
    const-class p3, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 88
    .line 89
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    new-instance p4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p3, " --> setData() --> uiType = "

    .line 102
    .line 103
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, " --> END"

    .line 110
    .line 111
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p2, p1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final b0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public final c0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->x:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final f0(Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->X()V

    .line 2
    .line 3
    .line 4
    move-object v0, p1

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " --> setSubtitleDataList() --> \u5f53\u524d\u53ef\u7528\u5b57\u5e55\u6570\u91cf -- size = "

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lht/a;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-virtual {v3, v4}, Lht/a;->l(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-interface {v0, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_1

    .line 104
    .line 105
    sget-object v4, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v5, " --> setSubtitleDataList() --> Repeated\uff0cremove~  name = "

    .line 128
    .line 129
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v4, v3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    const/4 v1, 0x1

    .line 171
    if-le v0, v1, :cond_3

    .line 172
    .line 173
    new-instance v0, Lcom/transsion/subtitle/VideoSubtitleControl$setSubtitleDataList$$inlined$sortBy$1;

    .line 174
    .line 175
    invoke-direct {v0}, Lcom/transsion/subtitle/VideoSubtitleControl$setSubtitleDataList$$inlined$sortBy$1;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 187
    .line 188
    check-cast p1, Ljava/util/Collection;

    .line 189
    .line 190
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->i:Lkotlin/jvm/functions/Function1;

    .line 194
    .line 195
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 196
    .line 197
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->I()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    .line 205
    .line 206
    check-cast p1, Ljava/util/Collection;

    .line 207
    .line 208
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_5

    .line 213
    .line 214
    return-void

    .line 215
    :cond_5
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 222
    .line 223
    if-eqz v1, :cond_6

    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    goto :goto_2

    .line 230
    :cond_6
    const/4 v1, 0x0

    .line 231
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v0, " --> setSubtitleDataList() --> \u65e0\u5b57\u5e55 --> subtitleResId:"

    .line 240
    .line 241
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public final g0(Llt/a;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h0(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-void
.end method

.method public final i0(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j0(ZZ)V
    .locals 9

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sa_show_no_subtitle_tips"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v1

    .line 35
    :goto_0
    if-nez v0, :cond_1

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_4

    .line 47
    .line 48
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    .line 58
    .line 59
    sget-object v3, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->x:Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 62
    .line 63
    sget-object v4, Lcom/transsion/subtitle/helper/LocalVideoUiType;->LAND:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 64
    .line 65
    if-ne v0, v4, :cond_3

    .line 66
    .line 67
    move v4, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v4, v1

    .line 70
    :goto_1
    iget-object v6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->d:Ljava/util/List;

    .line 71
    .line 72
    iget-object v7, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 73
    .line 74
    iget-object v8, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    .line 75
    .line 76
    move v5, p1

    .line 77
    invoke-virtual/range {v3 .. v8}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;->a(ZZLjava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v0, "fragment_subtitle_main_dialog"

    .line 82
    .line 83
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->I:Lcom/transsion/subtitle/VideoSubtitleControl$c;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->F0(Llt/b;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_2
    return-void
.end method

.method public final p0(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "dubs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->d:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final q0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->n:J

    .line 2
    .line 3
    return-void
.end method

.method public final r0(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->c:F

    .line 2
    .line 3
    return-void
.end method
