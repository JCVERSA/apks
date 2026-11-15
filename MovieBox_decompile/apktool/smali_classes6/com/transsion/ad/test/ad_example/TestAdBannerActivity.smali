.class public final Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;
.super Lcom/transsion/ad/test/TestBaseActivity;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0005*\u0001\u0015\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;",
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
        "onDestroy",
        "Lsh/i;",
        "a",
        "Lsh/i;",
        "binding",
        "Lcom/transsion/ad/bidding/banner/a;",
        "b",
        "Lcom/transsion/ad/bidding/banner/a;",
        "bannerManager",
        "com/transsion/ad/test/ad_example/TestAdBannerActivity$bannerListener$1",
        "c",
        "Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$bannerListener$1;",
        "bannerListener",
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
.field private a:Lsh/i;

.field private b:Lcom/transsion/ad/bidding/banner/a;

.field private final c:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$bannerListener$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/test/TestBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$bannerListener$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$bannerListener$1;-><init>(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->c:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$bannerListener$1;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic O(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->U(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic P(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$bannerListener$1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->c:Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$bannerListener$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Q(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)Lcom/transsion/ad/bidding/banner/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->b:Lcom/transsion/ad/bidding/banner/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic R(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)Lsh/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->a:Lsh/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic S(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;Lcom/transsion/ad/bidding/banner/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->b:Lcom/transsion/ad/bidding/banner/a;

    .line 2
    .line 3
    return-void
.end method

.method private static final U(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {v3, p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$onCreate$1$1;-><init>(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ad_b"

    .line 2
    .line 3
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

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
    invoke-static {p1}, Lsh/i;->c(Landroid/view/LayoutInflater;)Lsh/i;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->a:Lsh/i;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const-string v1, "binding"

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object p1, v0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lsh/i;->b()Landroid/widget/LinearLayout;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->a:Lsh/i;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v0, p1

    .line 39
    :goto_0
    iget-object p1, v0, Lsh/i;->b:Landroid/widget/Button;

    .line 40
    .line 41
    new-instance v0, Lcom/transsion/ad/test/ad_example/l;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_example/l;-><init>(Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;->b:Lcom/transsion/ad/bidding/banner/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/banner/a;->U()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
