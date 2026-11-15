.class public final Lcom/transsion/usercenter/me/MeViewmodel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/me/MeViewmodel$a;
    }
.end annotation


# static fields
.field public static final q:Lcom/transsion/usercenter/me/MeViewmodel$a;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Ljava/util/List;

.field private e:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

.field private final f:Lkotlin/Lazy;

.field private g:Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

.field private final h:I

.field private final i:Landroidx/lifecycle/b0;

.field private volatile j:Ljava/util/List;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/Lazy;

.field private n:Lcom/transsion/usercenter/profile/bean/MinePageInfo;

.field private final o:Landroidx/lifecycle/b0;

.field private p:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/usercenter/me/MeViewmodel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/me/MeViewmodel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/usercenter/me/MeViewmodel;->q:Lcom/transsion/usercenter/me/MeViewmodel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/transsion/usercenter/me/l;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/usercenter/me/l;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/usercenter/me/m;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/transsion/usercenter/me/m;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->c:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->d:Ljava/util/List;

    .line 37
    .line 38
    new-instance p1, Lcom/transsion/usercenter/me/n;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/transsion/usercenter/me/n;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->f:Lkotlin/Lazy;

    .line 48
    .line 49
    const/16 p1, 0xa

    .line 50
    .line 51
    iput p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->h:I

    .line 52
    .line 53
    new-instance p1, Landroidx/lifecycle/b0;

    .line 54
    .line 55
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->i:Landroidx/lifecycle/b0;

    .line 59
    .line 60
    new-instance p1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->j:Ljava/util/List;

    .line 66
    .line 67
    new-instance p1, Lcom/transsion/usercenter/me/o;

    .line 68
    .line 69
    invoke-direct {p1}, Lcom/transsion/usercenter/me/o;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->k:Lkotlin/Lazy;

    .line 77
    .line 78
    new-instance p1, Lcom/transsion/usercenter/me/p;

    .line 79
    .line 80
    invoke-direct {p1}, Lcom/transsion/usercenter/me/p;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->l:Lkotlin/Lazy;

    .line 88
    .line 89
    new-instance p1, Lcom/transsion/usercenter/me/q;

    .line 90
    .line 91
    invoke-direct {p1}, Lcom/transsion/usercenter/me/q;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->m:Lkotlin/Lazy;

    .line 99
    .line 100
    new-instance p1, Landroidx/lifecycle/b0;

    .line 101
    .line 102
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->o:Landroidx/lifecycle/b0;

    .line 106
    .line 107
    return-void
.end method

.method private final B()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->c:Lkotlin/Lazy;

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

.method private final C()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->b:Lkotlin/Lazy;

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

.method private final D()Lcom/transsion/usercenter/profile/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/usercenter/profile/d;

    .line 8
    .line 9
    return-object v0
.end method

.method private final F()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "mine_notice_config_key"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    const-class v1, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->h(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->g:Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    .line 42
    .line 43
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :goto_2
    return-void
.end method

.method private final G()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->l:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private final H()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->m:Lkotlin/Lazy;

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

.method private final I()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->k:Lkotlin/Lazy;

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

.method private static final J()Lqx/a;
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

.method private static final K()Lcom/transsion/usercenter/profile/b;
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

.method private static final L()Lcom/transsion/usercenter/profile/d;
    .locals 2

    .line 1
    sget-object v0, Lhv/b;->c:Lhv/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhv/b$a;->a()Lhv/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/transsion/usercenter/profile/d;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lhv/b;->e(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/usercenter/profile/d;

    .line 14
    .line 15
    return-object v0
.end method

.method private final M()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, v0, Lcom/transsion/usercenter/me/MeViewmodel;->n:Lcom/transsion/usercenter/profile/bean/MinePageInfo;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->B()Lqx/a;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v3}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    :cond_2
    :goto_0
    new-instance v4, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-direct {v4, v5, v3}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 48
    .line 49
    new-instance v4, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;

    .line 50
    .line 51
    iget-object v5, v0, Lcom/transsion/usercenter/me/MeViewmodel;->j:Ljava/util/List;

    .line 52
    .line 53
    invoke-direct {v4, v5}, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;-><init>(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    const/4 v5, 0x4

    .line 57
    invoke-direct {v3, v5, v4}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 64
    .line 65
    new-instance v15, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 66
    .line 67
    sget v4, Lcom/transsion/usercenter/R$string;->user_switch_profile:I

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    sget v8, Lcom/tn/lib/widget/R$drawable;->ic_me_switch_profile:I

    .line 74
    .line 75
    sget v9, Lcom/transsion/baseui/R$drawable;->bg_radius_bottom_6_color_white_6p:I

    .line 76
    .line 77
    const/16 v14, 0xe0

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v6, 0x0

    .line 81
    const-string v7, "study_mode_type"

    .line 82
    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v12, 0x0

    .line 86
    const-string v13, "study_mode"

    .line 87
    .line 88
    move-object v4, v15

    .line 89
    move-object v0, v15

    .line 90
    move-object v15, v2

    .line 91
    invoke-direct/range {v4 .. v15}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    .line 93
    .line 94
    const/4 v2, 0x5

    .line 95
    invoke-direct {v3, v2, v0}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-object/from16 v0, p0

    .line 102
    .line 103
    iget-object v2, v0, Lcom/transsion/usercenter/me/MeViewmodel;->o:Landroidx/lifecycle/b0;

    .line 104
    .line 105
    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method private final N()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lij/o;->a:Lij/o;

    .line 4
    .line 5
    invoke-virtual {v1}, Lij/o;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->M()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, Lcom/transsion/usercenter/me/MeViewmodel;->n:Lcom/transsion/usercenter/profile/bean/MinePageInfo;

    .line 21
    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    if-nez v6, :cond_3

    .line 37
    .line 38
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->B()Lqx/a;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    invoke-interface {v6}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v6, 0x0

    .line 50
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getVipInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const/4 v7, 0x0

    .line 58
    :goto_1
    if-eqz v3, :cond_5

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getNovelEntry()Lcom/transsion/usercenter/profile/bean/MineNovel;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    const/4 v8, 0x0

    .line 66
    :goto_2
    const/4 v9, 0x0

    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getMyGroup()Lcom/transsion/usercenter/profile/bean/MyGroup;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    if-eqz v10, :cond_6

    .line 74
    .line 75
    invoke-virtual {v10}, Lcom/transsion/usercenter/profile/bean/MyGroup;->getCount()I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    goto :goto_3

    .line 80
    :cond_6
    move v10, v9

    .line 81
    :goto_3
    if-eqz v3, :cond_7

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getMySubject()Lcom/transsion/usercenter/profile/bean/MySubject;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    if-eqz v11, :cond_7

    .line 88
    .line 89
    invoke-virtual {v11}, Lcom/transsion/usercenter/profile/bean/MySubject;->getWantToSeeCount()I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    goto :goto_4

    .line 94
    :cond_7
    move v11, v9

    .line 95
    :goto_4
    if-eqz v3, :cond_8

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getFavoriteInfo()Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    if-eqz v12, :cond_8

    .line 102
    .line 103
    invoke-virtual {v12}, Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;->getFavoriteCount()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    if-eqz v12, :cond_8

    .line 108
    .line 109
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    goto :goto_5

    .line 114
    :cond_8
    move v12, v9

    .line 115
    :goto_5
    if-eqz v3, :cond_9

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getMyPost()Lcom/transsion/usercenter/profile/bean/CountInfo;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    if-eqz v13, :cond_9

    .line 122
    .line 123
    invoke-virtual {v13}, Lcom/transsion/usercenter/profile/bean/CountInfo;->getCount()I

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    goto :goto_6

    .line 128
    :cond_9
    move v13, v9

    .line 129
    :goto_6
    if-eqz v3, :cond_a

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getMyLike()Lcom/transsion/usercenter/profile/bean/CountInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v14

    .line 135
    if-eqz v14, :cond_a

    .line 136
    .line 137
    invoke-virtual {v14}, Lcom/transsion/usercenter/profile/bean/CountInfo;->getCount()I

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    goto :goto_7

    .line 142
    :cond_a
    move v14, v9

    .line 143
    :goto_7
    if-eqz v3, :cond_b

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getMyComment()Lcom/transsion/usercenter/profile/bean/CountInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    if-eqz v15, :cond_b

    .line 150
    .line 151
    invoke-virtual {v15}, Lcom/transsion/usercenter/profile/bean/CountInfo;->getCount()I

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    goto :goto_8

    .line 156
    :cond_b
    move v15, v9

    .line 157
    :goto_8
    if-eqz v3, :cond_c

    .line 158
    .line 159
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MinePageInfo;->getSubscribeInfo()Lcom/transsion/usercenter/profile/bean/SubscribeInfo;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-eqz v3, :cond_c

    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/SubscribeInfo;->getSubscribeCount()Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    if-eqz v3, :cond_c

    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    :cond_c
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 176
    .line 177
    const/4 v5, 0x1

    .line 178
    invoke-direct {v3, v5, v6}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    iget-object v3, v0, Lcom/transsion/usercenter/me/MeViewmodel;->g:Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    .line 185
    .line 186
    const/16 v6, 0x8

    .line 187
    .line 188
    if-eqz v3, :cond_e

    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeEnable()Z

    .line 191
    .line 192
    .line 193
    move-result v17

    .line 194
    if-eqz v17, :cond_e

    .line 195
    .line 196
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeContent()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v17

    .line 200
    if-eqz v17, :cond_e

    .line 201
    .line 202
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    .line 203
    .line 204
    .line 205
    move-result v17

    .line 206
    if-nez v17, :cond_d

    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_d
    new-instance v5, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 210
    .line 211
    invoke-direct {v5, v6, v3}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    :cond_e
    :goto_9
    if-eqz v7, :cond_f

    .line 218
    .line 219
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 220
    .line 221
    const/4 v5, 0x2

    .line 222
    invoke-direct {v3, v5, v7}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    :cond_f
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 229
    .line 230
    const/16 v5, 0xb

    .line 231
    .line 232
    const/4 v7, 0x0

    .line 233
    invoke-direct {v3, v5, v7}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    iget-object v3, v0, Lcom/transsion/usercenter/me/MeViewmodel;->d:Ljava/util/List;

    .line 240
    .line 241
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    check-cast v3, Lcom/transsion/usercenter/profile/bean/ZeroInfo;

    .line 246
    .line 247
    if-eqz v3, :cond_10

    .line 248
    .line 249
    new-instance v5, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 250
    .line 251
    const/4 v7, 0x3

    .line 252
    invoke-direct {v5, v7, v3}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    :cond_10
    if-eqz v8, :cond_11

    .line 259
    .line 260
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 261
    .line 262
    const/4 v5, 0x7

    .line 263
    invoke-direct {v3, v5, v8}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    :cond_11
    sget-object v3, Lij/g;->a:Lij/g;

    .line 270
    .line 271
    invoke-virtual {v3}, Lij/g;->b()Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-eqz v5, :cond_12

    .line 276
    .line 277
    const-string v5, "/postdetail/favorite"

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_12
    const-string v5, "/profile/see"

    .line 281
    .line 282
    :goto_a
    invoke-virtual {v3}, Lij/g;->b()Z

    .line 283
    .line 284
    .line 285
    move-result v7

    .line 286
    if-eqz v7, :cond_13

    .line 287
    .line 288
    move v11, v12

    .line 289
    :cond_13
    new-instance v7, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 290
    .line 291
    new-instance v8, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 292
    .line 293
    sget v12, Lcom/transsion/usercenter/R$string;->profile_your_list:I

    .line 294
    .line 295
    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v19

    .line 299
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v20

    .line 303
    new-instance v11, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    const-string v12, "oneroom://com.community.oneroom"

    .line 309
    .line 310
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v21

    .line 320
    sget v22, Lcom/tn/lib/widget/R$drawable;->ic_me_my_list:I

    .line 321
    .line 322
    sget v23, Lcom/transsion/baseui/R$drawable;->bg_radius_top_6_color_white_6p:I

    .line 323
    .line 324
    invoke-static {v6}, Llj/a;->b(I)I

    .line 325
    .line 326
    .line 327
    move-result v25

    .line 328
    const/16 v28, 0x80

    .line 329
    .line 330
    const/16 v29, 0x0

    .line 331
    .line 332
    const/16 v24, 0x1

    .line 333
    .line 334
    const/16 v26, 0x0

    .line 335
    .line 336
    const-string v27, "want_to_see"

    .line 337
    .line 338
    move-object/from16 v18, v8

    .line 339
    .line 340
    invoke-direct/range {v18 .. v29}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 341
    .line 342
    .line 343
    const/4 v5, 0x5

    .line 344
    invoke-direct {v7, v5, v8}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    new-instance v7, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 351
    .line 352
    new-instance v8, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 353
    .line 354
    sget v11, Lcom/tn/lib/widget/R$string;->my_likes:I

    .line 355
    .line 356
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v19

    .line 360
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v20

    .line 364
    sget v22, Lcom/tn/lib/widget/R$drawable;->ic_me_likes:I

    .line 365
    .line 366
    sget v23, Lcom/tn/lib/widget/R$color;->white_6:I

    .line 367
    .line 368
    const/16 v28, 0xc0

    .line 369
    .line 370
    const-string v21, "like_list_type"

    .line 371
    .line 372
    const/16 v25, 0x0

    .line 373
    .line 374
    const-string v27, "like"

    .line 375
    .line 376
    move-object/from16 v18, v8

    .line 377
    .line 378
    invoke-direct/range {v18 .. v29}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 379
    .line 380
    .line 381
    invoke-direct {v7, v5, v8}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3}, Lij/g;->b()Z

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    if-eqz v7, :cond_14

    .line 392
    .line 393
    new-instance v7, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 394
    .line 395
    new-instance v8, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 396
    .line 397
    sget v11, Lcom/transsion/usercenter/R$string;->profile_my_subscribers:I

    .line 398
    .line 399
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v19

    .line 403
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v20

    .line 407
    sget v22, Lcom/tn/lib/widget/R$drawable;->ic_me_subscriptions:I

    .line 408
    .line 409
    sget v23, Lcom/tn/lib/widget/R$color;->white_6:I

    .line 410
    .line 411
    const/16 v28, 0xc0

    .line 412
    .line 413
    const/16 v29, 0x0

    .line 414
    .line 415
    const-string v21, "subscribe_list_type"

    .line 416
    .line 417
    const/16 v24, 0x1

    .line 418
    .line 419
    const/16 v25, 0x0

    .line 420
    .line 421
    const/16 v26, 0x0

    .line 422
    .line 423
    const-string v27, "subscribe"

    .line 424
    .line 425
    move-object/from16 v18, v8

    .line 426
    .line 427
    invoke-direct/range {v18 .. v29}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 428
    .line 429
    .line 430
    invoke-direct {v7, v5, v8}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    :cond_14
    new-instance v7, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 437
    .line 438
    new-instance v8, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;

    .line 439
    .line 440
    iget-object v9, v0, Lcom/transsion/usercenter/me/MeViewmodel;->j:Ljava/util/List;

    .line 441
    .line 442
    invoke-direct {v8, v9}, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;-><init>(Ljava/util/List;)V

    .line 443
    .line 444
    .line 445
    const/4 v9, 0x4

    .line 446
    invoke-direct {v7, v9, v8}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    new-instance v7, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 453
    .line 454
    const/4 v8, 0x6

    .line 455
    const/4 v9, 0x0

    .line 456
    invoke-direct {v7, v8, v9}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    new-instance v7, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 463
    .line 464
    new-instance v8, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 465
    .line 466
    sget v9, Lcom/transsion/usercenter/R$string;->profile_my_room:I

    .line 467
    .line 468
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v19

    .line 472
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v20

    .line 476
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/me/MeViewmodel;->B()Lqx/a;

    .line 477
    .line 478
    .line 479
    move-result-object v9

    .line 480
    if-eqz v9, :cond_15

    .line 481
    .line 482
    invoke-interface {v9}, Lqx/a;->a()Z

    .line 483
    .line 484
    .line 485
    move-result v9

    .line 486
    const/4 v10, 0x1

    .line 487
    if-ne v9, v10, :cond_15

    .line 488
    .line 489
    const-string v9, "oneroom://com.community.oneroom/room/list"

    .line 490
    .line 491
    :goto_b
    move-object/from16 v21, v9

    .line 492
    .line 493
    goto :goto_c

    .line 494
    :cond_15
    const-string v9, "oneroom://com.community.oneroom/room/list?index=1"

    .line 495
    .line 496
    goto :goto_b

    .line 497
    :goto_c
    sget v22, Lcom/tn/lib/widget/R$drawable;->ic_me_room:I

    .line 498
    .line 499
    sget v23, Lcom/transsion/baseui/R$drawable;->bg_radius_top_6_color_white_6p:I

    .line 500
    .line 501
    invoke-static {v6}, Llj/a;->b(I)I

    .line 502
    .line 503
    .line 504
    move-result v25

    .line 505
    const/16 v26, 0x0

    .line 506
    .line 507
    const-string v27, "myrooms"

    .line 508
    .line 509
    const/16 v24, 0x1

    .line 510
    .line 511
    move-object/from16 v18, v8

    .line 512
    .line 513
    invoke-direct/range {v18 .. v27}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-direct {v7, v5, v8}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3}, Lij/g;->b()Z

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    if-nez v3, :cond_16

    .line 527
    .line 528
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 529
    .line 530
    new-instance v7, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 531
    .line 532
    sget v8, Lcom/transsion/usercenter/R$string;->profile_post:I

    .line 533
    .line 534
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v17

    .line 538
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v18

    .line 542
    sget v20, Lcom/tn/lib/widget/R$drawable;->ic_mine_post:I

    .line 543
    .line 544
    sget v21, Lcom/tn/lib/widget/R$color;->white_6:I

    .line 545
    .line 546
    const/16 v26, 0x40

    .line 547
    .line 548
    const/16 v27, 0x0

    .line 549
    .line 550
    const-string v19, "post_list_type"

    .line 551
    .line 552
    const/16 v22, 0x1

    .line 553
    .line 554
    const/16 v23, 0x0

    .line 555
    .line 556
    const/16 v24, 0x1

    .line 557
    .line 558
    const-string v25, "post"

    .line 559
    .line 560
    move-object/from16 v16, v7

    .line 561
    .line 562
    invoke-direct/range {v16 .. v27}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 563
    .line 564
    .line 565
    invoke-direct {v3, v5, v7}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    :cond_16
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 572
    .line 573
    new-instance v7, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 574
    .line 575
    sget v8, Lcom/transsion/baseui/R$string;->my_comments:I

    .line 576
    .line 577
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v17

    .line 581
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v18

    .line 585
    sget v20, Lcom/tn/lib/widget/R$drawable;->ic_me_comments:I

    .line 586
    .line 587
    sget v21, Lcom/transsion/baseui/R$drawable;->bg_radius_bottom_6_color_white_6p:I

    .line 588
    .line 589
    const/16 v26, 0x60

    .line 590
    .line 591
    const/16 v27, 0x0

    .line 592
    .line 593
    const-string v19, "oneroom://com.community.oneroom/post/my_comment"

    .line 594
    .line 595
    const/16 v22, 0x0

    .line 596
    .line 597
    const/16 v23, 0x0

    .line 598
    .line 599
    const/16 v24, 0x1

    .line 600
    .line 601
    const-string v25, "comments"

    .line 602
    .line 603
    move-object/from16 v16, v7

    .line 604
    .line 605
    invoke-direct/range {v16 .. v27}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 606
    .line 607
    .line 608
    invoke-direct {v3, v5, v7}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 615
    .line 616
    sget v7, Lcom/transsion/usercenter/R$string;->user_setting:I

    .line 617
    .line 618
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v9

    .line 622
    sget v12, Lcom/tn/lib/widget/R$drawable;->ic_me_setting:I

    .line 623
    .line 624
    sget v13, Lcom/transsion/baseui/R$drawable;->bg_radius_top_6_color_white_6p:I

    .line 625
    .line 626
    invoke-static {v6}, Llj/a;->b(I)I

    .line 627
    .line 628
    .line 629
    move-result v15

    .line 630
    new-instance v6, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 631
    .line 632
    const/16 v18, 0x80

    .line 633
    .line 634
    const/16 v19, 0x0

    .line 635
    .line 636
    const/4 v10, 0x0

    .line 637
    const-string v11, "oneroom://com.community.oneroom/profile/setting"

    .line 638
    .line 639
    const/4 v14, 0x1

    .line 640
    const/16 v16, 0x0

    .line 641
    .line 642
    const-string v17, "setting"

    .line 643
    .line 644
    move-object v8, v6

    .line 645
    invoke-direct/range {v8 .. v19}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 646
    .line 647
    .line 648
    invoke-direct {v3, v5, v6}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    sget-object v3, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 655
    .line 656
    invoke-virtual {v3}, Lcom/transsion/baselib/kids/KidsAccountManager;->e()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v6

    .line 660
    if-eqz v6, :cond_19

    .line 661
    .line 662
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 663
    .line 664
    .line 665
    move-result v7

    .line 666
    if-nez v7, :cond_17

    .line 667
    .line 668
    goto :goto_f

    .line 669
    :cond_17
    invoke-virtual {v1}, Lij/o;->j()Z

    .line 670
    .line 671
    .line 672
    move-result v7

    .line 673
    if-eqz v7, :cond_19

    .line 674
    .line 675
    new-instance v7, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 676
    .line 677
    new-instance v15, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 678
    .line 679
    sget v8, Lcom/transsion/usercenter/R$string;->user_parental_pin:I

    .line 680
    .line 681
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v9

    .line 685
    invoke-virtual {v3}, Lcom/transsion/baselib/kids/KidsAccountManager;->i()Z

    .line 686
    .line 687
    .line 688
    move-result v3

    .line 689
    if-nez v3, :cond_18

    .line 690
    .line 691
    sget v3, Lcom/transsion/usercenter/R$string;->user_parental_pin_hint:I

    .line 692
    .line 693
    :goto_d
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    move-object v10, v3

    .line 698
    goto :goto_e

    .line 699
    :cond_18
    sget v3, Lcom/transsion/usercenter/R$string;->user_parental_pin_hint_on:I

    .line 700
    .line 701
    goto :goto_d

    .line 702
    :goto_e
    sget v12, Lcom/tn/lib/widget/R$drawable;->ic_user_kids_settings_pin:I

    .line 703
    .line 704
    sget v13, Lcom/tn/lib/widget/R$color;->white_6:I

    .line 705
    .line 706
    const/16 v18, 0xc0

    .line 707
    .line 708
    const/16 v19, 0x0

    .line 709
    .line 710
    const-string v11, "parental_pin_type"

    .line 711
    .line 712
    const/4 v14, 0x1

    .line 713
    const/4 v3, 0x0

    .line 714
    const/16 v16, 0x0

    .line 715
    .line 716
    const-string v17, "parental_pin"

    .line 717
    .line 718
    move-object v8, v15

    .line 719
    move-object/from16 v30, v15

    .line 720
    .line 721
    move v15, v3

    .line 722
    invoke-direct/range {v8 .. v19}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 723
    .line 724
    .line 725
    move-object/from16 v3, v30

    .line 726
    .line 727
    invoke-direct {v7, v5, v3}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 728
    .line 729
    .line 730
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    :cond_19
    :goto_f
    invoke-virtual {v1}, Lij/o;->j()Z

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    if-eqz v1, :cond_1c

    .line 738
    .line 739
    new-instance v1, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 740
    .line 741
    new-instance v3, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 742
    .line 743
    sget v7, Lcom/transsion/usercenter/R$string;->user_safe_kids:I

    .line 744
    .line 745
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v8

    .line 749
    if-eqz v6, :cond_1b

    .line 750
    .line 751
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 752
    .line 753
    .line 754
    move-result v6

    .line 755
    if-nez v6, :cond_1a

    .line 756
    .line 757
    goto :goto_11

    .line 758
    :cond_1a
    sget v6, Lcom/transsion/usercenter/R$string;->user_switch_profile:I

    .line 759
    .line 760
    :goto_10
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v6

    .line 764
    move-object v9, v6

    .line 765
    goto :goto_12

    .line 766
    :cond_1b
    :goto_11
    sget v6, Lcom/transsion/usercenter/R$string;->user_create_study_profile:I

    .line 767
    .line 768
    goto :goto_10

    .line 769
    :goto_12
    sget v11, Lcom/tn/lib/widget/R$drawable;->ic_me_study_mode:I

    .line 770
    .line 771
    sget v12, Lcom/tn/lib/widget/R$color;->white_6:I

    .line 772
    .line 773
    const/16 v17, 0xc0

    .line 774
    .line 775
    const/16 v18, 0x0

    .line 776
    .line 777
    const-string v10, "study_mode_type"

    .line 778
    .line 779
    const/4 v13, 0x1

    .line 780
    const/4 v14, 0x0

    .line 781
    const/4 v15, 0x0

    .line 782
    const-string v16, "study_mode"

    .line 783
    .line 784
    move-object v7, v3

    .line 785
    invoke-direct/range {v7 .. v18}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 786
    .line 787
    .line 788
    invoke-direct {v1, v5, v3}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 789
    .line 790
    .line 791
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    :cond_1c
    new-instance v1, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 795
    .line 796
    new-instance v3, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 797
    .line 798
    sget v6, Lcom/transsion/usercenter/R$string;->user_setting_feedback:I

    .line 799
    .line 800
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v7

    .line 804
    sget v10, Lcom/tn/lib/widget/R$drawable;->ic_me_feedback:I

    .line 805
    .line 806
    sget v11, Lcom/transsion/baseui/R$drawable;->bg_radius_bottom_6_color_white_6p:I

    .line 807
    .line 808
    const/16 v16, 0xe0

    .line 809
    .line 810
    const/16 v17, 0x0

    .line 811
    .line 812
    const/4 v8, 0x0

    .line 813
    const-string v9, "oneroom://com.community.oneroom/profile/user_center_labels_feedback"

    .line 814
    .line 815
    const/4 v12, 0x0

    .line 816
    const/4 v13, 0x0

    .line 817
    const/4 v14, 0x0

    .line 818
    const-string v15, "feedback"

    .line 819
    .line 820
    move-object v6, v3

    .line 821
    invoke-direct/range {v6 .. v17}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 822
    .line 823
    .line 824
    invoke-direct {v1, v5, v3}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 825
    .line 826
    .line 827
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    iget-object v1, v0, Lcom/transsion/usercenter/me/MeViewmodel;->g:Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    .line 831
    .line 832
    if-eqz v1, :cond_1e

    .line 833
    .line 834
    invoke-virtual {v1}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getBottomContent()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v3

    .line 838
    if-eqz v3, :cond_1e

    .line 839
    .line 840
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 841
    .line 842
    .line 843
    move-result v3

    .line 844
    if-nez v3, :cond_1d

    .line 845
    .line 846
    goto :goto_13

    .line 847
    :cond_1d
    new-instance v3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 848
    .line 849
    const/16 v4, 0x9

    .line 850
    .line 851
    invoke-direct {v3, v4, v1}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 852
    .line 853
    .line 854
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    :cond_1e
    :goto_13
    iget-object v1, v0, Lcom/transsion/usercenter/me/MeViewmodel;->o:Landroidx/lifecycle/b0;

    .line 858
    .line 859
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 860
    .line 861
    .line 862
    return-void
.end method

.method private static final O()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
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
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->w1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private static final P()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
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

.method private static final Q()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
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

.method public static synthetic c()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->Q()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->P()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->J()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->K()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->O()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic h()Lcom/transsion/usercenter/profile/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/me/MeViewmodel;->L()Lcom/transsion/usercenter/profile/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic i(Lcom/transsion/usercenter/me/MeViewmodel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic j(Lcom/transsion/usercenter/me/MeViewmodel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/usercenter/me/MeViewmodel;)Lqx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->B()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/usercenter/profile/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->C()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/usercenter/profile/d;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->D()Lcom/transsion/usercenter/profile/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/usercenter/me/MeViewmodel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->G()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->H()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->I()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/usercenter/profile/bean/ZeroConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->e:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/usercenter/me/MeViewmodel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/usercenter/me/MeViewmodel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Lcom/transsion/usercenter/me/MeViewmodel;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->j:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic v(Lcom/transsion/usercenter/me/MeViewmodel;Lcom/transsion/usercenter/profile/bean/MinePageInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel;->n:Lcom/transsion/usercenter/profile/bean/MinePageInfo;

    .line 2
    .line 3
    return-void
.end method

.method private final z()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "free_buy_config"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    const-class v1, Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->h(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->e:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    .line 42
    .line 43
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :goto_2
    return-void
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->o:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;-><init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final x()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->p:Lkotlinx/coroutines/t1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v6, Lcom/transsion/usercenter/me/MeViewmodel$fetchProfile$1;

    .line 22
    .line 23
    invoke-direct {v6, p0, v1}, Lcom/transsion/usercenter/me/MeViewmodel$fetchProfile$1;-><init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 v7, 0x2

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->p:Lkotlinx/coroutines/t1;

    .line 34
    .line 35
    return-void
.end method

.method public final y()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->e:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/usercenter/me/MeViewmodel;->z()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->e:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "zeroConfig:"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    const-string v2, "MeViewmodel"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel;->e:Lcom/transsion/usercenter/profile/bean/ZeroConfig;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroConfig;->getEnable()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-ne v0, v1, :cond_1

    .line 47
    .line 48
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    new-instance v5, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-direct {v5, p0, v0}, Lcom/transsion/usercenter/me/MeViewmodel$fetchPurchase$1;-><init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    const/4 v6, 0x2

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method
