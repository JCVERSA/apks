.class public final Lcom/transsion/member/MemberProvider;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/b;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private volatile b:Lcom/transsion/memberapi/MemberDetail;

.field private volatile c:Lcom/transsion/memberapi/MemberTaskInfo;

.field private final d:Lkotlinx/coroutines/flow/x0;

.field private final e:Lkotlinx/coroutines/flow/x0;

.field private f:Ljava/lang/String;

.field private g:Lcom/transsion/member/dialog/ClaimMemberDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/member/z;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/member/z;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/member/MemberProvider;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Lkotlinx/coroutines/flow/i1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/x0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/transsion/member/MemberProvider;->d:Lkotlinx/coroutines/flow/x0;

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlinx/coroutines/flow/i1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/x0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/transsion/member/MemberProvider;->e:Lkotlinx/coroutines/flow/x0;

    .line 29
    .line 30
    const-string v1, ""

    .line 31
    .line 32
    iput-object v1, p0, Lcom/transsion/member/MemberProvider;->f:Ljava/lang/String;

    .line 33
    .line 34
    sget-object v1, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "MEMBER_JSON"

    .line 41
    .line 42
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    :try_start_0
    const-class v2, Lcom/transsion/memberapi/MemberDetail;

    .line 56
    .line 57
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/transsion/memberapi/MemberDetail;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    iput-object v0, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;

    .line 70
    .line 71
    :goto_1
    sget-object v1, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "MEMBER_TASK_JSON"

    .line 78
    .line 79
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 86
    .line 87
    const-class v2, Lcom/transsion/memberapi/MemberTaskInfo;

    .line 88
    .line 89
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/transsion/memberapi/MemberTaskInfo;

    .line 94
    .line 95
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    goto :goto_2

    .line 100
    :catchall_0
    move-exception v1

    .line 101
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 102
    .line 103
    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_2
    move-object v0, v1

    .line 119
    :goto_3
    check-cast v0, Lcom/transsion/memberapi/MemberTaskInfo;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/transsion/member/MemberProvider;->c:Lcom/transsion/memberapi/MemberTaskInfo;

    .line 122
    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/member/MemberProvider;->z()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    sget-object v0, Lcom/transsion/member/ObserveLoginAction;->c:Lcom/transsion/member/ObserveLoginAction$a;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/transsion/member/ObserveLoginAction$a;->a()Lcom/transsion/member/ObserveLoginAction;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/transsion/member/ObserveLoginAction;->j()V

    .line 136
    .line 137
    .line 138
    :cond_4
    return-void
.end method

.method public static synthetic F()Lfm/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/member/MemberProvider;->W()Lfm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic G(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/TaskRewards;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/member/MemberProvider;->S(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/TaskRewards;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/member/MemberProvider;->R(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic I(Lcom/transsion/member/MemberProvider;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->T()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J(Lcom/transsion/member/MemberProvider;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->U()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K(Lcom/transsion/member/MemberProvider;)Lkotlinx/coroutines/flow/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberProvider;->e:Lkotlinx/coroutines/flow/x0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L(Lcom/transsion/member/MemberProvider;)Lcom/transsion/memberapi/MemberDetail;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic M(Lcom/transsion/member/MemberProvider;)Lkotlinx/coroutines/flow/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberProvider;->d:Lkotlinx/coroutines/flow/x0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic N(Lcom/transsion/member/MemberProvider;)Lcom/transsion/memberapi/MemberTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberProvider;->c:Lcom/transsion/memberapi/MemberTaskInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic O(Lcom/transsion/member/MemberProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberProvider;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic P(Lcom/transsion/member/MemberProvider;Lcom/transsion/memberapi/MemberDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Q(Lcom/transsion/member/MemberProvider;Lcom/transsion/memberapi/MemberTaskInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberProvider;->c:Lcom/transsion/memberapi/MemberTaskInfo;

    .line 2
    .line 3
    return-void
.end method

.method private static final R(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    invoke-virtual {p0, p2}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final S(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/TaskRewards;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberProvider;->d:Lkotlinx/coroutines/flow/x0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/x0;->setValue(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/transsion/member/MemberProvider;->e:Lkotlinx/coroutines/flow/x0;

    .line 8
    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/x0;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/transsion/memberapi/TaskRewards;->getTips()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/transsion/memberapi/TaskRewards;->getTips()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p2}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method private final T()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/member/MemberProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final U()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyyMMdd"

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/Date;

    .line 13
    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const v4, 0xdbba00

    .line 23
    .line 24
    .line 25
    int-to-long v4, v4

    .line 26
    sub-long/2addr v2, v4

    .line 27
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "format(...)"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method private final V()Lfm/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberProvider;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfm/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final W()Lfm/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lfm/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lfm/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public A(Lkotlin/jvm/functions/Function0;)V
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
    new-instance v4, Lcom/transsion/member/MemberProvider$checkShowAdState$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/member/MemberProvider$checkShowAdState$1;-><init>(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

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

.method public B()I
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "kv_parallel_download_task_num"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public C(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lim/j;)V
    .locals 1

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "buttonTitle"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/member/dialog/PurchaseSucceedDialog;

    .line 12
    .line 13
    invoke-direct {v0, p2, p3, p4}, Lcom/transsion/member/dialog/PurchaseSucceedDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Lim/j;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p4}, Lcom/transsion/member/dialog/PurchaseSucceedDialog;->s0(Lim/j;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lcom/transsion/member/dialog/PurchaseSucceedDialog;->t0(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Lcom/transsion/member/dialog/PurchaseSucceedDialog;->r0(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, "PurchaseSucceedDialog"

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public D(Lim/f;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/member/ObserveLoginAction;->c:Lcom/transsion/member/ObserveLoginAction$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/member/ObserveLoginAction$a;->a()Lcom/transsion/member/ObserveLoginAction;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/member/ObserveLoginAction;->e(Lim/f;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberProvider;->g:Lcom/transsion/member/dialog/ClaimMemberDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/member/dialog/ClaimMemberDialog;->r0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/member/MemberProvider;->g:Lcom/transsion/member/dialog/ClaimMemberDialog;

    .line 10
    .line 11
    return-void
.end method

.method public a()Lkotlinx/coroutines/flow/h1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberProvider;->e:Lkotlinx/coroutines/flow/x0;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p4, Lcom/transsion/member/MemberProvider$checkMemberRights$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/member/MemberProvider$checkMemberRights$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/member/MemberProvider$checkMemberRights$1;->label:I

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
    iput v1, v0, Lcom/transsion/member/MemberProvider$checkMemberRights$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/member/MemberProvider$checkMemberRights$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/transsion/member/MemberProvider$checkMemberRights$1;-><init>(Lcom/transsion/member/MemberProvider;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/transsion/member/MemberProvider$checkMemberRights$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/member/MemberProvider$checkMemberRights$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    iget-object p1, v0, Lcom/transsion/member/MemberProvider$checkMemberRights$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    move-object p3, p1

    .line 58
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 59
    .line 60
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance p4, Lcom/google/gson/JsonObject;

    .line 70
    .line 71
    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 72
    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberSceneType;->getValue()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    move-object p1, v5

    .line 82
    :goto_1
    const-string v2, "sceneType"

    .line 83
    .line 84
    invoke-virtual {p4, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-eqz p2, :cond_5

    .line 88
    .line 89
    const-string p1, "resolution"

    .line 90
    .line 91
    invoke-virtual {p4, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 95
    .line 96
    invoke-virtual {p4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    const-string p4, "toString(...)"

    .line 101
    .line 102
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object p4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 106
    .line 107
    const-string v2, "application/json"

    .line 108
    .line 109
    invoke-virtual {p4, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 110
    .line 111
    .line 112
    move-result-object p4

    .line 113
    invoke-virtual {p1, p2, p4}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 118
    .line 119
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->V()Lfm/a;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    sget-object p4, Lgg/a;->a:Lgg/a$a;

    .line 124
    .line 125
    invoke-virtual {p4}, Lgg/a$a;->a()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    iput-object p3, v0, Lcom/transsion/member/MemberProvider$checkMemberRights$1;->L$0:Ljava/lang/Object;

    .line 130
    .line 131
    iput v4, v0, Lcom/transsion/member/MemberProvider$checkMemberRights$1;->label:I

    .line 132
    .line 133
    invoke-interface {p2, p4, p1, v0}, Lfm/a;->m(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p4

    .line 137
    if-ne p4, v1, :cond_6

    .line 138
    .line 139
    return-object v1

    .line 140
    :cond_6
    :goto_2
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    .line 141
    .line 142
    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    goto :goto_4

    .line 147
    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 148
    .line 149
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-nez p2, :cond_7

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_7
    sget-object p1, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 165
    .line 166
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->T()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p4

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p4, " --> checkMemberRights() ---> getOrElse() --> it = "

    .line 179
    .line 180
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-virtual {p1, p2}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    move-object p1, v5

    .line 194
    :goto_5
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 195
    .line 196
    if-eqz p3, :cond_8

    .line 197
    .line 198
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    new-instance p4, Lcom/transsion/member/MemberProvider$checkMemberRights$2$1;

    .line 203
    .line 204
    invoke-direct {p4, p3, p1, v5}, Lcom/transsion/member/MemberProvider$checkMemberRights$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/tn/lib/net/bean/BaseDto;Lkotlin/coroutines/Continuation;)V

    .line 205
    .line 206
    .line 207
    iput-object v5, v0, Lcom/transsion/member/MemberProvider$checkMemberRights$1;->L$0:Ljava/lang/Object;

    .line 208
    .line 209
    iput v3, v0, Lcom/transsion/member/MemberProvider$checkMemberRights$1;->label:I

    .line 210
    .line 211
    invoke-static {p2, p4, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-ne p1, v1, :cond_8

    .line 216
    .line 217
    return-object v1

    .line 218
    :cond_8
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 219
    .line 220
    return-object p1
.end method

.method public c()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "kv_is_pay_enable_member"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public d(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lim/a;)V
    .locals 1

    .line 1
    const-string v0, "sceneType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->u0(Lim/a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->v0(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "CheckMemberRightsDialog"

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public e()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "kv_is_skip_ad"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->V()Lfm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 6
    .line 7
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lfm/a;->o(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 16
    .line 17
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/transsion/member/MemberProvider$b;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/member/MemberProvider$b;-><init>(Lcom/transsion/member/MemberProvider;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public g(Ljava/lang/Integer;Lim/a;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->T()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, " --> showCheckResolutionRightsDialog() --> \u8fd9\u91cc\u4e0d\u9700\u8981\u5224\u65ad\u4e86\uff0c\u7edf\u4e00\u4e0b\u8f7d\u7684\u65f6\u5019\u4f1a\u6709\u6821\u9a8c "

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-interface {p2}, Lim/a;->e()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    sget-object v0, Lhm/k;->a:Lhm/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhm/k;->Y()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/transsion/member/MemberFragment;

    .line 2
    .line 3
    return p1
.end method

.method public j(Lcom/transsion/memberapi/MemberDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    return-void
.end method

.method public k(Lcom/transsion/memberapi/MemberTaskItem;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "claimTaskReward taskId: "

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_0
    const-string v1, "taskId"

    .line 49
    .line 50
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "toString(...)"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 65
    .line 66
    const-string v2, "application/json"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v0, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->V()Lfm/a;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 81
    .line 82
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {v0, v1, p1}, Lfm/a;->j(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget-object v0, Ldg/d;->a:Ldg/d;

    .line 91
    .line 92
    invoke-virtual {v0}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance v0, Lcom/transsion/member/MemberProvider$a;

    .line 101
    .line 102
    invoke-direct {v0, p2, p3}, Lcom/transsion/member/MemberProvider$a;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public l()Lcom/transsion/memberapi/MemberDetail;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberInfo;->isActive()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public n(Lcom/transsion/memberapi/OpType;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    const-string v0, "opType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/memberapi/OpType;->getValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "toString(...)"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 30
    .line 31
    const-string v2, "application/json"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v0, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->V()Lfm/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 46
    .line 47
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v1, p1}, Lfm/a;->h(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object v0, Ldg/d;->a:Ldg/d;

    .line 56
    .line 57
    invoke-virtual {v0}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v0, Lcom/transsion/member/MemberProvider$h;

    .line 66
    .line 67
    invoke-direct {v0, p2}, Lcom/transsion/member/MemberProvider$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->V()Lfm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 6
    .line 7
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lfm/a;->k(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 16
    .line 17
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/transsion/member/MemberProvider$e;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/member/MemberProvider$e;-><init>(Lcom/transsion/member/MemberProvider;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public p(Lim/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->V()Lfm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 6
    .line 7
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lfm/a;->n(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 16
    .line 17
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/transsion/member/MemberProvider$f;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/member/MemberProvider$f;-><init>(Lcom/transsion/member/MemberProvider;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->h(Lyx/f;)Lio/reactivex/rxjava3/core/j;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/transsion/member/MemberProvider$g;

    .line 35
    .line 36
    invoke-direct {v1, p0, p1}, Lcom/transsion/member/MemberProvider$g;-><init>(Lcom/transsion/member/MemberProvider;Lim/d;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    sget-object v0, Lhm/k;->a:Lhm/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhm/k;->a0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    const-string v0, "/member/MemberFragment"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/therouter/router/Navigator;->k()Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/baseui/fragment/EmptyFragment;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/transsion/baseui/fragment/EmptyFragment;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object v0
.end method

.method public s(Lim/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->V()Lfm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 6
    .line 7
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lfm/a;->l(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 16
    .line 17
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/transsion/member/MemberProvider$c;->a:Lcom/transsion/member/MemberProvider$c;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->h(Lyx/f;)Lio/reactivex/rxjava3/core/j;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/transsion/member/MemberProvider$d;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lcom/transsion/member/MemberProvider$d;-><init>(Lim/d;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    sget-object v0, Lhm/k;->a:Lhm/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhm/k;->W()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public u(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lim/c;ZLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/member/MemberProvider;->z()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->T()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, " --> startMemberPage() --> \u5f53\u524d\u4e0d\u5f00\u53d1\u4f1a\u5458\u529f\u80fd"

    .line 27
    .line 28
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->h:Lcom/transsion/member/dialog/MemberMiddleStateDialog$a;

    .line 40
    .line 41
    invoke-virtual {v0, p4}, Lcom/transsion/member/dialog/MemberMiddleStateDialog$a;->a(Z)Lcom/transsion/member/dialog/MemberMiddleStateDialog;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-virtual {p4, p3}, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->p0(Lim/c;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4, p2}, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->q0(Lcom/transsion/memberapi/MemberSource;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4, p5}, Lcom/transsion/member/dialog/MemberMiddleStateDialog;->r0(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p2, "MemberMiddleStateDialog"

    .line 55
    .line 56
    invoke-virtual {p4, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public v(Lim/f;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/member/ObserveLoginAction;->c:Lcom/transsion/member/ObserveLoginAction$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/member/ObserveLoginAction$a;->a()Lcom/transsion/member/ObserveLoginAction;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/member/ObserveLoginAction;->n(Lim/f;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public w(F)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/member/MemberProvider;->d:Lkotlinx/coroutines/flow/x0;

    .line 4
    .line 5
    invoke-interface {v1}, Lkotlinx/coroutines/flow/x0;->getValue()Ljava/lang/Object;

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
    const-string v3, "checkMemberShipShow data:"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/transsion/member/MemberProvider;->d:Lkotlinx/coroutines/flow/x0;

    .line 30
    .line 31
    invoke-interface {v0}, Lkotlinx/coroutines/flow/x0;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/member/dialog/ClaimMemberDialog;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/transsion/member/dialog/ClaimMemberDialog;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/transsion/member/MemberProvider;->d:Lkotlinx/coroutines/flow/x0;

    .line 43
    .line 44
    invoke-interface {v1}, Lkotlinx/coroutines/flow/x0;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItem;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/transsion/member/dialog/ClaimMemberDialog;->y0(Lcom/transsion/memberapi/MemberTaskItem;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {v0, p1}, Lcom/transsion/member/dialog/ClaimMemberDialog;->z0(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v1, "ClaimMemberDialog"

    .line 65
    .line 66
    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/transsion/member/MemberProvider;->g:Lcom/transsion/member/dialog/ClaimMemberDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "checkMemberShipShow error:"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    :goto_0
    return-void
.end method

.method public x(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lcom/transsion/memberapi/MemberCheckResult;Lim/c;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/member/dialog/MemberGuideDialog;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/member/dialog/MemberGuideDialog;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p4}, Lcom/transsion/member/dialog/MemberGuideDialog;->r0(Lim/c;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lcom/transsion/member/dialog/MemberGuideDialog;->w0(Lcom/transsion/memberapi/MemberSource;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Lcom/transsion/member/dialog/MemberGuideDialog;->v0(Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 23
    .line 24
    .line 25
    const-string p2, "MemberGuideDialog"

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public y(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberProvider;->d:Lkotlinx/coroutines/flow/x0;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/coroutines/flow/x0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/memberapi/MemberTaskItem;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/transsion/member/a0;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/transsion/member/a0;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/transsion/member/b0;

    .line 17
    .line 18
    invoke-direct {p1, p0, p2}, Lcom/transsion/member/b0;-><init>(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/member/MemberProvider;->k(Lcom/transsion/memberapi/MemberTaskItem;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public z()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "kv_is_enable_member"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method
