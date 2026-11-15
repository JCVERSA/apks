.class public final Lcom/transsion/ugcvideodetail/hepler/b;
.super Lng/a;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/report/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ugcvideodetail/hepler/b$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/transsion/ugcvideodetail/hepler/b$a;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

.field private final c:Lcom/transsion/player/orplayer/f;

.field private final d:Lcom/transsion/player/ui/ORPlayerView;

.field private e:Lcom/tn/lib/pager/PagerLayoutManager;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ugcvideodetail/hepler/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ugcvideodetail/hepler/b;->k:Lcom/transsion/ugcvideodetail/hepler/b$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/tn/lib/pager/PagerLayoutManager;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lng/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/b;->a:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/b;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/hepler/b;->c:Lcom/transsion/player/orplayer/f;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/transsion/ugcvideodetail/hepler/b;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/transsion/ugcvideodetail/hepler/b;->e:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 18
    .line 19
    sget-object p1, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lcom/transsion/baselib/report/k;->g(Lcom/transsion/baselib/report/k$a;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

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
    const-string v2, "UGCImmVideoControl"

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
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

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

.method private final h(ILandroid/view/View;)V
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/b;->i:Landroid/view/View;

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
    const-string v1, "UGCImmVideoControl"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    if-gez p1, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    iput p1, p0, Lcom/transsion/ugcvideodetail/hepler/b;->f:I

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    instance-of p1, p2, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    check-cast p2, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/b;->c:Lcom/transsion/player/orplayer/f;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/b;->d:Lcom/transsion/player/ui/ORPlayerView;

    .line 58
    .line 59
    invoke-virtual {p2, p1, v1, v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->onPageSelected(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/b;->c:Lcom/transsion/player/orplayer/f;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(IZLandroid/view/View;)V
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
    const-string v1, "UGCImmVideoControl"

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

.method public b(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/hepler/b;->j:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->e:Lcom/tn/lib/pager/PagerLayoutManager;

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
    iget v2, p0, Lcom/transsion/ugcvideodetail/hepler/b;->f:I

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
    const-string v2, "UGCImmVideoControl"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-static/range {v1 .. v6}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/transsion/ugcvideodetail/hepler/b;->f:I

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
    iput v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->f:I

    .line 63
    .line 64
    :cond_2
    iget v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->f:I

    .line 65
    .line 66
    invoke-direct {p0, v0, p1}, Lcom/transsion/ugcvideodetail/hepler/b;->h(ILandroid/view/View;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public c(ZILandroid/view/View;)V
    .locals 6

    .line 1
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->f:I

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
    const-string v1, "UGCImmVideoControl"

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
    iget v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->f:I

    .line 40
    .line 41
    if-ne p2, v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->b:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

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
    const-string v1, "UGCImmVideoControl"

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
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/b;->c:Lcom/transsion/player/orplayer/f;

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
    instance-of p1, p3, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    check-cast p3, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 83
    .line 84
    invoke-virtual {p3, p2}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->onPageRelease(I)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method public d(IZLandroid/view/View;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/b;->e()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    iget p2, p0, Lcom/transsion/ugcvideodetail/hepler/b;->f:I

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
    const-string v1, "UGCImmVideoControl"

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/transsion/ugcvideodetail/hepler/b;->f:I

    .line 42
    .line 43
    if-ne p2, p1, :cond_0

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->h:Z

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->h:Z

    .line 52
    .line 53
    iput p2, p0, Lcom/transsion/ugcvideodetail/hepler/b;->g:I

    .line 54
    .line 55
    iput p1, p0, Lcom/transsion/ugcvideodetail/hepler/b;->f:I

    .line 56
    .line 57
    invoke-direct {p0, p1, p3}, Lcom/transsion/ugcvideodetail/hepler/b;->h(ILandroid/view/View;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final f()Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->i:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/b;->i:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

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
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->onPageDestroy()V

    .line 14
    .line 15
    .line 16
    :cond_1
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/transsion/baselib/report/k;->t(Lcom/transsion/baselib/report/k$a;)Z

    .line 19
    .line 20
    .line 21
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
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/b;->i:Landroid/view/View;

    .line 5
    .line 6
    instance-of v0, p1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p1, 0x0

    .line 14
    :goto_0
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->app2Background()V

    .line 17
    .line 18
    .line 19
    :cond_2
    return-void
.end method
