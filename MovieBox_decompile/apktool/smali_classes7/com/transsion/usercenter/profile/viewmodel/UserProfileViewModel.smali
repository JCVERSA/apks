.class public final Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/LiveData;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/LiveData;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/LiveData;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Landroidx/lifecycle/LiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->l:Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/usercenter/profile/viewmodel/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/usercenter/profile/viewmodel/c;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/usercenter/profile/viewmodel/d;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsion/usercenter/profile/viewmodel/d;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->b:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/usercenter/profile/viewmodel/e;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/transsion/usercenter/profile/viewmodel/e;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->c:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Landroidx/lifecycle/b0;

    .line 38
    .line 39
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->d:Landroidx/lifecycle/b0;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->e:Landroidx/lifecycle/LiveData;

    .line 45
    .line 46
    new-instance v0, Landroidx/lifecycle/b0;

    .line 47
    .line 48
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->f:Landroidx/lifecycle/b0;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 56
    .line 57
    new-instance v0, Landroidx/lifecycle/b0;

    .line 58
    .line 59
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->h:Landroidx/lifecycle/b0;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 65
    .line 66
    new-instance v0, Landroidx/lifecycle/b0;

    .line 67
    .line 68
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->j:Landroidx/lifecycle/b0;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->k:Landroidx/lifecycle/LiveData;

    .line 74
    .line 75
    return-void
.end method

.method public static synthetic b()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->r()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->s()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Lcom/transsion/usercenter/profile/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->t()Lcom/transsion/usercenter/profile/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;)Lcom/transsion/usercenter/profile/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->l()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;)Lcom/transsion/usercenter/profile/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->m()Lcom/transsion/usercenter/profile/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->j:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final k()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final l()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/usercenter/profile/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final m()Lcom/transsion/usercenter/profile/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/usercenter/profile/c;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final r()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final s()Lcom/transsion/usercenter/profile/b;
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
    const-class v1, Lcom/transsion/usercenter/profile/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/usercenter/profile/b;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final t()Lcom/transsion/usercenter/profile/c;
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
    const-class v1, Lcom/transsion/usercenter/profile/c;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/usercenter/profile/c;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final i(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "targetUID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchSubscriptionStatus$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchSubscriptionStatus$1;-><init>(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;-><init>(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final n()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->k:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->k()Lqx/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, v1

    .line 31
    :goto_0
    const/4 v2, 0x0

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v3, v2

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 51
    :goto_2
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 52
    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v6, "initProfile target="

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v6, ", current="

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", isSelf="

    .line 75
    .line 76
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v5, "UserProfileVM"

    .line 87
    .line 88
    invoke-virtual {v4, v5, v0, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->f:Landroidx/lifecycle/b0;

    .line 92
    .line 93
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->j(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    if-nez v3, :cond_5

    .line 104
    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->i(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->h:Landroidx/lifecycle/b0;

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :goto_4
    return-void
.end method

.method public final q()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const-string v0, "targetUID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$toggleSubscription$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p1, p2, p0, v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$toggleSubscription$1;-><init>(Ljava/lang/String;ZLcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method
