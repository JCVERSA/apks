.class public final Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private final g:Ljava/util/List;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/LiveData;

.field private j:Z

.field private final k:Landroidx/lifecycle/b0;

.field private final l:Landroidx/lifecycle/LiveData;

.field private final m:Landroidx/lifecycle/b0;

.field private final n:Landroidx/lifecycle/LiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->o:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$a;

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
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/usercenter/profile/viewmodel/a;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/transsion/usercenter/profile/viewmodel/a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->a:Lkotlin/Lazy;

    .line 16
    .line 17
    new-instance v1, Lcom/transsion/usercenter/profile/viewmodel/b;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/transsion/usercenter/profile/viewmodel/b;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->b:Lkotlin/Lazy;

    .line 27
    .line 28
    const-string v0, ""

    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->d:Ljava/lang/String;

    .line 31
    .line 32
    const/16 v0, 0xc

    .line 33
    .line 34
    iput v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->e:I

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->f:Z

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->g:Ljava/util/List;

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
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->h:Landroidx/lifecycle/b0;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 56
    .line 57
    new-instance v0, Landroidx/lifecycle/b0;

    .line 58
    .line 59
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->k:Landroidx/lifecycle/b0;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->l:Landroidx/lifecycle/LiveData;

    .line 65
    .line 66
    new-instance v0, Landroidx/lifecycle/b0;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-direct {v0, v1}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->m:Landroidx/lifecycle/b0;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->n:Landroidx/lifecycle/LiveData;

    .line 75
    .line 76
    return-void
.end method

.method public static synthetic b()Lhv/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->n()Lhv/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->v()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Lhv/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->o()Lhv/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic g(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic h(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->m:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->k:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final n()Lhv/c;
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
    const-class v1, Lhv/c;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lhv/c;

    .line 14
    .line 15
    return-object v0
.end method

.method private final o()Lhv/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lhv/c;

    .line 8
    .line 9
    return-object v0
.end method

.method private final r()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->b:Lkotlin/Lazy;

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

.method private static final v()Lqx/a;
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

.method private final x(Z)V
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    move/from16 v2, p1

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-object v1, v7, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->h:Landroidx/lifecycle/b0;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v1, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-boolean v0, v7, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->j:Z

    .line 16
    .line 17
    :goto_0
    iget-object v1, v7, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->c:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->r()Lqx/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_1
    move-object v5, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v5, v3

    .line 47
    :goto_1
    if-eqz v2, :cond_3

    .line 48
    .line 49
    const-string v1, ""

    .line 50
    .line 51
    :goto_2
    move-object v4, v1

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    iget-object v1, v7, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->d:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_3
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->r()Lqx/a;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    invoke-interface {v1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :cond_4
    iget-object v1, v7, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->c:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    invoke-static {v1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_5
    iget-object v1, v7, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->c:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    move v8, v0

    .line 99
    goto :goto_5

    .line 100
    :cond_6
    :goto_4
    move v8, v6

    .line 101
    :goto_5
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 102
    .line 103
    iget-object v1, v7, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->c:Ljava/lang/String;

    .line 104
    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v10, "requestPage isRefresh="

    .line 111
    .line 112
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v10, ", isSelf="

    .line 119
    .line 120
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v10, ", target="

    .line 127
    .line 128
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, ", current="

    .line 135
    .line 136
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v3, "UserProfileVideoVM"

    .line 147
    .line 148
    invoke-virtual {v0, v3, v1, v6}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    new-instance v12, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;

    .line 156
    .line 157
    const/4 v6, 0x0

    .line 158
    move-object v0, v12

    .line 159
    move-object v1, p0

    .line 160
    move/from16 v2, p1

    .line 161
    .line 162
    move v3, v8

    .line 163
    invoke-direct/range {v0 .. v6}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;-><init>(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;ZZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 164
    .line 165
    .line 166
    const/4 v13, 0x3

    .line 167
    const/4 v14, 0x0

    .line 168
    const/4 v10, 0x0

    .line 169
    const/4 v11, 0x0

    .line 170
    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 171
    .line 172
    .line 173
    return-void
.end method


# virtual methods
.method public final p()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->n:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->l:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->h:Landroidx/lifecycle/b0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->j:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->d:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "loadMore start nextPage="

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "UserProfileVideoVM"

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v2, v1, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v3}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->x(Z)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->j:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->c:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "refresh start userId="

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    const-string v3, "UserProfileVideoVM"

    .line 43
    .line 44
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    const-string v0, ""

    .line 48
    .line 49
    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->d:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->f:Z

    .line 53
    .line 54
    iget-object v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->g:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->x(Z)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method
