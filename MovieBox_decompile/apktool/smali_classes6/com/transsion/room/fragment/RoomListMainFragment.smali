.class public final Lcom/transsion/room/fragment/RoomListMainFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/fragment/RoomListMainFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lfp/s;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0018\u0000 )2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001d0%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/room/fragment/RoomListMainFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lfp/s;",
        "<init>",
        "()V",
        "",
        "initViewPager",
        "e0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "f0",
        "(Landroid/view/LayoutInflater;)Lfp/s;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "a",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "vpAdapter",
        "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;",
        "b",
        "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;",
        "commonNavigator",
        "",
        "c",
        "I",
        "selectTabIndex",
        "",
        "d",
        "Z",
        "isSelectRoom",
        "",
        "e",
        "[Ljava/lang/Integer;",
        "tabs",
        "f",
        "Room_psRelease"
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
.field public static final f:Lcom/transsion/room/fragment/RoomListMainFragment$a;


# instance fields
.field private a:Landroidx/viewpager2/adapter/FragmentStateAdapter;

.field private b:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

.field private c:I

.field private d:Z

.field private final e:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/room/fragment/RoomListMainFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/room/fragment/RoomListMainFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/room/fragment/RoomListMainFragment;->f:Lcom/transsion/room/fragment/RoomListMainFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/transsion/room/R$string;->Your_rooms:I

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Lcom/transsion/room/R$string;->Room_list:I

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x2

    .line 17
    new-array v2, v2, [Ljava/lang/Integer;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v0, v2, v3

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    aput-object v1, v2, v0

    .line 24
    .line 25
    iput-object v2, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->e:[Ljava/lang/Integer;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/room/fragment/RoomListMainFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/fragment/RoomListMainFragment;->g0(Lcom/transsion/room/fragment/RoomListMainFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b0(Lcom/transsion/room/fragment/RoomListMainFragment;)[Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->e:[Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c0(Lcom/transsion/room/fragment/RoomListMainFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d0(Lcom/transsion/room/fragment/RoomListMainFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->c:I

    .line 2
    .line 3
    return-void
.end method

.method private final e0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/transsion/room/fragment/RoomListMainFragment$b;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/transsion/room/fragment/RoomListMainFragment$b;-><init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->setAdapter(Lqj/a;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->b:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lfp/s;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, v0, Lfp/s;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->b:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lvy/a;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lfp/s;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Lfp/s;->f:Landroidx/viewpager2/widget/ViewPager2;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v1, Lcom/transsion/room/fragment/RoomListMainFragment$c;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/transsion/room/fragment/RoomListMainFragment$c;-><init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lfp/s;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, v0, Lfp/s;->f:Landroidx/viewpager2/widget/ViewPager2;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget v1, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->c:I

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method private static final g0(Lcom/transsion/room/fragment/RoomListMainFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final initViewPager()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/room/fragment/RoomListMainFragment$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/room/fragment/RoomListMainFragment$d;-><init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lfp/s;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lfp/s;->f:Landroidx/viewpager2/widget/ViewPager2;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomListMainFragment;->e0()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public f0(Landroid/view/LayoutInflater;)Lfp/s;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lfp/s;->c(Landroid/view/LayoutInflater;)Lfp/s;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/room/fragment/RoomListMainFragment;->f0(Landroid/view/LayoutInflater;)Lfp/s;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lfp/s;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lfp/s;->d:Landroid/widget/ImageView;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Luf/c;->e(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lfp/s;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p1, Lfp/s;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    new-instance p2, Lcom/transsion/room/fragment/w1;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/transsion/room/fragment/w1;-><init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomListMainFragment;->initViewPager()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v1, "index"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v0

    .line 19
    :goto_0
    iput p1, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->c:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string v0, "is_select_room"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->d:Z

    .line 34
    .line 35
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v0, Lij/y;->a:Lij/y;

    .line 40
    .line 41
    invoke-virtual {v0}, Lij/y;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    xor-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
