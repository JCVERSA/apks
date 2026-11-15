.class public abstract Lcom/transsion/postdetail/control/VideoPagerChangeControl;
.super Lgr/a;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/r;
.implements Lcom/transsion/baselib/report/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/control/VideoPagerChangeControl$a;,
        Lcom/transsion/postdetail/control/VideoPagerChangeControl$b;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/postdetail/control/VideoPagerChangeControl$a;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private b:Z

.field private final c:Lcom/transsion/postdetail/ui/adapter/d;

.field private final d:Lcom/transsion/player/orplayer/f;

.field private final e:Lcom/transsion/player/ui/ORPlayerView;

.field private f:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private g:Ljava/lang/String;

.field private final h:I

.field private final i:J

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->o:Lcom/transsion/postdetail/control/VideoPagerChangeControl$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;ZLcom/transsion/postdetail/ui/adapter/d;Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->b:Z

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/d;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/f;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    .line 18
    .line 19
    iput-object p6, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->f:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 20
    .line 21
    iput-object p7, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->g:Ljava/lang/String;

    .line 22
    .line 23
    const/4 p2, 0x3

    .line 24
    iput p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->h:I

    .line 25
    .line 26
    const-wide/16 p2, 0xbb8

    .line 27
    .line 28
    iput-wide p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->i:J

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->k:Z

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->i()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/d;

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
    const-string v2, "ImmVideoPlayer"

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
    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/d;

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

.method private final i()V
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

.method private final j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/d;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->h:I

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
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-static {v0}, Lcom/transsion/postdetail/util/t;->a(Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/Video;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->p(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/moviedetailapi/bean/Video;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_1
    return-void
.end method

.method private final m(ILandroid/view/View;)V
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m:Landroid/view/View;

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
    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/f;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->reset()V

    .line 35
    .line 36
    .line 37
    :cond_0
    if-ltz p1, :cond_b

    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/d;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v0, v1

    .line 50
    :goto_0
    if-gt v0, p1, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    instance-of v0, p2, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    move-object v0, p2

    .line 59
    check-cast v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setPosition(Ljava/lang/Integer;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/f;

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    iget-object v3, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    .line 73
    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, v2, v3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setPlayer(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object v2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->f:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 80
    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setPagerLayoutManager(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object v2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/f;

    .line 87
    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    check-cast p2, Lcom/transsion/player/orplayer/e;

    .line 91
    .line 92
    invoke-interface {v2, p2}, Lcom/transsion/player/orplayer/f;->setPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    iget-object p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/d;

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    if-eqz p2, :cond_7

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_7
    move-object p2, v2

    .line 108
    :goto_1
    iget-object v3, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    .line 109
    .line 110
    if-eqz v3, :cond_8

    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :cond_8
    instance-of v3, v2, Landroid/widget/FrameLayout;

    .line 117
    .line 118
    if-eqz v3, :cond_9

    .line 119
    .line 120
    check-cast v2, Landroid/widget/FrameLayout;

    .line 121
    .line 122
    iget-object v3, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    :cond_9
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->getPlayerContainer()Landroid/widget/FrameLayout;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iget-object v3, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    .line 132
    .line 133
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 134
    .line 135
    const/4 v5, -0x1

    .line 136
    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    iget-boolean v2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->b:Z

    .line 143
    .line 144
    if-eqz v2, :cond_a

    .line 145
    .line 146
    iput-boolean v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->b:Z

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->showCommentDialog()V

    .line 149
    .line 150
    .line 151
    :cond_a
    iget-object v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->g:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->videoStartPrepare(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0, p2}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->q(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->o(I)V

    .line 160
    .line 161
    .line 162
    :cond_b
    :goto_2
    return-void
.end method

.method private final o(I)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->h:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/d;

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
    if-gt v1, v0, :cond_7

    .line 14
    .line 15
    move v3, v1

    .line 16
    :goto_0
    add-int v4, p1, v3

    .line 17
    .line 18
    if-ltz v4, :cond_7

    .line 19
    .line 20
    iget-object v5, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/d;

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
    goto :goto_3

    .line 29
    :cond_2
    iget-object v5, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->c:Lcom/transsion/postdetail/ui/adapter/d;

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 36
    .line 37
    if-nez v5, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_6

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_4

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const/4 v6, 0x0

    .line 58
    :goto_1
    invoke-static {v6}, Lcom/transsion/postdetail/util/t;->a(Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/Video;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    if-nez v6, :cond_5

    .line 63
    .line 64
    iget v5, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->h:I

    .line 65
    .line 66
    add-int/2addr v5, p1

    .line 67
    sub-int/2addr v5, v1

    .line 68
    if-ne v4, v5, :cond_6

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_5
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 73
    .line 74
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v11, "try preload position = "

    .line 88
    .line 89
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v4, ", duration = "

    .line 96
    .line 97
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, ", url = "

    .line 104
    .line 105
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    const/4 v11, 0x4

    .line 116
    const/4 v12, 0x0

    .line 117
    const-string v8, "ImmVideoPlayer"

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    invoke-static/range {v7 .. v12}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v5, v6}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->p(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/moviedetailapi/bean/Video;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_2
    if-eq v3, v0, :cond_7

    .line 127
    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 132
    .line 133
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j(I)V

    .line 134
    .line 135
    .line 136
    :cond_8
    return-void
.end method

.method private final p(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/moviedetailapi/bean/Video;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-wide v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->i:J

    .line 14
    .line 15
    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    sget-object p2, Lni/f;->a:Lni/f$a;

    .line 37
    .line 38
    sget-object v7, Lsm/b;->e:Lsm/b$a;

    .line 39
    .line 40
    invoke-virtual {v7}, Lsm/b$a;->a()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v5, 0x4

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x1

    .line 48
    move-object v0, p2

    .line 49
    move-object v1, p1

    .line 50
    invoke-static/range {v0 .. v6}, Lni/f$a;->e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v7}, Lsm/b$a;->a()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/16 v5, 0x8

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    move-object v2, p1

    .line 62
    invoke-static/range {v0 .. v6}, Lni/f$a;->j(Lni/f$a;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->f:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

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
    iget v2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

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
    const-string v2, "ImmVideoPlayer"

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static/range {v1 .. v6}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

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
    iput v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    .line 55
    .line 56
    :cond_1
    iget v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    .line 57
    .line 58
    invoke-direct {p0, v0, p1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m(ILandroid/view/View;)V

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
    iget p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

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
    const-string v1, "ImmVideoPlayer"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    .line 39
    .line 40
    if-ne p2, p1, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/f;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->stop()V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/f;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->reset()V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p1, 0x0

    .line 66
    :goto_0
    instance-of p2, p1, Landroid/widget/FrameLayout;

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    check-cast p1, Landroid/widget/FrameLayout;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->e:Lcom/transsion/player/ui/ORPlayerView;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public f(IZLandroid/view/View;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->g()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    iget p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

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
    const-string v1, "ImmVideoPlayer"

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    .line 42
    .line 43
    if-ne p2, p1, :cond_0

    .line 44
    .line 45
    iget-boolean p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->l:Z

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
    iput-boolean p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->l:Z

    .line 52
    .line 53
    iput p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

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
    invoke-direct {p0, p1, p3}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m(ILandroid/view/View;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->k:Z

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
    iput-boolean v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->k:Z

    .line 8
    .line 9
    iget v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->j:I

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->o(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final l(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->n:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m:Landroid/view/View;

    .line 6
    .line 7
    instance-of v0, p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

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
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->app2Background()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->l:Z

    .line 3
    .line 4
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
    iget-boolean p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->n:Z

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m:Landroid/view/View;

    .line 10
    .line 11
    instance-of v0, p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    check-cast p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

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
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->app2Background()V

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
    sget-object p1, Lcom/transsion/postdetail/control/VideoPagerChangeControl$b;->a:[I

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
    iput-object p1, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->m:Landroid/view/View;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->a:Landroidx/fragment/app/Fragment;

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
    new-instance v3, Lcom/transsion/postdetail/control/VideoPagerChangeControl$onStateChanged$1;

    .line 55
    .line 56
    invoke-direct {v3, p1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl$onStateChanged$1;-><init>(Lkotlin/coroutines/Continuation;)V

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

.method protected final q(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "view"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v2

    .line 25
    :goto_0
    invoke-static {v3}, Lcom/transsion/postdetail/util/t;->a(Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/Video;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v4, v2

    .line 39
    :goto_1
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move-object v5, v2

    .line 47
    :goto_2
    if-eqz v3, :cond_3

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move-object v6, v2

    .line 55
    :goto_3
    if-eqz v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    move-object v7, v2

    .line 63
    :goto_4
    if-eqz p2, :cond_5

    .line 64
    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    goto :goto_5

    .line 74
    :cond_5
    move-object v8, v2

    .line 75
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v11, "play url="

    .line 81
    .line 82
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, "  width:"

    .line 89
    .line 90
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, ",height:"

    .line 97
    .line 98
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v4, ", duration: "

    .line 105
    .line 106
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v4, ", builtIn = "

    .line 113
    .line 114
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    const/4 v8, 0x4

    .line 125
    const/4 v9, 0x0

    .line 126
    const-string v5, "ImmVideoPlayer"

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    move-object v4, v10

    .line 130
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object v4, v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/f;

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    const/4 v6, 0x1

    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    if-eqz p2, :cond_7

    .line 140
    .line 141
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    if-eqz v7, :cond_7

    .line 146
    .line 147
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    sget-object v8, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 152
    .line 153
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-nez v7, :cond_6

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-ne v7, v8, :cond_7

    .line 165
    .line 166
    move v7, v6

    .line 167
    goto :goto_7

    .line 168
    :cond_7
    :goto_6
    move v7, v5

    .line 169
    :goto_7
    xor-int/2addr v7, v6

    .line 170
    invoke-interface {v4, v7}, Lcom/transsion/player/orplayer/f;->setLooping(Z)V

    .line 171
    .line 172
    .line 173
    :cond_8
    if-eqz p2, :cond_f

    .line 174
    .line 175
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-ne v4, v6, :cond_f

    .line 180
    .line 181
    if-eqz v3, :cond_12

    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    if-eqz v11, :cond_12

    .line 188
    .line 189
    const-string v4, "main/"

    .line 190
    .line 191
    const/4 v6, 0x2

    .line 192
    invoke-static {v11, v4, v5, v6, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_c

    .line 197
    .line 198
    sget-object v4, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 199
    .line 200
    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->g()Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    if-nez v5, :cond_b

    .line 217
    .line 218
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    if-eqz v5, :cond_9

    .line 223
    .line 224
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    :cond_9
    if-nez v2, :cond_a

    .line 229
    .line 230
    const-string v5, ""

    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_a
    move-object v5, v2

    .line 234
    :cond_b
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v5, ".mp4"

    .line 243
    .line 244
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v4, "/"

    .line 260
    .line 261
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v3, v2}, Lcom/transsion/moviedetailapi/bean/Video;->setUrl(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    move-object v14, v2

    .line 275
    goto :goto_9

    .line 276
    :cond_c
    move-object v14, v11

    .line 277
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v3, "play url= "

    .line 283
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    const/4 v8, 0x4

    .line 295
    const/4 v9, 0x0

    .line 296
    const-string v5, "ImmVideoPlayer"

    .line 297
    .line 298
    const/4 v7, 0x0

    .line 299
    move-object v4, v10

    .line 300
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    iget-object v2, v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/f;

    .line 304
    .line 305
    if-eqz v2, :cond_d

    .line 306
    .line 307
    new-instance v3, Lgn/e;

    .line 308
    .line 309
    const/16 v18, 0x1c

    .line 310
    .line 311
    const/16 v19, 0x0

    .line 312
    .line 313
    const/4 v15, 0x0

    .line 314
    const/16 v16, 0x0

    .line 315
    .line 316
    const/16 v17, 0x0

    .line 317
    .line 318
    move-object v12, v3

    .line 319
    move-object v13, v14

    .line 320
    invoke-direct/range {v12 .. v19}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/f;->setDataSource(Lgn/e;)V

    .line 324
    .line 325
    .line 326
    :cond_d
    iget-object v2, v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/f;

    .line 327
    .line 328
    if-eqz v2, :cond_e

    .line 329
    .line 330
    invoke-interface {v2}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 331
    .line 332
    .line 333
    :cond_e
    invoke-virtual {v1, v11}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_f
    if-eqz v3, :cond_12

    .line 338
    .line 339
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    if-eqz v2, :cond_12

    .line 344
    .line 345
    iget-object v11, v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/f;

    .line 346
    .line 347
    if-eqz v11, :cond_10

    .line 348
    .line 349
    new-instance v12, Lgn/e;

    .line 350
    .line 351
    const/16 v9, 0x1c

    .line 352
    .line 353
    const/4 v10, 0x0

    .line 354
    const/4 v6, 0x0

    .line 355
    const/4 v7, 0x0

    .line 356
    const/4 v8, 0x0

    .line 357
    move-object v3, v12

    .line 358
    move-object v4, v2

    .line 359
    move-object v5, v2

    .line 360
    invoke-direct/range {v3 .. v10}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 361
    .line 362
    .line 363
    invoke-interface {v11, v12}, Lcom/transsion/player/orplayer/f;->setDataSource(Lgn/e;)V

    .line 364
    .line 365
    .line 366
    :cond_10
    iget-object v3, v0, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->d:Lcom/transsion/player/orplayer/f;

    .line 367
    .line 368
    if-eqz v3, :cond_11

    .line 369
    .line 370
    invoke-interface {v3}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 371
    .line 372
    .line 373
    :cond_11
    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    sget-object v1, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 377
    .line 378
    invoke-virtual {v1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    :cond_12
    :goto_a
    return-void
.end method
