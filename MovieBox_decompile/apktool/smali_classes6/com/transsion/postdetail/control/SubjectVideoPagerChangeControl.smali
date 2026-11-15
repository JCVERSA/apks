.class public Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;
.super Lgr/a;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/r;
.implements Lcom/transsion/baselib/report/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$a;,
        Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$b;
    }
.end annotation


# static fields
.field public static final n:Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$a;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/transsion/postdetail/ui/adapter/i;

.field private final c:Lcom/transsion/player/orplayer/f;

.field private final d:Lcom/transsion/player/ui/ORPlayerView;

.field private e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private final f:I

.field private final g:J

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/view/View;

.field private final l:Ljava/lang/String;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->n:Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/ui/adapter/i;Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
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
    iput-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/i;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 18
    .line 19
    const/4 p2, 0x3

    .line 20
    iput p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->f:I

    .line 21
    .line 22
    const-wide/16 p2, 0xbb8

    .line 23
    .line 24
    iput-wide p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->g:J

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->i:Z

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->m()V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 40
    .line 41
    invoke-virtual {p1}, Lqi/h;->h()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method

.method private final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/i;

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
    const-string v2, "ShortTvImmVideoPlayer"

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
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/i;

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

.method private final l(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/Video;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Trailer;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/PreVideoAddress;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-object v1, v0

    .line 17
    :goto_0
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Trailer;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/PreVideoAddress;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-static {p1}, Lrm/d;->a(Lcom/transsion/moviedetailapi/bean/PreVideoAddress;)Lcom/transsion/moviedetailapi/bean/Video;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_3
    :goto_1
    return-object v0
.end method

.method private final m()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/transsion/baselib/report/k;->g(Lcom/transsion/baselib/report/k$a;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    iget v2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "onInitComplete, position = "

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, ", ----- currentPosition = "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v5, 0x4

    .line 39
    const/4 v6, 0x0

    .line 40
    const-string v2, "ShortTvImmVideoPlayer"

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static/range {v1 .. v6}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    .line 47
    .line 48
    if-ne v1, v0, :cond_0

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    const/4 v1, -0x1

    .line 52
    if-eq v0, v1, :cond_1

    .line 53
    .line 54
    iput v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    .line 55
    .line 56
    :cond_1
    iget v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    .line 57
    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->q(ILandroid/view/View;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public e(ZILandroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    .line 4
    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "onPageRelease, position = "

    .line 11
    .line 12
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", ----- currentPosition = "

    .line 19
    .line 20
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v1, "ShortTvImmVideoPlayer"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    .line 39
    .line 40
    if-ne p2, p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->w()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    instance-of p2, p1, Landroid/widget/FrameLayout;

    .line 56
    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    check-cast p1, Landroid/widget/FrameLayout;

    .line 60
    .line 61
    iget-object p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public f(IZLandroid/view/View;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    iget p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

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
    const-string v1, "ShortTvImmVideoPlayer"

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    .line 42
    .line 43
    if-ne p2, p1, :cond_0

    .line 44
    .line 45
    iget-boolean p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->j:Z

    .line 46
    .line 47
    if-nez p2, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    const/4 p2, 0x0

    .line 51
    iput-boolean p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->j:Z

    .line 52
    .line 53
    iput p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    .line 54
    .line 55
    sget-object p2, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->n()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->t()V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->q(ILandroid/view/View;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/i;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Ljava/util/Collection;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    .line 2
    .line 3
    return v0
.end method

.method protected final j()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final k()Lcom/transsion/player/orplayer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/i;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->f:I

    .line 6
    .line 7
    add-int/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/Video;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->t(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Video;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->i:Z

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
    iput-boolean v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->i:Z

    .line 8
    .line 9
    iget v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->h:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->s(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onBackgroundStatusChange(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->m:Z

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k:Landroid/view/View;

    .line 10
    .line 11
    instance-of v0, p1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    check-cast p1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 p1, 0x0

    .line 19
    :goto_0
    if-eqz p1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->app2Background()V

    .line 22
    .line 23
    .line 24
    :cond_3
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

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
    sget-object p1, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$b;->a:[I

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
    const/4 p2, 0x1

    .line 20
    if-eq p1, p2, :cond_2

    .line 21
    .line 22
    const/4 p2, 0x2

    .line 23
    if-eq p1, p2, :cond_1

    .line 24
    .line 25
    const/4 p2, 0x3

    .line 26
    if-eq p1, p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object p1, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/transsion/baselib/report/k;->t(Lcom/transsion/baselib/report/k$a;)Z

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k:Landroid/view/View;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v3, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$onStateChanged$1;

    .line 55
    .line 56
    invoke-direct {v3, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl$onStateChanged$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    sget-object p1, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->k()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    sget-object p1, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->h()V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method public final p(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->m:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k:Landroid/view/View;

    .line 6
    .line 7
    instance-of v0, p1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->app2Background()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method protected q(ILandroid/view/View;)V
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k:Landroid/view/View;

    .line 2
    .line 3
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "on page select position = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v1, "ImmVideoPlayer"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->u()V

    .line 31
    .line 32
    .line 33
    if-ltz p1, :cond_a

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/i;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v0, v1

    .line 46
    :goto_0
    if-gt v0, p1, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    instance-of v0, p2, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    move-object v0, p2

    .line 55
    check-cast v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setPosition(Ljava/lang/Integer;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    iget-object v3, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0, v2, v3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setPlayer(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->e:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 76
    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setPagerLayoutManager(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget-object v2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    check-cast p2, Lcom/transsion/player/orplayer/e;

    .line 87
    .line 88
    invoke-interface {v2, p2}, Lcom/transsion/player/orplayer/f;->setPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    iget-object p2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/i;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    if-eqz p2, :cond_6

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    move-object p2, v2

    .line 104
    :goto_1
    iget-object v3, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 105
    .line 106
    if-eqz v3, :cond_7

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :cond_7
    instance-of v3, v2, Landroid/widget/FrameLayout;

    .line 113
    .line 114
    if-eqz v3, :cond_8

    .line 115
    .line 116
    check-cast v2, Landroid/widget/FrameLayout;

    .line 117
    .line 118
    iget-object v3, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    :cond_8
    iget-object v2, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 124
    .line 125
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/Video;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v4, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/i;

    .line 130
    .line 131
    if-eqz v4, :cond_9

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    if-eqz v4, :cond_9

    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    :cond_9
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->addVideoView(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/Video;I)V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->videoStartPrepare(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0, p2}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->x(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->s(I)V

    .line 155
    .line 156
    .line 157
    :cond_a
    :goto_2
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->j:Z

    .line 3
    .line 4
    return-void
.end method

.method public s(I)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->f:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/i;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-gt v1, v0, :cond_6

    .line 14
    .line 15
    move v3, v1

    .line 16
    :goto_0
    add-int v4, p1, v3

    .line 17
    .line 18
    if-ltz v4, :cond_6

    .line 19
    .line 20
    iget-object v5, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/i;

    .line 21
    .line 22
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-gt v5, v4, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    iget-object v5, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->b:Lcom/transsion/postdetail/ui/adapter/i;

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 36
    .line 37
    if-nez v5, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_5

    .line 45
    .line 46
    invoke-direct {p0, v5}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/Video;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-nez v6, :cond_4

    .line 51
    .line 52
    iget v5, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->f:I

    .line 53
    .line 54
    add-int/2addr v5, p1

    .line 55
    sub-int/2addr v5, v1

    .line 56
    if-ne v4, v5, :cond_5

    .line 57
    .line 58
    move v2, v1

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 61
    .line 62
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    new-instance v10, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v11, "try preload position = "

    .line 76
    .line 77
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, ", duration = "

    .line 84
    .line 85
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v4, ", url = "

    .line 92
    .line 93
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    const/4 v11, 0x4

    .line 104
    const/4 v12, 0x0

    .line 105
    const-string v8, "ShortTvImmVideoPlayer"

    .line 106
    .line 107
    const/4 v10, 0x0

    .line 108
    invoke-static/range {v7 .. v12}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v5, v6}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->t(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Video;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_1
    if-eq v3, v0, :cond_6

    .line 115
    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->n(I)V

    .line 122
    .line 123
    .line 124
    :cond_7
    return-void
.end method

.method public t(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Video;)V
    .locals 8

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "video"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-wide v1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->g:J

    .line 24
    .line 25
    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j(Ljava/lang/String;J)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    sget-object p2, Lni/f;->a:Lni/f$a;

    .line 53
    .line 54
    sget-object v7, Lsm/b;->e:Lsm/b$a;

    .line 55
    .line 56
    invoke-virtual {v7}, Lsm/b$a;->a()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v5, 0x4

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x1

    .line 64
    move-object v0, p2

    .line 65
    move-object v1, p1

    .line 66
    invoke-static/range {v0 .. v6}, Lni/f$a;->e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v7}, Lsm/b$a;->a()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/16 v5, 0x8

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    move-object v2, p1

    .line 78
    invoke-static/range {v0 .. v6}, Lni/f$a;->j(Lni/f$a;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method protected u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected final v(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->reset()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method protected x(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "view"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->l(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/Video;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    const/4 v11, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v4, v11

    .line 27
    :goto_0
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v5, v11

    .line 35
    :goto_1
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object v6, v11

    .line 43
    :goto_2
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move-object v7, v11

    .line 51
    :goto_3
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    move-object v8, v11

    .line 63
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v12, "play url="

    .line 69
    .line 70
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v4, "  width:"

    .line 77
    .line 78
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v4, ",height:"

    .line 85
    .line 86
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v4, ", duration: "

    .line 93
    .line 94
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v4, ", builtIn = "

    .line 101
    .line 102
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const/4 v8, 0x4

    .line 113
    const/4 v9, 0x0

    .line 114
    const-string v5, "ImmVideoPlayer"

    .line 115
    .line 116
    const/4 v7, 0x0

    .line 117
    move-object v4, v10

    .line 118
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v4, v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 122
    .line 123
    const/4 v5, 0x0

    .line 124
    const/4 v6, 0x1

    .line 125
    if-eqz v4, :cond_7

    .line 126
    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    sget-object v8, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 134
    .line 135
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-nez v7, :cond_5

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-ne v7, v8, :cond_6

    .line 147
    .line 148
    move v7, v6

    .line 149
    goto :goto_6

    .line 150
    :cond_6
    :goto_5
    move v7, v5

    .line 151
    :goto_6
    xor-int/2addr v7, v6

    .line 152
    invoke-interface {v4, v7}, Lcom/transsion/player/orplayer/f;->setLooping(Z)V

    .line 153
    .line 154
    .line 155
    :cond_7
    if-eqz v2, :cond_c

    .line 156
    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-ne v4, v6, :cond_c

    .line 162
    .line 163
    if-eqz v3, :cond_f

    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v12

    .line 169
    if-eqz v12, :cond_f

    .line 170
    .line 171
    const-string v4, "main/"

    .line 172
    .line 173
    const/4 v6, 0x2

    .line 174
    invoke-static {v12, v4, v5, v6, v11}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_9

    .line 179
    .line 180
    sget-object v4, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->g()Ljava/io/File;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    if-nez v2, :cond_8

    .line 199
    .line 200
    const-string v2, ""

    .line 201
    .line 202
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v2, ".mp4"

    .line 211
    .line 212
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v4, "/"

    .line 228
    .line 229
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v3, v2}, Lcom/transsion/moviedetailapi/bean/Video;->setUrl(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    move-object v15, v2

    .line 243
    goto :goto_7

    .line 244
    :cond_9
    move-object v15, v12

    .line 245
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string v3, "play url= "

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    const/4 v8, 0x4

    .line 263
    const/4 v9, 0x0

    .line 264
    const-string v5, "ImmVideoPlayer"

    .line 265
    .line 266
    const/4 v7, 0x0

    .line 267
    move-object v4, v10

    .line 268
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iget-object v2, v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 272
    .line 273
    if-eqz v2, :cond_a

    .line 274
    .line 275
    new-instance v3, Lgn/e;

    .line 276
    .line 277
    const/16 v19, 0x1c

    .line 278
    .line 279
    const/16 v20, 0x0

    .line 280
    .line 281
    const/16 v16, 0x0

    .line 282
    .line 283
    const/16 v17, 0x0

    .line 284
    .line 285
    const/16 v18, 0x0

    .line 286
    .line 287
    move-object v13, v3

    .line 288
    move-object v14, v15

    .line 289
    invoke-direct/range {v13 .. v20}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 290
    .line 291
    .line 292
    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/f;->setDataSource(Lgn/e;)V

    .line 293
    .line 294
    .line 295
    :cond_a
    iget-object v2, v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 296
    .line 297
    if-eqz v2, :cond_b

    .line 298
    .line 299
    invoke-interface {v2}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 300
    .line 301
    .line 302
    :cond_b
    invoke-virtual {v1, v12}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_c
    if-eqz v3, :cond_f

    .line 307
    .line 308
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    if-eqz v2, :cond_f

    .line 313
    .line 314
    iget-object v11, v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 315
    .line 316
    if-eqz v11, :cond_d

    .line 317
    .line 318
    new-instance v12, Lgn/e;

    .line 319
    .line 320
    const/16 v9, 0x1c

    .line 321
    .line 322
    const/4 v10, 0x0

    .line 323
    const/4 v6, 0x0

    .line 324
    const/4 v7, 0x0

    .line 325
    const/4 v8, 0x0

    .line 326
    move-object v3, v12

    .line 327
    move-object v4, v2

    .line 328
    move-object v5, v2

    .line 329
    invoke-direct/range {v3 .. v10}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v11, v12}, Lcom/transsion/player/orplayer/f;->setDataSource(Lgn/e;)V

    .line 333
    .line 334
    .line 335
    :cond_d
    iget-object v3, v0, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->c:Lcom/transsion/player/orplayer/f;

    .line 336
    .line 337
    if-eqz v3, :cond_e

    .line 338
    .line 339
    invoke-interface {v3}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 340
    .line 341
    .line 342
    :cond_e
    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    sget-object v1, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :cond_f
    :goto_8
    return-void
.end method
