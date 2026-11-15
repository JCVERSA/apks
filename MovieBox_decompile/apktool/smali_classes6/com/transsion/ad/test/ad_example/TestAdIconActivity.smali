.class public final Lcom/transsion/ad/test/ad_example/TestAdIconActivity;
.super Lcom/transsion/ad/test/TestBaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/ad/test/ad_example/TestAdIconActivity;",
        "Lcom/transsion/ad/test/TestBaseActivity;",
        "<init>",
        "()V",
        "",
        "getLogTag",
        "()Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;",
        "a",
        "Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;",
        "iconAdapter",
        "Lsh/j;",
        "b",
        "Lsh/j;",
        "binding",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "c",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "adManager",
        "",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;",
        "d",
        "Ljava/util/List;",
        "iconList",
        "Loh/a;",
        "e",
        "Loh/a;",
        "listener",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;

.field private b:Lsh/j;

.field private c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

.field private final d:Ljava/util/List;

.field private final e:Loh/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/test/TestBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->d:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$b;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$b;-><init>(Lcom/transsion/ad/test/ad_example/TestAdIconActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->e:Loh/a;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic O(Lcom/transsion/ad/test/ad_example/TestAdIconActivity;)Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic P(Lcom/transsion/ad/test/ad_example/TestAdIconActivity;)Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->a:Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Q(Lcom/transsion/ad/test/ad_example/TestAdIconActivity;)Loh/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->e:Loh/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ad_ic"

    .line 2
    .line 3
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lsh/j;->c(Landroid/view/LayoutInflater;)Lsh/j;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->b:Lsh/j;

    .line 13
    .line 14
    const-string v0, "binding"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object p1, v1

    .line 23
    :cond_0
    invoke-virtual {p1}, Lsh/j;->b()Landroid/widget/FrameLayout;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->b:Lsh/j;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object p1, v1

    .line 38
    :cond_1
    iget-object p1, p1, Lsh/j;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    new-instance v0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 43
    .line 44
    invoke-direct {v0, v2}, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->a:Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-direct {v0, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$c;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$c;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-instance v5, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$onCreate$2;

    .line 74
    .line 75
    invoke-direct {v5, p0, v1}, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$onCreate$2;-><init>(Lcom/transsion/ad/test/ad_example/TestAdIconActivity;Lkotlin/coroutines/Continuation;)V

    .line 76
    .line 77
    .line 78
    const/4 v6, 0x3

    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v3, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 83
    .line 84
    .line 85
    return-void
.end method
