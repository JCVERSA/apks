.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->k(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->l(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->g(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->h(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->j(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->i(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerCallback$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkn/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lkn/a$b;->onCompletion()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPageType$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/constants/LongVodPageType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/transsion/player/longvideo/constants/LongVodPageType;->TRAILER:Lcom/transsion/player/longvideo/constants/LongVodPageType;

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showCoverBg(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->showReplay()V

    .line 22
    .line 23
    .line 24
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final h(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final i(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;
    .locals 10

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "LongVodPlayerView"

    .line 6
    .line 7
    const-string v2, "---> showStartAd end"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getContentType$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/constants/LongVodContentType;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/transsion/player/longvideo/constants/LongVodContentType;->UGC_VIDEO_LOCAL:Lcom/transsion/player/longvideo/constants/LongVodContentType;

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$onPrepare2PlayVideo(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    cmp-long v0, v0, v2

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayingStream$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/c;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lln/c;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    const/16 v2, 0x3e8

    .line 54
    .line 55
    int-to-long v2, v2

    .line 56
    mul-long/2addr v2, v0

    .line 57
    :cond_1
    :goto_0
    move-wide v5, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    goto :goto_0

    .line 64
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->getLongVodPlayerViewAdHelper()Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    new-instance v7, Lcom/transsion/player/longvideo/ui/a1;

    .line 69
    .line 70
    invoke-direct {v7, p0}, Lcom/transsion/player/longvideo/ui/a1;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 71
    .line 72
    .line 73
    new-instance v8, Lcom/transsion/player/longvideo/ui/b1;

    .line 74
    .line 75
    invoke-direct {v8, p0}, Lcom/transsion/player/longvideo/ui/b1;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 76
    .line 77
    .line 78
    new-instance v9, Lcom/transsion/player/longvideo/ui/c1;

    .line 79
    .line 80
    invoke-direct {v9, p0}, Lcom/transsion/player/longvideo/ui/c1;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {v4 .. v9}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->B3(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 84
    .line 85
    .line 86
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method

.method private static final j(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "LongVodPlayerView"

    .line 6
    .line 7
    const-string v2, "-----> checkShowRewardIntercept end"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$onPrepare2PlayVideo(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final k(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lmn/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lmn/j;->t:Landroid/view/View;

    .line 6
    .line 7
    const-string v1, "orLongVodPlayerBg"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$onRewardInterceptShow(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final l(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "-----> checkShowInterpolateAd --> onRewardUnlock prepareIntercept:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "LongVodPlayerView"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$onRewardInterceptUnlock(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$onPrepare2PlayVideo(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public canNonSubscriberPlay(ZIILqn/d;)V
    .locals 3

    .line 1
    const-string v0, "dashVideoTracksGroup"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/e$a;->a(Lcom/transsion/player/orplayer/e;ZIILqn/d;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getClassTag(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " --> canNonSubscriberPlay() -->  \u975e\u4f1a\u5458\u53ef\u4ee5\u64ad\u653e = "

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " --> canNonSubscriberPlay = "

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "\u53ef\u4ee5\u64ad\u653e\u7684\u5206\u8fa8\u7387\u662f = "

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p2, "\u53ef\u4ee5\u64ad\u653e\u7684index\u662f = "

    .line 50
    .line 51
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p2, "\u53ef\u4ee5\u64ad\u653e\u7684group\u662f = "

    .line 58
    .line 59
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {v0, p2}, Lwj/h;->a(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 73
    .line 74
    invoke-static {p2, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setCanNonSubscriberPlay$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 78
    .line 79
    xor-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    const-string v0, "canNonSubscriberPlay(\u64ad\u653e\u5668\u56de\u8c03)"

    .line 82
    .line 83
    invoke-static {p2, p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showNoResolutionTip(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    if-ltz p3, :cond_0

    .line 87
    .line 88
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p1, p4, p3}, Lcom/transsion/player/orplayer/f;->changeTrackSelection(Lqn/d;I)V

    .line 95
    .line 96
    .line 97
    :cond_0
    return-void
.end method

.method public initPlayer()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->b(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lgn/e;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/local/c0;->y(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onBufferedPosition(JLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->d(Lcom/transsion/player/orplayer/e;JLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCompletion(Lgn/e;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updatePipParams(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showVideoLoading(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPauseViewStatus(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    const/4 v4, 0x2

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v0, p0

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/transsion/player/orplayer/e$a;->z(Lcom/transsion/player/orplayer/e;JLgn/e;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->h()V

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 42
    .line 43
    const-string v0, "onCompletion"

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    const-string v2, "LongVodPlayerView"

    .line 47
    .line 48
    invoke-virtual {p1, v2, v0, v1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->getLongVodPlayerViewAdHelper()Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 58
    .line 59
    new-instance v1, Lcom/transsion/player/longvideo/ui/x0;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Lcom/transsion/player/longvideo/ui/x0;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->d4(Lkotlin/jvm/functions/Function0;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->g(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getSubtitleHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->e0(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onLoadingBegin(Lgn/e;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setShowToolbarAlways$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->i()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 19
    .line 20
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v1, 0x1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurPlayStream$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/c;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lln/c;->j()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p1, v1, :cond_1

    .line 40
    .line 41
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    const/4 v7, 0x0

    .line 45
    const-string v3, "LongVodPlayerView"

    .line 46
    .line 47
    const-string v4, "onLoadingBegin\uff0c not net----"

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-static {p1, v0, v1, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->n2(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$removeError(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 66
    .line 67
    invoke-static {p1, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showVideoLoading(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 68
    .line 69
    .line 70
    :goto_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 71
    .line 72
    const/4 v6, 0x4

    .line 73
    const/4 v7, 0x0

    .line 74
    const-string v3, "LongVodPlayerView"

    .line 75
    .line 76
    const-string v4, "onLoadingBegin"

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setShowToolbarAlways$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$removeError(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showVideoLoading(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->j()V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v1, "LongVodPlayerView"

    .line 33
    .line 34
    const-string v2, "onLoadingEnd"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getHandler$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Landroid/os/Handler;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onLoadingProgress(IFLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->m(Lcom/transsion/player/orplayer/e;IFLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoopingStart()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "LongVodPlayerView"

    .line 6
    .line 7
    const-string v2, "onLoopingStart"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->p(Lcom/transsion/player/orplayer/e;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V
    .locals 4

    .line 1
    const-string p2, "errorInfo"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$resetPlayTimeout(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/layer/local/c0;->l(Lcom/transsion/player/orplayer/PlayError;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p2, Lyg/l;->a:Lyg/l;

    .line 23
    .line 24
    invoke-virtual {p2}, Lyg/l;->e()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "onPlayError\uff0c hasNet:"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, ", code:"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ", msg:"

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v1, "LongVodPlayerView"

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-virtual {v0, v1, p1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 78
    .line 79
    xor-int/2addr p2, v2

    .line 80
    invoke-static {p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showError(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public onPlayerRelease(Lgn/e;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->t(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isMusic(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public onPlayerReset()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "LongVodPlayerView"

    .line 6
    .line 7
    const-string v2, "onPlayerReset"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setShowToolbarAlways$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;J)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;J)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->getLongVodPlayerViewAdHelper()Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->f4()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onPrepare(Lgn/e;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$resetPlayTimeout(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPrepared$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {p1, v1, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;J)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v4, "onPrepare\uff0c totalDuration:"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "LongVodPlayerView"

    .line 51
    .line 52
    invoke-virtual {p1, v2, v1, v0}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lmn/j;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p1, p1, Lmn/j;->p:Lmn/l;

    .line 62
    .line 63
    iget-object p1, p1, Lmn/l;->n:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    invoke-virtual {p1, v0, v1}, Lcom/tn/lib/view/SecondariesSeekBar;->setMax(J)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lmn/j;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Lmn/j;->o:Lmn/k;

    .line 81
    .line 82
    iget-object p1, p1, Lmn/k;->t:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    invoke-virtual {p1, v0, v1}, Lcom/tn/lib/view/SecondariesSeekBar;->setMax(J)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isPreparedInterceptPlay$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const/4 v0, 0x0

    .line 100
    if-eqz p1, :cond_0

    .line 101
    .line 102
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 103
    .line 104
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPreparedInterceptPlay$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isMobilePaused$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_1

    .line 115
    .line 116
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isUGCPauseShowing$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_1

    .line 123
    .line 124
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 131
    .line 132
    .line 133
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$initStreamResolution(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 139
    .line 140
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setMultipleResChangeResolution$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public onProgress(JLgn/e;)V
    .locals 6

    .line 1
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isMultipleResChangeResolution$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long p3, p1, v0

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 16
    .line 17
    invoke-static {p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    cmp-long p3, v2, v0

    .line 22
    .line 23
    if-lez p3, :cond_0

    .line 24
    .line 25
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    const/4 v5, 0x0

    .line 29
    const-string v1, "LongVodPlayerView"

    .line 30
    .line 31
    const-string v2, "onProgress, \u6b63\u5728\u5207\u6362\u5206\u8fa8\u7387\uff0cprogress\u91cd\u7f6e\uff0c\u4e0d\u505a\u5904\u7406"

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 39
    .line 40
    invoke-static {p3, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updateTime(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;J)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 44
    .line 45
    invoke-static {p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    invoke-virtual {p3, p1, p2}, Lcom/transsion/postdetail/layer/local/c0;->m(J)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 55
    .line 56
    invoke-static {p3, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPlayProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;J)V

    .line 57
    .line 58
    .line 59
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 60
    .line 61
    invoke-static {p3, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPressSeekProgress$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;J)V

    .line 62
    .line 63
    .line 64
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 65
    .line 66
    invoke-static {p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getAdHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/c;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    if-eqz p3, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/transsion/player/longvideo/helper/c;->e(JJ)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 82
    .line 83
    invoke-static {p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getSubtitleHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    if-eqz p3, :cond_3

    .line 88
    .line 89
    invoke-virtual {p3, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->X(J)V

    .line 90
    .line 91
    .line 92
    :cond_3
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 93
    .line 94
    invoke-static {p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lmn/j;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    iget-object p3, p3, Lmn/j;->p:Lmn/l;

    .line 99
    .line 100
    iget-object p3, p3, Lmn/l;->n:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    invoke-virtual {p3, v0, v1}, Lcom/tn/lib/view/SecondariesSeekBar;->setMax(J)V

    .line 109
    .line 110
    .line 111
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 112
    .line 113
    invoke-static {p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lmn/j;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    iget-object p3, p3, Lmn/j;->o:Lmn/k;

    .line 118
    .line 119
    iget-object p3, p3, Lmn/k;->t:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    invoke-virtual {p3, v0, v1}, Lcom/tn/lib/view/SecondariesSeekBar;->setMax(J)V

    .line 128
    .line 129
    .line 130
    sget-object p3, Lij/o;->a:Lij/o;

    .line 131
    .line 132
    invoke-virtual {p3}, Lij/o;->i()Z

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    if-nez p3, :cond_4

    .line 137
    .line 138
    sget-object p3, Lij/g;->a:Lij/g;

    .line 139
    .line 140
    invoke-virtual {p3}, Lij/g;->b()Z

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    if-nez p3, :cond_4

    .line 145
    .line 146
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 147
    .line 148
    invoke-virtual {p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->getLongVodPlayerViewAdHelper()Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 153
    .line 154
    new-instance v1, Lcom/transsion/player/longvideo/ui/z0;

    .line 155
    .line 156
    invoke-direct {v1, v0}, Lcom/transsion/player/longvideo/ui/z0;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3, p1, p2, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N(JLkotlin/jvm/functions/Function0;)V

    .line 160
    .line 161
    .line 162
    :cond_4
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 163
    .line 164
    invoke-virtual {p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->getLongVodPlayerViewAdHelper()Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    invoke-virtual {p3, p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->y3(J)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 4

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const-string v1, "LongVodPlayerView"

    .line 4
    .line 5
    const-string v2, "onRenderFirstFrame"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isPrepared$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 20
    .line 21
    invoke-static {v0, v3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPreparedInterceptPlay$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/c0;->n()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCanNonSubscriberPlay$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->getLongVodPlayerViewAdHelper()Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 59
    .line 60
    new-instance v2, Lcom/transsion/player/longvideo/ui/y0;

    .line 61
    .line 62
    invoke-direct {v2, v1}, Lcom/transsion/player/longvideo/ui/y0;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Y1(Lkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    sget-object v0, Lcom/transsion/player/longvideo/member/k;->a:Lcom/transsion/player/longvideo/member/k;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getClassTag(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, " --> onRenderFirstFrame() --> \u5f53\u524d\u65e0\u6cd5\u64ad\u653e\uff0cvip\u5206\u8fa8\u7387"

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/member/k;->a(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->B(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/local/c0;->t(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onTracksChange(Lqn/c;)V
    .locals 10

    .line 1
    const-string v0, "tracks"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->D(Lcom/transsion/player/orplayer/e;Lqn/c;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lln/a;->w()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Lqn/c;->a()Lcom/google/common/collect/ImmutableList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_7

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isFirstSetTracks$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-static {v0, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setFirstSetTracks$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getResolutionList$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    .line 62
    .line 63
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v4, "onTracksChange, tracks =\n "

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/4 v7, 0x4

    .line 83
    const/4 v8, 0x0

    .line 84
    const-string v4, "LongVodPlayerView"

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lqn/c;->a()Lcom/google/common/collect/ImmutableList;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lqn/d;

    .line 111
    .line 112
    invoke-virtual {v3}, Lqn/d;->e()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    const/4 v5, 0x2

    .line 117
    if-ne v4, v5, :cond_3

    .line 118
    .line 119
    invoke-static {v0, v3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setDashVideoTracksGroup$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lqn/d;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lqn/d;->b()[Lqn/b;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    array-length v4, v3

    .line 127
    move v5, v2

    .line 128
    :goto_0
    if-ge v5, v4, :cond_3

    .line 129
    .line 130
    aget-object v6, v3, v5

    .line 131
    .line 132
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getResolutionList$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    new-instance v8, Lln/b;

    .line 137
    .line 138
    invoke-virtual {v6}, Lqn/b;->c()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v6, "P"

    .line 151
    .line 152
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    sget-object v9, Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;->BITRATE:Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

    .line 160
    .line 161
    invoke-direct {v8, v2, v6, v9}, Lln/b;-><init>(ZLjava/lang/String;Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    add-int/lit8 v5, v5, 0x1

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_4
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 171
    .line 172
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurBean$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lln/a;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-eqz p1, :cond_5

    .line 177
    .line 178
    invoke-virtual {p1}, Lln/a;->v()Lcom/transsion/player/enum/PlayMimeType;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    goto :goto_1

    .line 183
    :cond_5
    const/4 p1, 0x0

    .line 184
    :goto_1
    sget-object v0, Lcom/transsion/player/enum/PlayMimeType;->HLS:Lcom/transsion/player/enum/PlayMimeType;

    .line 185
    .line 186
    if-ne p1, v0, :cond_7

    .line 187
    .line 188
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-eqz p1, :cond_7

    .line 195
    .line 196
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 197
    .line 198
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getResolutionList$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-le v0, v1, :cond_6

    .line 207
    .line 208
    const-string v0, "6"

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_6
    const-string v0, "5"

    .line 212
    .line 213
    :goto_2
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/local/c0;->J(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    :goto_3
    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/local/c0;->u(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onVideoPause(Lgn/e;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updatePipParams(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->v()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v2, "LongVodPlayerView"

    .line 23
    .line 24
    const-string v3, "onVideoPause"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$keepScreenOn(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getAdHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/c;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/player/longvideo/helper/c;->d()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPauseViewStatus(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isAdShowing$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isRewardInterceptShowing$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-static {p1, v0, v1, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->k2(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setVideoWidth$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setVideoHeight$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getSpaceHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/j;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/transsion/player/longvideo/helper/j;->b(II)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onVideoStart(Lgn/e;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isRewardInterceptShowing$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setUGCPauseShowing$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lmn/j;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lmn/j;->p:Lmn/l;

    .line 32
    .line 33
    iget-object v0, v0, Lmn/l;->b:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    const-string v2, "flUGCAutoPlayGroup"

    .line 36
    .line 37
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-static {v0, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updatePipParams(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getMobileDataHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/u;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/helper/u;->E()V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPressedPause$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$hideCoverBg(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$resetPlayTimeout(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/c0;->w()V

    .line 84
    .line 85
    .line 86
    :cond_2
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 87
    .line 88
    const/4 v7, 0x4

    .line 89
    const/4 v8, 0x0

    .line 90
    const-string v4, "LongVodPlayerView"

    .line 91
    .line 92
    const-string v5, "onVideoStart"

    .line 93
    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->hideBottomController(Z)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 104
    .line 105
    invoke-static {v0, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPauseViewStatus(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 109
    .line 110
    invoke-static {v0, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$keepScreenOn(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$removeError(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 119
    .line 120
    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showVideoLoading(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getAdHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/c;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/helper/c;->f()V

    .line 132
    .line 133
    .line 134
    :cond_3
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isMobilePaused$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 143
    .line 144
    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setMobilePaused$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 148
    .line 149
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    sget v2, Lcom/transsion/player/longvideo/R$string;->long_vod_load_us_cellular:I

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v2, "getString(...)"

    .line 160
    .line 161
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showToast(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showMobileDataTips(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_5

    .line 174
    .line 175
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 176
    .line 177
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getMobileDataHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/u;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/helper/u;->D()V

    .line 184
    .line 185
    .line 186
    :cond_5
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->getLongVodPlayerViewAdHelper()Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->o4()V

    .line 193
    .line 194
    .line 195
    sget-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz p1, :cond_6

    .line 202
    .line 203
    invoke-virtual {p1}, Lgn/e;->h()Lcom/transsion/player/mediasession/MediaItem;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    goto :goto_0

    .line 208
    :cond_6
    const/4 p1, 0x0

    .line 209
    :goto_0
    invoke-virtual {v0, p1}, Lcom/transsion/baseui/music/MusicFloatManager;->B(Lcom/transsion/player/mediasession/MediaItem;)V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->K(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
