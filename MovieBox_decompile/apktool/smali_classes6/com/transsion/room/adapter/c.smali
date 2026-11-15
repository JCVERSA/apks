.class public final Lcom/transsion/room/adapter/c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/room/adapter/c;->a:Ljava/lang/String;

    .line 10
    .line 11
    new-instance p1, Lcom/transsion/room/adapter/b;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/transsion/room/adapter/b;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/room/adapter/c;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic g()Lcom/transsion/moviedetailapi/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/room/adapter/c;->i()Lcom/transsion/moviedetailapi/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final h()Lcom/transsion/moviedetailapi/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/adapter/c;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/moviedetailapi/g;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final i()Lcom/transsion/moviedetailapi/g;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lcom/transsion/moviedetailapi/g;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/transsion/moviedetailapi/g;

    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_HOT:Lcom/transsion/moviedetailapi/PostRankType;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_NEW:Lcom/transsion/moviedetailapi/PostRankType;

    .line 12
    .line 13
    :goto_0
    const-string v1, "subject_id"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/room/adapter/c;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "rank_type"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/room/adapter/c;->h()Lcom/transsion/moviedetailapi/g;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-class v1, Lcom/transsion/room/viewmodel/RoomHotViewModel;

    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Lcom/transsion/moviedetailapi/g;->e(Landroid/os/Bundle;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    :goto_1
    if-nez p1, :cond_2

    .line 40
    .line 41
    new-instance p1, Lcom/transsion/baseui/fragment/EmptyFragment;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/transsion/baseui/fragment/EmptyFragment;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method
