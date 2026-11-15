.class public final Lyn/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lio/b;


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

.method public static synthetic p()V
    .locals 0

    .line 1
    invoke-static {}, Lyn/b;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final q()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/player/mediasession/h;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/therouter/router/RouteItem;Lmf/b;)V
    .locals 1

    .line 1
    const-string v0, "routeItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->a:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;->a()Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->i(Lcom/therouter/router/RouteItem;Lmf/b;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/transsion/postdetail/shorttv/c;->a:Lcom/transsion/postdetail/shorttv/c$a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/postdetail/shorttv/c$a;->a()Lcom/transsion/postdetail/shorttv/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/transsion/postdetail/shorttv/c;->d(Lcom/therouter/router/RouteItem;Lmf/b;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment$a;->a(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment$a;->a(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment$a;->a(Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 15

    .line 1
    sget-object v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->O:Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;

    .line 2
    .line 3
    if-nez p7, :cond_0

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    move-object v7, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object/from16 v7, p7

    .line 10
    .line 11
    :goto_0
    move-object/from16 v1, p1

    .line 12
    .line 13
    move-object/from16 v2, p2

    .line 14
    .line 15
    move-wide/from16 v3, p3

    .line 16
    .line 17
    move/from16 v5, p5

    .line 18
    .line 19
    move/from16 v6, p6

    .line 20
    .line 21
    move-object/from16 v8, p8

    .line 22
    .line 23
    move-object/from16 v9, p9

    .line 24
    .line 25
    move-object/from16 v10, p10

    .line 26
    .line 27
    move-object/from16 v11, p11

    .line 28
    .line 29
    move-object/from16 v12, p12

    .line 30
    .line 31
    move-object/from16 v13, p13

    .line 32
    .line 33
    move-object/from16 v14, p14

    .line 34
    .line 35
    invoke-virtual/range {v0 .. v14}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;->a(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public g(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;->loadMoreCacheData(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;
    .locals 1

    .line 1
    const-string v0, "pool"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lfo/w;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lfo/w;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->s(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public j(Landroid/app/Application;)V
    .locals 7

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "ShortTv"

    .line 11
    .line 12
    const-string v3, "---------------initShortTv--------------"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lpq/c;->a:Lpq/c;

    .line 19
    .line 20
    new-instance v1, Lcom/transsion/postdetail/shorttv/factory/i;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/transsion/postdetail/shorttv/factory/i;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lpq/c;->d(Landroid/app/Application;Lvr/a;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcs/a;->a:Lcs/a;

    .line 29
    .line 30
    new-instance v1, Lcom/transsion/postdetail/shorttv/factory/a;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/transsion/postdetail/shorttv/factory/a;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Lcs/a;->c(Landroid/app/Application;Lws/a;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public k(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;->a(Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public l(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment$a;->a(Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public m(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcw/c;->a:Lcw/c;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcw/c;->b(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "\u8d44\u6e90\u88ab\u5220\u9664\uff0c\u79fb\u9664pip,tag:"

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const/4 v6, 0x4

    .line 35
    const/4 v7, 0x0

    .line 36
    const-string v3, "VideoFloat"

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcw/c;->a()V

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroid/os/Handler;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lyn/a;

    .line 55
    .line 56
    invoke-direct {v0}, Lyn/a;-><init>()V

    .line 57
    .line 58
    .line 59
    const-wide/16 v1, 0x5dc

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public n(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;->insertRoomCacheData()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;
    .locals 1

    .line 1
    const-string v0, "pool"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lfo/n;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lfo/n;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
