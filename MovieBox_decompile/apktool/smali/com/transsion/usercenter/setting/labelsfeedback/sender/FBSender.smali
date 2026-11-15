.class public final Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->a:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->b:Lkotlin/Lazy;

    .line 18
    .line 19
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

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->g()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->j(Ljava/lang/String;Landroid/app/Application;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->k(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->f()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_failed_json"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final f()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final g()Lcom/tencent/mmkv/MMKV;
    .locals 2

    .line 1
    const-string v0, "feedback_mmkv"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "mmkvWithID(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final j(Ljava/lang/String;Landroid/app/Application;)V
    .locals 7

    .line 1
    new-instance v0, Landroidx/work/k$a;

    .line 2
    .line 3
    const-class v1, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/work/k$a;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "key_work_data"

    .line 9
    .line 10
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Lkotlin/Pair;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v1, v2, v3

    .line 19
    .line 20
    new-instance v1, Landroidx/work/d$a;

    .line 21
    .line 22
    invoke-direct {v1}, Landroidx/work/d$a;-><init>()V

    .line 23
    .line 24
    .line 25
    aget-object v2, v2, v3

    .line 26
    .line 27
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v3, v2}, Landroidx/work/d$a;->b(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/d$a;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/work/d$a;->a()Landroidx/work/d;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "dataBuilder.build()"

    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/work/r$a;->l(Landroidx/work/d;)Landroidx/work/r$a;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/work/r$a;->b()Landroidx/work/r;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroidx/work/k;

    .line 57
    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v2, 0x18

    .line 61
    .line 62
    if-lt v1, v2, :cond_0

    .line 63
    .line 64
    invoke-static {p2}, Lcom/cloud/tmc/integration/b;->a(Landroid/app/Application;)Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :cond_0
    invoke-static {p2}, Landroidx/work/WorkManager;->f(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const-string v1, "getInstance(...)"

    .line 73
    .line 74
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v1, "feedback work name"

    .line 78
    .line 79
    sget-object v2, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 80
    .line 81
    invoke-virtual {p2, v1, v2, v0}, Landroidx/work/WorkManager;->a(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/k;)Landroidx/work/p;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroidx/work/p;->a()Landroidx/work/l;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/work/r;->a()Ljava/util/UUID;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p2, v0}, Landroidx/work/WorkManager;->g(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    const-string v0, "getWorkInfoByIdLiveData(...)"

    .line 97
    .line 98
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;

    .line 102
    .line 103
    invoke-direct {v0, p2, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;-><init>(Landroidx/lifecycle/LiveData;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    new-instance v4, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$sendJson$1;

    .line 115
    .line 116
    const/4 p1, 0x0

    .line 117
    invoke-direct {v4, p2, v0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$sendJson$1;-><init>(Landroidx/lifecycle/LiveData;Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;Lkotlin/coroutines/Continuation;)V

    .line 118
    .line 119
    .line 120
    const/4 v5, 0x3

    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v2, 0x0

    .line 123
    const/4 v3, 0x0

    .line 124
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method private final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "key_failed_json"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->f()Lcom/tencent/mmkv/MMKV;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->f()Lcom/tencent/mmkv/MMKV;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0, p1}, Lcom/tencent/mmkv/MMKV;->v(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method


# virtual methods
.method public final e()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    const-class v1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string v0, "unable to parse json"

    .line 24
    .line 25
    :cond_0
    const-string v1, "feedback"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public final h(Landroid/app/Application;)V
    .locals 2

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 7
    .line 8
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->d()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v1, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->a:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    .line 22
    .line 23
    invoke-direct {v1, v0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->j(Ljava/lang/String;Landroid/app/Application;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final i(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Landroid/app/Application;)V
    .locals 7

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "application"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v4, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$send$1;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p1, p2, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$send$1;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 30
    .line 31
    .line 32
    return-void
.end method
