.class public final Lcom/transsion/home/adapter/c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# instance fields
.field private final a:Landroidx/viewpager2/widget/ViewPager2;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;ILjava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p4}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/home/adapter/c;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    iput p2, p0, Lcom/transsion/home/adapter/c;->b:I

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/home/adapter/c;->c:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic g(Lcom/transsion/home/adapter/c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/adapter/c;->h(Lcom/transsion/home/adapter/c;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h(Lcom/transsion/home/adapter/c;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/c;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/transsion/home/adapter/b;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/transsion/home/adapter/b;-><init>(Lcom/transsion/home/adapter/c;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;->m1(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object p1, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 27
    .line 28
    iget v0, p0, Lcom/transsion/home/adapter/c;->b:I

    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/home/adapter/c;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->b(ILjava/lang/String;)Lcom/transsion/home/fragment/tab/SubTabFragment;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method
