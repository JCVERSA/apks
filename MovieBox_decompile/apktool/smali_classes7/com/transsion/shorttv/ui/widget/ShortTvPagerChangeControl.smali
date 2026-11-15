.class public final Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;
.super Lgr/a;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/r;
.implements Lcom/transsion/shorttv/ui/widget/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$a;,
        Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$b;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$a;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

.field private final c:Lcom/transsion/player/orplayer/f;

.field private final d:Lcom/transsion/player/ui/ORPlayerView;

.field private e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/Integer;

.field private i:Z

.field private j:Z

.field private k:Landroid/view/View;

.field private l:Z

.field private final m:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->o:Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgr/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->f:Z

    .line 21
    .line 22
    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->i:Z

    .line 23
    .line 24
    new-instance p2, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->m:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static final synthetic g(Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->m:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private final i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lt6/f;->i()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 22
    .line 23
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 30
    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x0

    .line 33
    const-string v2, "ShortTvControl"

    .line 34
    .line 35
    const-string v3, "current is fail, try load more"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lt6/f;->w()V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method private final q(ILandroid/view/View;)V
    .locals 9

    .line 1
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    .line 2
    .line 3
    instance-of v0, p2, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v2, p2

    .line 9
    check-cast v2, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v2, v1

    .line 13
    :goto_0
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setCountdownController(Lcom/transsion/shorttv/ui/widget/a1;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "on page select position = "

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v7, 0x4

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v4, "ShortTvControl"

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    if-gez p1, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lnr/k;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move-object v2, v1

    .line 60
    :goto_1
    iput p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 61
    .line 62
    instance-of p1, v2, Lnr/e;

    .line 63
    .line 64
    if-eqz p1, :cond_6

    .line 65
    .line 66
    instance-of p1, p2, Lcom/transsion/shorttv/ui/widget/d;

    .line 67
    .line 68
    if-eqz p1, :cond_7

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    move-object v1, p2

    .line 73
    check-cast v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 74
    .line 75
    :cond_4
    if-eqz v1, :cond_5

    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->f:Z

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setFirstPlayInSession(Z)V

    .line 80
    .line 81
    .line 82
    :cond_5
    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->f:Z

    .line 84
    .line 85
    check-cast p2, Lcom/transsion/shorttv/ui/widget/d;

    .line 86
    .line 87
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 90
    .line 91
    check-cast v2, Lnr/e;

    .line 92
    .line 93
    invoke-interface {p2, p1, v0, v2}, Lcom/transsion/shorttv/ui/widget/d;->onPageSelected(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lnr/e;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 98
    .line 99
    if-eqz p1, :cond_7

    .line 100
    .line 101
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 102
    .line 103
    .line 104
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 5
    .line 6
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    .line 12
    .line 13
    instance-of v2, v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    new-instance p1, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;

    .line 31
    .line 32
    invoke-direct {p1, v0, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$startCountdown$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->n:Ljava/lang/Runnable;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->m:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v1, 0x3e8

    .line 43
    .line 44
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->n:Ljava/lang/Runnable;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->m:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iput-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->n:Ljava/lang/Runnable;

    .line 27
    .line 28
    return-void
.end method

.method public c(IZLandroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p3, "onEachPageSelected, position = "

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    filled-new-array {p1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const-string v1, "ShortTvControl"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v0 .. v5}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->l:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    iget v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "onInitComplete, position = "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, ", ----- currentPosition = "

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v5, 0x4

    .line 47
    const/4 v6, 0x0

    .line 48
    const-string v2, "ShortTvControl"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-static/range {v1 .. v6}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 55
    .line 56
    if-ne v1, v0, :cond_1

    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    const/4 v1, -0x1

    .line 60
    if-eq v0, v1, :cond_2

    .line 61
    .line 62
    iput v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 63
    .line 64
    :cond_2
    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 65
    .line 66
    invoke-direct {p0, v0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->q(ILandroid/view/View;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public e(ZILandroid/view/View;)V
    .locals 6

    .line 1
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onPageRelease, position = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", ----- currentPosition = "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v1, "ShortTvControl"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    move-object v0, p1

    .line 36
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 40
    .line 41
    if-ne p2, v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x1

    .line 58
    if-ne v0, v1, :cond_0

    .line 59
    .line 60
    const/4 v4, 0x4

    .line 61
    const/4 v5, 0x0

    .line 62
    const-string v1, "ShortTvControl"

    .line 63
    .line 64
    const-string v2, "onPageRelease, \u8fde\u7eed\u6ed1\u52a8\uff0c\u6682\u505c"

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    move-object v0, p1

    .line 68
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 72
    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 76
    .line 77
    .line 78
    :cond_0
    instance-of p1, p3, Lcom/transsion/shorttv/ui/widget/d;

    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    check-cast p3, Lcom/transsion/shorttv/ui/widget/d;

    .line 83
    .line 84
    invoke-interface {p3, p2}, Lcom/transsion/shorttv/ui/widget/d;->onPageRelease(I)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method public f(IZLandroid/view/View;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->i()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    iget p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onPageSelected, position = "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", ----- currentPosition = "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v4, 0x4

    .line 34
    const/4 v5, 0x0

    .line 35
    const-string v1, "ShortTvControl"

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 42
    .line 43
    if-ne p2, p1, :cond_0

    .line 44
    .line 45
    iget-boolean p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->j:Z

    .line 46
    .line 47
    if-nez p2, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b()V

    .line 51
    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->j:Z

    .line 55
    .line 56
    iget p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 57
    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->h:Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x0

    .line 69
    if-ltz v0, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move-object p2, v1

    .line 73
    :goto_0
    if-eqz p2, :cond_4

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Lnr/k;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move-object p2, v1

    .line 91
    :goto_1
    if-eqz p2, :cond_4

    .line 92
    .line 93
    instance-of v0, p2, Lnr/e;

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    move-object v1, p2

    .line 98
    check-cast v1, Lnr/e;

    .line 99
    .line 100
    :cond_3
    if-eqz v1, :cond_4

    .line 101
    .line 102
    sget-object p2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

    .line 103
    .line 104
    invoke-virtual {v1}, Lnr/e;->a()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p2, v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->e(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    iput p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 112
    .line 113
    invoke-direct {p0, p1, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->q(ILandroid/view/View;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final j()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/transsion/shorttv/ui/widget/d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/d;->getProgress()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    :goto_1
    return-wide v0
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/transsion/shorttv/ui/widget/d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/d;->onAudioTrackChange()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/transsion/shorttv/ui/widget/d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/d;->onGetDubsInfo()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->i:Z

    .line 8
    .line 9
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl$b;->a:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    aget p1, p1, p2

    .line 18
    .line 19
    const/4 p2, 0x3

    .line 20
    if-eq p1, p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->b()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->k:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->onNetConnect()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public final s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public final t(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;ILnr/e;)V
    .locals 1

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "item"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lnr/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
