.class public final Lcom/transsion/player/longvideo/member/ResolutionMemberManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/player/longvideo/member/l;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/player/longvideo/member/l;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->b:Lkotlin/Lazy;

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

.method public static synthetic a()Lcom/transsion/baselib/db/member/MemberResolutionDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->h()Lcom/transsion/baselib/db/member/MemberResolutionDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/player/longvideo/member/ResolutionMemberManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/player/longvideo/member/ResolutionMemberManager;)Lcom/transsion/baselib/db/member/MemberResolutionDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->e()Lcom/transsion/baselib/db/member/MemberResolutionDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

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

.method private final e()Lcom/transsion/baselib/db/member/MemberResolutionDao;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/member/MemberResolutionDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final h()Lcom/transsion/baselib/db/member/MemberResolutionDao;
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
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->r1()Lcom/transsion/baselib/db/member/MemberResolutionDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public final f(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p1, v2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isUnlock$2;-><init>(Lln/a;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final g(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isVipResolutionTip$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$isVipResolutionTip$2;-><init>(Lln/a;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final i(Landroidx/fragment/app/FragmentManager;Lcom/transsion/memberapi/MemberSource;Lln/a;Ljava/lang/String;Lnw/e;)V
    .locals 4

    .line 1
    const-string v0, "fragmentManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "from"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lmw/a;->a:Lmw/a;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lmw/a;->k(Lcom/transsion/memberapi/MemberSource;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->d()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    new-instance p4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p3, " --> showRewardDialog() --> \u89e3\u9501\u9ad8\u6e05\u89c6\u9891\u64ad\u653e\u6743\u9650\u5f00\u5173\u5173\u95ed --> from = "

    .line 37
    .line 38
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p1, p2, v3, v2, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/ad/ps/activate/PSActivateManager;->d()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->d()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    new-instance p4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p3, " --> showRewardDialog() --> \u6ca1\u6709\u6fc0\u52b1\u5e7f\u544a\uff0c\u65e0\u6cd5\u89e3\u9501\u9ad8\u6e05\u89c6\u9891\u64ad\u653e\u6743\u9650 --> from = "

    .line 75
    .line 76
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {p1, p2, v3, v2, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    if-eqz p5, :cond_1

    .line 90
    .line 91
    invoke-interface {p5, v3}, Lnw/e;->a(Z)V

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void

    .line 95
    :cond_2
    new-instance v0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    .line 96
    .line 97
    invoke-direct {v0}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;

    .line 101
    .line 102
    invoke-direct {v1, p3, p5}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;-><init>(Lln/a;Lnw/e;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;->v0(Lnw/e;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p2, p4}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;->r0(Lcom/transsion/memberapi/MemberSource;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p2, "\u89e3\u9501\u9ad8\u6e05\u89c6\u9891\u64ad\u653e\u6743\u9650"

    .line 112
    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final j(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$unlock$2;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p1, v2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$unlock$2;-><init>(Lln/a;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-ne p1, p2, :cond_1

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p1
.end method

.method public final k(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$updateVipResolutionTip$2;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p1, v2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$updateVipResolutionTip$2;-><init>(Lln/a;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-ne p1, p2, :cond_1

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p1
.end method
