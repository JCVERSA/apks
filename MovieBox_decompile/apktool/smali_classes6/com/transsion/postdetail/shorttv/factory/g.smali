.class public final Lcom/transsion/postdetail/shorttv/factory/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lur/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/shorttv/factory/g;->k(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final j(Lnr/j;)Ldw/a;
    .locals 11

    .line 1
    new-instance v10, Ldw/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lnr/j;->g()Lcom/transsion/player/ui/ORPlayerView;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lnr/j;->c()Lcom/transsion/player/orplayer/f;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v4, Lcom/transsion/videofloat/bean/FloatPlayType;->SHORT_TV:Lcom/transsion/videofloat/bean/FloatPlayType;

    .line 12
    .line 13
    invoke-virtual {p1}, Lnr/j;->i()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {p1}, Lnr/j;->h()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {p1}, Lnr/j;->a()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    const-string v8, ""

    .line 26
    .line 27
    invoke-virtual {p1}, Lnr/j;->e()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    const/4 v3, 0x0

    .line 32
    move-object v0, v10

    .line 33
    invoke-direct/range {v0 .. v9}, Ldw/a;-><init>(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/player/orplayer/f;Landroid/view/ViewGroup;Lcom/transsion/videofloat/bean/FloatPlayType;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v10, v0}, Ldw/a;->J(Ljava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lnr/j;->b()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v10, v0}, Ldw/a;->A(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lnr/j;->d()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v10, p1}, Ldw/a;->B(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v10
.end method

.method private static final k(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/FragmentActivity;ZZLandroid/view/ViewGroup;)V
    .locals 3

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lcw/e;->a:Lcw/e$a;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcw/e$a;->b()Lcw/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcw/e;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "k_pip_enable"

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {p2}, Lcw/e$a;->b()Lcw/e;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p2, p1, v2, p3, p4}, Lcw/e;->a(Landroidx/fragment/app/FragmentActivity;ZZLandroid/view/ViewGroup;)Landroid/app/PictureInPictureParams;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public b(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "subjectId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "pageName"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcw/b;->a:Lcw/b$a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcw/b$a;->c()Lcw/b;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v4, 0x0

    .line 23
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    move-object v5, p3

    .line 26
    move-object v6, p4

    .line 27
    invoke-interface/range {v1 .. v6}, Lcw/b;->f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    sget-object v0, Lcw/b;->a:Lcw/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcw/b$a;->c()Lcw/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v3, v1, v2}, Lcw/b$b;->a(Lcw/b;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/transsion/player/orplayer/f;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    .line 11
    .line 12
    sget-object v1, Lcom/transsion/postdetail/util/ShortTVFloatManager;->b:Lcom/transsion/postdetail/util/ShortTVFloatManager;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/transsion/videofloat/manager/a0;->b(Ljava/lang/String;)Lcom/transsion/player/orplayer/f;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    :goto_1
    return-object p1
.end method

.method public e(Lcom/transsion/player/orplayer/f;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/videofloat/manager/a0;->c(Lcom/transsion/player/orplayer/f;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public f(Lcom/transsion/player/orplayer/f;)Z
    .locals 1

    .line 1
    sget-object v0, Lcw/c;->a:Lcw/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcw/c;->c(Lcom/transsion/player/orplayer/f;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public g(ZLandroidx/fragment/app/FragmentActivity;Lnr/j;)V
    .locals 2

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0, p3}, Lcom/transsion/postdetail/shorttv/factory/g;->j(Lnr/j;)Ldw/a;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v1, 0x1f

    .line 30
    .line 31
    if-lt v0, v1, :cond_2

    .line 32
    .line 33
    sget-object v0, Lcw/e;->a:Lcw/e$a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcw/e$a;->b()Lcw/e;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p2, p3}, Lcw/e;->h(Landroidx/fragment/app/FragmentActivity;Ldw/a;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    :goto_1
    sget-object p2, Lcw/e;->a:Lcw/e$a;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcw/e$a;->b()Lcw/e;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p2, p1}, Lcw/e;->onPipModeChanged(Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public h(Landroidx/fragment/app/FragmentActivity;Lnr/j;)V
    .locals 8

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/shorttv/factory/g;->j(Lnr/j;)Ldw/a;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "k_pip_enable"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 31
    .line 32
    const-string p2, "VideoFloat"

    .line 33
    .line 34
    const-string v0, "shottv \u8bbe\u7f6e\u9875pip\u5f00\u5173\u88ab\u5173\u95ed\u4e86"

    .line 35
    .line 36
    invoke-virtual {p1, p2, v0, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcw/e;->a:Lcw/e$a;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcw/e$a;->b()Lcw/e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Lcw/e;->c()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    sget-object p2, Lwf/a;->a:Lwf/a$a;

    .line 53
    .line 54
    const-string v1, "VideoFloat-pip"

    .line 55
    .line 56
    const-string v4, "shottv \u5f53\u524d\u53ef\u7528\u753b\u4e2d\u753b\uff0c\u4f7f\u7528\u753b\u4e2d\u753b\u64ad\u653e"

    .line 57
    .line 58
    invoke-virtual {p2, v1, v4, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcw/e$a;->b()Lcw/e;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    sget-object v0, Lcom/transsion/videofloat/bean/FloatActionType;->HOME:Lcom/transsion/videofloat/bean/FloatActionType;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-interface {p2, p1, v3, v0, v1}, Lcw/e;->d(Landroidx/fragment/app/FragmentActivity;Ldw/a;Lcom/transsion/videofloat/bean/FloatActionType;Z)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    sget-object v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;->b:Lcom/transsion/postdetail/util/ShortTVFloatManager;

    .line 73
    .line 74
    invoke-virtual {p2}, Lnr/j;->f()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {v0, p2}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->w(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    sget-object p2, Lcw/b;->a:Lcw/b$a;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcw/b$a;->c()Lcw/b;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v6, Lcom/transsion/postdetail/shorttv/factory/f;

    .line 88
    .line 89
    invoke-direct {v6, p1}, Lcom/transsion/postdetail/shorttv/factory/f;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 90
    .line 91
    .line 92
    new-instance v7, Lcom/transsion/postdetail/shorttv/factory/g$a;

    .line 93
    .line 94
    invoke-direct {v7}, Lcom/transsion/postdetail/shorttv/factory/g$a;-><init>()V

    .line 95
    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    move-object v2, p1

    .line 100
    invoke-interface/range {v1 .. v7}, Lcw/b;->e(Landroidx/fragment/app/FragmentActivity;Ldw/a;ZZLkotlin/jvm/functions/Function1;Lgw/a;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
