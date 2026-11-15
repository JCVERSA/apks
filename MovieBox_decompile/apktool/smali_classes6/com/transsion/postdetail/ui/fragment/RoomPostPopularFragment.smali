.class public Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;
.super Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0010J\u000f\u0010\u0017\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0010J\u000f\u0010\u0018\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u000f\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;",
        "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;",
        "<init>",
        "()V",
        "",
        "initViewData",
        "initViewModel",
        "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;",
        "postAdapterFrom",
        "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "item",
        "onItemHeaderClick",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "",
        "onItemHeaderModuleName",
        "()Ljava/lang/String;",
        "",
        "isFirstLoad",
        "isRefresh",
        "loadData",
        "(ZZ)V",
        "pageName",
        "subpageName",
        "isSwipeRefreshEnable",
        "()Z",
        "isNeedInsertPublishPost",
        "",
        "tabIndex",
        "()I",
        "isStaggeredPost",
        "Companion",
        "a",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;

.field private static final GROUP_ID:Ljava/lang/String; = "id"

.field public static final SUBPAGE_NAME:Ljava/lang/String; = "room_detail_popular"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C0(Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;->initViewModel$lambda$1(Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final initViewModel$lambda$1(Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->updateData(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public initViewData()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "id"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->setMGroupId(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMGroupId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const-string v2, "group_id"

    .line 40
    .line 41
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/String;

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public initViewModel()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMViewModel()Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->C()Landroidx/lifecycle/b0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/w4;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/w4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$b;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public isNeedInsertPublishPost()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isStaggeredPost()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isSwipeRefreshEnable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public loadData(ZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMGroupId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMViewModel()Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMPage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    move v1, p2

    .line 20
    move v5, p2

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->H(ZLjava/lang/String;Ljava/lang/String;IZ)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onItemHeaderClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openUserCenter(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onItemHeaderModuleName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "user_center"

    .line 2
    .line 3
    return-object v0
.end method

.method public pageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "room_detail"

    .line 2
    .line 3
    return-object v0
.end method

.method public postAdapterFrom()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;->DETAIL:Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;

    .line 2
    .line 3
    return-object v0
.end method

.method public subpageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "room_detail_popular"

    .line 2
    .line 3
    return-object v0
.end method

.method public tabIndex()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
