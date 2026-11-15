.class public final Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;
    }
.end annotation


# static fields
.field public static final n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

.field public static final o:I

.field private static final p:Lkotlin/Lazy;


# instance fields
.field private a:I

.field private volatile b:Z

.field private volatile c:Z

.field private final d:Lyk/e;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private k:Lcom/transsion/home/bean/AppTab;

.field private l:Ljava/util/List;

.field private final m:Lkotlinx/coroutines/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->o:I

    .line 12
    .line 13
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 14
    .line 15
    new-instance v1, Lcom/transsion/home/viewmodel/preload/b;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/transsion/home/viewmodel/preload/b;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->p:Lkotlin/Lazy;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->a:I

    .line 6
    .line 7
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-class v1, Lyk/e;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lyk/e;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->d:Lyk/e;

    .line 22
    .line 23
    new-instance v0, Lcom/transsion/home/viewmodel/preload/c;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/c;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->e:Lkotlin/Lazy;

    .line 33
    .line 34
    new-instance v0, Lcom/transsion/home/viewmodel/preload/d;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/d;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->f:Lkotlin/Lazy;

    .line 44
    .line 45
    new-instance v0, Lcom/transsion/home/viewmodel/preload/e;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/e;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->g:Lkotlin/Lazy;

    .line 55
    .line 56
    new-instance v0, Lcom/transsion/home/viewmodel/preload/f;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/f;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->h:Lkotlin/Lazy;

    .line 66
    .line 67
    new-instance v0, Lcom/transsion/home/viewmodel/preload/g;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/g;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->i:Lkotlin/Lazy;

    .line 77
    .line 78
    new-instance v0, Lcom/transsion/home/viewmodel/preload/h;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/h;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->j:Lkotlin/Lazy;

    .line 88
    .line 89
    sget-object v0, Lkotlinx/coroutines/j0;->l1:Lkotlinx/coroutines/j0$a;

    .line 90
    .line 91
    new-instance v1, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$b;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$b;-><init>(Lkotlinx/coroutines/j0$a;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->m:Lkotlinx/coroutines/j0;

    .line 97
    .line 98
    return-void
.end method

.method private final B()Lcom/transsion/home/bean/AppTab;
    .locals 6

    .line 1
    const-string v0, "app_tab"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->Y(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->E()Lcom/transsion/home/viewmodel/preload/a;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "getApp(...)"

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/transsion/home/viewmodel/preload/a;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-lez v2, :cond_2

    .line 44
    .line 45
    const-class v2, Lcom/transsion/home/bean/AppTab;

    .line 46
    .line 47
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/transsion/home/bean/AppTab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    return-object v1

    .line 54
    :goto_1
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v5, "getAppTabCache error: "

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/4 v4, 0x1

    .line 78
    const-string v5, "PreloadTrending"

    .line 79
    .line 80
    invoke-virtual {v2, v5, v3, v4}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    sget-object v2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2, v0}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :cond_2
    const/4 v0, 0x0

    .line 96
    return-object v0
.end method

.method private final E()Lcom/transsion/home/viewmodel/preload/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/home/viewmodel/preload/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final I()Lcom/transsion/home/bean/HotSubjectEntity;
    .locals 3

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
    const-string v1, "hot_search_words"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-class v1, Lcom/transsion/home/bean/HotSubjectEntity;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/transsion/home/bean/HotSubjectEntity;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    return-object v2
.end method

.method private static final N()Landroidx/lifecycle/b0;
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

.method private final O(Lcom/transsion/home/bean/AppTab;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Lcom/transsion/home/bean/BottomTabItem;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "COMMUNITY"

    .line 34
    .line 35
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v2, v0

    .line 43
    :goto_0
    check-cast v2, Lcom/transsion/home/bean/BottomTabItem;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v2, v0

    .line 47
    :goto_1
    const/4 v1, 0x1

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 51
    .line 52
    const/4 v7, 0x4

    .line 53
    const/4 v8, 0x0

    .line 54
    const-string v4, "PreloadTrending"

    .line 55
    .line 56
    const-string v5, "has bottom room tab"

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lep/k;->a:Lep/k;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lep/k;->l(Z)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_7

    .line 68
    .line 69
    :cond_3
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    check-cast p1, Ljava/lang/Iterable;

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    move-object v3, v2

    .line 94
    check-cast v3, Lcom/transsion/home/bean/BottomTabItem;

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-string v4, "HOME"

    .line 101
    .line 102
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    move-object v2, v0

    .line 110
    :goto_2
    check-cast v2, Lcom/transsion/home/bean/BottomTabItem;

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    move-object v2, v0

    .line 114
    :goto_3
    const/4 p1, 0x0

    .line 115
    if-nez v2, :cond_7

    .line 116
    .line 117
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 118
    .line 119
    const/4 v7, 0x4

    .line 120
    const/4 v8, 0x0

    .line 121
    const-string v4, "PreloadTrending"

    .line 122
    .line 123
    const-string v5, "has no room tab"

    .line 124
    .line 125
    const/4 v6, 0x0

    .line 126
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    sget-object v0, Lep/k;->a:Lep/k;

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Lep/k;->l(Z)V

    .line 132
    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_7
    invoke-virtual {v2}, Lcom/transsion/home/bean/BottomTabItem;->getSubTabs()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_b

    .line 140
    .line 141
    check-cast v2, Ljava/lang/Iterable;

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_a

    .line 152
    .line 153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    move-object v4, v3

    .line 158
    check-cast v4, Lcom/transsion/home/bean/HomeTabItem;

    .line 159
    .line 160
    if-eqz v4, :cond_9

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/transsion/home/bean/HomeTabItem;->getTabCode()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    goto :goto_4

    .line 167
    :cond_9
    move-object v4, v0

    .line 168
    :goto_4
    const-string v5, "Community"

    .line 169
    .line 170
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_8

    .line 175
    .line 176
    move-object v0, v3

    .line 177
    :cond_a
    check-cast v0, Lcom/transsion/home/bean/HomeTabItem;

    .line 178
    .line 179
    :cond_b
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 180
    .line 181
    if-eqz v0, :cond_c

    .line 182
    .line 183
    move v3, v1

    .line 184
    goto :goto_5

    .line 185
    :cond_c
    move v3, p1

    .line 186
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v5, "has top room tab:"

    .line 192
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    const/4 v6, 0x4

    .line 204
    const/4 v7, 0x0

    .line 205
    const-string v3, "PreloadTrending"

    .line 206
    .line 207
    const/4 v5, 0x0

    .line 208
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    sget-object v2, Lep/k;->a:Lep/k;

    .line 212
    .line 213
    if-eqz v0, :cond_d

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_d
    move v1, p1

    .line 217
    :goto_6
    invoke-virtual {v2, v1}, Lep/k;->l(Z)V

    .line 218
    .line 219
    .line 220
    :goto_7
    return-void
.end method

.method private static final P()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final R()Landroidx/lifecycle/b0;
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

.method private static final S()Landroidx/lifecycle/b0;
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

.method private final T(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p2, v6, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->label:I

    .line 34
    .line 35
    const-string v9, "PreloadTrending"

    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    if-ne v1, v11, :cond_1

    .line 42
    .line 43
    iget-object p1, v6, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :try_start_1
    iget-object v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->d:Lyk/e;

    .line 66
    .line 67
    iget v3, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->a:I

    .line 68
    .line 69
    iput-object p1, v6, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput v11, v6, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->label:I

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v7, 0x5

    .line 76
    const/4 v8, 0x0

    .line 77
    move-object v5, p1

    .line 78
    invoke-static/range {v1 .. v8}, Lyk/e$a;->b(Lyk/e;Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-ne p2, v0, :cond_3

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_3
    :goto_2
    check-cast p2, Lcom/tn/lib/net/bean/BaseDto;

    .line 86
    .line 87
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/transsion/home/bean/MainOperateData;

    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move-object v1, v10

    .line 113
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v3, "get operating data from net size = "

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v9, v1, v11}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v1, "0"

    .line 138
    .line 139
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_7

    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    check-cast p2, Lcom/transsion/home/bean/MainOperateData;

    .line 156
    .line 157
    if-eqz p2, :cond_6

    .line 158
    .line 159
    const-string v0, "from_net"

    .line 160
    .line 161
    invoke-virtual {p2, v0}, Lcom/transsion/home/bean/MainOperateData;->setSourceFrom(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->K()Landroidx/lifecycle/b0;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Lcom/transsion/home/bean/MainOperateData;->getVersion()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/transsion/home/bean/MainOperateData;->getVersion()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_6

    .line 186
    .line 187
    invoke-virtual {p2}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Ljava/util/Collection;

    .line 192
    .line 193
    if-eqz p1, :cond_6

    .line 194
    .line 195
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_5

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_5
    invoke-direct {p0, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->Z(Lcom/transsion/home/bean/MainOperateData;)V

    .line 203
    .line 204
    .line 205
    :cond_6
    :goto_4
    iget p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->a:I

    .line 206
    .line 207
    add-int/lit8 p2, p1, 0x1

    .line 208
    .line 209
    iput p2, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->a:I

    .line 210
    .line 211
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->K()Landroidx/lifecycle/b0;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p1, v10}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :goto_5
    sget-object p2, Lwf/a;->a:Lwf/a$a;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v2, "get Operating List msg="

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v0, " cause="

    .line 247
    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p2, v9, p1, v11}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->K()Landroidx/lifecycle/b0;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1, v10}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 269
    .line 270
    return-object p1
.end method

.method private final V(Landroid/content/Context;)V
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
    new-instance v4, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadSkuDataCache$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p1, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadSkuDataCache$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

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

.method private final W(Landroid/content/Context;)V
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
    new-instance v4, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadVideoCache$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadVideoCache$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

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

.method private final Y(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    sget-object v2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, p1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    move v3, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-nez v3, :cond_1

    .line 22
    .line 23
    new-instance v3, Ljava/lang/String;

    .line 24
    .line 25
    sget-object v4, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    move-object v0, v3

    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception v2

    .line 33
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v5, "safeGetMmkvString failed for key: "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, ", "

    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v2, "PreloadTrending"

    .line 65
    .line 66
    invoke-virtual {v3, v2, p1, v1}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_1
    return-object v0
.end method

.method private final Z(Lcom/transsion/home/bean/MainOperateData;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/google/gson/Gson;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "main_operating_data"

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public static synthetic a()Lcom/transsion/home/viewmodel/preload/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->w()Lcom/transsion/home/viewmodel/preload/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final a0(Lcom/transsion/home/bean/AppTab;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "app_tab"

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic b()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->P()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->S()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->N()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->u()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->v()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->R()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic h(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->x(Lcom/transsion/home/bean/AppTab;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->y(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lcom/transsion/home/bean/AppTab;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->B()Lcom/transsion/home/bean/AppTab;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lcom/transsion/home/viewmodel/preload/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->E()Lcom/transsion/home/viewmodel/preload/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lcom/transsion/home/bean/HotSubjectEntity;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->I()Lcom/transsion/home/bean/HotSubjectEntity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->p:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic n(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lyk/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->d:Lyk/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->O(Lcom/transsion/home/bean/AppTab;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->T(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->a0(Lcom/transsion/home/bean/AppTab;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic s(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->k:Lcom/transsion/home/bean/AppTab;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic t(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final u()Landroidx/lifecycle/b0;
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

.method private static final w()Lcom/transsion/home/viewmodel/preload/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/preload/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final x(Lcom/transsion/home/bean/AppTab;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/transsion/home/enum/BottomTabType;->values()[Lcom/transsion/home/enum/BottomTabType;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_0

    .line 14
    .line 15
    aget-object v5, v1, v4

    .line 16
    .line 17
    invoke-virtual {v5}, Lcom/transsion/home/enum/BottomTabType;->getValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-class v1, Lim/b;

    .line 34
    .line 35
    new-array v2, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lim/b;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Lim/b;->z()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v1, v3

    .line 51
    :goto_1
    if-nez v1, :cond_2

    .line 52
    .line 53
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 54
    .line 55
    const/4 v8, 0x4

    .line 56
    const/4 v9, 0x0

    .line 57
    const-string v5, "co_mem"

    .line 58
    .line 59
    const-string v6, "MainActivity --> getTabEntities() --> \u5f53\u524d\u6ca1\u6709\u5f00\u542f\u4f1a\u5458\u529f\u80fd --> \u4e0d\u5c55\u793a\u4f1a\u5458Tab"

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    if-eqz p1, :cond_7

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_7

    .line 72
    .line 73
    check-cast p1, Ljava/lang/Iterable;

    .line 74
    .line 75
    new-instance v2, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_6

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    move-object v5, v4

    .line 95
    check-cast v5, Lcom/transsion/home/bean/BottomTabItem;

    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabType()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    sget-object v7, Lcom/transsion/home/enum/BottomTabType;->PREMIUM:Lcom/transsion/home/enum/BottomTabType;

    .line 102
    .line 103
    invoke-virtual {v7}, Lcom/transsion/home/enum/BottomTabType;->getValue()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_5

    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabType()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_4

    .line 122
    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    const/4 v5, 0x1

    .line 126
    goto :goto_3

    .line 127
    :cond_4
    move v5, v3

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    invoke-virtual {v5}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabType()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    :goto_3
    if-eqz v5, :cond_3

    .line 138
    .line 139
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    goto :goto_4

    .line 148
    :cond_7
    const/4 p1, 0x0

    .line 149
    :goto_4
    return-object p1
.end method

.method private final y(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/transsion/home/enum/HomeTabType;->values()[Lcom/transsion/home/enum/HomeTabType;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_0

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/transsion/home/enum/HomeTabType;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-eqz p1, :cond_3

    .line 33
    .line 34
    check-cast p1, Ljava/lang/Iterable;

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    move-object v3, v2

    .line 56
    check-cast v3, Lcom/transsion/home/bean/HomeTabItem;

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/transsion/home/bean/HomeTabItem;->getType()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/4 p1, 0x0

    .line 80
    :goto_2
    return-object p1
.end method


# virtual methods
.method public final A(Landroid/content/Context;)Lcom/transsion/home/bean/AppTab;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->E()Lcom/transsion/home/viewmodel/preload/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/transsion/home/viewmodel/preload/a;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-class v0, Lcom/transsion/home/bean/AppTab;

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/transsion/home/bean/AppTab;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-object p1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public final C()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->i:Lkotlin/Lazy;

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

.method public final D()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->h:Lkotlin/Lazy;

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

.method public final F()Lcom/transsion/home/bean/AppTab;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->k:Lcom/transsion/home/bean/AppTab;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()V
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
    new-instance v4, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getHotSearch$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getHotSearch$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lkotlin/coroutines/Continuation;)V

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

.method public final H()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->j:Lkotlin/Lazy;

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

.method public final J()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->g:Lkotlin/Lazy;

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

.method public final K()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->f:Lkotlin/Lazy;

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

.method public final L()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->l:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->l:Ljava/util/List;

    .line 5
    .line 6
    return-object v0
.end method

.method public final M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Q(Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, "version"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->b:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->b:Z

    .line 14
    .line 15
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->m:Lkotlinx/coroutines/j0;

    .line 24
    .line 25
    new-instance v5, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$loadOperatingDataFromNet$1;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v5, p0, p1, v1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$loadOperatingDataFromNet$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x2

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 35
    .line 36
    .line 37
    return v0
.end method

.method public final U(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const-string v1, "preloadOperatingCache() called"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const-string v3, "PreloadTrending"

    .line 12
    .line 13
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v4, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadOperating$1;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadOperating$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->W(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->V(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final X(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "operationVersion"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->J()Landroidx/lifecycle/b0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->U(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->Q(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final b0(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->l:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final z()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->c:Z

    .line 3
    .line 4
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    const-string v2, "PreloadTrending"

    .line 7
    .line 8
    const-string v3, "getAppTab() called"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3, v0}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
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
    new-instance v4, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {v4, p0, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lkotlin/coroutines/Continuation;)V

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
    return-void
.end method
